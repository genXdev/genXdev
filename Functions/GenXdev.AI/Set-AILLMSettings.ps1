<##############################################################################
Part of PowerShell module : GenXdev.AI
Original cmdlet filename  : Set-AILLMSettings.ps1
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
Sets the LLM settings for AI operations in GenXdev.AI.

.DESCRIPTION
This f        [int] $TimeoutSeconds,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support json_schema response format'
        )]
        [switch] $NoSupportForJsonSchema,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support image upload functionality'
        )]
        [switch] $NoSupportForImageUpload,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support tool calling functionality'
        )]
        [switch] $NoSupportForToolCalls,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store the settings only in the current session without ' +
                'persisting')
        )]
        [switch] $SessionOnly,
        ###############################################################################
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
        ###############################################################################
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
        ###############################################################################
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'The model identifier or pattern to use for AI operations'
        )]
        [string] $Model,
        ###############################################################################
        [Parameter(
            Position = 7,
            Mandatory = $false,
            HelpMessage = 'The API endpoint URL for AI operations'
        )]
        [string] $ApiEndpoint,
        ###############################################################################
        [Parameter(
            Position = 8,
            Mandatory = $false,
            HelpMessage = 'The API key for authenticated AI operations'
        )]
        [string] $ApiKey,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support json_schema response format'
        )]
        [switch] $NoSupportForJsonSchema,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support image upload functionality'
        )]
        [switch] $NoSupportForImageUpload,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether the endpoint does not support tool calling functionality'
        )]
        [switch] $NoSupportForToolCalls,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $SessionOnly,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for AI ' +
                'preferences')
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
            HelpMessage = ('Store settings only in persistent preferences without ' +
                'affecting session')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
        ###############################################################################
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
###############################################################################