<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Get-AIDefaultLLMSettings.ps1
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

################################################################################
<#
.SYNOPSIS
Gets all available default LLM settings configurations for AI operations in
GenXdev.AI.

.DESCRIPTION
Retrieves the complete set of default Large Language Model (LLM) settings
configured for AI operations. Results can be filtered by query type, model
identifier, API endpoint, or API key. Supports both session-based and
persistent preference-based retrieval, with options to clear session state
or bypass it entirely to read directly from stored preferences.

.PARAMETER LLMQueryType
The type of LLM query to get settings for. This determines which default
settings to use when no custom settings are found. Valid values include
SimpleIntelligence, Knowledge, Pictures, TextTranslation, Coding, and ToolUse.

.PARAMETER Model
Filter configurations by model identifier or pattern.

.PARAMETER ApiEndpoint
Filter configurations by API endpoint URL.

.PARAMETER ApiKey
Filter configurations by API key.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER ClearSession
Clear the session setting (Global variable) before retrieving.

.PARAMETER SkipSession
When specified, skips session settings and retrieves only from persistent
preferences or defaults.

.EXAMPLE
Get-AIDefaultLLMSettings -LLMQueryType "Coding"

Gets all available default configurations for Coding query type.


#>
################################################################################
function Get-AIDefaultLLMSettings {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [OutputType([hashtable[]])]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]

    param(
        ###############################################################################
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The type of LLM query to get settings for'
        )]
        [ValidateSet(
            'SimpleIntelligence',
            'Knowledge',
            'Pictures',
            'TextTranslation',
            'Coding',
            'ToolUse'
        )]
        [string] $LLMQueryType = 'SimpleIntelligence',
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter configurations by model identifier or pattern'
        )]
        [string] $Model,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter configurations by API endpoint URL'
        )]
        [string] $ApiEndpoint,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter configurations by API key'
        )]
        [string] $ApiKey,
        ###################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indicates that LLM has no support for JSON schemas'
        )]
        [string] $NoSupportForJsonSchema,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear the session setting (Global variable) before retrieving'
        )]
        [switch] $ClearSession,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip session settings and get from preferences ' +
                'or defaults only')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
        ###############################################################################
    )

    begin {

        # log provided parameter values for filtering
        $filterParams = @()
        if ($PSBoundParameters.ContainsKey('Model')) { $filterParams += "Model=$Model" }
        if ($PSBoundParameters.ContainsKey('ApiEndpoint')) { $filterParams += "ApiEndpoint=$ApiEndpoint" }
        if ($PSBoundParameters.ContainsKey('ApiKey')) { $filterParams += 'ApiKey=(redacted)' }
        if ($PSBoundParameters.ContainsKey('TimeoutSeconds')) { $filterParams += "TimeoutSeconds=$TimeoutSeconds" }

        if ($filterParams.Count -gt 0) {
            Microsoft.PowerShell.Utility\Write-Verbose "Filter parameters: $($filterParams -join ', ')"
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose 'No filter parameters provided'
        }

        # handle clearing session variables first if requested
        if ($ClearSession) {

            Microsoft.PowerShell.Utility\Write-Verbose 'Clearing session variables (ClearSession=true)'
        }
    }

    process {

        try {
            Microsoft.PowerShell.Utility\Write-Verbose 'Loading defaults from JSON configuration...'

            # construct path to default settings JSON file
            $defaultsPath = Microsoft.PowerShell.Management\Join-Path `
                $MyInvocation.MyCommand.Module.ModuleBase 'defaultsettings.json'

            Microsoft.PowerShell.Utility\Write-Verbose "JSON path: $defaultsPath"

            # read and parse JSON content
            $jsonContent = Microsoft.PowerShell.Management\Get-Content `
                -LiteralPath $defaultsPath `
                -Raw `
                -ErrorAction Stop

            # convert JSON to PowerShell object
            $defaultsJson = $jsonContent | `
                    Microsoft.PowerShell.Utility\ConvertFrom-Json `
                    -ErrorAction Stop

            Microsoft.PowerShell.Utility\Write-Verbose 'JSON loaded successfully'

            # extract configurations for the specified query type
            $defaultConfigs = $null
            if ($defaultsJson.PSObject.Properties.Name -contains $LLMQueryType) {

                $defaultConfigs = $defaultsJson.$LLMQueryType
                Microsoft.PowerShell.Utility\Write-Verbose "Found $($defaultConfigs.Count) default configurations for query type: $LLMQueryType"
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose "No configurations found for query type: $LLMQueryType"
                return [hashtable[]]@()
            }

            # return empty array if no configurations found
            if ($null -eq $defaultConfigs -or $defaultConfigs.Count -eq 0) {

                Microsoft.PowerShell.Utility\Write-Verbose 'No default configurations available'
                return [hashtable[]]@()
            }

            return ($defaultConfigs | GenXdev\ConvertTo-HashTable)
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Verbose "Error loading default configurations: $($_.Exception.Message)"
            throw "Failed to load default LLM settings: $($_.Exception.Message)"
        }
    }

    end {
    }
}
################################################################################