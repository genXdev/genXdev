<##############################################################################
Part of PowerShell module : GenXdev.AI
Original cmdlet filename  : Get-AILLMSettings.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

<#
.SYNOPSIS
Gets the LLM settings for AI operations in GenXdev.AI.

.DESCRIPTION
This function retrieves the LLM (Large Language Model) settings used by the
GenXdev.AI module for various AI operations. Settings are retrieved from
session variables, persistent preferences, or default settings JSON file, in
that order of precedence. The function supports automatic configuration
selection based on available system memory resources.

Memory selection strategy is determined automatically based on the Gpu and Cpu
parameters provided:
- If both Gpu and Cpu parameters are specified: Uses combined CPU + GPU memory
- If only Gpu parameter is specified: Prefers GPU memory (with system RAM fallback)
- If only Cpu parameter is specified: Uses system RAM only
- If neither parameter is specified: Uses combined CPU + GPU memory (default)

.PARAMETER LLMQueryType
The type of LLM query to get settings for. This determines which default
settings to use when no custom settings are found. Valid values include
SimpleIntelligence, Knowledge, Pictures, TextTranslation, Coding, and ToolUse.

.PARAMETER Model
The model identifier or pattern to use for AI operations.

.PARAMETER ApiEndpoint
The API endpoint URL for AI operations.

.PARAMETER ApiKey
The API key for authenticated AI operations.

.PARAMETER NoSupportForJsonSchema
When specified, indicates that the endpoint does not support json_schema
response format. This enables fallback behavior using prompt-based instructions.

.PARAMETER NoSupportForImageUpload
When specified, indicates that the endpoint does not support image upload
functionality.

.PARAMETER NoSupportForToolCalls
When specified, indicates that the endpoint does not support tool calling
functionality.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER ClearSession
Clear the session setting (Global variable) before retrieving.

.PARAMETER SkipSession
When specified, skips session settings and retrieves only from persistent
preferences or defaults. This is useful when you want to ignore any temporary
session-level overrides.

.EXAMPLE
Get-AILLMSettings

Gets the LLM settings for SimpleIntelligence query type (default).

.EXAMPLE
Get-AILLMSettings -LLMQueryType "Coding"

Gets the LLM settings for Coding query type.

.EXAMPLE
Get-AILLMSettings -SkipSession

Gets the LLM settings from preferences or defaults only, ignoring session
settings.

.EXAMPLE
Get-AILLMSettings "Knowledge"

#>
function Get-AILLMSettings {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [OutputType([hashtable])]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]

    param(
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The model identifier or pattern to use for AI operations'
        )]
        [string] $Model,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API endpoint URL for AI operations'
        )]
        [string] $ApiEndpoint,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API key for authenticated AI operations'
        )]
        [string] $ApiKey,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support json_schema response format'
        )]
        [switch] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support image upload functionality'
        )]
        [switch] $NoSupportForImageUpload,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support tool calling functionality'
        )]
        [switch] $NoSupportForToolCalls,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear the session setting (Global variable) before retrieving'
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip session settings and get from preferences ' +
                'or defaults only')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose '=== Get-AILLMSettings Started ==='
        Microsoft.PowerShell.Utility\Write-Verbose "LLMQueryType: $LLMQueryType"
        Microsoft.PowerShell.Utility\Write-Verbose "SessionOnly: $SessionOnly"
        Microsoft.PowerShell.Utility\Write-Verbose "SkipSession: $SkipSession"
        Microsoft.PowerShell.Utility\Write-Verbose "ClearSession: $ClearSession"

        # log provided parameter values
        $providedParams = @()
        if ($PSBoundParameters.ContainsKey('Model')) { $providedParams += "Model=$Model" }
        if ($PSBoundParameters.ContainsKey('ApiEndpoint')) { $providedParams += "ApiEndpoint=$ApiEndpoint" }
        if ($PSBoundParameters.ContainsKey('ApiKey')) { $providedParams += 'ApiKey=(redacted)' }
        if ($PSBoundParameters.ContainsKey('NoSupportForJsonSchema')) { $providedParams += "NoSupportForJsonSchema=$NoSupportForJsonSchema" }
        if ($PSBoundParameters.ContainsKey('NoSupportForImageUpload')) { $providedParams += "NoSupportForImageUpload=$NoSupportForImageUpload" }
        if ($PSBoundParameters.ContainsKey('NoSupportForToolCalls')) { $providedParams += "NoSupportForToolCalls=$NoSupportForToolCalls" }

        if ($providedParams.Count -gt 0) {
            Microsoft.PowerShell.Utility\Write-Verbose "Provided parameters: $($providedParams -join ', ')"
        } else {
            Microsoft.PowerShell.Utility\Write-Verbose 'No explicit parameter values provided'
        }

        # handle clearing session variables first if requested
        if ($ClearSession) {

            # clear all global session variables for llm settings
            # These variables are used dynamically via Get-Variable, so suppress PSScriptAnalyzer warnings

            Microsoft.PowerShell.Utility\Set-Variable -Name ('AILLMSettings_' + $LLMQueryType + '_Model') -Value $null -Scope Global

            Microsoft.PowerShell.Utility\Set-Variable -Name ('AILLMSettings_' + $LLMQueryType + '_ApiEndpoint') -Value $null -Scope Global

            Microsoft.PowerShell.Utility\Set-Variable -Name ('AILLMSettings_' + $LLMQueryType + '_ApiKey') -Value $null -Scope Global

            Microsoft.PowerShell.Utility\Set-Variable -Name ('AILLMSettings_' + $LLMQueryType + '_NoSupportForJsonSchema') -Value $null -Scope Global

            Microsoft.PowerShell.Utility\Set-Variable -Name ('AILLMSettings_' + $LLMQueryType + '_NoSupportForImageUpload') -Value $null -Scope Global

            Microsoft.PowerShell.Utility\Set-Variable -Name ('AILLMSettings_' + $LLMQueryType + '_NoSupportForToolCalls') -Value $null -Scope Global

            # inform user that session variables have been cleared
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Cleared session LLM settings for all properties'
            )
        }

        # initialize the result hashtable with all possible setting properties
        $result = @{
            Model                     = $null
            ApiEndpoint               = $null
            ApiKey                    = $null
            NoSupportForJsonSchema    = $null
            NoSupportForImageUpload   = $null
            NoSupportForToolCalls     = $null
        }
    }

    process {

        # define helper function to retrieve individual setting values
        function Get-SettingValue {

            param(
                [string]$propertyName,
                [object]$parameterValue,
                [bool]$parameterExplicitlyProvided,
                [string]$llmQueryType,
                [switch]$sessionOnly,
                [switch]$skipSession,
                [hashtable]$defaultConfig
            )

            # check if parameter was explicitly provided and has a meaningful value
            if ($parameterExplicitlyProvided) {
                # for string parameters, check if the value is meaningful (not null/empty/whitespace)
                $isStringParam = $propertyName -in @('Model', 'ApiEndpoint', 'ApiKey')
                if ($isStringParam) {
                    if (-not [String]::IsNullOrWhiteSpace($parameterValue)) {
                        Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Using explicitly provided parameter value: $parameterValue"
                        return $parameterValue
                    } else {
                        Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Parameter explicitly provided but is null/empty, checking other sources..."
                    }
                } else {
                    # for numeric parameters, check if not null and not zero
                    if ($null -ne $parameterValue -and $parameterValue -ne 0) {
                        Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Using explicitly provided parameter value: $parameterValue"
                        return $parameterValue
                    } else {
                        Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Parameter explicitly provided but is null/zero, checking other sources..."
                    }
                }
            } else {
                Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] No parameter value provided, checking other sources..."
            }

            # check session variables unless SkipSession is specified
            if (-not $skipSession) {

                Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Checking session variables..."

                # construct session variable name
                $sessionVarName = "AILLMSettings_$($llmQueryType)_$propertyName"

                # attempt to retrieve session variable value
                if (Microsoft.PowerShell.Utility\Get-Variable `
                        -Name $sessionVarName `
                        -Scope Global `
                        -ErrorAction SilentlyContinue) {

                    # get the actual variable value
                    $sessionValue = (Microsoft.PowerShell.Utility\Get-Variable `
                            -Name $sessionVarName `
                            -Scope Global).Value

                    # return session value if it exists and is not empty
                    if ($null -ne $sessionValue -and $sessionValue -ne '') {
                        Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Found session value: $sessionValue"
                        return $sessionValue
                    } else {
                        Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Session variable exists but is null/empty"
                    }
                } else {
                    Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] No session variable found: $sessionVarName"
                }
            } else {
                Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Skipping session variables (SkipSession=true)"
            }

            # return null if SessionOnly is specified and no session value found
            if ($sessionOnly) {
                Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] SessionOnly=true and no session value found, returning null"
                return $null
            }

            # check preference storage unless SessionOnly is specified
            if (-not $sessionOnly) {

                Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Checking preference storage..."

                try {
                    # construct preference key using query type and property name
                    $preferenceKey = "AILLMSettings_$($llmQueryType)_$propertyName"

                    # attempt to retrieve preference value
                    $preferenceValue = GenXdev\Get-GenXdevPreference `
                        -PreferencesDatabasePath $PreferencesDatabasePath `
                        -Name $preferenceKey `
                        -ErrorAction SilentlyContinue

                    # return preference value if it exists and is not empty
                    if ($null -ne $preferenceValue -and $preferenceValue -ne '') {
                        Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Found preference value: $preferenceValue"
                        return $preferenceValue
                    } else {
                        Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] No preference value found for key: $preferenceKey"
                    }
                }
                catch {
                    # preference not found, continue to defaults
                    Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Error accessing preferences: $($_.Exception.Message)"
                }

                # use the auto-selected default configuration if available
                if ($null -ne $defaultConfig -and $defaultConfig.ContainsKey($propertyName)) {
                    $finalValue = $defaultConfig[$propertyName]
                    Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Found in auto-selected default configuration: $finalValue"
                    return $finalValue
                } else {
                    Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Property not found in auto-selected default configuration"
                }
            } else {
                Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] Skipping defaults (SessionOnly=true)"
            }

            Microsoft.PowerShell.Utility\Write-Verbose "[$propertyName] No value found from any source, returning null"
            return $null
        }

        # retrieve each setting value using the helper function or from defaults

        # create parameter hashtable for Get-AIDefaultLLMSettings
        $defaultSettingsParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-AIDefaultLLMSettings'
        # -DefaultValues (Get-Variable -Scope Local -ErrorAction SilentlyContinue)

        Microsoft.PowerShell.Utility\Write-Verbose '=== Using Get-AIDefaultLLMSettings for auto-selection ==='

        $defaultConfig = GenXdev\Get-AIDefaultLLMSettings @defaultSettingsParams

        if ($defaultConfig) {
            # Check if it's an array or a single hashtable
            if ($defaultConfig -is [array] -and $defaultConfig.Count -gt 0) {
                $selectedDefaultConfig = $defaultConfig[0] | GenXdev\ConvertTo-HashTable
                Microsoft.PowerShell.Utility\Write-Verbose 'Auto-selected default configuration found (from array)'
            } elseif ($defaultConfig -is [hashtable]) {
                # Single hashtable returned
                $selectedDefaultConfig = $defaultConfig
                Microsoft.PowerShell.Utility\Write-Verbose 'Auto-selected default configuration found (single hashtable)'
            } else {
                $selectedDefaultConfig = $null
                Microsoft.PowerShell.Utility\Write-Verbose "Default configuration has unexpected type: $($defaultConfig.GetType().FullName)"
            }
        } else {
            $selectedDefaultConfig = $null
            Microsoft.PowerShell.Utility\Write-Verbose 'No suitable default configuration found'
        }

        # Debug: Log the structure of the selected default configuration
        if ($null -ne $selectedDefaultConfig) {
            Microsoft.PowerShell.Utility\Write-Verbose '=== DEBUG: Selected Default Configuration ==='
            if ($selectedDefaultConfig -is [hashtable]) {
                Microsoft.PowerShell.Utility\Write-Verbose "Configuration is a hashtable with keys: $($selectedDefaultConfig.Keys -join ', ')"
                foreach ($key in $selectedDefaultConfig.Keys) {
                    $value = if ($null -eq $selectedDefaultConfig[$key]) { '(null)' } else { $selectedDefaultConfig[$key] }
                    Microsoft.PowerShell.Utility\Write-Verbose "  $key = $value"
                }
            } else {
                Microsoft.PowerShell.Utility\Write-Verbose "Configuration type: $($selectedDefaultConfig.GetType().FullName)"
            }
            Microsoft.PowerShell.Utility\Write-Verbose '=== END DEBUG ==='
        }

        # for each property, use the priority: parameter > session > preferences > auto-selected default
        foreach ($propertyName in @('Model', 'ApiEndpoint', 'ApiKey', 'NoSupportForJsonSchema', 'NoSupportForImageUpload', 'NoSupportForToolCalls')) {

            $parameterValue = $null
            $parameterExplicitlyProvided = $false
            switch ($propertyName) {
                'Model' {
                    $parameterValue = $Model
                    $parameterExplicitlyProvided = $PSBoundParameters.ContainsKey('Model')
                }
                'ApiEndpoint' {
                    $parameterValue = $ApiEndpoint
                    $parameterExplicitlyProvided = $PSBoundParameters.ContainsKey('ApiEndpoint')
                }
                'ApiKey' {
                    $parameterValue = $ApiKey
                    $parameterExplicitlyProvided = $PSBoundParameters.ContainsKey('ApiKey')
                }
                'NoSupportForJsonSchema' {
                    $parameterValue = $NoSupportForJsonSchema
                    $parameterExplicitlyProvided = $PSBoundParameters.ContainsKey('NoSupportForJsonSchema')
                }
                'NoSupportForImageUpload' {
                    $parameterValue = $NoSupportForImageUpload
                    $parameterExplicitlyProvided = $PSBoundParameters.ContainsKey('NoSupportForImageUpload')
                }
                'NoSupportForToolCalls' {
                    $parameterValue = $NoSupportForToolCalls
                    $parameterExplicitlyProvided = $PSBoundParameters.ContainsKey('NoSupportForToolCalls')
                }
            }

            # get the final value using priority logic
            $finalValue = Get-SettingValue `
                -propertyName $propertyName `
                -parameterValue $parameterValue `
                -parameterExplicitlyProvided $parameterExplicitlyProvided `
                -llmQueryType $LLMQueryType `
                -sessionOnly:$SessionOnly `
                -skipSession:$SkipSession `
                -defaultConfig $selectedDefaultConfig

            $result[$propertyName] = $finalValue
        }
    }

    end {

        # log final result summary
        Microsoft.PowerShell.Utility\Write-Verbose '=== Final LLM Settings Summary ==='
        Microsoft.PowerShell.Utility\Write-Verbose "LLMQueryType: $LLMQueryType"
        foreach ($key in $result.Keys) {
            $value = if ($null -eq $result[$key]) { '(null)' } else { $result[$key] }
            Microsoft.PowerShell.Utility\Write-Verbose "$key = $value"
        }
        Microsoft.PowerShell.Utility\Write-Verbose '=== End Summary ==='
        # return the completed settings hashtable to the caller
        return $result
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI
Original cmdlet filename  : Get-TextTranslation.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

<#
.SYNOPSIS
Translates text to another language using AI.

.DESCRIPTION
This function translates input text into a specified target language using AI
models. It can accept input directly through parameters, from the pipeline, or
from the system clipboard. The function preserves formatting and style while
translating.

.PARAMETER Text
The text to translate. Accepts pipeline input. If not provided, reads from system
clipboard.

.PARAMETER Language
Target language for translation. Supports 140+ languages including major world
languages and variants.

.PARAMETER Instructions
Additional instructions to guide the AI model in translation style and context.

.PARAMETER Temperature
Controls response randomness (0.0-1.0). Lower values are more deterministic.

.PARAMETER LLMType
The type of LLM query to perform for AI operations.

.PARAMETER Model
The model identifier or pattern to use for AI operations.

.PARAMETER ApiEndpoint
The API endpoint URL for AI operations.

.PARAMETER ApiKey
The API key for authenticated AI operations.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SetClipboard
Copy the translated text to clipboard.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"

.EXAMPLE
"Bonjour" | translate -Language "English"
#>
function Get-TextTranslation {

    [CmdletBinding()]
    [OutputType([System.String])]
    [Alias('translate')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'The text to translate'
        )]
        [ValidateNotNull()]
        [string] $Text,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = ('Additional instructions to guide the AI model in ' +
                'translation style and context')
        )]
        [string] $Instructions,
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'Array of file paths to attach'
        )]
        [string[]] $Attachments = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response randomness (0.0-1.0)'
        )]
        [ValidateRange(-1, 1.0)]
        [double] $Temperature = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Image detail level'
        )]
        [ValidateSet('low', 'medium', 'high')]
        [string] $ImageDetail = 'low',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of function definitions'
        )]
        [hashtable[]] $Functions = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Array of PowerShell command definitions to use ' +
                'as tools')
        )]
        [GenXdev.Helpers.ExposedCmdletDefinition[]]
        $ExposedCmdLets = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Array of command names that don't require " +
                'confirmation')
        )]
        [Alias('NoConfirmationFor')]
        [string[]]
        $NoConfirmationToolFunctionNames = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The type of LLM query'
        )]
        [ValidateSet(
            'SimpleIntelligence',
            'Knowledge',
            'Pictures',
            'TextTranslation',
            'Coding',
            'ToolUse'
        )]
        [string] $LLMType = 'TextTranslation',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The model identifier or pattern to use for AI ' +
                'operations')
        )]
        [string] $Model,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API endpoint URL for AI operations'
        )]
        [string] $ApiEndpoint,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API key for authenticated AI operations'
        )]
        [string] $ApiKey,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indicates that LLM has no support for JSON schemas'
        )]
        [string] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Copy the enhanced text to clipboard'
        )]
        [switch]$SetClipboard,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include model's thoughts in output"
        )]
        [switch] $DontAddThoughtsToHistory,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Continue from last conversation'
        )]
        [switch] $ContinueLast,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable text-to-speech for AI responses'
        )]
        [switch] $Speak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable text-to-speech for AI thought responses'
        )]
        [switch] $SpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't store session in session cache"
        )]
        [switch] $NoSessionCaching,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Allow the use of default AI tools during processing'
        )]
        [switch] $AllowDefaultTools,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'AI preferences')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences ' +
                'without affecting session')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for audio response randomness (passed to LLM)'
        )]
        [double] $AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response generation (passed to LLM)'
        )]
        [double] $TemperatureResponse,
        [ValidateSet(
            'ar-SA',
            'bg-BG',
            'bn-IN',
            'ca-ES',
            'cs-CZ',
            'da-DK',
            'de-DE',
            'el-GR',
            'en-US',
            'es-ES',
            'et-EE',
            'fi-FI',
            'fr-FR',
            'gu-IN',
            'he-IL',
            'hi-IN',
            'hr-HR',
            'hu-HU',
            'id-ID',
            'it-IT',
            'ja-JP',
            'kn-IN',
            'ko-KR',
            'lt-LT',
            'lv-LV',
            'ml-IN',
            'mr-IN',
            'ms-MY',
            'nb-NO',
            'nl-NL',
            'pa-IN',
            'pl-PL',
            'pt-BR',
            'ro-RO',
            'ru-RU',
            'sk-SK',
            'sl-SI',
            'sr-RS',
            'sv-SE',
            'ta-IN',
            'te-IN',
            'th-TH',
            'tr-TR',
            'uk-UA',
            'vi-VN',
            'zh-Hans-CN'
        )]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'BCP 47 language tag for translation (e.g., nl-NL, de-DE, en-US)'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use (passed to LLM)'
        )]
        [int] $CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress output (passed to LLM)'
        )]
        [string] $SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for processing (passed to LLM)'
        )]
        [int] $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence threshold for audio detection (passed to LLM)'
        )]
        [double] $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty for sequence generation (passed to LLM)'
        )]
        [double] $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold for output filtering (passed to LLM)'
        )]
        [double] $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for output filtering (passed to LLM)'
        )]
        [double] $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold for audio detection (passed to LLM)'
        )]
        [double] $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output (passed to LLM)'
        )]
        [switch] $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output for thoughts (passed to LLM)'
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable VOX (voice activation) (passed to LLM)'
        )]
        [switch] $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use desktop audio capture (passed to LLM)'
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable context usage (passed to LLM)'
        )]
        [switch] $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable beam search sampling strategy (passed to LLM)'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only responses (passed to LLM)'
        )]
        [switch] $OnlyResponses,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Output only markup blocks (passed to LLM)'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter for markup block types (passed to LLM)'
        )]
        [string[]] $MarkupBlocksTypeFilter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip the translation cache; always call the LLM API'
        )]
        [switch] $NoCache,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear the entire translation cache for all languages'
        )]
        [switch] $ClearCache
    )

    begin {

        # Clear cache if requested
        if ($ClearCache) {
            GenXdev\Merge-TranslationCache -ClearCache
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Translation cache cleared.')
            return
        }

        # Load or create in-memory cache (reads per-language files from
        # disk once; subsequent calls return the module-scoped reference)
        $translationCache = if (-not $NoCache) {
            GenXdev\Merge-TranslationCache -GetCache
        }
        else {
            @{}
        }

        # Use $Language directly as BCP 47 code (e.g., 'nl-NL', 'en-US').
        # Default to 'English' if no language specified.
        $language = if ($Language) { $Language } else { 'English' }

        # resolve BCP 47 code to full display name for the LLM prompt
        # (e.g., 'zh-Hans-CN' -> 'Chinese (Simplified, China)')
        $languageDisplayName = if ($language -eq 'English') {
            'English'
        }
        else {
            try {
                [System.Globalization.CultureInfo]::new($language).EnglishName
            }
            catch {
                $language
            }
        }

        # ensure the language key exists in cache
        if (-not $translationCache.ContainsKey($language)) {
            $translationCache[$language] = @{}
        }

        # output verbose information about the translation process
        Microsoft.PowerShell.Utility\Write-Verbose ('Starting translation ' +
            "process to target language: $language")
    }

    process {

        # -- Check translation cache first
        if (-not $NoCache -and $Text) {
            $langCache = $translationCache[$language]
            if ($langCache.ContainsKey($Text)) {
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Translation cache hit for language '${language}'.")
                $cached = $langCache[$Text]
                # trim trailing whitespace/newlines from cached values
                # (old LLM responses may have polluted the cache with \r\n)
                if ($cached -is [string]) {
                    $cached = $cached.TrimEnd()
                    $langCache[$Text] = $cached
                }
                return $cached
            }
        }

        # construct translation instructions with smart format preservation
        $userInstructions = if ($Instructions) {
            "`nAdditional user instructions: $Instructions"
        }
        else { '' }
        $translationInstructions = (
            "Translate the following text into ${languageDisplayName}. " +
            'You MUST translate ALL human-readable text. ' +
            'Do NOT return the input unchanged. ' +
            'Return ONLY the translated text with no explanations, ' +
            'no JSON wrappers, and no system prompts.' +
            "`n`nIMPORTANT TRANSLATION RULES:" +
            "`n1. If the input contains code, markup, or structured data, " +
            'preserve all syntax, structure, and technical elements like ' +
            'programming keywords, tags, or data format specific elements.' +
            "`n2. Only translate human-readable text portions like " +
            'comments, string values, documentation, or natural ' +
            'language content.' +
            "`n3. Maintain exact formatting, indentation, and line breaks." +
            "`n4. Never translate identifiers, function names, " +
            'variables, or technical keywords.' +
            $userInstructions)

        # output verbose information about translation preparation
        Microsoft.PowerShell.Utility\Write-Verbose 'Preparing translation request'

        # copy matching parameters for invocation
        $invocationParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Invoke-LLMTextTransformation'

        # output verbose information about llm invocation
        Microsoft.PowerShell.Utility\Write-Verbose 'Invoking LLM translation'

        # perform the translation using the llm text transformation function
        $result = GenXdev\Invoke-LLMTextTransformation @invocationParams `
            -Instructions $translationInstructions -ErrorAction Continue

        # trim trailing whitespace/newlines from LLM response
        # use -replace for reliability across PSObject/string types
        $result = [string]$result
        $result = $result -replace '[\r\n\s]+$', ''

        # if LLM returned the input unchanged (no API key, error, etc.),
        # treat as failure and return null rather than echoing back
        if ($result.Length -gt 0 -and $Text -and
            $result -eq $Text.TrimEnd()) {
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Translation returned input unchanged; ' +
                'likely no LLM API key configured.')
            return $null
        }

        # -- Store in translation cache (batched: persists every 100
        #    mutations per language via Merge-TranslationCache)
        # validate translation before caching to avoid storing garbage
        $cacheValid = $true
        if ([string]::IsNullOrWhiteSpace($result)) {
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Skipping cache: translation result is empty.')
            $cacheValid = $false
        }
        elseif ($result -eq $Text) {
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Skipping cache: translation returned input unchanged.')
            $cacheValid = $false
        }
        elseif ($result -match '"json_schema"|"response_format"') {
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Skipping cache: translation appears to contain ' +
                'system prompt leakage.')
            $cacheValid = $false
        }
        if (-not $NoCache -and $Text -and $result -and $cacheValid) {
            GenXdev\Merge-TranslationCache `
                -Language $language `
                -Key $Text `
                -Value $result
        }

        return $result
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI
Original cmdlet filename  : Invoke-WinMerge.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

<#
.SYNOPSIS
Launches WinMerge to compare two files side by side.

.DESCRIPTION
Launches the WinMerge application to compare source and target files in a side by
side diff view. The function validates the existence of both input files and
ensures WinMerge is properly installed before launching. Provides optional
wait functionality to pause execution until WinMerge closes.

.PARAMETER SourcecodeFilePath
Full or relative path to the source file for comparison. The file must exist and
be accessible.

.PARAMETER TargetcodeFilePath
Full or relative path to the target file for comparison. The file must exist and
be accessible.

.PARAMETER Wait
Switch parameter that when specified will cause the function to wait for the
WinMerge application to close before continuing execution.

.EXAMPLE
Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `
                -TargetcodeFilePath "C:\target\file2.txt" `
                -Wait

.EXAMPLE
merge "C:\source\file1.txt" "C:\target\file2.txt"
#>
function Invoke-WinMerge {

    [CmdletBinding()]
    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'Path to the source file to compare'
        )]
        [ValidateNotNullOrEmpty()]
        [ValidateScript({ Microsoft.PowerShell.Management\Test-Path -LiteralPath $_ -PathType Leaf })]
        [string]$SourcecodeFilePath,
        [Parameter(
            Mandatory = $true,
            Position = 1,
            HelpMessage = 'Path to the target file to compare against'
        )]
        [ValidateNotNullOrEmpty()]
        [ValidateScript({ Microsoft.PowerShell.Management\Test-Path -LiteralPath $_ -PathType Leaf })]
        [string]$TargetcodeFilePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Wait for WinMerge to close before continuing'
        )]
        [switch]$Wait
    )


    begin {

        # verify that winmerge is installed and accessible
        Microsoft.PowerShell.Utility\Write-Verbose 'Verifying WinMerge installation status...'
        GenXdev\EnsureWinMergeInstalled


        # convert any relative paths to full paths for reliability
        $sourcePath = GenXdev\Expand-Path $SourcecodeFilePath
        $targetPath = GenXdev\Expand-Path $TargetcodeFilePath


        # log the resolved file paths for troubleshooting
        Microsoft.PowerShell.Utility\Write-Verbose "Resolved source file path: $sourcePath"
        Microsoft.PowerShell.Utility\Write-Verbose "Resolved target file path: $targetPath"
    }



    process {

        # prepare the process start parameters including executable and files
        $processArgs = @{
            FilePath     = 'WinMergeU.exe'
            ArgumentList = $sourcePath, $targetPath
        }


        # add wait parameter if specified to block until winmerge closes
        if ($Wait) {
            $processArgs['Wait'] = $true
            Microsoft.PowerShell.Utility\Write-Verbose 'Will wait for WinMerge process to exit'
        }


        # launch winmerge with the configured parameters
        Microsoft.PowerShell.Utility\Write-Verbose 'Launching WinMerge application...'
        Microsoft.PowerShell.Management\Start-Process @processArgs
    }


    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI
Original cmdlet filename  : Merge-TranslationCache.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

<#
.SYNOPSIS
Manages the persistent translation cache with batched disk writes per
language.

.DESCRIPTION
Maintains a module-scoped in-memory translation cache for Get-TextTranslation.
The cache is split into per-language JSON files under
$env:LOCALAPPDATA\GenXdev.PowerShell\. Calls to add entries are batched —
disk writes only occur every 100 mutations per language, or when -PersistNow
is called. -PersistNow also clears the in-memory cache to prevent unbounded
growth across processing batches.

.PARAMETER GetCache
Returns the in-memory cache hashtable (language → @{ text → translation }),
loading from per-language disk files on first access.

.PARAMETER Language
BCP 47 language code for the cache entry (e.g., 'nl-NL', 'de-DE').

.PARAMETER Key
The source text being translated.

.PARAMETER Value
The translated text to cache.

.PARAMETER PersistNow
Immediately writes all dirty language caches to disk and clears the
in-memory cache.

.PARAMETER ClearCache
Clears the in-memory cache and deletes all translation-cache-*.json files
from disk.

.PARAMETER PurgeFromCache
Loads all per-language cache files from disk and removes any entries where
the translation is empty, whitespace-only, or identical to the source text
after stripping all non-letter characters (a-z/A-Z). This cleans up failed
translations where the LLM returned the input unchanged (possibly with
appended whitespace or formatting). Writes cleaned caches back to disk.
Reports how many entries were removed per language.

.EXAMPLE
$cache = Merge-TranslationCache -GetCache

.EXAMPLE
Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'

.EXAMPLE
Merge-TranslationCache -PersistNow

.EXAMPLE
Merge-TranslationCache -PurgeFromCache

#>
function Merge-TranslationCache {

    [CmdletBinding(DefaultParameterSetName = 'Get')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType([System.Collections.Hashtable])]
    param (
        [Parameter(
            ParameterSetName = 'Get',
            Mandatory = $false,
            HelpMessage = 'Return the in-memory cache hashtable'
        )]
        [switch] $GetCache,
        [Parameter(
            ParameterSetName = 'Set',
            Mandatory = $true,
            HelpMessage = 'BCP 47 language code for the cache entry'
        )]
        [string] $Language,
        [Parameter(
            ParameterSetName = 'Set',
            Mandatory = $true,
            HelpMessage = 'The source text to cache'
        )]
        [string] $Key,
        [Parameter(
            ParameterSetName = 'Set',
            Mandatory = $true,
            HelpMessage = 'The translated text to store'
        )]
        [string] $Value,
        [Parameter(
            ParameterSetName = 'Persist',
            Mandatory = $true,
            HelpMessage = 'Write all dirty caches to disk and clear memory'
        )]
        [switch] $PersistNow,
        [Parameter(
            ParameterSetName = 'Clear',
            Mandatory = $true,
            HelpMessage = 'Clear the in-memory cache and delete all disk files'
        )]
        [switch] $ClearCache,
        [Parameter(
            ParameterSetName = 'Purge',
            Mandatory = $true,
            HelpMessage = ('Remove untranslated entries from all language ' +
                'caches on disk')
        )]
        [switch] $PurgeFromCache
    )

    begin {
        $cacheDir = [System.IO.Path]::Combine(
            [System.Environment]::GetEnvironmentVariable('LOCALAPPDATA'),
            'GenXdev.PowerShell')
    }

    process {
        # --ClearCache: wipe memory and all disk files
        if ($ClearCache) {
            $script:__TranslationCache = @{}
            $script:__TranslationCacheLoaded = $false
            $script:__TranslationCacheMutations = @{}

            $pattern = [System.IO.Path]::Combine($cacheDir,
                'translation-cache-*.json')
            $oldFile = [System.IO.Path]::Combine($cacheDir,
                'translation-cache.json')

            $filesToDelete = @(
                [System.IO.Directory]::GetFiles($cacheDir,
                    'translation-cache-*.json'))
            if ([System.IO.File]::Exists($oldFile)) {
                $filesToDelete += $oldFile
            }
            foreach ($f in $filesToDelete) {
                $null = [System.IO.File]::Delete($f)
            }
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Translation cache cleared (memory + disk).')
            return
        }

        # --PersistNow: save all dirty languages, clear memory
        if ($PersistNow) {
            if ($script:__TranslationCache -and
                $script:__TranslationCache.Count -gt 0) {

                $saved = 0
                foreach ($lang in $script:__TranslationCache.Keys) {
                    $langData = $script:__TranslationCache[$lang]
                    if (-not $langData -or $langData.Count -eq 0) { continue }

                    $langPath = [System.IO.Path]::Combine($cacheDir,
                        "translation-cache-${lang}.json")

                    # Merge with existing on-disk cache for this language
                    if ([System.IO.File]::Exists($langPath)) {
                        $existing = GenXdev\ReadJsonWithRetry `
                            -FilePath $langPath `
                            -AsHashtable `
                            -MaxRetries 5 `
                            -RetryDelayMs 100
                        if ($existing) {
                            foreach ($k in $existing.Keys) {
                                if (-not $langData.ContainsKey($k)) {
                                    $langData[$k] = $existing[$k]
                                }
                            }
                        }
                    }

                    GenXdev\Write-JsonFileAtomic `
                        -FilePath $langPath `
                        -Data $langData `
                        -MaxRetries 5 `
                        -RetryDelayMs 100
                    $saved += $langData.Count
                }

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Persisted ${saved} total entries across " +
                    "$($script:__TranslationCache.Keys.Count) languages.")
            }

            # Clear in-memory cache to prevent unbounded growth
            $script:__TranslationCache = @{}
            $script:__TranslationCacheLoaded = $false
            $script:__TranslationCacheMutations = @{}
            return
        }

        # --GetCache: return in-memory cache, loading from disk on first call
        if ($GetCache) {
            if (-not $script:__TranslationCacheLoaded) {
                $script:__TranslationCache = @{}
                $script:__TranslationCacheMutations = @{}

                # Load per-language files
                $langFiles = [System.IO.Directory]::GetFiles($cacheDir,
                    'translation-cache-*.json')
                foreach ($f in $langFiles) {
                    try {
                        # Extract language code from filename:
                        # translation-cache-nl-NL.json → nl-NL
                        $fileName = [System.IO.Path]::GetFileNameWithoutExtension(
                            $f)
                        $langCode = $fileName -replace '^translation-cache-',
                            ''
                        $langData = GenXdev\ReadJsonWithRetry `
                            -FilePath $f `
                            -AsHashtable `
                            -MaxRetries 5 `
                            -RetryDelayMs 100
                        if ($langData) {
                            $script:__TranslationCache[$langCode] = $langData
                            $script:__TranslationCacheMutations[$langCode] = 0
                        }
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Failed to load cache file '${f}': $_")
                    }
                }

                # Backward compat: also try old monolithic file
                $oldPath = [System.IO.Path]::Combine($cacheDir,
                    'translation-cache.json')
                if (-not $langFiles -and
                    [System.IO.File]::Exists($oldPath)) {
                    try {
                        $oldData = GenXdev\ReadJsonWithRetry `
                            -FilePath $oldPath `
                            -AsHashtable `
                            -MaxRetries 5 `
                            -RetryDelayMs 100
                        if ($oldData) {
                            foreach ($lang in $oldData.Keys) {
                                $script:__TranslationCache[$lang] = $oldData[
                                    $lang]
                                $script:__TranslationCacheMutations[$lang] = 0
                            }
                        }
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Failed to load legacy cache: $_")
                    }
                }

                $script:__TranslationCacheLoaded = $true
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Translation cache loaded from disk (' +
                    "$($script:__TranslationCache.Keys.Count) languages).")
            }

            return $script:__TranslationCache
        }

        # --PurgeFromCache: remove untranslated entries from all disk caches
        if ($PurgeFromCache) {
            $langFiles = @([System.IO.Directory]::GetFiles($cacheDir,
                'translation-cache-*.json'))
            # Also check old monolithic file
            $oldFile = [System.IO.Path]::Combine($cacheDir,
                'translation-cache.json')
            if ([System.IO.File]::Exists($oldFile)) {
                $langFiles += $oldFile
            }

            if ($langFiles.Count -eq 0) {
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'No translation cache files found to purge.')
                return
            }

            $totalRemoved = 0
            foreach ($f in $langFiles) {
                try {
                    $langData = GenXdev\ReadJsonWithRetry `
                        -FilePath $f `
                        -AsHashtable `
                        -MaxRetries 5 `
                        -RetryDelayMs 100
                    if (-not $langData) { continue }

                    $removed = 0
                    $keysToRemove = [System.Collections.Generic.List[string]]::new()
                    foreach ($entry in $langData.GetEnumerator()) {
                        $k = $entry.Key
                        $v = $entry.Value

                        # Remove empty or whitespace-only values
                        if ([string]::IsNullOrWhiteSpace($v)) {
                            $keysToRemove.Add($k)
                            $removed++
                            continue
                        }

                        # Strip non-letters, compare case-insensitive.
                        # If identical, the translation is bogus.
                        $normalizedKey = $k -replace '[^a-zA-Z]', ''
                        $normalizedVal = $v -replace '[^a-zA-Z]', ''
                        if ($normalizedKey -eq $normalizedVal) {
                            $keysToRemove.Add($k)
                            $removed++
                        }
                    }

                    if ($removed -gt 0) {
                        foreach ($k in $keysToRemove) {
                            $langData.Remove($k)
                        }
                        GenXdev\Write-JsonFileAtomic `
                            -FilePath $f `
                            -Data $langData `
                            -MaxRetries 5 `
                            -RetryDelayMs 100
                        $totalRemoved += $removed
                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Purged ${removed} entries from '${f}'.")
                    }
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Failed to purge '${f}': $_")
                }
            }

            # Also clear in-memory cache so it reloads clean
            $script:__TranslationCache = @{}
            $script:__TranslationCacheLoaded = $false
            $script:__TranslationCacheMutations = @{}

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Purge complete: removed ${totalRemoved} entries.")
            return
        }

        # --Set: add entry to in-memory cache, persist every 100 mutations
        if ($Language -and $Key -and $Value) {
            if (-not $script:__TranslationCacheLoaded) {
                # Auto-load if not yet initialized
                $null = GenXdev\Merge-TranslationCache -GetCache
            }

            if (-not $script:__TranslationCache.ContainsKey($Language)) {
                $script:__TranslationCache[$Language] = @{}
                $script:__TranslationCacheMutations[$Language] = 0
            }

            $script:__TranslationCache[$Language][$Key] = $Value
            $script:__TranslationCacheMutations[$Language]++

            # Persist this language every 100 mutations
            if ($script:__TranslationCacheMutations[$Language] -ge 100) {
                $langPath = [System.IO.Path]::Combine($cacheDir,
                    "translation-cache-${Language}.json")

                # Merge with existing on-disk cache
                $merged = $script:__TranslationCache[$Language]
                if ([System.IO.File]::Exists($langPath)) {
                    $existing = GenXdev\ReadJsonWithRetry `
                        -FilePath $langPath `
                        -AsHashtable `
                        -MaxRetries 5 `
                        -RetryDelayMs 100
                    if ($existing) {
                        foreach ($k in $existing.Keys) {
                            if (-not $merged.ContainsKey($k)) {
                                $merged[$k] = $existing[$k]
                            }
                        }
                    }
                }

                GenXdev\Write-JsonFileAtomic `
                    -FilePath $langPath `
                    -Data $merged `
                    -MaxRetries 5 `
                    -RetryDelayMs 100

                $script:__TranslationCacheMutations[$Language] = 0
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Auto-persisted cache for '${Language}' " +
                    "($($merged.Count) entries).")
            }
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI
Original cmdlet filename  : New-GenXdevMCPToken.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

# Part of PowerShell module : GenXdev.AI
# Original cmdlet filename  : New-GenXdevMCPToken.ps1
# Original author           : René Vaessen / GenXdev
# Version                   : 3.26.2026
# Copyright (c)  René Vaessen / GenXdev
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#     http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
function New-GenXdevMCPToken {
    <#
    .SYNOPSIS
        Generates a secure random Bearer token for GenXdev MCP server
        authentication.

    .DESCRIPTION
        Creates a cryptographically secure random token and optionally stores
        it in the user environment variable GENXDEV_MCP_TOKEN. The token is
        used to authenticate requests to the GenXdev MCP server from clients on
        the local network.

    .PARAMETER Length
        The length of the token in bytes. Default is 32 bytes (256 bits),
        which produces a 44-character base64 string. Minimum is 16 bytes (128
        bits).

    .PARAMETER SetEnvironmentVariable
        If specified, stores the generated token in the GENXDEV_MCP_TOKEN user
        environment variable. This makes the token available to the MCP server
        and VS Code MCP client automatically.

    .PARAMETER Force
        If specified, overwrites an existing GENXDEV_MCP_TOKEN environment
        variable without prompting. Only used with -SetEnvironmentVariable.

    .EXAMPLE
        New-GenXdevMCPToken

        Generates and displays a new random token without storing it.

    .EXAMPLE
        New-GenXdevMCPToken -SetEnvironmentVariable

        Generates a new token and stores it in the GENXDEV_MCP_TOKEN user
        environment variable. Prompts if a token already exists.

    .EXAMPLE
        New-GenXdevMCPToken -Length 64 -SetEnvironmentVariable -Force

        Generates a longer 64-byte token, stores it in the environment
        variable, and overwrites any existing token without prompting.

    .EXAMPLE
        $token = New-GenXdevMCPToken
        Start-GenXdevMCPServer -Token $token

        Generates a token and passes it directly to the MCP server without
        storing in environment.

    .OUTPUTS
        System.String. The generated Bearer token as a base64-encoded string.

    .NOTES
        - Token is cryptographically random using
          System.Security.Cryptography.RandomNumberGenerator
        - Default 32-byte token provides 256 bits of entropy (highly secure)
        - Stored tokens persist across PowerShell sessions and system reboots
        - To remove the token, use:
          [System.Environment]::SetEnvironmentVariable('GENXDEV_MCP_TOKEN',
          $null, 'User')
    #>
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Mandatory = $false, HelpMessage = "The length of the token in bytes (default: 32, minimum: 16)")]
        [ValidateRange(16, 128)]
        [int]$Length = 32,

        [Parameter(Mandatory = $false, HelpMessage = "Store the token in GENXDEV_MCP_TOKEN user environment variable")]
        [switch]$SetEnvironmentVariable,

        [Parameter(Mandatory = $false, HelpMessage = "Overwrite existing environment variable without prompting")]
        [switch]$Force
    )

    # Generate cryptographically secure random bytes
    $randomBytes = [byte[]]::new($Length)
    $rng = [System.Security.Cryptography.RandomNumberGenerator]::Create()
    try {
        $rng.GetBytes($randomBytes)
    }
    finally {
        $rng.Dispose()
    }

    # Convert to base64 for safe transmission (URL-safe characters)
    $token = [System.Convert]::ToBase64String($randomBytes)

    # Display token information
    Microsoft.PowerShell.Utility\Write-Host "Generated secure MCP token ($Length bytes, $($token.Length) characters):" -ForegroundColor Green
    Microsoft.PowerShell.Utility\Write-Host $token -ForegroundColor Cyan

    # Store in environment variable if requested
    if ($SetEnvironmentVariable) {
        # Check for existing token
        $existingToken = [System.Environment]::GetEnvironmentVariable('GENXDEV_MCP_TOKEN', 'User')

        if (-not [string]::IsNullOrEmpty($existingToken) -and -not $Force) {
            # Prompt user for confirmation
            $message = "An MCP token is already configured in GENXDEV_MCP_TOKEN. Overwrite it?"
            $title = "Confirm Token Replacement"
            $yes = Microsoft.PowerShell.Utility\New-Object System.Management.Automation.Host.ChoiceDescription "&Yes", "Replace the existing token"
            $no = Microsoft.PowerShell.Utility\New-Object System.Management.Automation.Host.ChoiceDescription "&No", "Keep the existing token"
            $options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)
            $result = $host.UI.PromptForChoice($title, $message, $options, 1)

            if ($result -eq 1) {
                Microsoft.PowerShell.Utility\Write-Host "Keeping existing token." -ForegroundColor Yellow
                return $existingToken
            }
        }

        # Set the environment variable
        if ($PSCmdlet.ShouldProcess("GENXDEV_MCP_TOKEN", "Set user environment variable")) {
            try {
                [System.Environment]::SetEnvironmentVariable('GENXDEV_MCP_TOKEN', $token, 'User')
                Microsoft.PowerShell.Utility\Write-Host "`nToken stored in GENXDEV_MCP_TOKEN user environment variable." -ForegroundColor Green
                Microsoft.PowerShell.Utility\Write-Host "The token will be available to:" -ForegroundColor Gray
                Microsoft.PowerShell.Utility\Write-Host "  - GenXdev MCP Server (via Start-GenXdevMCPServer)" -ForegroundColor Gray
                Microsoft.PowerShell.Utility\Write-Host "  - VS Code MCP Client (via .vscode/mcp.json)" -ForegroundColor Gray
                Microsoft.PowerShell.Utility\Write-Host "`nRestart VS Code to apply the new token to the MCP client." -ForegroundColor Yellow
                Microsoft.PowerShell.Utility\Write-Host "Restart the MCP server task to apply the new token to the server." -ForegroundColor Yellow
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Error "Failed to set environment variable: $($_.Exception.Message)"
            }
        }
    }
    else {
        Microsoft.PowerShell.Utility\Write-Host "`nTo use this token:" -ForegroundColor Gray
        Microsoft.PowerShell.Utility\Write-Host "  1. Store it: New-GenXdevMCPToken -SetEnvironmentVariable" -ForegroundColor Gray
        Microsoft.PowerShell.Utility\Write-Host "  2. Or pass it: Start-GenXdevMCPServer -Token `"$token`"" -ForegroundColor Gray
    }

    # Return the token
    return $token
}
<##############################################################################
Part of PowerShell module : GenXdev.AI
Original cmdlet filename  : New-LLMAudioChat.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

<#
.SYNOPSIS
Creates an interactive audio chat session with an LLM model.

.DESCRIPTION
Initiates a voice-based conversation with a language model, supporting audio
input and output. The function handles audio recording, transcription, model
queries, and text-to-speech responses. Supports multiple language models and
various configuration options including window management, GPU acceleration,
and advanced audio processing features.

.PARAMETER Query
Initial text query to send to the model. Can be empty to start with voice
input.

.PARAMETER Instructions
System instructions/prompt to guide the model's behavior.

.PARAMETER Attachments
Array of file paths to attach to the conversation for context.

.PARAMETER AudioTemperature
Temperature setting for audio input recognition. Range: 0.0-1.0. Default: 0.0

.PARAMETER Temperature
Temperature for response randomness. Range: 0.0-1.0. Default: 0.2

.PARAMETER TemperatureResponse
Temperature for controlling response randomness. Range: 0.0-1.0. Default: 0.01

.PARAMETER LanguageIn
Language to detect in audio input. Default: "English"

.PARAMETER CpuThreads
Number of CPU threads to use. 0=auto. Default: 0

.PARAMETER SuppressRegex
Regex pattern to suppress tokens from output.

.PARAMETER AudioContextSize
Size of the audio context window.

.PARAMETER SilenceThreshold
Silence detect threshold (0..32767 defaults to 30)

.PARAMETER LengthPenalty
Penalty factor for response length. Range: 0-1

.PARAMETER EntropyThreshold
Threshold for entropy in responses. Range: 0-1

.PARAMETER LogProbThreshold
Threshold for log probability in responses. Range: 0-1

.PARAMETER NoSpeechThreshold
Threshold for no-speech detection. Range: 0-1. Default: 0.1

.PARAMETER LLMQueryType
The type of LLM query

.PARAMETER Model
The model identifier or pattern to use for AI operations

.PARAMETER ImageDetail
Image detail level setting. Options: "low", "medium", "high". Default: "low"

.PARAMETER ApiEndpoint
The API endpoint URL for AI operations

.PARAMETER ApiKey
The API key for authenticated AI operations

.PARAMETER TimeoutSeconds
The timeout in seconds for AI operations

.PARAMETER ResponseFormat
A JSON schema for the requested output format

.PARAMETER MarkupBlocksTypeFilter
Will only output markup blocks of the specified types

.PARAMETER PreferencesDatabasePath
Database path for preference data files

.PARAMETER ExposedCmdLets
Array of PowerShell command definitions available as tools to the model.

.PARAMETER IncludeThoughts
Switch to include model's thought process in output.

.PARAMETER DontAddThoughtsToHistory
Switch to include model's thoughts in output

.PARAMETER ContinueLast
Switch to continue from last conversation context.

.PARAMETER DontSpeak
Switch to disable text-to-speech for AI responses.

.PARAMETER DontSpeakThoughts
Switch to disable text-to-speech for AI thought responses.

.PARAMETER NoVOX
Switch to disable silence detection for automatic recording stop.

.PARAMETER UseDesktopAudioCapture
Switch to use desktop audio capture instead of microphone input.

.PARAMETER NoContext
Switch to disable context usage in conversation.

.PARAMETER WithBeamSearchSamplingStrategy
Switch to enable beam search sampling strategy.

.PARAMETER OnlyResponses
Switch to suppress recognized text in output.

.PARAMETER NoSessionCaching
Switch to disable session caching.

.PARAMETER OutputMarkdownBlocksOnly
Will only output markup block responses

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session

.EXAMPLE
New-LLMAudioChat -Query "Tell me about PowerShell" `
    -Model "qwen2.5-14b-instruct" `
    -Temperature 0.7

.EXAMPLE
llmaudiochat "What's the weather?" -DontSpeak
#>
function New-LLMAudioChat {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Alias('llmaudiochat')]

    param(
        [Parameter(
            ValueFromPipeline = $true,
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'Initial query text to send to the model'
        )]
        [AllowEmptyString()]
        [string] $Query = '',
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'System instructions for the model'
        )]
        [string] $Instructions,
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'Array of file paths to attach'
        )]
        [string[]] $Attachments = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whisper model type to use, defaults to LargeV3Turbo'
        )]
        [ValidateSet('Tiny', 'TinyEn', 'Base', 'BaseEn', 'Small', 'SmallEn', 'Medium', 'MediumEn', 'LargeV1', 'LargeV2', 'LargeV3', 'LargeV3Turbo')]
        [string] $ModelType = 'SmallEn',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for audio input recognition (0.0-1.0)'
        )]
        [ValidateRange(0.0, 1.0)]
        [double] $AudioTemperature = 0.5,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response randomness (0.0-1.0)'
        )]
        [ValidateRange(-1, 1.0)]
        [double] $Temperature = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The temperature parameter for controlling the ' +
                'randomness of the response.')
        )]
        [ValidateRange(0.0, 1.0)]
        [double] $TemperatureResponse = 0.01,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sets the language to detect'
        )]
        [Alias('Language')]
        [ValidateSet(
            'Afrikaans',
            'Akan',
            'Albanian',
            'Amharic',
            'Arabic',
            'Armenian',
            'Azerbaijani',
            'Basque',
            'Belarusian',
            'Bemba',
            'Bengali',
            'Bihari',
            'Bork, bork, bork!',
            'Bosnian',
            'Breton',
            'Bulgarian',
            'Cambodian',
            'Catalan',
            'Cherokee',
            'Chichewa',
            'Chinese (Simplified)',
            'Chinese (Traditional)',
            'Corsican',
            'Croatian',
            'Czech',
            'Danish',
            'Dutch',
            'Elmer Fudd',
            'English',
            'Esperanto',
            'Estonian',
            'Ewe',
            'Faroese',
            'Filipino',
            'Finnish',
            'French',
            'Frisian',
            'Ga',
            'Galician',
            'Georgian',
            'German',
            'Greek',
            'Guarani',
            'Gujarati',
            'Hacker',
            'Haitian Creole',
            'Hausa',
            'Hawaiian',
            'Hebrew',
            'Hindi',
            'Hungarian',
            'Icelandic',
            'Igbo',
            'Indonesian',
            'Interlingua',
            'Irish',
            'Italian',
            'Japanese',
            'Javanese',
            'Kannada',
            'Kazakh',
            'Kinyarwanda',
            'Kirundi',
            'Klingon',
            'Kongo',
            'Korean',
            'Krio (Sierra Leone)',
            'Kurdish',
            'Kurdish (Soranî)',
            'Kyrgyz',
            'Laothian',
            'Latin',
            'Latvian',
            'Lingala',
            'Lithuanian',
            'Lozi',
            'Luganda',
            'Luo',
            'Macedonian',
            'Malagasy',
            'Malay',
            'Malayalam',
            'Maltese',
            'Maori',
            'Marathi',
            'Mauritian Creole',
            'Moldavian',
            'Mongolian',
            'Montenegrin',
            'Nepali',
            'Nigerian Pidgin',
            'Northern Sotho',
            'Norwegian',
            'Norwegian (Nynorsk)',
            'Occitan',
            'Oriya',
            'Oromo',
            'Pashto',
            'Persian',
            'Pirate',
            'Polish',
            'Portuguese (Brazil)',
            'Portuguese (Portugal)',
            'Punjabi',
            'Quechua',
            'Romanian',
            'Romansh',
            'Runyakitara',
            'Russian',
            'Scots Gaelic',
            'Serbian',
            'Serbo-Croatian',
            'Sesotho',
            'Setswana',
            'Seychellois Creole',
            'Shona',
            'Sindhi',
            'Sinhalese',
            'Slovak',
            'Slovenian',
            'Somali',
            'Spanish',
            'Spanish (Latin American)',
            'Sundanese',
            'Swahili',
            'Swedish',
            'Tajik',
            'Tamil',
            'Tatar',
            'Telugu',
            'Thai',
            'Tigrinya',
            'Tonga',
            'Tshiluba',
            'Tumbuka',
            'Turkish',
            'Turkmen',
            'Twi',
            'Uighur',
            'Ukrainian',
            'Urdu',
            'Uzbek',
            'Vietnamese',
            'Welsh',
            'Wolof',
            'Xhosa',
            'Yiddish',
            'Yoruba',
            'Zulu'
        )]
        [string] $LanguageIn,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Number of CPU threads to use, defaults to 0 ' +
                '(auto)')
        )]
        [int] $CpuThreads = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regex to suppress tokens from the output'
        )]
        [string] $SuppressRegex = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Size of the audio context'
        )]
        [int] $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Silence detect threshold (0..32767 defaults ' +
                'to 30)')
        )]
        [ValidateRange(0, 32767)]
        [int] $SilenceThreshold = 30,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty'
        )]
        [ValidateRange(0, 1)]
        [float] $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold'
        )]
        [ValidateRange(0, 1)]
        [float] $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold'
        )]
        [ValidateRange(0, 1)]
        [float] $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold'
        )]
        [ValidateRange(0, 1)]
        [float] $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The type of LLM query'
        )]
        [ValidateSet(
            'SimpleIntelligence',
            'Knowledge',
            'Pictures',
            'TextTranslation',
            'Coding',
            'ToolUse'
        )]
        [string] $LLMQueryType = 'ToolUse',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The model identifier or pattern to use for AI ' +
                'operations')
        )]
        [string] $Model,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Image detail level'
        )]
        [ValidateSet('low', 'medium', 'high')]
        [string] $ImageDetail = 'low',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API endpoint URL for AI operations'
        )]
        [string] $ApiEndpoint,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API key for authenticated AI operations'
        )]
        [string] $ApiKey,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indicates that LLM has no support for JSON schemas'
        )]
        [string] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Shows tool chain invocations in console')
        )]
        [switch] $ShowToolChainInvocations,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The timeout in seconds for AI operations'
        )]
        [int] $TimeoutSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('A JSON schema for the requested output format')
        )]
        [string] $ResponseFormat = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will only output markup blocks of the ' +
                'specified types')
        )]
        [ValidateNotNull()]
        [string[]] $MarkupBlocksTypeFilter = @(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        ),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Array of PowerShell command definitions to use ' +
                'as tools')
        )]
        [GenXdev.Helpers.ExposedCmdletDefinition[]]
        $ExposedCmdLets = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'ScriptBlock array of tool functions to expose to the LLM (pass-through to Invoke-LLMQuery)'
        )]
        [ScriptBlock[]] $Functions,
        [Alias('NoConfirmationFor')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of tool function names that do not require confirmation (pass-through to Invoke-LLMQuery)'
        )]
        [string[]] $NoConfirmationToolFunctionNames,
        [Alias('chat')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Chat mode for LLM query (pass-through to Invoke-LLMQuery)'
        )]
        [string] $ChatMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum tool call back length (pass-through to Invoke-LLMQuery)'
        )]
        [int] $MaxToolcallBackLength,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include model's thoughts in output"
        )]
        [switch] $IncludeThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include model's thoughts in output"
        )]
        [switch] $DontAddThoughtsToHistory,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Continue from last conversation'
        )]
        [switch] $ContinueLast,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable text-to-speech for AI responses'
        )]
        [switch] $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable text-to-speech for AI thought responses'
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Don't use silence detection to automatically " +
                'stop recording.')
        )]
        [switch] $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Whether to use desktop audio capture instead ' +
                'of microphone input')
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio device name or GUID (supports wildcards, picks first match)'
        )]
        [string] $AudioDevice,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Use both desktop and recording device"
        )]
        [switch] $UseDesktopAndRecordingDevice,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't use context"
        )]
        [switch] $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use beam search sampling strategy'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Whether to suppress reconized text in the ' +
                'output')
        )]
        [switch] $OnlyResponses,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't store session in session cache"
        )]
        [switch] $NoSessionCaching,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will only output markup block responses'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session ' +
                'for AI preferences')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session ' +
                'for AI preferences')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences ' +
                'without affecting session')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # initialize stopping flag for chat loop
        $stopping = $false

        Microsoft.PowerShell.Utility\Write-Verbose (
            'Starting new audio LLM chat session')

        # handle exposed cmdlets configuration
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Configuring exposed cmdlets...')

        if ($null -eq $ExposedCmdLets) {

            # check if continuing last session with cached cmdlets
            if ($ContinueLast -and $Global:LLMGlobalExposedCmdlets) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Using existing exposed cmdlets from last session')

                $ExposedCmdLets = $Global:LLMGlobalExposedCmdlets
            }
            else {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Initializing default exposed cmdlets')

                # initialize default allowed PowerShell cmdlets
                $ExposedCmdLets = @(
                    @{
                        Name          = 'Get-ChildItem'
                        AllowedParams = @(
                            'Path=string',
                            'Recurse=boolean',
                            'Filter=array',
                            'Include=array',
                            'Exclude=array',
                            'Force'
                        )
                        OutputText    = $false
                        Confirm       = $false
                        JsonDepth     = 3
                    },
                    @{
                        Name          = 'Find-Item'
                        AllowedParams = @('SearchMask', 'Pattern', 'PassThru')
                        OutputText    = $false
                        Confirm       = $false
                        JsonDepth     = 3
                    },
                    @{
                        Name          = 'Get-Content'
                        AllowedParams = @('Path=string')
                        OutputText    = $false
                        Confirm       = $false
                        JsonDepth     = 2
                    },
                    @{
                        Name          = 'Approve-NewTextFileContent'
                        AllowedParams = @('ContentPath', 'NewContent')
                        OutputText    = $false
                        Confirm       = $true
                        JsonDepth     = 2
                    },
                    @{
                        Name          = 'Microsoft.PowerShell.Utility\Invoke-WebRequest'
                        AllowedParams = @(
                            'Uri=string',
                            'Method=string',
                            'Body',
                            'ContentType=string',
                            'Method=string',
                            'UserAgent=string'
                        )
                        OutputText    = $true
                        Confirm       = $false
                        JsonDepth     = 6
                    },
                    @{
                        Name          = 'Invoke-RestMethod'
                        AllowedParams = @(
                            'Uri=string',
                            'Method=string',
                            'Body',
                            'ContentType=string',
                            'Method=string',
                            'UserAgent=string'
                        )
                        OutputText    = $false
                        Confirm       = $false
                        JsonDepth     = 99
                    },
                    @{
                        Name       = 'UTCNow'
                        OutputText = $true
                        Confirm    = $false
                    },
                    @{
                        Name          = 'Invoke-LLMQuery'
                        AllowedParams = @(
                            'Query',
                            'Model',
                            'Instructions',
                            'Attachments',
                            'IncludeThoughts'
                        )
                        ForcedParams  = @(
                            @{
                                Name  = 'NoSessionCaching';
                                Value = $true
                            }
                        )
                        OutputText    = $false
                        Confirm       = $false
                        JsonDepth     = 99
                    }
                )
            }
        }

        # cache exposed cmdlets if session caching is enabled
        if (-not $NoSessionCaching) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Caching exposed cmdlets for future sessions')

            $Global:LLMGlobalExposedCmdlets = $ExposedCmdLets
        }

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Successfully initialized with $($ExposedCmdLets.Count) " +
            'exposed cmdlets')

        # ensure required parameters are properly set
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Validating and setting required parameters')

        # ensure required parameters exist
        if (-not $PSBoundParameters.ContainsKey('Model')) {

            $null = $PSBoundParameters.Add('Model', $Model)
        }
        # ensure continue last parameter is available
        if (-not $PSBoundParameters.ContainsKey('ContinueLast')) {

            $null = $PSBoundParameters.Add('ContinueLast', $ContinueLast)
        }

        # remove chat once parameter if present
        if ($PSBoundParameters.ContainsKey('ChatOnce')) {

            $null = $PSBoundParameters.Remove('ChatOnce')
        }

        # ensure exposed cmdlets parameter is available
        if (-not $PSBoundParameters.ContainsKey('ExposedCmdLets')) {

            $null = $PSBoundParameters.Add('ExposedCmdLets', $ExposedCmdLets);
        }

        # track if we had an initial query
        $hadAQuery = -not [string]::IsNullOrEmpty($Query)
    }

    process {

        # set recognized text to initial query value
        [string] $recognizedText = $Query

        # main chat loop - continue until user stops
        while (-not $stopping) {

            # handle initial query vs subsequent voice input
            if ($hadAQuery) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Processing initial query: $Query")

                # check if we should process the initial query
                if ($PSCmdlet.ShouldProcess(
                        "Process initial query: $Query",
                        'Process Query',
                        'New-LLMAudioChat')) {

                    $hadAQuery = $false
                    $Query = [string]::Empty

                    # remove query parameter to prevent reuse
                    if ($PSBoundParameters.ContainsKey('Query')) {

                        $null = $PSBoundParameters.Remove('Query')
                    }
                }
            }
            else {

                # display appropriate message based on VOX setting
                if ($NoVOX) {
                    Microsoft.PowerShell.Utility\Write-Host (
                        'Press any key to start recording or Q to quit')

                    # wait for key press when VOX is disabled
                    $keyPressed = [Console]::ReadKey($true)
                    if ($keyPressed.Key -eq [ConsoleKey]::Q) {
                        # Q pressed - wait for potential second Q
                        Microsoft.PowerShell.Utility\Write-Host 'Q pressed - press Q again within 1000ms to quit...'

                        $startTime = Microsoft.PowerShell.Utility\Get-Date
                        $waitForSecondQ = $true

                        while ($waitForSecondQ -and ((Microsoft.PowerShell.Utility\Get-Date) - $startTime).TotalMilliseconds -lt 1000) {
                            if ([Console]::KeyAvailable) {
                                $secondKey = [Console]::ReadKey($true)
                                if ($secondKey.Key -eq [ConsoleKey]::Q) {
                                    Microsoft.PowerShell.Utility\Write-Host 'Double Q detected - exiting audio chat'
                                    $stopping = $true
                                    while ([Console]::KeyAvailable) { [Console]::ReadKey($true) | Microsoft.PowerShell.Core\Out-Null }
                                    return
                                } else {
                                    $waitForSecondQ = $false
                                    break
                                }
                            }
                            Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 10
                        }

                        if ($waitForSecondQ) {
                            Microsoft.PowerShell.Utility\Write-Host 'No second Q detected - continuing to recording'
                        }
                    }
                } else {
                    Microsoft.PowerShell.Utility\Write-Host (
                        'Start speaking (voice activated) or press Q twice to quit')

                    # brief check for immediate Q press to quit before starting VOX
                    if ([Console]::KeyAvailable) {
                        $keyPressed = [Console]::ReadKey($true)
                        if ($keyPressed.Key -eq [ConsoleKey]::Q) {
                            # Q pressed - wait for potential second Q
                            Microsoft.PowerShell.Utility\Write-Host 'Q pressed - press Q again within 1000ms to quit...'

                            $startTime = Microsoft.PowerShell.Utility\Get-Date
                            $waitForSecondQ = $true

                            while ($waitForSecondQ -and ((Microsoft.PowerShell.Utility\Get-Date) - $startTime).TotalMilliseconds -lt 1000) {
                                if ([Console]::KeyAvailable) {
                                    $secondKey = [Console]::ReadKey($true)
                                    if ($secondKey.Key -eq [ConsoleKey]::Q) {
                                        Microsoft.PowerShell.Utility\Write-Host 'Double Q detected - exiting audio chat'
                                        $stopping = $true
                                        while ([Console]::KeyAvailable) { [Console]::ReadKey($true) | Microsoft.PowerShell.Core\Out-Null }
                                        return
                                    } else {
                                        $waitForSecondQ = $false
                                        break
                                    }
                                }
                                Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 10
                            }

                            if ($waitForSecondQ) {
                                Microsoft.PowerShell.Utility\Write-Host 'No second Q detected - continuing to recording'
                            }
                        }
                    }
                }

                try {

                    # prepare audio transcription parameters
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Preparing audio transcription parameters')

                    $audioParams = GenXdev\Copy-IdenticalParamValues `
                        -BoundParameters $PSBoundParameters `
                        -FunctionName 'GenXdev\Start-AudioTranscription' `
                        -DefaultValues `
                    (Microsoft.PowerShell.Utility\Get-Variable `
                            -Scope Local `
                            -ErrorAction SilentlyContinue)

                    # configure and execute audio recording
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Configuring audio settings')

                    $audioParams.VOX = -not $NoVOX
                    $audioParams.Temperature = $AudioTemperature

                    # process text input or start recording
                    $recognizedText = $Query ? $Query.Trim() : [string]::Empty

                    # start audio recording if no text input provided
                    if ([string]::IsNullOrWhiteSpace($recognizedText)) {

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            'Starting audio recording session')

                        $recognizedText = GenXdev\Start-AudioTranscription @audioParams
                    }
                }
                catch {

                    # handle audio recording errors
                    if ("$PSItem" -notlike '*aborted*') {

                        Microsoft.PowerShell.Utility\Write-Error $PSItem
                    }

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Audio transcription failed or was aborted')

                    $Query = [string]::Empty
                    $recognizedText = [string]::Empty
                    continue
                }
            }

            # process recognized input if not empty
            if (-not [string]::IsNullOrWhiteSpace($recognizedText)) {

                $question = $recognizedText

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Processing recognized input: $question")

                # prepare llm query parameters
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Preparing LLM parameters')

                $invokeLLMQueryParams = `
                    GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\New-LLMTextChat' `
                    -DefaultValues `
                (Microsoft.PowerShell.Utility\Get-Variable `
                        -Scope Local `
                        -ErrorAction SilentlyContinue)

                # configure and execute LLM query
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Configuring LLM query parameters')

                $invokeLLMQueryParams.Query = $question
                $invokeLLMQueryParams.Speak = -not $DontSpeak
                $invokeLLMQueryParams.SpeakThoughts = -not $DontSpeakThoughts
                $invokeLLMQueryParams.ChatOnce = $true

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Executing LLM query')

                # execute the llm query if user confirms
                if ($PSCmdlet.ShouldProcess(
                        "Execute LLM query: $question",
                        'Query LLM',
                        'New-LLMAudioChat')) {

                    # capture and display the LLM response in cyan
                    $response = GenXdev\New-LLMTextChat @invokeLLMQueryParams

                    if (-not [string]::IsNullOrWhiteSpace($response)) {
                        Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Cyan $response
                    }
                }

                Microsoft.PowerShell.Utility\Write-Host (
                    'Press any key to interrupt and start recording or Q to quit')
            }
            else {

                Microsoft.PowerShell.Utility\Write-Host (
                    "Too short or only silence recorded`r`n")
            }

            # monitor for key presses during speech output
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Monitoring for key presses during speech output')

            $continueWaiting = $true

            while ($continueWaiting -and (GenXdev\Get-IsSpeaking)) {

                # check for available key presses
                while ([Console]::KeyAvailable) {

                    $key = [Console]::ReadKey().Key
                    [System.Console]::Write("`e[1G`e[2K")

                    # quit if q key pressed
                    if ($key -eq [ConsoleKey]::Q) {

                        GenXdev\Stop-TextToSpeech

                        Microsoft.PowerShell.Utility\Write-Host 'Q pressed - press Q again within 1000ms to quit or any other key to continue...'

                        # wait 200ms for potential second Q press
                        $qPressTime = Microsoft.PowerShell.Utility\Get-Date
                        $waitingForSecondQ = $true

                        while ($waitingForSecondQ -and ((Microsoft.PowerShell.Utility\Get-Date) - $qPressTime).TotalMilliseconds -lt 1000) {
                            if ([Console]::KeyAvailable) {
                                $secondKey = [Console]::ReadKey($true)
                                if ($secondKey.Key -eq [ConsoleKey]::Q) {
                                    # double Q pressed - exit completely
                                    Microsoft.PowerShell.Utility\Write-Host 'Double Q detected - exiting audio chat'
                                    Microsoft.PowerShell.Utility\Write-Host '---------------'
                                    $continueWaiting = $false
                                    $stopping = $true
                                    while ([Console]::KeyAvailable) { [Console]::ReadKey($true) | Microsoft.PowerShell.Core\Out-Null }
                                    return
                                } else {
                                    # other key pressed - just continue current loop iteration
                                    Microsoft.PowerShell.Utility\Write-Host 'Continuing...'
                                    $waitingForSecondQ = $false
                                    $continueWaiting = $false
                                    break
                                }
                            }
                            Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 10
                        }

                        # if we reach here without second Q, just continue the current loop iteration
                        if ($waitingForSecondQ) {
                            Microsoft.PowerShell.Utility\Write-Host 'No second Q detected - continuing...'
                        }

                        Microsoft.PowerShell.Utility\Write-Host '---------------'
                        $continueWaiting = $false
                        break
                    }
                    else {

                        $continueWaiting = $false
                        break
                    }
                }

                # wait briefly before checking again
                $null = Microsoft.PowerShell.Utility\Start-Sleep `
                    -Milliseconds 100
            }

            # clear previous prompt
            [System.Console]::Write("`e[1A`e[2K")

            # stop text to speech and show separator
            GenXdev\Stop-TextToSpeech

            Microsoft.PowerShell.Utility\Write-Host '---------------'
        }
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose (
            'Audio chat session completed')
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI
Original cmdlet filename  : New-LLMTextChat.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

<#
.SYNOPSIS
Starts an interactive text chat session with AI capabilities.

.DESCRIPTION
Initiates an interactive chat session with AI capabilities, allowing users to add
or remove PowerShell functions during the conversation and execute PowerShell
commands. This function provides a comprehensive interface for AI-powered
conversations with extensive tool integration and customization options.

.PARAMETER Query
Initial text to send to the model.

.PARAMETER Instructions
System instructions to provide context to the AI model.

.PARAMETER Attachments
Array of file paths to attach to the conversation.

.PARAMETER Temperature
Controls randomness in responses (0.0-1.0). Lower values are more deterministic.

.PARAMETER ImageDetail
Level of detail for image generation (low, medium, high).

.PARAMETER ResponseFormat
A JSON schema for the requested output format.

.PARAMETER LLMQueryType
The type of LLM query.

.PARAMETER Model
The model identifier or pattern to use for AI operations.

.PARAMETER ApiEndpoint
The API endpoint URL for AI operations.

.PARAMETER ApiKey
The API key for authenticated AI operations.

.PARAMETER TimeoutSeconds
The timeout in seconds for AI operations.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER ExposedCmdLets
Array of PowerShell command definitions to use as tools.

.PARAMETER MarkupBlocksTypeFilter
Will only output markup blocks of the specified types.

.PARAMETER IncludeThoughts
Include model's thoughts in output.

.PARAMETER DontAddThoughtsToHistory
Include model's thoughts in output.

.PARAMETER ContinueLast
Continue from last conversation.

.PARAMETER Speak
Enable text-to-speech for AI responses.

.PARAMETER SpeakThoughts
Enable text-to-speech for AI thought responses.

.PARAMETER OutputMarkdownBlocksOnly
Will only output markup block responses.

.PARAMETER ChatOnce
Used internally, to only invoke chat mode once after the llm invocation.

.PARAMETER NoSessionCaching
Don't store session in session cache.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `
    -Instructions "You are a helpful AI assistant"

.EXAMPLE
llmchat "Tell me a joke" -Speak -IncludeThoughts
#>
# store exposed cmdlets at module level instead of global scope
$script:LLMExposedCmdlets = $null

function New-LLMTextChat {

    [CmdletBinding(SupportsShouldProcess = $true, DefaultParameterSetName = 'Default')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Alias('llmchat')]

    param(
        [Parameter(
            ParameterSetName = 'Default',
            ValueFromPipeline = $true,
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'Query text to send to the model'
        )]
        [AllowEmptyString()]
        [string] $Query = '',
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'System instructions for the model'
        )]
        [string] $Instructions,
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'Array of file paths to attach'
        )]
        [string[]] $Attachments = @(),
        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = 'Temperature for response randomness (0.0-1.0)'
        )]
        [ValidateRange(-1, 1.0)]
        [double] $Temperature = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Image detail level'
        )]
        [ValidateSet('low', 'medium', 'high')]
        [string] $ImageDetail = 'low',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'A JSON schema for the requested output format'
        )]
        [string] $ResponseFormat = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The type of LLM query'
        )]
        [ValidateSet(
            'SimpleIntelligence',
            'Knowledge',
            'Pictures',
            'TextTranslation',
            'Coding',
            'ToolUse'
        )]
        [string] $LLMQueryType = 'ToolUse',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The model identifier or pattern to use for AI operations'
        )]
        [string] $Model,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API endpoint URL for AI operations'
        )]
        [string] $ApiEndpoint,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API key for authenticated AI operations'
        )]
        [string] $ApiKey,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indicates that LLM has no support for JSON schemas'
        )]
        [string] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Shows tool chain invocations in console')
        )]
        [switch] $ShowToolChainInvocations,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The timeout in seconds for AI operations'
        )]
        [int] $TimeoutSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of PowerShell command definitions to use as tools'
        )]
        [GenXdev.Helpers.ExposedCmdletDefinition[]]
        $ExposedCmdLets,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will only output markup blocks of the specified types'
        )]
        [ValidateNotNull()]
        [string[]] $MarkupBlocksTypeFilter = @('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash'),
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include model's thoughts in output"
        )]
        [switch] $IncludeThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include model's thoughts in output"
        )]
        [switch] $DontAddThoughtsToHistory,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Continue from last conversation'
        )]
        [switch] $ContinueLast,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable text-to-speech for AI responses'
        )]
        [switch] $Speak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable text-to-speech for AI thought responses'
        )]
        [switch] $SpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will only output markup block responses'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            DontShow = $true,
            Mandatory = $false,
            HelpMessage = 'Used internally, to only invoke chat mode once after the llm invocation'
        )]
        [switch] $ChatOnce,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't store session in session cache"
        )]
        [switch] $NoSessionCaching,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences without ' +
                'affecting session')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Alias('NoConfirmationFor')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Names of tool functions that should not require confirmation')]
        [string[]] $NoConfirmationToolFunctionNames,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum length for tool callback responses')]
        [int] $MaxToolcallBackLength,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for audio generation'
        )]
        $AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response generation'
        )]
        $TemperatureResponse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Language for the model or output'
        )]
        $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use'
        )]
        $CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress output'
        )]
        $SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for processing'
        )]
        $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence threshold for audio processing'
        )]
        $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty for sequence generation'
        )]
        $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold for output filtering'
        )]
        $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for output filtering'
        )]
        $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold for audio detection'
        )]
        $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output'
        )]
        $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output for thoughts'
        )]
        $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable VOX (voice activation)'
        )]
        $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use desktop audio capture'
        )]
        $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable context usage'
        )]
        $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use beam search sampling strategy'
        )]
        $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only responses'
        )]
        $OnlyResponses
    )

    begin {
        $QuietToolChainInvocations = -not $ShowToolChainInvocations

        # determine if instructions need updating
        $updateInstructions = [string]::IsNullOrWhiteSpace($Instructions)

        # initialize exposed cmdlets if not provided
        if ($null -eq $ExposedCmdLets) {

            # use cached cmdlets if continuing last session
            if ($ContinueLast -and $script:LLMExposedCmdlets) {

                $ExposedCmdLets = $script:LLMExposedCmdlets
            }
            else {

                # flag that instructions need updating
                $updateInstructions = $true

                # initialize default allowed PowerShell cmdlets
                $ExposedCmdLets = @(

                    @{
                        Name          = 'GenXdev\Find-Item'
                        AllowedParams = @('SearchMask', 'Pattern')
                        OutputText    = $false
                        Confirm       = $false
                        JsonDepth     = 3
                    },
                    @{
                        Name          = 'Microsoft.PowerShell.Management\Get-Content'
                        AllowedParams = @('LiteralPath=string')
                        OutputText    = $false
                        Confirm       = $false
                        JsonDepth     = 2
                    },
                    @{
                        Name          = 'CimCmdlets\Get-CimInstance'
                        AllowedParams = @('Query=string', 'ClassName=string')
                        OutputText    = $false
                        Confirm       = $false
                        JsonDepth     = 5
                    },
                    @{
                        Name                                 = 'GenXdev\Approve-NewTextFileContent'
                        AllowedParams                        = @('ContentPath', 'NewContent')
                        OutputText                           = $false
                        Confirm                              = $true
                        JsonDepth                            = 2
                        DontShowDuringConfirmationParamNames = @('NewContent')
                    },
                    @{
                        Name          = 'Microsoft.PowerShell.Utility\Invoke-WebRequest'
                        AllowedParams = @(
                            'Uri=string',
                            'Method=string',
                            'Body',
                            'ContentType=string',
                            'Method=string',
                            'UserAgent=string'
                        )
                        OutputText    = $true
                        Confirm       = $false
                        JsonDepth     = 6
                    },
                    @{
                        Name          = 'Microsoft.PowerShell.Utility\Invoke-RestMethod'
                        AllowedParams = @('Uri=string', 'Method=string', 'Body', 'ContentType=string', 'Method=string', 'UserAgent=string')
                        OutputText    = $false
                        Confirm       = $false
                        JsonDepth     = 99
                    },
                    @{
                        Name          = 'Microsoft.PowerShell.Utility\Invoke-Expression'
                        AllowedParams = @('Command=string')
                        Confirm       = $true
                        JsonDepth     = 40
                    },
                    @{
                        Name          = 'Microsoft.PowerShell.Management\Get-Clipboard'
                        AllowedParams = @()
                        OutputText    = $true
                        Confirm       = $false
                    },
                    @{
                        Name          = 'Microsoft.PowerShell.Management\Set-Clipboard'
                        AllowedParams = @('Value=string')
                        OutputText    = $true
                        Confirm       = $false
                    }
                );

                # convert cmdlets to function definition objects
                $functionInfoObj = (GenXdev\ConvertTo-LLMOpenAIApiFunctionDefinition -ExposedCmdLets:$ExposedCmdLets)

                # remove callback functions from each function definition
                $functionInfoObj |
                    Microsoft.PowerShell.Core\ForEach-Object {
                        $null = $_.function.Remove('callback')
                    }
            }
        }

        # update instructions with ai assistant context if needed
        if ($updateInstructions) {

            # ensure instructions string is not null
            if ([string]::IsNullOrWhiteSpace($Instructions)) {

                $Instructions = ''
            }

            # append comprehensive ai assistant instructions
            $Instructions = @"
$Instructions

**You are an interactive AI assistant. Your primary functions are to:**
1. **Ask and Answer Questions:** Engage with users to understand their queries and provide relevant responses.
2. **Invoke Tools:** Proactively suggest the use of tools or directly invoke them if you are confident they can accomplish a task.

**Key Guidelines:**
- **Tool Usage:** You don't need to use all available tool parameters, and some parameters might be mutually exclusive. Determine the best parameters to use based on the task at hand.
- **PowerShell Constraints:**
  - **Avoid PowerShell Features:** Do not rely on PowerShell features like expanding string embeddings (e.g., `$()`) or any similar methods. Invoke-Expression being the exception of course. Parameter checking is strict.
  - **No Variables/Expressions:** Do not use PowerShell variables or expressions under any circumstances.

**Multiple Tool Invocations:**
- Feel free to invoke multiple tools within a single response if necessary.

**Safety Measures:**
- Do not worry about potential harm when invoking these tools. They are either unable to make changes or will prompt the user to confirm any actions. Users are aware of the possible consequences due to the nature of the PowerShell environment and the ability to enforce confirmation for any exposed tool.
"@;

            # trim any excess whitespace from instructions
            $Instructions = $Instructions.Trim()
        }

        # cache exposed cmdlets if session caching is enabled
        if (-not $NoSessionCaching) {

            $script:LLMExposedCmdlets = $ExposedCmdLets
        }

        # output verbose message about initialized cmdlets
        Microsoft.PowerShell.Utility\Write-Verbose "Initialized with $($ExposedCmdLets.Count) exposed cmdlets"

        # clean up chatonce parameter from bound parameters
        if ($PSBoundParameters.ContainsKey('ChatOnce')) {

            $null = $PSBoundParameters.Remove('ChatOnce')
        }

        # ensure exposedcmdlets parameter is present in bound parameters
        if (-not $PSBoundParameters.ContainsKey('ExposedCmdLets')) {

            $null = $PSBoundParameters.Add('ExposedCmdLets', $ExposedCmdLets);
        }
    }


    process {

        # output verbose message about starting chat interaction
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting chat interaction loop'

        # helper function to display available tool functions
        function Show-ToolFunction {

            # internal function to extract cmdlet name from full name
            function FixName([string] $Name) {

                # find the backslash separator index
                $index = $Name.IndexOf('\')

                # return substring after backslash if found, otherwise return original
                if ($index -gt 0) {
                    return $Name.Substring($index + 1)
                }
                return $Name;
            }

            # internal function to build parameter string for display
            function GetParamString([object] $Cmdlet) {

                # return empty string if no allowed parameters
                if ($null -eq $Cmdlet.AllowedParams) { return '' }

                # extract parameter names from allowed parameters array
                $params = $Cmdlet.AllowedParams |
                    Microsoft.PowerShell.Core\ForEach-Object {

                        $a = $_

                        # extract parameter name before equals sign if present
                        if ($a -match '^(.+?)=') {
                            $a = $matches[1]
                        }
                        $a
                    }

                # return formatted parameter list
                return "($(($params -join ',')))"
            }

            # display tool functions if any are available
            if ($ExposedCmdLets.Count -gt 0) {

                # output header message for active tool functions
                Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Green `
                    "Tool functions now active ($($ExposedCmdLets.Count)) ->"

                # format and display each exposed cmdlet with parameters
                $( ($ExposedCmdLets |
                            Microsoft.PowerShell.Core\ForEach-Object {

                                # get simplified name and parameter string
                                $Name = FixName($_.Name)
                                $params = GetParamString($_)

                                # add asterisk for functions requiring confirmation
                                if ($_.Confirm) {
                                    "$Name$params"
                                }
                                else {
                                    "$Name*$params"
                                }
                            } |
                            Microsoft.PowerShell.Utility\Select-Object -Unique) -join ', ') |
                        Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Green
            }
        }

        # initialize chat state variable
        $script:isFirst = -not $ContinueLast

        # display available tools to user
        Show-ToolFunction

        # main chat loop initialization
        $shouldStop = $false

        # enter main chat interaction loop
        while (-not $shouldStop) {

            # initialize question variable
            $question = ''

            # get user input if not in chat-once mode and no query provided
            if (-not $ChatOnce -and [string]::IsNullOrWhiteSpace($Query)) {

                # display prompt character to user
                [Console]::Write('> ');

                # configure psreadline for history prediction
                try {
                    $null = PSReadLine\Set-PSReadLineOption -PredictionSource History
                }
                catch { }

                # read user input line using psreadline
                $question = PSReadLine\PSConsoleHostReadLine

                # ensure question is not null
                if ($null -eq $question) {
                    $question = [string]::Empty
                }

                if ([string]::IsNullOrWhiteSpace($question)) {

                    break;
                }
            }
            else {

                # use provided query if available
                if (-not [string]::IsNullOrWhiteSpace($Query)) {

                    # set question to query and clear query variable
                    $question = $Query
                    $Query = [string]::Empty

                    # echo the question to console
                    [Console]::WriteLine("> $question");
                }
            }

            # output verbose message about processing query
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $question"

            # update bound parameters for llm invocation
            $PSBoundParameters['ContinueLast'] = (-not $script:isFirst);
            $PSBoundParameters['Query'] = $question;
            $PSBoundParameters['ExposedCmdLets'] = $ExposedCmdLets;

            $settingsInvocationArguments = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Get-AILLMSettings' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)
            $settings = GenXdev\Get-AILLMSettings @settingsInvocationArguments

            # copy parameters for llm query invocation
            $invocationArguments = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Invoke-LLMQuery' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            # ensure chatonce is disabled for recursive calls
            $invocationArguments.ChatOnce = $false
            $invocationArguments.ErrorAction = 'SilentlyContinue'

            # invoke llm query and process each result (suppress verbose output)
            @(GenXdev\Invoke-LLMQuery @invocationArguments) |
                Microsoft.PowerShell.Core\ForEach-Object {

                    # store current result
                    $result = $_

                    # skip empty or null results
                    if (($null -eq $result) -or ([string]::IsNullOrEmpty("$result".trim()))) {
                        return
                    }

                    # mark that this is no longer the first interaction
                    $script:isFirst = $false

                    # output result based on mode
                    if ($ChatOnce) {

                        # return result object for chat-once mode
                        Microsoft.PowerShell.Utility\Write-Output $result
                    }
                    else {

                        # display result as host output for interactive mode
                        Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Yellow "$result"
                    }
                }

            # determine if chat loop should stop
            $shouldStop = $ChatOnce
        }
    }

    end {

        # output verbose message about chat session completion
        Microsoft.PowerShell.Utility\Write-Verbose 'Chat session completed, use -ContinueLast to continue the conversation'
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI
Original cmdlet filename  : Set-AILLMSettings.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

<#
.SYNOPSIS
Sets the LLM settings for AI operations in GenXdev.AI.

.DESCRIPTION
This f        [int] $TimeoutSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support json_schema response format'
        )]
        [switch] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support image upload functionality'
        )]
        [switch] $NoSupportForImageUpload,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support tool calling functionality'
        )]
        [switch] $NoSupportForToolCalls,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store the settings only in the current session without ' +
                'persisting')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $ClearSession,res the LLM (Large Language Model) settings used by the
GenXdev.AI module for various AI operations. Settings can be stored persistently
in preferences (default), only in the current session (using -SessionOnly), or
cleared from the session (using -ClearSession). The function validates that at
least one setting parameter is provided unless clearing session settings.

.PARAMETER LLMQueryType
The type of LLM query to set settings for. This determines which configuration
to store or modify. Valid values are SimpleIntelligence, Knowledge, Pictures,
TextTranslation, Coding, and ToolUse.

.PARAMETER Model
The model identifier or pattern to use for AI operations.

.PARAMETER ApiEndpoint
The API endpoint URL for AI operations.

.PARAMETER ApiKey
The API key for authenticated AI operations.

.PARAMETER NoSupportForJsonSchema
When specified, indicates that the endpoint does not support json_schema
response format. This enables fallback behavior using prompt-based instructions.

.PARAMETER NoSupportForImageUpload
When specified, indicates that the endpoint does not support image upload
functionality.

.PARAMETER NoSupportForToolCalls
When specified, indicates that the endpoint does not support tool calling
functionality.

.PARAMETER SessionOnly
When specified, stores the settings only in the current session (Global
variables) without persisting to preferences. Settings will be lost when the
session ends.

.PARAMETER ClearSession
When specified, clears only the session settings (Global variables) without
affecting persistent preferences.

.PARAMETER SkipSession
When specified, stores the settings only in persistent preferences without
affecting the current session settings.

.EXAMPLE
Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"

Sets the LLM settings for Coding query type persistently in preferences.

.EXAMPLE
Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly

Sets the LLM settings for SimpleIntelligence only for the current
session.

.EXAMPLE
Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession

Clears the session LLM settings for Pictures query type without affecting
persistent preferences.

.EXAMPLE
Set-AILLMSettings "Coding" "*Qwen*14B*"

Sets the LLM settings for Coding query type using positional parameters.
###############################################################################>
function Set-AILLMSettings {

    [CmdletBinding(SupportsShouldProcess)]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'The type of LLM query'
        )]
        [ValidateSet(
            'SimpleIntelligence',
            'Knowledge',
            'Pictures',
            'TextTranslation',
            'Coding',
            'ToolUse'
        )]
        [string] $LLMQueryType,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'The model identifier or pattern to use for AI operations'
        )]
        [string] $Model,
        [Parameter(
            Position = 7,
            Mandatory = $false,
            HelpMessage = 'The API endpoint URL for AI operations'
        )]
        [string] $ApiEndpoint,
        [Parameter(
            Position = 8,
            Mandatory = $false,
            HelpMessage = 'The API key for authenticated AI operations'
        )]
        [string] $ApiKey,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support json_schema response format'
        )]
        [switch] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support image upload functionality'
        )]
        [switch] $NoSupportForImageUpload,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support tool calling functionality'
        )]
        [switch] $NoSupportForToolCalls,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences without ' +
                'affecting session')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # validate that at least one setting parameter is provided unless clearing
        # session
        if (-not $ClearSession) {

            # define all settable parameters for validation
            $settingParams = @(
                'Model',
                'ApiEndpoint',
                'ApiKey',
                'NoSupportForJsonSchema',
                'NoSupportForImageUpload',
                'NoSupportForToolCalls'
            )

            # filter to only parameters that were actually provided
            $providedSettings = $settingParams |
                Microsoft.PowerShell.Core\Where-Object {
                    $PSBoundParameters.ContainsKey($_)
                }

            # ensure at least one setting parameter was provided
            if ($providedSettings.Count -eq 0) {

                throw ('At least one LLM setting parameter must be provided ' +
                    'when not using -ClearSession')
            }
        }

        # validate parameter dependencies when not using session-only mode
        if ((-not $SessionOnly) -or ($SkipSession)) {

            # check if api endpoint is provided without api key
            if ($PSBoundParameters.ContainsKey('ApiEndpoint') -and
                -not $PSBoundParameters.ContainsKey('ApiKey')) {

                throw ('ApiKey must be provided when ApiEndpoint is ' +
                    'specified for persistent storage')
            }
        }

        # output informational message about the operation
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Setting LLM settings for query type: $LLMQueryType"
        )
    }

    process {

        # handle clearing session variables when requested
        if ($ClearSession) {

            # create descriptive message for whatif processing
            $clearMessage = 'Clear session LLM settings for all properties (Global variables)'

            # check if user confirmed the operation or whatif mode
            if ($PSCmdlet.ShouldProcess(
                    'GenXdev.AI Module Configuration',
                    $clearMessage
                )) {

                # clear individual session variables for each property
                Microsoft.PowerShell.Utility\Set-Variable -Name ('AILLMSettings_' + $LLMQueryType + '_Model') -Value $null -Scope Global
                Microsoft.PowerShell.Utility\Set-Variable -Name ('AILLMSettings_' + $LLMQueryType + '_ApiEndpoint') -Value $null -Scope Global
                Microsoft.PowerShell.Utility\Set-Variable -Name ('AILLMSettings_' + $LLMQueryType + '_ApiKey') -Value $null -Scope Global
                Microsoft.PowerShell.Utility\Set-Variable -Name ('AILLMSettings_' + $LLMQueryType + '_NoSupportForJsonSchema') -Value $null -Scope Global
                Microsoft.PowerShell.Utility\Set-Variable -Name ('AILLMSettings_' + $LLMQueryType + '_NoSupportForImageUpload') -Value $null -Scope Global
                Microsoft.PowerShell.Utility\Set-Variable -Name ('AILLMSettings_' + $LLMQueryType + '_NoSupportForToolCalls') -Value $null -Scope Global

                # output confirmation of the clearing operation
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Cleared session LLM settings for all properties'
                )
            }
            return
        }

        # create hashtable to store only the provided settings
        $settings = @{}

        # define all possible setting parameters for iteration
        $settingParams = @(
            'Model',
            'ApiEndpoint',
            'ApiKey',
            'NoSupportForJsonSchema',
            'NoSupportForImageUpload',
            'NoSupportForToolCalls'
        )

        # iterate through all possible parameters and add provided ones to
        # settings
        $preferencesToRemove = @()
        foreach ($param in $settingParams) {

            # check if this parameter was actually provided by the user
            if ($PSBoundParameters.ContainsKey($param)) {

                # if SessionOnly, allow null values to clear individual session variables
                if ($SessionOnly) {
                    # add the parameter value to our settings hashtable (including null)
                    $settings[$param] = $PSBoundParameters[$param]
                }
                else {
                    # for persistent storage, handle null values by marking for deletion
                    if ($null -eq $PSBoundParameters[$param]) {
                        # mark this preference for deletion
                        $preferenceKey = "AILLMSettings_$($LLMQueryType)_$param"
                        $preferencesToRemove += $preferenceKey
                        Microsoft.PowerShell.Utility\Write-Verbose "Marking preference for deletion: $preferenceKey"
                    }
                    else {
                        # for string parameters, also check that they're not empty
                        $isStringParam = $param -in @('Model', 'ApiEndpoint', 'ApiKey')
                        if ($isStringParam -and [string]::IsNullOrWhiteSpace($PSBoundParameters[$param])) {
                            # mark empty string values for deletion too
                            $preferenceKey = "AILLMSettings_$($LLMQueryType)_$param"
                            $preferencesToRemove += $preferenceKey
                            Microsoft.PowerShell.Utility\Write-Verbose "Marking preference for deletion (empty string): $preferenceKey"
                        }
                        else {
                            # add the parameter value to our settings hashtable
                            $settings[$param] = $PSBoundParameters[$param]
                        }
                    }
                }
            }
        }

        # handle session-only storage when requested
        if ($SessionOnly) {

            # create human-readable description of settings for logging
            $settingsDescription = ($settings.GetEnumerator() |
                    Microsoft.PowerShell.Core\ForEach-Object {
                        "$($_.Key): $($_.Value)"
                    }) -join ', '

            # check if user confirmed the operation or whatif mode
            if ($PSCmdlet.ShouldProcess(
                    'GenXdev.AI Module Configuration',
                ("Set session-only LLM settings: [$settingsDescription]")
                )) {

                # set individual session variables for each provided setting
                foreach ($key in $settings.Keys) {
                    $sessionVarName = "AILLMSettings_$($LLMQueryType)_$key"
                    Microsoft.PowerShell.Utility\Set-Variable `
                        -Name $sessionVarName `
                        -Value $settings[$key] `
                        -Scope Global
                }

                # output confirmation of the session-only storage operation
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Set session-only LLM settings: [$settingsDescription]"
                )
            }
            return
        }

        # handle persistent storage (default behavior)
        # create human-readable description of settings for logging
        $settingsDescription = ($settings.GetEnumerator() |
                Microsoft.PowerShell.Core\ForEach-Object {
                    "$($_.Key): $($_.Value)"
                }) -join ', '

        # check if user confirmed the operation or whatif mode
        if ($PSCmdlet.ShouldProcess(
                'GenXdev.AI Module Configuration',
            ("Set LLM settings for ${LLMQueryType}: [$settingsDescription]")
            )) {

            # store each setting individually in preferences
            foreach ($key in $settings.Keys) {
                $preferenceKey = "AILLMSettings_$($LLMQueryType)_$key"
                $null = GenXdev\Set-GenXdevPreference `
                    -PreferencesDatabasePath $PreferencesDatabasePath `
                    -Name $preferenceKey `
                    -Value $settings[$key]
            }

            # remove preferences that were marked for deletion (null values)
            foreach ($preferenceKey in $preferencesToRemove) {
                try {
                    $null = GenXdev\Remove-GenXdevPreference `
                        -PreferencesDatabasePath $PreferencesDatabasePath `
                        -Name $preferenceKey `
                        -ErrorAction SilentlyContinue
                    Microsoft.PowerShell.Utility\Write-Verbose "Deleted preference: $preferenceKey"
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Verbose "Could not delete preference: $preferenceKey (may not exist)"
                }
            }

            # output confirmation of the persistent storage operation
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Set persistent LLM settings for ${LLMQueryType}: [$settingsDescription]"
            )
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI
Original cmdlet filename  : Set-GenXdevCommandNotFoundAction.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

# Don't remove this line [dontrefactor]

<#
.SYNOPSIS
Sets up custom command not found handling with optional AI assistance.

.DESCRIPTION
Configures PowerShell to handle unknown commands by either navigating to
directories or using AI to interpret user intent. The handler first tries any
existing command not found handler, then checks if the command is a valid path
for navigation. AI resolution is only enabled when the -UseAIResolve switch is
explicitly specified.

.PARAMETER UseAIResolve
When specified, enables AI-powered resolution of unknown commands. The user
will be prompted to confirm before any AI-generated command is executed.

.PARAMETER NoPrompt
When specified together with -UseAIResolve, skips the "What did you want to
do?" question and uses the typed command name directly as the AI query.
Command execution still requires explicit user confirmation.

.EXAMPLE
Set-GenXdevCommandNotFoundAction -UseAIResolve

Enables AI resolution with interactive prompting for unknown commands.

.EXAMPLE
Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt

Enables AI resolution where the unknown command is sent directly to the AI
without asking the user what they meant.
#>
function Set-GenXdevCommandNotFoundAction {

    [CmdletBinding(SupportsShouldProcess)]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseBOMForUnicodeEncodedFile', '')]
    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The type of LLM query'
        )]
        [ValidateSet(
            'SimpleIntelligence',
            'Knowledge',
            'Pictures',
            'TextTranslation',
            'Coding',
            'ToolUse'
        )]
        [string] $LLMQueryType = 'Coding',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The model identifier or pattern to use for AI ' +
                'operations')
        )]
        [string] $Model,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API endpoint URL for AI operations'
        )]
        [string] $ApiEndpoint,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API key for authenticated AI operations'
        )]
        [string] $ApiKey,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indicates that LLM has no support for JSON schemas'
        )]
        [string] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable AI-powered resolution of unknown commands. '
        )]
        [switch] $UseAIResolve,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip the intent prompt and use the command name directly as the AI query (requires -UseAIResolve).'
        )]
        [switch] $NoPrompt
    )

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Set-GenXdevCommandNotFoundAction'

        # store reference to existing handler if it's not already our handler
        $script:originalHandler = $null
        $currentHandler = $ExecutionContext.InvokeCommand.CommandNotFoundAction

        # check if handler is already installed
        if ($null -ne $currentHandler) {

            $handlerString = $currentHandler.ToString()
            if (-not $handlerString.Contains('Microsoft.PowerShell.Management\Set-Location "+"')) {

                $script:originalHandler = $currentHandler
                Microsoft.PowerShell.Utility\Write-Verbose 'Stored original command handler for chaining'
            }
        }
    }

    process {

        if (-not $PSCmdlet.ShouldProcess('Command not found handling', 'Set AI assistance handler')) {
            return
        }

        try {
            # Add flag to prevent recursion
            $script:insideCommandHandler = $false
            $script:UseAIResolve = $true -eq $UseAIResolve
            $global:UseAIUnknownCommandPrompt = $true -ne $NoPrompt
            $global:AIPowershellCommandParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Invoke-AIPowershellCommand' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            Microsoft.PowerShell.Utility\Write-Verbose 'Configuring new CommandNotFoundAction handler'

            # define the command not found action handler
            $ExecutionContext.InvokeCommand.CommandNotFoundAction = {
                param($CommandName, $CommandLookupEventArgs)

                # prevent recursion
                if ($script:insideCommandHandler) {

                    Microsoft.PowerShell.Utility\Write-Debug "Preventing recursive call for command: $CommandName"
                    return
                }

                $script:insideCommandHandler = $true

                $origPSDebugPreference = $PSDebugPreference
                $origErrorActionPreference = $ErrorActionPreference
                $origVerbosePreference = $VerbosePreference
                $origWarningPreference = $WarningPreference

                try {
                    # suppress unnecessary output during handler execution
                    $PSDebugPreference = 'continue'
                    $ErrorActionPreference = 'SilentlyContinue'
                    $VerbosePreference = 'SilentlyContinue'
                    $WarningPreference = 'SilentlyContinue'

                    # skip .NET method calls
                    if ($CommandName -match '^\[.*\]::') {
                        return
                    }

                    # try original handler first
                    if ($null -ne $script:originalHandler) {
                        try {
                            & $script:originalHandler $CommandName $CommandLookupEventArgs

                            if ($CommandLookupEventArgs.StopSearch) {
                                return
                            }
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Debug "Original handler failed: $_"
                        }
                    }
                }
                finally {
                    # restore original preferences
                    $PSDebugPreference = $origPSDebugPreference
                    $ErrorActionPreference = $origErrorActionPreference
                    $VerbosePreference = $origVerbosePreference
                    $WarningPreference = $origWarningPreference
                    $script:insideCommandHandler = $false
                }

                # handle directory navigation
                if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $CommandName -PathType Container) {

                    $CommandLookupEventArgs.CommandScriptBlock = {
                        Microsoft.PowerShell.Management\Set-Location -LiteralPath $CommandName
                        Microsoft.PowerShell.Management\Get-ChildItem
                    }.GetNewClosure()

                    $CommandLookupEventArgs.StopSearch = $true
                    return
                }

                try {
                    [Uri] $uri;
                    if ([Uri]::TryCreate($CommandName, [UriKind]::Absolute, [ref] $uri)) {

                        return;
                    }
                }
                catch {

                }

                # skip internal and get- commands
                if ($CommandLookupEventArgs.CommandOrigin -eq 'Internal' -or
                    $CommandName -like 'get-*') {

                    if (@(Microsoft.PowerShell.Core\Get-Command $CommandName -ErrorAction SilentlyContinue).Length -eq 0) {

                        return
                    }
                }

                if (($CommandName.trim() -like "$([char]21)") -or ($CommandName.trim() -like "get-$([char]21)") -or ($CommandName.trim() -like '^U') -or
                    ($CommandName.trim() -like 'get-^U') -or ($CommandName.trim() -eq "")) {
                    $CommandLookupEventArgs.CommandScriptBlock = {
                    }

                    $CommandLookupEventArgs.StopSearch = $true
                    return
                }

                if ($CommandName -like '-' -or $CommandName -like "cd -" -or $CommandName -like "Set-Location +") {

                    $CommandLookupEventArgs.CommandScriptBlock = {
                        Microsoft.PowerShell.Management\Set-Location "-"
                    }

                    $CommandLookupEventArgs.StopSearch = $true
                    return
                }

                if ($CommandName -like '+' -or $CommandName -like "cd +" -or $CommandName -like "Set-Location -") {

                    $CommandLookupEventArgs.CommandScriptBlock = {

                        Microsoft.PowerShell.Management\Set-Location "+"
                    }

                    $CommandLookupEventArgs.StopSearch = $true
                    return
                }

                # AI assistance block — only active when -UseAIResolve was set
                if ($script:UseAIResolve) {

                    $CommandLookupEventArgs.CommandScriptBlock = {

                        $faultyLine = $MyInvocation.Line

                        if ($global:UseAIUnknownCommandPrompt) {

                            $userChoice = $host.ui.PromptForChoice(
                                'Command not found',
                                'Do you want AI to figure out what you ' +
                                'want?',
                                @('&Nah', '&Yes'),
                                0)

                            if ($userChoice -eq 0) {

                                return
                            }
                        }

                        $splat = $global:AIPowershellCommandParams

                        Microsoft.PowerShell.Utility\Write-Host "Command not found" -ForegroundColor Cyan
                        Microsoft.PowerShell.Utility\Write-Host "Ok, hold on looking up your instruction using AI.. press Ctrl-C to abort" -ForegroundColor Cyan

                        GenXdev\Invoke-AIPowershellCommand @splat $faultyLine

                    }.GetNewClosure()
                }

                $CommandLookupEventArgs.StopSearch = $true
            }
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Error "Failed to set up command not found handler: $_"
        }
    }

    end {
        Microsoft.PowerShell.Utility\Write-Verbose 'Command not found handler configuration completed'
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI
Original cmdlet filename  : Start-GenXdevMCPServer.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

function Start-GenXdevMCPServer {
    <#
    .SYNOPSIS
        Starts the GenXdev MCP server that exposes PowerShell cmdlets as tools.

    .DESCRIPTION
        This function starts an HTTP server that implements the Model Context Protocol (MCP)
        server pattern, exposing PowerShell cmdlets as callable tools. The server provides
        endpoints for listing available tools and executing them, similar to the TypeScript
        example but using PowerShell's ExposedCmdLets functionality.

    .PARAMETER Port
        The port on which the server will listen. Default is 2175.

    .PARAMETER ExposedCmdLets
        Array of PowerShell command definitions to expose as tools.

    .PARAMETER NoConfirmationToolFunctionNames
        Array of command names that can execute without user confirmation.

    .PARAMETER StopExisting
        Stop any existing server running on the specified port.

    .PARAMETER MaxOutputLength
        Maximum length of tool output in characters. Output exceeding this length will be trimmed with a warning message. Default is 75000 characters (100KB).

    .EXAMPLE
        Start-GenXdevMCPServer -Port 2175

    .EXAMPLE
        $exposedCmdlets = @(
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name = "Get-Process"
                Description = "Get running processes"
                AllowedParams = @("Name", "Id")
                Confirm = $false
            }
        )
        Start-GenXdevMCPServer -Port 2175 -ExposedCmdLets $exposedCmdlets
    #>
    [CmdletBinding(SupportsShouldProcess)]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    param (
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The port on which the MCP server will listen ' +
            '(default: 2175)'
        )]
        [int]$Port = 2175,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of PowerShell command definitions to ' +
            'expose as MCP tools'
        )]
        [GenXdev.Helpers.ExposedCmdletDefinition[]]$ExposedCmdLets = @(),

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of command names that can execute ' +
            'without user confirmation'
        )]
        [string[]]$NoConfirmationToolFunctionNames = @(),

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Stop any existing MCP server running on the ' +
            'specified port before starting a new one'
        )]
        [switch]$StopExisting,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum length of tool output in characters ' +
            'before trimming (default: 75000)'
        )]
        [int]$MaxOutputLength = 75000,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Authentication token required for clients ' +
            'to connect to the MCP server'
        )]
        [string]$Token = $null
    )

    function Stop-GenXdevMCPServer {
        <#
    .SYNOPSIS
        Stops the GenXdev MCP server.

    .DESCRIPTION
        This function stops the GenXdev MCP server if it's running.

    .PARAMETER Port
        The port of the server to stop. If not specified, stops the globally tracked server.

    .EXAMPLE
        Stop-GenXdevMCPServer -Port 2175
    #>
        [CmdletBinding(SupportsShouldProcess)]
        param (
            [int]$Port
        )

        $psRootPath = GenXdev\Get-PowerShellRoot

        if ($script:GenXdevMCPServer -and $script:GenXdevMCPServer.Listener) {
            if (-not $Port -or $script:GenXdevMCPServer.Port -eq $Port) {
                if ($PSCmdlet.ShouldProcess("MCP Server on port $($script:GenXdevMCPServer.Port)", "Stop server")) {
                    Microsoft.PowerShell.Utility\Write-Host "Stopping GenXdev MCP server on port $($script:GenXdevMCPServer.Port)..." -ForegroundColor Yellow
                    $script:GenXdevMCPServer.Listener.Stop()
                    $script:GenXdevMCPServer.Listener.Close()
                    $script:GenXdevMCPServer = $null
                    Microsoft.PowerShell.Utility\Write-Host 'Server stopped.' -ForegroundColor Green
                }
            }
        }
        else {
            Microsoft.PowerShell.Utility\Write-Host 'No server is currently running.' -ForegroundColor Gray
        }
    }

    # Helper functions (nested to avoid module scope exposure)
    function HandleGenXdevMCPServerSSERequest {
        param(
            [System.Net.HttpListenerRequest]$Request,
            [System.Net.HttpListenerResponse]$Response,
            [hashtable[]]$Functions
        )

        try {
            Microsoft.PowerShell.Utility\Write-Host 'Establishing SSE connection for legacy transport' -ForegroundColor Yellow

            # Set SSE headers
            $Response.ContentType = 'text/event-stream'
            $Response.Headers.Add('Cache-Control', 'no-cache')
            $Response.Headers.Add('Access-Control-Allow-Origin', '*')
            $Response.Headers.Add('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
            $Response.Headers.Add('Access-Control-Allow-Headers', 'Content-Type, Last-Event-ID')

            # Don't set Content-Length for SSE
            $Response.SendChunked = $true

            # Send initial endpoint event for legacy SSE transport
            $endpointEvent = @{
                method = 'notifications/message'
                params = @{
                    endpoint = '/mcp'
                }
            }

            # Fix: Use deeper JSON serialization depth
            $sseData = "event: endpoint`ndata: $($endpointEvent | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 10)`n`n"
            $sseBytes = [System.Text.Encoding]::UTF8.GetBytes($sseData)
            $Response.OutputStream.Write($sseBytes, 0, $sseBytes.Length)
            $Response.OutputStream.Flush()

            # Send initialization capabilities
            $initEvent = @{
                jsonrpc = '2.0'
                method  = 'notifications/initialized'
                params  = @{
                    protocolVersion = '2024-11-05'
                    capabilities    = @{
                        tools = @{
                            listChanged = $true
                        }
                    }
                    serverInfo      = @{
                        name    = 'GenXdev-PowerShell-MCP-Server'
                        version = '3.26.2026'
                    }
                }
            }

            # Fix: Use deeper JSON serialization depth
            $initSseData = "event: message`ndata: $($initEvent | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 10)`n`n"
            $initSseBytes = [System.Text.Encoding]::UTF8.GetBytes($initSseData)
            $Response.OutputStream.Write($initSseBytes, 0, $initSseBytes.Length)
            $Response.OutputStream.Flush()

            Microsoft.PowerShell.Utility\Write-Host 'SSE connection established, keeping alive...' -ForegroundColor Green

            # Fix: Reduce heartbeat frequency and add connection validation
            $heartbeatCount = 0
            while ($Response.OutputStream.CanWrite -and $listener.IsListening) {
                try {
                    # Check if client is still connected before sleeping
                    if (-not $Response.OutputStream.CanWrite) {
                        Microsoft.PowerShell.Utility\Write-Host 'Client disconnected, ending SSE session' -ForegroundColor Yellow
                        break
                    }

                    Microsoft.PowerShell.Utility\Start-Sleep -Seconds 10  # Reduced from 30 to 10 seconds
                    $heartbeatCount++

                    # Send heartbeat with better error handling
                    $heartbeat = "event: heartbeat`ndata: {`"timestamp`": `"$(Microsoft.PowerShell.Utility\Get-Date -Format 'yyyy-MM-ddTHH:mm:ss.fffZ')`", `"count`": $heartbeatCount}`n`n"
                    $heartbeatBytes = [System.Text.Encoding]::UTF8.GetBytes($heartbeat)

                    # Check connection before writing
                    if ($Response.OutputStream.CanWrite) {
                        $Response.OutputStream.Write($heartbeatBytes, 0, $heartbeatBytes.Length)
                        $Response.OutputStream.Flush()
                        # Reduced heartbeat logging frequency
                        if ($heartbeatCount % 6 -eq 0) {
                            # Log every 6th heartbeat (every minute)
                            Microsoft.PowerShell.Utility\Write-Host "SSE heartbeat #$heartbeatCount" -ForegroundColor DarkGray
                        }
                    }
                    else {
                        Microsoft.PowerShell.Utility\Write-Host 'Cannot write to stream, client disconnected' -ForegroundColor Yellow
                        break
                    }
                }
                catch [System.ObjectDisposedException] {
                    Microsoft.PowerShell.Utility\Write-Host 'SSE connection disposed by client' -ForegroundColor Yellow
                    break
                }
                catch [System.Net.HttpListenerException] {
                    Microsoft.PowerShell.Utility\Write-Host "SSE connection closed by client: $($_.Exception.Message)" -ForegroundColor Yellow
                    break
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Host "SSE connection error: $($_.Exception.Message)" -ForegroundColor Yellow
                    break
                }
            }
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Error "SSE connection error: $($_.Exception.Message)"
        }
        finally {
            try {
                if ($Response -and -not $Response.OutputStream.CanWrite) {
                    $Response.Close()
                }
            }
            catch {
                # Ignore close errors
            }
        }
    }

    function HandleGenXdevMCPServerMCPRequest {
        param(
            [object]$Request,
            [hashtable[]]$Functions,
            [GenXdev.Helpers.ExposedCmdletDefinition[]]$ExposedCmdLets,
            [string[]]$NoConfirmationToolFunctionNames,
            [int]$MaxOutputLength = 75000
        )

        try {
            # Handle different MCP methods
            switch ($Request.method) {
                'initialize' {
                    $response = @{
                        jsonrpc = '2.0'
                        id      = $Request.id
                        result  = @{
                            protocolVersion = '2024-11-05'
                            capabilities    = @{
                                tools = @{
                                    listChanged = $true
                                }
                            }
                            serverInfo      = @{
                                name    = 'GenXdev-PowerShell-MCP-Server'
                                version = '3.26.2026'
                            }
                        }
                    }
                    return $response | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress -ErrorAction SilentlyContinue
                }
                'initialized' {
                    # Just acknowledge the initialized notification
                    return ''
                }
                'tools/list' {
                    $tools = @()
                    foreach ($func in $Functions) {
                        $tool = @{
                            name        = $func.function.name
                            description = $func.function.description
                            inputSchema = @{
                                type       = 'object'
                                properties = $func.function.parameters.properties
                                required   = $func.function.parameters.required
                            }
                        }
                        $tools += $tool
                    }

                    $response = @{
                        jsonrpc = '2.0'
                        id      = $Request.id
                        result  = @{
                            tools = $tools
                        }
                    }
                    return $response | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress
                }
                'tools/call' {
                    if (-not $Request.params -or -not $Request.params.name) {
                        throw 'Invalid request: missing tool name'
                    }

                    $toolName = $Request.params.name
                    $arguments = $Request.params.arguments

                    Microsoft.PowerShell.Utility\Write-Host "    Executing tool: $toolName" -ForegroundColor Yellow
                    if ($arguments) {
                        Microsoft.PowerShell.Utility\Write-Host "    With arguments: $($arguments | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress)" -ForegroundColor DarkGray
                    }

                    # Create tool call object
                    $toolCall = @{
                        function = @{
                            name      = $toolName
                            arguments = if ($arguments) { ($arguments | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress) } else { '{}' }
                        }
                    }                    # Execute the tool call with defensive error handling to prevent prompts
                    try {
                        # Temporarily redirect stdin to prevent any prompts
                        $originalIn = [Console]::In
                        Microsoft.PowerShell.Management\Push-Location $psRootPath
                        try {
                            $null = [Console]::SetIn([System.IO.TextReader]::Null)

                            # Execute the tool call directly (no jobs to avoid serialization issues)
                            $invocationResult = GenXdev\Invoke-CommandFromToolCall `
                                -ToolCall:$toolCall `
                                -Functions:$Functions `
                                -ExposedCmdLets:$ExposedCmdLets `
                                -NoConfirmationToolFunctionNames:$NoConfirmationToolFunctionNames |
                                Microsoft.PowerShell.Utility\Select-Object -First 1
                        }
                        finally {
                            Microsoft.PowerShell.Management\Pop-Location
                            # Always restore original stdin
                            [Console]::SetIn($originalIn)
                        }

                        if (-not $invocationResult) {
                            throw 'Tool execution failed to return result'
                        }
                    }
                    catch {
                        # If tool execution fails, return error instead of prompting
                        Microsoft.PowerShell.Utility\Write-Host "    Tool execution failed: $($_.Exception.Message)" -ForegroundColor Red
                        $response = @{
                            jsonrpc = '2.0'
                            id      = $Request.id
                            error   = @{
                                code    = -32603
                                message = "Tool execution failed: $($_.Exception.Message)"
                            }
                        }
                        return $response | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress
                    }

                    if ($invocationResult.CommandExposed) {
                        # Check if the cmdlet is configured to return text only
                        $isTextOnlyOutput = $invocationResult.ExposedCmdLet -and $invocationResult.ExposedCmdLet.OutputText -eq $true

                        # Process output
                        if ($isTextOnlyOutput) {
                            # For text-only output, convert everything to string first using Out-String
                            $outputText = "$(($invocationResult.Output | Microsoft.PowerShell.Utility\Out-String))".Trim()
                        }
                        else {
                            # For structured output, preserve object types but convert non-strings to text
                            $outputText = "$($invocationResult.Output | Microsoft.PowerShell.Core\ForEach-Object {
                                if ($_ -is [string]) {
                                    $_
                                } else {
                                    $_ | Microsoft.PowerShell.Utility\Out-String
                                }
                            })".Trim()
                        }

                        # For text-only output, respect MaxOutputLength and don't serialize to JSON
                        if ($isTextOnlyOutput) {
                            # Trim output if it exceeds MaxOutputLength
                            if ($outputText.Length -gt $MaxOutputLength) {
                                $originalLength = $outputText.Length
                                $trimMessage = "TRIMMED OUTPUT (check parameter use!) invalid json on purpose, AI Agent: don't retry same function without check parameters! >>"
                                $maxContentLength = $MaxOutputLength - $trimMessage.Length
                                $outputText = $trimMessage + $outputText.Substring(0, $maxContentLength)
                                Microsoft.PowerShell.Utility\Write-Verbose "Tool '$toolName' output was trimmed from $originalLength to $MaxOutputLength characters"
                            }

                            # If output is still empty, provide more informative message
                            if ([string]::IsNullOrWhiteSpace($outputText)) {
                                $outputText = "Command '$toolName' executed successfully but produced no output."
                            }

                            Microsoft.PowerShell.Utility\Write-Host "    Tool output ($($outputText.Length) chars):" -ForegroundColor Green
                            Microsoft.PowerShell.Utility\Write-Verbose "Full tool output:`n$outputText"
                            if ($outputText.Length -lt 200) {
                                Microsoft.PowerShell.Utility\Write-Host "$outputText" -ForegroundColor DarkCyan
                            }
                            else {
                                Microsoft.PowerShell.Utility\Write-Host "First 100 chars: $($outputText.Substring(0, 100))..." -ForegroundColor DarkCyan
                                Microsoft.PowerShell.Utility\Write-Host 'Use -Verbose to see full output' -ForegroundColor DarkGray
                            }

                            $response = @{
                                jsonrpc = '2.0'
                                id      = $Request.id
                                result  = @{
                                    content = @(
                                        @{
                                            type = 'text'
                                            text = $outputText
                                        }
                                    )
                                }
                            }
                        }
                        else {
                            # For non-text output, serialize to JSON with length limiting
                            # If output is still empty, provide more informative message
                            if ([string]::IsNullOrWhiteSpace($outputText)) {
                                $outputText = "Command '$toolName' executed successfully but produced no output."
                            }

                            Microsoft.PowerShell.Utility\Write-Host "    Tool output ($($outputText.Length) chars):" -ForegroundColor Green
                            Microsoft.PowerShell.Utility\Write-Verbose "Full tool output:`n$outputText"
                            if ($outputText.Length -lt 200) {
                                Microsoft.PowerShell.Utility\Write-Host "$outputText" -ForegroundColor DarkCyan
                            }
                            else {
                                Microsoft.PowerShell.Utility\Write-Host "First 100 chars: $($outputText.Substring(0, 100))..." -ForegroundColor DarkCyan
                                Microsoft.PowerShell.Utility\Write-Host 'Use -Verbose to see full output' -ForegroundColor DarkGray
                            }

                            # Try to return structured data as JSON text with smart depth reduction
                            try {
                                # Start with the specified depth and progressively reduce if too long
                                $targetDepth = $invocationResult.ExposedCmdLet.JsonDepth ?? 10
                                $parsedOutput = $null
                                $finalDepth = $targetDepth

                                # Try progressively smaller depths until it fits or we reach minimum depth of 2
                                $foundValidDepth = $false
                                while ($finalDepth -ge 2) {
                                    $parsedOutput = $invocationResult.Output | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth $finalDepth -Compress

                                    if ($parsedOutput.Length -le $MaxOutputLength) {
                                        # Success! It fits at this depth
                                        $foundValidDepth = $true
                                        if ($finalDepth -lt $targetDepth) {
                                            Microsoft.PowerShell.Utility\Write-Verbose "Tool '$toolName' JSON output reduced from depth $targetDepth to $finalDepth to fit $MaxOutputLength character limit"
                                        }
                                        break
                                    }

                                    $finalDepth--
                                }

                                # If we found a depth that works, use it
                                if ($foundValidDepth) {

                                    $response = @{
                                        jsonrpc = '2.0'
                                        id      = $Request.id
                                        result  = @{
                                            content = @(
                                                @{
                                                    type = 'text'
                                                    text = $parsedOutput
                                                }
                                            )
                                        }
                                    }
                                }
                                else {
                                    # Even at depth 2 it's too long, so trim it
                                    $originalLength = $parsedOutput.Length
                                    $trimMessage = "TRIMMED JSON OUTPUT (reduced to depth $finalDepth, still too large!) incomplete json data, AI Agent: don't retry same function without checking parameters! >>"
                                    $maxContentLength = $MaxOutputLength - $trimMessage.Length
                                    $trimmedJson = $trimMessage + $parsedOutput.Substring(0, $maxContentLength)
                                    Microsoft.PowerShell.Utility\Write-Verbose "Tool '$toolName' JSON output was reduced to minimum depth $finalDepth and trimmed from $originalLength to $MaxOutputLength characters"

                                    $response = @{
                                        jsonrpc = '2.0'
                                        id      = $Request.id
                                        result  = @{
                                            content = @(
                                                @{
                                                    type = 'text'
                                                    text = $trimmedJson
                                                }
                                            )
                                        }
                                    }
                                }
                            }
                            catch {
                                # If JSON conversion fails, fall back to text with trimming
                                if ($outputText.Length -gt $MaxOutputLength) {
                                    $originalLength = $outputText.Length
                                    $trimMessage = "TRIMMED OUTPUT (check parameter use!) invalid json on purpose, AI Agent: don't retry same function without check parameters! >>"
                                    $maxContentLength = $MaxOutputLength - $trimMessage.Length
                                    $outputText = $trimMessage + $outputText.Substring(0, $maxContentLength)
                                    Microsoft.PowerShell.Utility\Write-Verbose "Tool '$toolName' fallback output was trimmed from $originalLength to $MaxOutputLength characters"
                                }

                                $response = @{
                                    jsonrpc = '2.0'
                                    id      = $Request.id
                                    result  = @{
                                        content = @(
                                            @{
                                                type = 'text'
                                                text = $outputText
                                            }
                                        )
                                    }
                                }
                            }
                        }
                    }
                    else {
                        Microsoft.PowerShell.Utility\Write-Host "    Tool execution failed: $($invocationResult.Reason)" -ForegroundColor Red
                        $response = @{
                            jsonrpc = '2.0'
                            id      = $Request.id
                            error   = @{
                                code    = -32603
                                message = "Tool execution failed: $($invocationResult.Reason)"
                            }
                        }
                    }

                    return $response | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10
                }
                default {
                    $response = @{
                        jsonrpc = '2.0'
                        id      = $Request.id
                        error   = @{
                            code    = -32601
                            message = "Method not found: $($Request.method)"
                        }
                    }
                    return $response | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10
                }
            }
        }
        catch {
            $errorResponse = @{
                jsonrpc = '2.0'
                id      = $Request.id
                error   = @{
                    code    = -32603
                    message = "Internal error: $($_.Exception.Message)"
                }
            }
            return $errorResponse | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10
        }
        finally {
            GenXdev\Send-Key @("^{PAGEDOWN}", "^``")
        }
    }

    function HandleGenXdevMCPServerListToolsRequest {
        param(
            [hashtable[]]$Functions
        )

        $tools = @()
        foreach ($func in $Functions) {
            $tool = @{
                name        = $func.function.name
                description = $func.function.description
                inputSchema = @{
                    type       = 'object'
                    properties = $func.function.parameters.properties
                    required   = $func.function.parameters.required
                }
            }
            $tools += $tool
        }

        $response = @{
            tools = $tools
        }

        return $response | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10
    }

    function HandleGenXdevMCPServerToolRequest {
        param(
            [object]$Request,
            [hashtable[]]$Functions,
            [GenXdev.Helpers.ExposedCmdletDefinition[]]$ExposedCmdLets,
            [string[]]$NoConfirmationToolFunctionNames,
            [int]$MaxOutputLength = 75000
        )

        try {
            # Validate request structure
            if (-not $Request.params -or -not $Request.params.name) {
                throw 'Invalid request: missing tool name'
            }

            $toolName = $Request.params.name
            $arguments = $Request.params.arguments

            # Create tool call object in the exact same format as Invoke-LLMQuery
            # Arguments should be a JSON string, not a PowerShell object
            $toolCall = @{
                function = @{
                    name      = $toolName
                    arguments = if ($arguments) { ($arguments | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10) } else { '{}' }
                }
            }            # Execute the tool call with defensive error handling to prevent prompts
            try {
                # Temporarily redirect stdin to prevent any prompts
                $originalIn = [Console]::In
                try {
                    $null = [Console]::SetIn([System.IO.TextReader]::Null)

                    # Execute the tool call directly (no jobs to avoid serialization issues)
                    $invocationResult = GenXdev\Invoke-CommandFromToolCall `
                        -ToolCall:$toolCall `
                        -Functions:$Functions `
                        -ExposedCmdLets:$ExposedCmdLets `
                        -NoConfirmationToolFunctionNames:$NoConfirmationToolFunctionNames |
                        Microsoft.PowerShell.Utility\Select-Object -First 1
                }
                finally {
                    # Always restore original stdin
                    [Console]::SetIn($originalIn)
                }

                if (-not $invocationResult) {
                    throw 'Tool execution failed to return result'
                }
            }
            catch {
                # If tool execution fails, return error instead of prompting
                $response = @{
                    content = @(
                        @{
                            type = 'text'
                            text = "Error executing tool '$toolName': $($_.Exception.Message)"
                        }
                    )
                    isError = $true
                }
                return $response | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10
            }

            if ($invocationResult.CommandExposed) {
                # Check if the cmdlet is configured to return text only
                $isTextOnlyOutput = $invocationResult.ExposedCmdLet -and $invocationResult.ExposedCmdLet.OutputText -eq $true

                # Process output exactly like Invoke-LLMQuery does (line 1560)
                if ($isTextOnlyOutput) {
                    # For text-only output, convert everything to string first using Out-String
                    $outputText = "$($invocationResult.Output | Microsoft.PowerShell.Utility\Out-String)".Trim()
                }
                else {
                    # For structured output, preserve object types but convert non-strings to text
                    $outputText = "$($invocationResult.Output | Microsoft.PowerShell.Core\ForEach-Object {
                        if ($_ -is [string]) {
                            $_
                        } else {
                            $_ | Microsoft.PowerShell.Utility\Out-String
                        }
                    })".Trim()
                }

                # For text-only output, respect MaxOutputLength and don't serialize to JSON
                if ($isTextOnlyOutput) {
                    # Trim output if it exceeds MaxOutputLength
                    if ($outputText.Length -gt $MaxOutputLength) {
                        $originalLength = $outputText.Length
                        $trimMessage = "TRIMMED OUTPUT (check parameter use!) invalid json on purpose, AI Agent: don't retry same function without check parameters! >>"
                        $maxContentLength = $MaxOutputLength - $trimMessage.Length
                        $outputText = $trimMessage + $outputText.Substring(0, $maxContentLength)
                        Microsoft.PowerShell.Utility\Write-Verbose "Tool '$toolName' output was trimmed from $originalLength to $MaxOutputLength characters"
                    }

                    # If output is still empty, provide more informative message
                    if ([string]::IsNullOrWhiteSpace($outputText)) {
                        $outputText = "Command '$toolName' executed successfully but produced no output."
                    }

                    $response = @{
                        content = @(
                            @{
                                type = 'text'
                                text = $outputText
                            }
                        )
                    }
                }
                else {
                    # For non-text output, serialize to JSON with length limiting
                    # If output is still empty, provide more informative message
                    if ([string]::IsNullOrWhiteSpace($outputText)) {
                        $outputText = "Command '$toolName' executed successfully but produced no output."
                    }

                    # Try to return structured data as JSON text with smart depth reduction
                    try {
                        # Start with the specified depth and progressively reduce if too long
                        $targetDepth = $invocationResult.ExposedCmdLet.JsonDepth ?? 10
                        $parsedOutput = $null
                        $finalDepth = $targetDepth

                        # Try progressively smaller depths until it fits or we reach minimum depth of 2
                        $foundValidDepth = $false
                        while ($finalDepth -ge 2) {
                            $parsedOutput = $invocationResult.Output | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth $finalDepth -Compress

                            if ($parsedOutput.Length -le $MaxOutputLength) {
                                # Success! It fits at this depth
                                $foundValidDepth = $true
                                if ($finalDepth -lt $targetDepth) {
                                    Microsoft.PowerShell.Utility\Write-Verbose "Tool '$toolName' JSON output reduced from depth $targetDepth to $finalDepth to fit $MaxOutputLength character limit"
                                }
                                break
                            }

                            $finalDepth--
                        }

                        # If we found a depth that works, use it
                        if ($foundValidDepth) {

                            $response = @{
                                content = @(
                                    @{
                                        type = 'text'
                                        text = $parsedOutput
                                    }
                                )
                            }
                        }
                        else {
                            # Even at depth 2 it's too long, so trim it
                            $originalLength = $parsedOutput.Length
                            $trimMessage = "TRIMMED JSON OUTPUT (reduced to depth $finalDepth, still too large!) incomplete json data, AI Agent: don't retry same function without checking parameters! >>"
                            $maxContentLength = $MaxOutputLength - $trimMessage.Length
                            $trimmedJson = $trimMessage + $parsedOutput.Substring(0, $maxContentLength)
                            Microsoft.PowerShell.Utility\Write-Verbose "Tool '$toolName' JSON output was reduced to minimum depth $finalDepth and trimmed from $originalLength to $MaxOutputLength characters"

                            $response = @{
                                content = @(
                                    @{
                                        type = 'text'
                                        text = $trimmedJson
                                    }
                                )
                            }
                        }
                    }
                    catch {
                        # If JSON conversion fails, fall back to text with trimming
                        if ($outputText.Length -gt $MaxOutputLength) {
                            $originalLength = $outputText.Length
                            $trimMessage = "TRIMMED OUTPUT (check parameter use!) invalid json on purpose, AI Agent: don't retry same function without check parameters! >>"
                            $maxContentLength = $MaxOutputLength - $trimMessage.Length
                            $outputText = $trimMessage + $outputText.Substring(0, $maxContentLength)
                            Microsoft.PowerShell.Utility\Write-Verbose "Tool '$toolName' fallback output was trimmed from $originalLength to $MaxOutputLength characters"
                        }

                        $response = @{
                            content = @(
                                @{
                                    type = 'text'
                                    text = $outputText
                                }
                            )
                        }
                    }
                }
            }
            else {
                $response = @{
                    content = @(
                        @{
                            type = 'text'
                            text = "Error: $($invocationResult.Reason)"
                        }
                    )
                    isError = $true
                }
            }

            return $response | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10
        }
        catch {
            $errorResponse = @{
                content = @(
                    @{
                        type = 'text'
                        text = "Error executing tool: $($_.Exception.Message)"
                    }
                )
                isError = $true
            }
            return $errorResponse | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10
        }
    }

    # Default exposed cmdlets if none provided
    if ($ExposedCmdLets.Count -eq 0) {
        $ExposedCmdLets = @(

            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Start-TextToSpeech'
                Description                          = "Allows you to speak to the user"
                AllowedParams                        = @(
                    'Lines'
                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                OutputText                           = $true
                JsonDepth                            = 5
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Stop-TextToSpeech'
                Description                          = "Stops queued TTS invocations right away"
                AllowedParams                        = @()
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                OutputText                           = $true
                JsonDepth                            = 5
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Get-GenXDevCmdlet'
                Description                          = "Gets GenXdev PowerShell modules with their cmdlets and aliases, allow it to take a few seconds or more. Don't invoke this function without parameters, that would be too much data. Wildcards allowed like * and ?"
                AllowedParams                        = @(
                    'CmdletName=string',
                    'ModuleName=string',
                    'DefinitionMatches=string',
                    'ExactMatch',
                    'OnlyReturnModuleNames'
                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @(@{Name = 'IncludeScripts'; Value = $true })
                OutputText                           = $false
                JsonDepth                            = 5
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Import-GenXdevModules'
                Description                          = 'Refreshes the MCP Server''s modules (ONLY) Not those in your own PWSH session, invoke reloadgenxdev in there directly to refresh after you made changes.'
                AllowedParams                        = @(
                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                JsonDepth                            = 2
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Get-Help'
                Description                          = 'Gets help information for PowerShell commands. Use to understand cmdlet syntax, parameters, and examples for GenXdev functions.'
                AllowedParams                        = @(
                    'Name=string'
                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @(@{
                        Name  = 'Full'
                        Value = $true
                    })
                JsonDepth                            = 4
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Add-TodoLineToREADME'
                Description                          = 'Adds a TODO item to the README.md file in the current project. Great for tracking development tasks and project management.'
                AllowedParams                        = @(
                    'Line=string', 'Done'
                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                JsonDepth                            = 2
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Add-IssueLineToREADME'
                Description                          = 'Adds an issue or bug report to the README.md file in the current project. Useful for tracking bugs and problems.'
                AllowedParams                        = @(
                    'Line=string', 'Done'
                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                JsonDepth                            = 2
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Add-FeatureLineToREADME'
                Description                          = 'Adds a feature request or enhancement to the README.md file in the current project. Great for tracking feature development.'
                AllowedParams                        = @(
                    'Line=string', 'Done'
                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                JsonDepth                            = 2
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Add-IdeaLineToREADME'
                Description                          = 'Adds a idea for a future feature to the README.md file in the current project. Great for tracking feature development.'
                AllowedParams                        = @(
                    'Line=string', 'Done'
                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                JsonDepth                            = 2
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Add-ReleaseNoteLineToREADME'
                Description                          = 'Adds a releasenote to the README.md file in the current project. Great for tracking feature development.'
                AllowedParams                        = @(
                    'Line=string', 'Done'
                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                JsonDepth                            = 2
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Publish-ReleaseNotesToManifest'
                Description                          = 'Publishes uncompleted release notes from README to the module manifest, marking them done atomically.'
                AllowedParams                        = @(
                    'ManifestPath=string'
                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                JsonDepth                            = 2
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Get-Todoos'
                Description                          = 'Displays todo items for this GenXdev Powershell solution.'
                AllowedParams                        = @(

                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                JsonDepth                            = 2
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Get-Issues'
                Description                          = 'Displays issues to fix for this GenXdev Powershell solution.'
                AllowedParams                        = @(

                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                JsonDepth                            = 2
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Get-Ideas'
                Description                          = 'Displays ideas to realize for this GenXdev Powershell solution.'
                AllowedParams                        = @(

                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                JsonDepth                            = 2
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Get-GitChangedFiles'
                Description                          = 'Gets files that have been changed in a Git repository. Essential for code review, commit preparation, and change tracking.'
                AllowedParams                        = @(

                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                JsonDepth                            = 3
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Assert-GenXdevTest'
                Description                          = 'Executes unit tests for GenXdev modules, sub-modules, cmdlets, or cmdlets which sourcode that match a certain string'
                AllowedParams                        = @(
                    "CmdletName=string",
                    "ModuleName=string",
                    "DefinitionMatches=string",
                    "ExactMatch",
                    "SkipPSAnalyzerTests",
                    "SkipPesterTests"
                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @()
                JsonDepth                            = 3
                OutputText                           = $true
                Confirm                              = $false
            },
            [GenXdev.Helpers.ExposedCmdletDefinition]@{
                Name                                 = 'Find-Item'
                Description                          = 'Fast multi-threaded file search for this GenXdev PowerShell solution'
                AllowedParams                        = @(
                    'Name=string',
                    'Content=string',
                    'ModifiedAfter=string',
                    'ModifiedBefore=string',
                    'Exclude=string',
                    'NoRecurse',
                    'CaseSensitive',
                    'SimpleMatch',
                    'Category'
                )
                DontShowDuringConfirmationParamNames = @()
                ForcedParams                         = @(
                    @{
                        Name  = 'Root'
                        Value = @((GenXdev\Get-PowerShellRoot))
                    },
                    @{
                        Name  = 'NoLinks'
                        Value = $true
                    },
                    @{
                        Name  = 'Quiet'
                        Value = $true
                    },
                    @{
                        Name  = 'LimitToRoot'
                        Value = $true
                    }
                )
                OutputText                           = $true
                JsonDepth                            = 2
                Confirm                              = $false
            }
        )
    }

    # Stop existing server if requested
    if ($StopExisting) {
        if ($PSCmdlet.ShouldProcess("MCP Server on port $Port", "Stop existing server")) {
            GenXdev\Stop-GenXdevMCPServer -Port $Port
        }
    }

    if ($PSCmdlet.ShouldProcess("MCP Server on port $Port", "Start server")) {
        Microsoft.PowerShell.Utility\Write-Host "Starting GenXdev MCP server on port $Port..." -ForegroundColor Green
        Microsoft.PowerShell.Utility\Write-Host "Exposed cmdlets: $($ExposedCmdLets.Name -join ', ')" -ForegroundColor Cyan
        Microsoft.PowerShell.Utility\Write-Host "Max output length: $MaxOutputLength characters ($([math]::Round($MaxOutputLength / 1024, 1))KB)" -ForegroundColor Cyan

        # Display authentication status
        $authToken = $Token
        if ([string]::IsNullOrEmpty($authToken)) {
            $authToken = [System.Environment]::GetEnvironmentVariable('GENXDEV_MCP_TOKEN', 'User')
        }
        if (-not [string]::IsNullOrEmpty($authToken)) {
            Microsoft.PowerShell.Utility\Write-Host "Authentication: Bearer token configured (LAN access requires token, localhost allowed without token)" -ForegroundColor Yellow
        }
        else {
            Microsoft.PowerShell.Utility\Write-Host "Authentication: No token configured (open access - set GENXDEV_MCP_TOKEN environment variable to secure)" -ForegroundColor Red
        }

        # Convert cmdlets to function definitions
        $functions = GenXdev\ConvertTo-LLMOpenAIApiFunctionDefinition -ExposedCmdLets $ExposedCmdLets

        # Create HTTP listener
        $listener = Microsoft.PowerShell.Utility\New-Object System.Net.HttpListener
        $listener.Prefixes.Add("http://localhost:$Port/")

        while (-not [Console]::KeyAvailable) {
            try {
                $listener.Start()
                Microsoft.PowerShell.Utility\Write-Host "Server started successfully at http://localhost:$Port" -ForegroundColor Green
                Microsoft.PowerShell.Utility\Write-Host 'Available endpoints:' -ForegroundColor Yellow
                Microsoft.PowerShell.Utility\Write-Host '  GET /mcp - List tools (normal HTTP)' -ForegroundColor Gray
                Microsoft.PowerShell.Utility\Write-Host '  POST /mcp - MCP HTTP transport (VS Code)' -ForegroundColor Gray
                Microsoft.PowerShell.Utility\Write-Host '  GET|POST /mcp/list-tools - List available tools' -ForegroundColor Gray
                Microsoft.PowerShell.Utility\Write-Host '  POST /mcp/call-tool - Execute a tool' -ForegroundColor Gray
                Microsoft.PowerShell.Utility\Write-Host '  GET /sse - SSE connection for legacy transport' -ForegroundColor Gray
                Microsoft.PowerShell.Utility\Write-Host '  POST /messages - Legacy SSE transport POST endpoint' -ForegroundColor Gray
                Microsoft.PowerShell.Utility\Write-Host 'Press Ctrl+C to stop the server' -ForegroundColor Yellow
                break
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Verbose "Failed to start server: $($_.Exception.Message)"
                Microsoft.PowerShell.Utility\Start-Sleep 2
            }
        }
        # Store server info in script scope for stop function
        $script:GenXdevMCPServer = @{
            Listener                        = $listener
            Port                            = $Port
            Functions                       = $functions
            ExposedCmdLets                  = $ExposedCmdLets
            NoConfirmationToolFunctionNames = $NoConfirmationToolFunctionNames
            MaxOutputLength                 = $MaxOutputLength
        }

        # Main server loop
        while (-not [Console]::KeyAvailable) {
            try {
                while ($listener.IsListening -and (-not [Console]::KeyAvailable)) {
                    $context = $listener.GetContext()
                    $request = $context.Request
                    $response = $context.Response

                    try {
                        # Add separator line for non-routine requests
                        $isRoutineRequest = ($request.HttpMethod -eq 'GET' -and $request.Url.AbsolutePath -eq '/mcp')
                        if (-not $isRoutineRequest) {
                            Microsoft.PowerShell.Utility\Write-Host '──────────────────────────────────────────────────────────────────────────────────' -ForegroundColor DarkGray
                        }

                        # Set CORS headers - SECURITY: Only allow localhost origins to prevent CSRF attacks
                        $origin = $request.Headers['Origin']
                        $allowedOrigins = @(
                            'http://localhost',
                            'https://localhost',
                            'http://127.0.0.1',
                            'https://127.0.0.1',
                            'http://[::1]',
                            'https://[::1]'
                        )

                        # Check if origin is from localhost/127.0.0.1 (any port)
                        $isAllowedOrigin = $false
                        if ($origin) {
                            foreach ($allowedOrigin in $allowedOrigins) {
                                if ($origin.StartsWith($allowedOrigin)) {
                                    $isAllowedOrigin = $true
                                    break
                                }
                            }
                        }

                        if ($isAllowedOrigin -or -not $origin) {
                            $response.Headers.Add('Access-Control-Allow-Origin', ($origin ? $origin : '*' ))
                            $response.Headers.Add('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
                            $response.Headers.Add('Access-Control-Allow-Headers', 'Content-Type, Authorization')
                        }

                        # Handle preflight requests - only if CORS headers were set (origin allowed)
                        if ($request.HttpMethod -eq 'OPTIONS') {
                            if ($isAllowedOrigin -or -not $origin) {
                                $response.StatusCode = 200
                            }
                            else {
                                $response.StatusCode = 403 # Forbidden for non-localhost origins
                            }
                            $response.Close()
                            continue
                        }

                        # Security check: Block requests from non-localhost origins
                        if ($origin -and -not $isAllowedOrigin) {
                            Microsoft.PowerShell.Utility\Write-Verbose "Blocked request from unauthorized origin: $origin"
                            $response.StatusCode = 403
                            $response.Close()
                            continue
                        }

                        # Security check: Validate Bearer token if configured
                        # Token is required for non-localhost origins OR when explicitly set via -Token parameter
                        $expectedToken = $Token
                        if ([string]::IsNullOrEmpty($expectedToken)) {
                            $expectedToken = [System.Environment]::GetEnvironmentVariable('GENXDEV_MCP_TOKEN', 'User')
                        }

                        if (-not [string]::IsNullOrEmpty($expectedToken)) {
                            # Token is configured - validate it
                            # Allow localhost without token for backward compatibility, but require it from LAN
                            $requireToken = $origin -or ($request.RemoteEndPoint.Address.ToString() -ne '127.0.0.1' -and
                                $request.RemoteEndPoint.Address.ToString() -ne '::1')

                            if ($requireToken) {
                                $authHeader = $request.Headers['Authorization']

                                if ([string]::IsNullOrEmpty($authHeader)) {
                                    Microsoft.PowerShell.Utility\Write-Verbose "Missing Authorization header from $($request.RemoteEndPoint.Address)"
                                    $response.StatusCode = 401
                                    $response.Headers.Add('WWW-Authenticate', 'Bearer realm="GenXdev MCP Server"')
                                    $errorJson = @{
                                        error = @{
                                            code    = -32600
                                            message = 'Authentication required: Missing Authorization header'
                                        }
                                    } | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10
                                    $response.ContentType = 'application/json'
                                    $errorBytes = [System.Text.Encoding]::UTF8.GetBytes($errorJson)
                                    $response.ContentLength64 = $errorBytes.Length
                                    $response.OutputStream.Write($errorBytes, 0, $errorBytes.Length)
                                    $response.Close()
                                    continue
                                }

                                if (-not $authHeader.StartsWith('Bearer ', [StringComparison]::OrdinalIgnoreCase)) {
                                    Microsoft.PowerShell.Utility\Write-Verbose "Invalid Authorization header format from $($request.RemoteEndPoint.Address)"
                                    $response.StatusCode = 401
                                    $response.Headers.Add('WWW-Authenticate', 'Bearer realm="GenXdev MCP Server"')
                                    $errorJson = @{
                                        error = @{
                                            code    = -32600
                                            message = 'Authentication required: Invalid Authorization header format (expected Bearer token)'
                                        }
                                    } | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10
                                    $response.ContentType = 'application/json'
                                    $errorBytes = [System.Text.Encoding]::UTF8.GetBytes($errorJson)
                                    $response.ContentLength64 = $errorBytes.Length
                                    $response.OutputStream.Write($errorBytes, 0, $errorBytes.Length)
                                    $response.Close()
                                    continue
                                }

                                $providedToken = $authHeader.Substring(7).Trim()

                                if ($providedToken -ne $expectedToken) {
                                    Microsoft.PowerShell.Utility\Write-Verbose "Invalid token from $($request.RemoteEndPoint.Address)"
                                    $response.StatusCode = 401
                                    $response.Headers.Add('WWW-Authenticate', 'Bearer realm="GenXdev MCP Server"')
                                    $errorJson = @{
                                        error = @{
                                            code    = -32600
                                            message = 'Authentication failed: Invalid token'
                                        }
                                    } | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10
                                    $response.ContentType = 'application/json'
                                    $errorBytes = [System.Text.Encoding]::UTF8.GetBytes($errorJson)
                                    $response.ContentLength64 = $errorBytes.Length
                                    $response.OutputStream.Write($errorBytes, 0, $errorBytes.Length)
                                    $response.Close()
                                    continue
                                }

                                Microsoft.PowerShell.Utility\Write-Verbose "Successfully authenticated request from $($request.RemoteEndPoint.Address)"
                            }
                        }

                        # Read request body
                        $requestBody = ''
                        if ($request.HasEntityBody) {
                            $reader = Microsoft.PowerShell.Utility\New-Object System.IO.StreamReader($request.InputStream)
                            $requestBody = $reader.ReadToEnd()
                            $reader.Close()
                        }

                        # Parse JSON request
                        $jsonRequest = $null
                        if ($requestBody) {
                            try {
                                $jsonRequest = $requestBody | Microsoft.PowerShell.Utility\ConvertFrom-Json
                                # Only log detailed JSON for non-/mcp endpoints
                                if ($request.Url.AbsolutePath -ne '/mcp') {
                                    Microsoft.PowerShell.Utility\Write-Host "Parsed JSON request: $($jsonRequest | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress)" -ForegroundColor Magenta
                                }
                            }
                            catch {
                                Microsoft.PowerShell.Utility\Write-Verbose "Invalid JSON in request: $($_.Exception.Message)"
                                Microsoft.PowerShell.Utility\Write-Host "Raw request body: $requestBody" -ForegroundColor Red
                            }
                        }

                        # Route requests
                        $responseJson = ''
                        $statusCode = 200

                        # Add concise logging (skip routine GET /mcp requests)
                        if (-not $isRoutineRequest) {
                            Microsoft.PowerShell.Utility\Write-Host "Request: $($request.HttpMethod) $($request.Url.AbsolutePath)" -ForegroundColor Cyan
                        }

                        # Normalize path by removing trailing slash for consistent routing
                        $normalizedPath = $request.Url.AbsolutePath.TrimEnd('/')
                        if ([string]::IsNullOrEmpty($normalizedPath)) {
                            $normalizedPath = '/'
                        }

                        switch ($normalizedPath) {
                            '/mcp' {
                                if ($request.HttpMethod -eq 'GET') {
                                    # All GET requests to /mcp return normal HTTP (list tools)
                                    $responseJson = HandleGenXdevMCPServerListToolsRequest -Functions $functions
                                }
                                elseif ($request.HttpMethod -eq 'POST') {
                                    # Handle Streamable HTTP transport
                                    if ($jsonRequest) {
                                        Microsoft.PowerShell.Utility\Write-Host "MCP Request: $($jsonRequest.method)" -ForegroundColor Cyan
                                        if ($jsonRequest.method -eq 'tools/call') {
                                            Microsoft.PowerShell.Utility\Write-Host "  Tool: $($jsonRequest.params.name)" -ForegroundColor Green
                                            if ($jsonRequest.params.arguments) {
                                                Microsoft.PowerShell.Utility\Write-Host "  Arguments: $($jsonRequest.params.arguments | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress)" -ForegroundColor Gray
                                            }
                                        }
                                        $responseJson = HandleGenXdevMCPServerMCPRequest -Request $jsonRequest -Functions $functions -ExposedCmdLets $ExposedCmdLets -NoConfirmationToolFunctionNames $NoConfirmationToolFunctionNames -MaxOutputLength $MaxOutputLength
                                        if ($jsonRequest.method -eq 'tools/call') {
                                            Microsoft.PowerShell.Utility\Write-Host "  Response Length: $($responseJson.Length) chars" -ForegroundColor Gray
                                        }
                                    }
                                    else {
                                        Microsoft.PowerShell.Utility\Write-Error 'No valid JSON request received for POST to /mcp'
                                        $statusCode = 400
                                        $responseJson = @{
                                            error = @{
                                                code    = -32700
                                                message = 'Parse error - Invalid JSON'
                                            }
                                        } | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 50
                                    }
                                }
                                else {
                                    $statusCode = 405
                                    $responseJson = @{
                                        error = @{
                                            code    = -32601
                                            message = 'Method not allowed'
                                        }
                                    } | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 50
                                }
                            }
                            '/mcp/list-tools' {
                                Microsoft.PowerShell.Utility\Write-Host 'Handling list-tools request' -ForegroundColor Cyan
                                $responseJson = HandleGenXdevMCPServerListToolsRequest -Functions $functions
                            }
                            '/sse' {
                                # Dedicated SSE endpoint for legacy transport
                                if ($request.HttpMethod -eq 'GET') {
                                    Microsoft.PowerShell.Utility\Write-Host 'Handling dedicated SSE GET request' -ForegroundColor Yellow
                                    HandleGenXdevMCPServerSSERequest -Request $request -Response $response -Functions $functions
                                    continue # SSE response handles its own connection, continue to next request
                                }
                                else {
                                    $statusCode = 405
                                    $responseJson = @{
                                        error = @{
                                            code    = -32601
                                            message = 'Method not allowed - SSE endpoint only supports GET'
                                        }
                                    } | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 50
                                }
                            }
                            '/mcp/call-tool' {
                                Microsoft.PowerShell.Utility\Write-Host "Tool Call: $($jsonRequest.params.name)" -ForegroundColor Green
                                if ($jsonRequest.params.arguments) {
                                    Microsoft.PowerShell.Utility\Write-Host "Arguments: $($jsonRequest.params.arguments | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress)" -ForegroundColor Gray
                                }
                                $responseJson = HandleGenXdevMCPServerToolRequest -Request $jsonRequest -Functions $functions -ExposedCmdLets $ExposedCmdLets -NoConfirmationToolFunctionNames $NoConfirmationToolFunctionNames -MaxOutputLength $MaxOutputLength
                                Microsoft.PowerShell.Utility\Write-Host "Tool Response Length: $($responseJson.Length) chars" -ForegroundColor Gray
                            }
                            '/messages' {
                                # Handle legacy SSE transport POST messages
                                Microsoft.PowerShell.Utility\Write-Host "Legacy SSE Message: $($jsonRequest.method)" -ForegroundColor Yellow
                                $responseJson = HandleGenXdevMCPServerMCPRequest -Request $jsonRequest -Functions $functions -ExposedCmdLets $ExposedCmdLets -NoConfirmationToolFunctionNames $NoConfirmationToolFunctionNames -MaxOutputLength $MaxOutputLength
                            }
                            default {
                                $statusCode = 404
                                $responseJson = @{
                                    error = @{
                                        code    = -32601
                                        message = 'Method not found'
                                    }
                                } | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 50
                            }
                        }

                        # Send response
                        $response.StatusCode = $statusCode
                        $response.ContentType = 'application/json'
                        $responseBytes = [System.Text.Encoding]::UTF8.GetBytes($responseJson)
                        $response.ContentLength64 = $responseBytes.Length
                        $response.OutputStream.Write($responseBytes, 0, $responseBytes.Length)
                        $response.Close()
                    }
                    catch {
                        # Handle request-specific exceptions without stopping the server
                        Microsoft.PowerShell.Utility\Write-Verbose "Request handling error: $($_.Exception.Message)"
                        try {
                            if (-not $response.HeadersSent) {
                                $response.StatusCode = 500
                                $response.ContentType = 'application/json'
                                $errorJson = @{
                                    error = @{
                                        code    = -32603
                                        message = 'Internal server error'
                                    }
                                } | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10
                                $errorBytes = [System.Text.Encoding]::UTF8.GetBytes($errorJson)
                                $response.ContentLength64 = $errorBytes.Length
                                $response.OutputStream.Write($errorBytes, 0, $errorBytes.Length)
                            }
                            $response.Close()
                        }
                        catch {
                            # Ignore errors when trying to send error response
                        }
                    }
                }
            }
            catch [System.Net.HttpListenerException] {
                if ($_.Exception.ErrorCode -ne 995) {
                    # 995 = WSA_OPERATION_ABORTED (normal shutdown)
                    Microsoft.PowerShell.Utility\Write-Error "Server error: $($_.Exception.Message)"
                }
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Error "Unexpected error: $($_.Exception.Message)"
            }
            finally {
                if ($listener.IsListening) {
                    $listener.Stop()
                }
                $listener.Close()
                Microsoft.PowerShell.Utility\Write-Host 'Server stopped.' -ForegroundColor Yellow
            }
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI
Original cmdlet filename  : Test-DeepLinkImageFile.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

<#
.SYNOPSIS
Tests if the specified file path is a valid image file with a supported format.

.DESCRIPTION
This function validates that a file exists at the specified path and has a
supported image file extension. It checks for common image formats including
PNG, JPG, JPEG, GIF, BMP, WebP, TIFF, and TIF files. The function throws
exceptions for invalid paths or unsupported file formats.

.PARAMETER Path
The file path to the image file to be tested. Must be a valid file system path.

.EXAMPLE
Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"

.EXAMPLE
Test-DeepLinkImageFile "C:\Images\logo.png"
#>
function Test-DeepLinkImageFile {

    [CmdletBinding()]

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'The file path to the image file to be tested'
        )]
        [string] $Path
    )

    begin {

        # define supported image file extensions
        $validExtensions = @('.png', '.jpg', '.jpeg', '.gif', '.bmp', '.webp', '.tiff', '.tif')
    }

    process {

        # check if the file exists at the specified path
        if (-not ([IO.File]::Exists($Path))) {

            throw "Image file not found: $Path"
        }

        # get the file extension and convert to lowercase for comparison
        $fileExtension = [System.IO.Path]::GetExtension($Path).ToLower()

        # verify the file has a supported image format extension
        if ($validExtensions -notcontains $fileExtension) {

            throw ('Invalid image format. Supported formats: ' +
                'png, jpg, jpeg, gif, bmp, webp, tiff, tif')
        }

        # output verbose information about successful validation
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Successfully validated image file: $Path"
        )
    }

    end {
    }
}

