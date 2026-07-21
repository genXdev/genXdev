<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Get-LLMJsonOutput.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
################################################################################
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

###############################################################################
<#
.SYNOPSIS
Extracts valid JSON from LLM response text using best-effort heuristics.

.DESCRIPTION
Takes raw LLM response text that may contain markdown fences, commentary, or
other non-JSON content and attempts to extract clean, valid JSON from it.
Uses a multi-step strategy: first strips markdown fences, then attempts to
parse the entire string as JSON, and if that fails, uses schema-guided
extraction followed by heuristic fallbacks.

The function handles:
- Markdown code fences (```json ... ```)
- JSON objects ({...}) and arrays ([...])
- Strings, numbers, booleans, and date-time values
- Schema-guided extraction using json_schema type hints

.PARAMETER Text
The raw text to extract JSON from. Typically an LLM response that may contain
markdown fences or surrounding commentary.

.PARAMETER ResponseFormat
Optional JSON schema string (OpenAI json_schema format) used to guide
extraction. When provided, the schema's type field is used to determine
which JSON structure to look for (object, array, string, number, boolean).

.EXAMPLE
Get-LLMJsonOutput -Text '```json
{"result": "hello"}
```'

Extracts: {"result": "hello"}

.EXAMPLE
$schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}'
Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema

Extracts: {"key": "value"}
#>
function Get-LLMJsonOutput {

    [CmdletBinding()]
    [OutputType([string])]
    param (
        #######################################################################
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'The raw text to extract JSON from'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Text,
        #######################################################################
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = ('Optional JSON schema string to guide ' +
                'extraction (OpenAI json_schema format)')
        )]
        [string] $ResponseFormat
        #######################################################################
    )

    begin {
        $cleaned = $Text
    }

    process {

        # Strip markdown fences first (```json ... ```)
        $candidate = [regex]::Replace($cleaned,
            '```(?:json)?\s*([\s\S]*?)\s*```', '$1')
        if ($candidate -ne $cleaned) {
            $cleaned = $candidate
        }

        # Step 1: Try parsing the whole string as JSON
        try {
            $null = $cleaned |
                Microsoft.PowerShell.Utility\ConvertFrom-Json `
                    -ErrorAction Stop
            # Success — $cleaned is already valid JSON
        }
        catch {
            # Step 2: If we have a schema, use its type to guide
            # extraction; otherwise try heuristics.
            $extracted = $null
            if ($ResponseFormat) {
                try {
                    $schema = ($ResponseFormat |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json `
                            -ErrorAction Stop).json_schema.schema
                    switch ($schema.type) {
                        'object' {
                            $a = $cleaned.IndexOf('{')
                            $b = $cleaned.LastIndexOf('}')
                            if ($a -ge 0 -and $b -gt $a) {
                                $extracted = $cleaned.Substring(
                                    $a, ($b - $a) + 1)
                            }
                        }
                        'array' {
                            $a = $cleaned.IndexOf('[')
                            $b = $cleaned.LastIndexOf(']')
                            if ($a -ge 0 -and $b -gt $a) {
                                $extracted = $cleaned.Substring(
                                    $a, ($b - $a) + 1)
                            }
                        }
                        'string' {
                            # Check for date/time format hints
                            if ($schema.format -match
                                '^date(-time)?$') {
                                if ($cleaned -match
                                    '(\d{4}-\d{2}-\d{2}(?:T\d{2}:\d{2}:\d{2}(?:\.\d+)?(?:Z|[+-]\d{2}:\d{2})?)?)') {
                                    $extracted = '"' + $matches[1] + '"'
                                }
                            }
                            else {
                                $a = $cleaned.IndexOf('"')
                                $b = $cleaned.LastIndexOf('"')
                                if ($a -ge 0 -and $b -gt $a) {
                                    $extracted = $cleaned.Substring(
                                        $a, ($b - $a) + 1)
                                }
                            }
                        }
                        { $_ -in @('number', 'integer') } {
                            if ($cleaned -match
                                '(-?\d+\.?\d*(?:[eE][+-]?\d+)?)') {
                                $extracted = $matches[1]
                            }
                        }
                        'boolean' {
                            if ($cleaned -match '\b(true|false)\b') {
                                $extracted = $matches[1]
                            }
                        }
                    }
                }
                catch {
                    # Schema parse failed, fall through to heuristics
                }
            }
            # Step 3: No schema or schema didn't help — try
            # { } first, then [ ], then regex for string,
            # then regex for number.
            if (-not $extracted) {
                $a = $cleaned.IndexOf('{')
                $b = $cleaned.LastIndexOf('}')
                if ($a -ge 0 -and $b -gt $a) {
                    $extracted = $cleaned.Substring(
                        $a, ($b - $a) + 1)
                }
                else {
                    $a = $cleaned.IndexOf('[')
                    $b = $cleaned.LastIndexOf(']')
                    if ($a -ge 0 -and $b -gt $a) {
                        $extracted = $cleaned.Substring(
                            $a, ($b - $a) + 1)
                    }
                    elseif ($cleaned -match
                        '"((?:[^"\\]|\\.)*)"') {
                        $extracted = $matches[0]
                    }
                    elseif ($cleaned -match
                        '(\d{4}-\d{2}-\d{2}(?:T\d{2}:\d{2}:\d{2}(?:\.\d+)?(?:Z|[+-]\d{2}:\d{2})?)?)') {
                        $extracted = '"' + $matches[1] + '"'
                    }
                    elseif ($cleaned -match
                        '(-?\d+\.?\d*(?:[eE][+-]?\d+)?)') {
                        $extracted = $matches[1]
                    }
                    elseif ($cleaned -match
                        '\b(true|false)\b') {
                        $extracted = $matches[1]
                    }
                }
            }
            # Validate the extracted candidate
            if ($extracted) {
                try {
                    $null = $extracted |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json `
                            -ErrorAction Stop
                    $cleaned = $extracted
                }
                catch {
                    # Not valid, keep original $cleaned
                }
            }
        }

        # Return the cleaned JSON string
        Microsoft.PowerShell.Utility\Write-Output $cleaned
    }

    end {
    }
    ###########################################################################
}