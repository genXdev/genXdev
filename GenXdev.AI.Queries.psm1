<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Add-EmoticonsToText.ps1
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
Enhances text by adding contextually appropriate emoticons using AI.

.DESCRIPTION
This function processes input text to add emoticons that match the emotional
context. It can accept input directly through parameters, from the pipeline, or
from the system clipboard. The function leverages AI models to analyze the text
and select appropriate emoticons, making messages more expressive and engaging.

.PARAMETER Text
The input text to enhance with emoticons. If not provided, the function will
read from the system clipboard. Multiple lines of text are supported.

.PARAMETER Instructions
Additional instructions to guide the AI model in selecting and placing emoticons.
These can help fine-tune the emotional context and style of added emoticons.

.PARAMETER Temperature
Temperature for response randomness (0.0-1.0).

.PARAMETER SetClipboard
When specified, copies the enhanced text back to the system clipboard after
processing is complete.

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

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Add-EmoticonsToText -Text "Hello, how are you today?" -SetClipboard

.EXAMPLE
"Time to celebrate!" | emojify
###############################################################################>
function Add-EmoticonsToText {

    [CmdletBinding()]
    [OutputType([System.String])]
    [Alias('emojify')]

    param (
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'The text to enhance with emoticons'
        )]
        [string] $Text,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'Additional instructions for the AI model'
        )]
        [string] $Instructions = '',
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
        [string] $LLMQueryType = 'SimpleIntelligence',
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
            HelpMessage = 'Temperature for audio response randomness (passed to LLMQuery)'
        )]
        [double] $AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response generation (passed to LLMQuery)'
        )]
        [double] $TemperatureResponse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Language code or name for processing (passed to LLMQuery)'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use (passed to LLMQuery)'
        )]
        [int] $CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress output (passed to LLMQuery)'
        )]
        [string] $SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for processing (passed to LLMQuery)'
        )]
        [int] $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence threshold for audio detection (passed to LLMQuery)'
        )]
        [double] $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty for sequence generation (passed to LLMQuery)'
        )]
        [double] $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold for output filtering (passed to LLMQuery)'
        )]
        [double] $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for output filtering (passed to LLMQuery)'
        )]
        [double] $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold for audio detection (passed to LLMQuery)'
        )]
        [double] $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output (passed to LLMQuery)'
        )]
        [switch] $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output for thoughts (passed to LLMQuery)'
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable VOX (voice activation) (passed to LLMQuery)'
        )]
        [switch] $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use desktop audio capture (passed to LLMQuery)'
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable context usage (passed to LLMQuery)'
        )]
        [switch] $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable beam search sampling strategy (passed to LLMQuery)'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only responses (passed to LLMQuery)'
        )]
        [switch] $OnlyResponses,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Output only markup blocks (passed to LLMQuery)'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter for markup block types (passed to LLMQuery)'
        )]
        [string[]] $MarkupBlocksTypeFilter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum tool callback length (passed to LLMQuery)'
        )]
        [int] $MaxToolcallBackLength
    )

    begin {

        # output initialization message for verbose logging
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Initializing emoticon enhancement'
        )
    }

    process {

        # construct instructions for emoticon enhancement by combining base prompt
        # with any additional user instructions
        $emotifyInstructions = (
            'Add funny or expressive emojii to the text provided as content ' +
            "of the user-role message. Don't change the text otherwise. " +
            "$Instructions"
        )

        # output verbose information about the processing instructions
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Processing text with instructions: $emotifyInstructions"
        )

        # invoke the language model with emoticon instructions and pass all
        # bound parameters through to the underlying function
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Invoke-LLMTextTransformation' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)
        GenXdev\Invoke-LLMTextTransformation @params `
            -Instructions $emotifyInstructions
    }

    end {

        # output completion message for verbose logging
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Completed emoticon enhancement'
        )
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : ConvertFrom-CorporateSpeak.ps1
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
Converts polite, professional corporate speak into direct, clear language using AI.

.DESCRIPTION
This function processes input text to transform diplomatic, corporate
communications into more direct and clear language. It can accept input directly
through parameters, from the pipeline, or from the system clipboard. The function
leverages AI models to analyze and rephrase text while preserving the original
intent.

.PARAMETER Text
The corporate speak text to convert to direct language. If not provided, the
function will read from the system clipboard. Multiple lines of text are
supported.

.PARAMETER Instructions
Additional instructions to guide the AI model in converting the text.
These can help fine-tune the tone and style of the direct language.

.PARAMETER Temperature
Temperature for response randomness (0.0-1.0).

.PARAMETER SetClipboard
When specified, copies the transformed text back to the system clipboard.

.PARAMETER LLMQueryType
The type of LLM query to use for processing the text transformation.

.PARAMETER Model
Specifies which AI model to use for text transformation. Different models may
produce varying results in terms of language style.

.PARAMETER ApiEndpoint
Api endpoint url, defaults to http://localhost:1234/v1/chat/completions.

.PARAMETER ApiKey
The API key to use for the request.

.PARAMETER TimeoutSeconds
The timeout in seconds for AI operations.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
ConvertFrom-CorporateSpeak -Text "I would greatly appreciate your timely response" -SetClipboard

.EXAMPLE
"We should circle back" | uncorporatize
#>
function ConvertFrom-CorporateSpeak {

    [CmdletBinding()]
    [OutputType([System.String])]
    [Alias('uncorporatize')]

    param (
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'The text to convert from corporate speak'
        )]
        [string] $Text,
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
        [ValidateRange(0.0, 1.0)]
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
            HelpMessage = ('Array of PowerShell command definitions to use as tools')
        )]
        [GenXdev.Helpers.ExposedCmdletDefinition[]] $ExposedCmdLets = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Array of command names that don't require confirmation")
        )]
        [Alias('NoConfirmationFor')]
        [string[]] $NoConfirmationToolFunctionNames = @(),
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
        [string] $LLMQueryType = 'SimpleIntelligence',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The model identifier or pattern to use for AI operations')
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
            HelpMessage = 'Copy the enhanced text to clipboard'
        )]
        [switch] $SetClipboard,
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
            HelpMessage = ('Use alternative settings stored in session for AI preferences')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for AI preferences')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences without affecting session')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for audio response randomness (passed to LLMQuery)'
        )]
        [double] $AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response generation (passed to LLMQuery)'
        )]
        [double] $TemperatureResponse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Language code or name for processing (passed to LLMQuery)'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use (passed to LLMQuery)'
        )]
        [int] $CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress output (passed to LLMQuery)'
        )]
        [string] $SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for processing (passed to LLMQuery)'
        )]
        [int] $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence threshold for audio detection (passed to LLMQuery)'
        )]
        [double] $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty for sequence generation (passed to LLMQuery)'
        )]
        [double] $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold for output filtering (passed to LLMQuery)'
        )]
        [double] $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for output filtering (passed to LLMQuery)'
        )]
        [double] $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold for audio detection (passed to LLMQuery)'
        )]
        [double] $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output (passed to LLMQuery)'
        )]
        [switch] $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output for thoughts (passed to LLMQuery)'
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable VOX (voice activation) (passed to LLMQuery)'
        )]
        [switch] $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use desktop audio capture (passed to LLMQuery)'
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable context usage (passed to LLMQuery)'
        )]
        [switch] $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable beam search sampling strategy (passed to LLMQuery)'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only responses (passed to LLMQuery)'
        )]
        [switch] $OnlyResponses,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Output only markup blocks (passed to LLMQuery)'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter for markup block types (passed to LLMQuery)'
        )]
        [string[]] $MarkupBlocksTypeFilter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum tool callback length (passed to LLMQuery)'
        )]
        [int] $MaxToolcallBackLength
    )

    begin {

        # output verbose message for start
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Starting corporate speak conversion with model: $Model"
        )
    }

    process {

        # construct instructions for corporate speak transformation
        $corporateInstructions = @"
    Translate the users input from corporate jargon phrase into simple, everyday
    language that anyone can understand. The translation should reveal the true and
    real meaning of the phrase, making it clear and straightforward, even if the
    corporate speak is used to soften or obscure the actual intent.

    Examples:

    Corporate: 'Let's touch base.'
    Layman: 'Let's talk or meet.'

    Corporate: 'Think outside the box.'
    Layman: 'Be creative or innovative.'

    Corporate: 'We're optimizing our workforce.'
    Layman: 'We're laying off employees.'

    Corporate: 'Optimizing our workforce'
    Layman: 'Laying off employees.'

    Corporate: 'Rightsizing'
    Layman: 'Laying off employees.'

    Corporate: 'Performance improvement plan'
    Layman: 'Employee is at risk of being fired.'

    Corporate: 'Streamlining operations'
    'Can involve layoffs or unfavorable role changes.'

    Corporate: 'Attrition'
    Layman: 'Not replacing departing employees to reduce headcount.'

    Corporate: 'Workforce reduction'
    'Layoffs.'

    Corporate: 'Downsizing'
    Layman: 'Reducing employee numbers.'

    Corporate: 'Cost-saving measures'
    'Can include layoffs.'

    Corporate: 'Restructuring'
    Layman: 'Often includes layoffs.'

    Corporate: 'Trim the fat'
    'Reducing costs, often by cutting jobs or projects.'

    Corporate: 'Buy-in'
    Layman: 'Ensuring support to avoid wasted effort; implies potential resistance.'

    $Instructions
"@

        # output verbose message for transformation
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Transforming text with corporate speak instructions'
        )

        # invoke the language model with corporate speak instructions
        GenXdev\Invoke-LLMTextTransformation @PSBoundParameters `
            -Instructions $corporateInstructions
    }

    end {

        # output verbose message for completion
        Microsoft.PowerShell.Utility\Write-Verbose 'Completed corporate speak conversion'
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : ConvertFrom-DiplomaticSpeak.ps1
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
Converts diplomatic or tactful language into direct, clear, and
straightforward language.

.DESCRIPTION
This function takes diplomatic speak and translates it to reveal the true
meaning behind polite or politically correct language. It uses AI language
models to transform euphemistic expressions into direct statements, making
communication unambiguous and easy to understand. The function is particularly
useful for analyzing political statements, business communications, or any text
where the real meaning might be obscured by diplomatic language.

.PARAMETER Text
The text to convert from diplomatic speak. This can be provided through the
pipeline.

.PARAMETER Instructions
Additional instructions for the AI model to customize the transformation
process.

.PARAMETER Temperature
Temperature for response randomness (0.0-1.0). Lower values produce more
consistent outputs while higher values increase creativity.

.PARAMETER SetClipboard
Copy the transformed text to clipboard after processing.

.PARAMETER LLMQueryType
The type of LLM query to use for the transformation process.

.PARAMETER Model
The model identifier or pattern to use for AI operations.

.PARAMETER ApiEndpoint
The API endpoint URL for AI operations when using external services.

.PARAMETER ApiKey
The API key for authenticated AI operations with external services.

.PARAMETER TimeoutSeconds
The timeout in seconds for AI operations to prevent hanging.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER PreferencesDatabasePath
Database path for preference data files storage.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"

.EXAMPLE
undiplomatize "Your proposal has merit but requires further consideration"

.EXAMPLE
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
#>
function ConvertFrom-DiplomaticSpeak {

    [CmdletBinding()]
    [OutputType([System.String])]
    [Alias('undiplomatize')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'The text to convert from diplomatic speak'
        )]
        [string] $Text,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'Additional instructions for the AI model'
        )]
        [string] $Instructions = '',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response randomness (0.0-1.0)'
        )]
        [ValidateRange(0.0, 1.0)]
        [double] $Temperature = 0.0,
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
        [string] $LLMQueryType = 'Knowledge',
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
            HelpMessage = 'Copy the transformed text to clipboard'
        )]
        [switch] $SetClipboard,
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
            HelpMessage = 'Attachments to include in the AI operation.'
        )]
        [object[]] $Attachments,
        [Parameter(
            HelpMessage = 'Level of image detail for AI processing.'
        )]
        [string] $ImageDetail,
        [Parameter(
            HelpMessage = 'Functions to expose to the AI model.'
        )]
        [object[]] $Functions,
        [Parameter(
            HelpMessage = 'Cmdlets to expose to the AI model.'
        )]
        [object[]] $ExposedCmdLets,
        [Alias('NoConfirmationFor')]
        [Parameter(
            HelpMessage = 'Tool function names that do not require confirmation.'
        )]
        [string[]] $NoConfirmationToolFunctionNames,
        [Parameter(
            HelpMessage = 'Do not add thoughts to the AI history.'
        )]
        [switch] $DontAddThoughtsToHistory,
        [Parameter(
            HelpMessage = 'Continue from the last AI operation.'
        )]
        [switch] $ContinueLast,
        [Parameter(
            HelpMessage = 'Speak thoughts aloud during AI processing.'
        )]
        [switch] $SpeakThoughts,
        [Parameter(
            HelpMessage = 'Disable session caching for this operation.'
        )]
        [switch] $NoSessionCaching,
        [Parameter(
            HelpMessage = 'Allow use of default tools in AI operation.'
        )]
        [switch] $AllowDefaultTools,
        [Parameter(
            HelpMessage = 'Audio temperature for AI audio generation.'
        )]
        [double] $AudioTemperature,
        [Parameter(
            HelpMessage = 'Temperature for AI response generation.'
        )]
        [double] $TemperatureResponse,
        [Parameter(
            HelpMessage = 'Number of CPU threads to use for AI operation.'
        )]
        [int] $CpuThreads,
        [Parameter(
            HelpMessage = 'Regex to suppress in AI output.'
        )]
        [string[]] $SuppressRegex,
        [Parameter(
            HelpMessage = 'Audio context size for AI audio processing.'
        )]
        [int] $AudioContextSize,
        [Parameter(
            HelpMessage = 'Silence threshold for AI audio processing.'
        )]
        [double] $SilenceThreshold,
        [Parameter(
            HelpMessage = 'Length penalty for AI sequence generation.'
        )]
        [double] $LengthPenalty,
        [Parameter(
            HelpMessage = 'Entropy threshold for AI output.'
        )]
        [double] $EntropyThreshold,
        [Parameter(
            HelpMessage = 'Log probability threshold for AI output.'
        )]
        [double] $LogProbThreshold,
        [Parameter(
            HelpMessage = 'No speech threshold for AI audio processing.'
        )]
        [double] $NoSpeechThreshold,
        [Parameter(
            HelpMessage = 'Do not speak the AI output.'
        )]
        [switch] $DontSpeak,
        [Parameter(
            HelpMessage = 'Do not speak AI thoughts.'
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            HelpMessage = 'Disable VOX for AI audio output.'
        )]
        [switch] $NoVOX,
        [Parameter(
            HelpMessage = 'Use desktop audio capture for AI audio.'
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            HelpMessage = 'Do not use context for AI operation.'
        )]
        [switch] $NoContext,
        [Parameter(
            HelpMessage = 'Use beam search sampling strategy for AI.'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            HelpMessage = 'Return only responses from AI.'
        )]
        [switch] $OnlyResponses,
        [Parameter(
            HelpMessage = 'Output only markup blocks from AI.'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            HelpMessage = 'Filter for markup block types in AI output.'
        )]
        [string[]] $MarkupBlocksTypeFilter,
        [Parameter(
            HelpMessage = 'Maximum callback length for tool calls.'
        )]
        [int] $MaxToolcallBackLength
    )

    begin {

        # output verbose information about starting the conversion process
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Starting diplomatic speak conversion process'
        )
    }

    process {

        # construct comprehensive instructions for diplomatic speak transformation
        $diplomaticInstructions = @"
Translate the user's input from diplomatic or tactful language into direct, clear, and straightforward language. The translation should reveal the true and real meaning of the phrase, making it unambiguous and easy to understand.

Examples:

Original: 'Diplomatic Statement'
Direct meaning: 'Direct Statement'

Original: 'Your precision in targeting seems to have some room for improvement. Perhaps we can share our advanced targeting technologies to help you hit only the intended targets.'
Direct meaning: 'Your airstrikes are killing civilians.'

Original: 'Your tariffs are like a boa constrictor around our economy's neck. Maybe we can find a way to loosen that grip a bit.'
Direct meaning: 'Your tariffs are suffocating our industries.'

Original: 'Your smokestacks are belching out more carbon than a dragon's fiery breath. Perhaps we can help you slay that dragon with some clean energy solutions.'
Direct meaning: 'Your country is the largest polluter.'

Original: 'Some of your more enterprising citizens are trying to take a peek into our digital secrets. Maybe we can set up a joint cybersecurity task force to keep them in check.'
Direct meaning: 'Your hackers are attacking our systems.'

Original: 'Your cultural practices are... unique, to say the least. I'm sure they have a certain charm that we're not yet appreciating. Perhaps a cultural exchange program could help bridge our understanding.'
Direct meaning: 'Your customs are barbaric.'

Original: 'Your interest in nuclear technology is noted. We have some experience in this area and would be happy to share our knowledge on the safe and peaceful uses of atomic energy.'
Direct meaning: 'You're developing nuclear weapons, and that's dangerous.'

Original: 'Your spies are so ubiquitous that they're practically part of our tourism industry. Maybe we can find a way to make their stay more comfortable, or perhaps even charge them a visitor's fee.'
Direct meaning: 'Your spies are everywhere in our country.'

Original: 'That piece of rock in the ocean is more ours than yours. How about we flip a coin to decide who gets it? Or better yet, let's have a fishing competition; the one who catches the biggest fish gets the island.'
Direct meaning: 'That island belongs to us, not you.'

Original: 'We're putting you on timeout. No more playing with the other kids until you learn to share nicely.'
Direct meaning: 'We're imposing sanctions on your country.'

Original: 'Your ambassador has outstayed their welcome. We're throwing a farewell party and expect them to leave immediately after.'
Direct meaning: 'We're expelling your ambassador.'

Original: 'Welcome to the galactic neighborhood! We're here to help you integrate into our interplanetary community. Please, no sudden movements; our robots get a bit jumpy.'
Direct meaning: 'Your planet is under our control now.'

Original: 'Your meddling with time is making our historians' jobs really confusing. Could you please stick to the present or find a way to clean up your temporal messes?'
Direct meaning: 'You've altered the timeline, and that's not acceptable.'

Original: 'Your robots are smarter than some of your politicians. Maybe we can give them voting rights and see if that improves governance.'
Direct meaning: 'Your robots are sentient and deserve rights.'

Original: 'Your goods are so cheap, they're making our merchants look like they're selling gold-plated widgets. Maybe you can add some artificial scarcity or something to make it fair.'
Direct meaning: 'Your trade practices are unfair; you're dumping cheap goods.'

Original: 'Your planet is like a never-ending party with too much drama. Let's send in some referees to make sure everyone plays nice.'
Direct meaning: 'Your planet is a hotbed of rebellion; we need to intervene.'

Original: 'Your AI seems quite advanced. We'd be interested in discussing ways to ensure its safe and ethical use.'
Direct meaning: 'Your AI is too powerful and could be dangerous.'

Original: 'We've observed different approaches to managing the pandemic and are interested in sharing best practices.'
Direct meaning: 'Your handling of the pandemic is incompetent.'

Original: 'We are disappointed by the events and believe in the importance of fair play. We hope for a thorough investigation to uphold the integrity of the sport.'
Direct meaning: 'Your team cheated.'

Original: 'I'm interested in exploring more of your culinary offerings to appreciate the diversity of flavors.'
Direct meaning: 'Your food is awful.'

Original: 'Your sartorial choices are... distinctive. I'm sure they're making a statement that I'm not quite getting.'
Direct meaning: 'Your fashion sense is terrible.'

$Instructions
"@

        # output verbose information about the transformation process
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Transforming text with diplomatic speak instructions'
        )

        # invoke the language model with diplomatic speak instructions using splatting
        GenXdev\Invoke-LLMTextTransformation @PSBoundParameters `
            -Instructions $diplomaticInstructions
    }

    end {

        # output verbose information about completion of the conversion process
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Completed diplomatic speak conversion process'
        )
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : ConvertTo-CorporateSpeak.ps1
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
Converts direct or blunt text into polite, professional corporate speak using AI.

.DESCRIPTION
This function processes input text to transform direct or potentially harsh
language into diplomatic, professional corporate communications. It can accept
input directly through parameters, from the pipeline, or from the system
clipboard. The function leverages AI models to analyze and rephrase text while
preserving the original intent.

.PARAMETER Text
The input text to convert to corporate speak. If not provided, the function
will read from the system clipboard. Multiple lines of text are supported.

.PARAMETER Instructions
Additional instructions to guide the AI model in converting the text. These
can help fine-tune the tone and style of the corporate language.

.PARAMETER Temperature
Temperature for response randomness (0.0-1.0).

.PARAMETER LLMQueryType
The type of LLM query.

.PARAMETER Model
The model identifier or pattern to use for AI operations.

.PARAMETER ApiKey
The API key for authenticated AI operations.

.PARAMETER TimeoutSeconds
The timeout in seconds for AI operations.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SetClipboard
When specified, copies the transformed text back to the system clipboard.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
ConvertTo-CorporateSpeak -Text "That's a terrible idea" -SetClipboard

.EXAMPLE
"This makes no sense" | corporatize
#>
function ConvertTo-CorporateSpeak {

    [CmdletBinding()]
    [OutputType([System.String])]
    [Alias('corporatize')]

    param (
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'The text to convert to corporate speak'
        )]
        [ValidateNotNull()]
        [string]$Text,
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
        [string] $LLMQueryType = 'SimpleIntelligence',
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
            HelpMessage = 'Temperature for audio response randomness (passed to LLMQuery)'
        )]
        [double] $AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response generation (passed to LLMQuery)'
        )]
        [double] $TemperatureResponse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Language code or name for processing (passed to LLMQuery)'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use (passed to LLMQuery)'
        )]
        [int] $CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress output (passed to LLMQuery)'
        )]
        [string] $SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for processing (passed to LLMQuery)'
        )]
        [int] $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence threshold for audio detection (passed to LLMQuery)'
        )]
        [double] $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty for sequence generation (passed to LLMQuery)'
        )]
        [double] $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold for output filtering (passed to LLMQuery)'
        )]
        [double] $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for output filtering (passed to LLMQuery)'
        )]
        [double] $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold for audio detection (passed to LLMQuery)'
        )]
        [double] $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output (passed to LLMQuery)'
        )]
        [switch] $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output for thoughts (passed to LLMQuery)'
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable VOX (voice activation) (passed to LLMQuery)'
        )]
        [switch] $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use desktop audio capture (passed to LLMQuery)'
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable context usage (passed to LLMQuery)'
        )]
        [switch] $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable beam search sampling strategy (passed to LLMQuery)'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only responses (passed to LLMQuery)'
        )]
        [switch] $OnlyResponses,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Output only markup blocks (passed to LLMQuery)'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter for markup block types (passed to LLMQuery)'
        )]
        [string[]] $MarkupBlocksTypeFilter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum tool callback length (passed to LLMQuery)'
        )]
        [int] $MaxToolcallBackLength
    )

    begin {

        # output verbose message about starting the conversion process
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Starting corporate speak conversion'
        )
    }

    process {

        # setup corporate language transformation instructions
        $corporateInstructions = @"
Translate users input from the a brutal or direct phrase into polite,
professional corporate speak while preserving the original intent. The
translation should sound diplomatic and suitable for a corporate environment,
even if the original phrase is blunt or harsh.

Examples:

Original: 'That makes no sense.'
Translation: 'Can you please elaborate on your thinking here?'

Original: 'I've told you this 5,000 times.'
Translation: 'I have provided this information previously.'

Original: 'Stop micromanaging me.'
Translation: 'I feel that I am at my most productive when I have more autonomy.'

$Instructions
"@

        # output verbose message about the transformation process
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Processing text transformation'
        )

        # invoke the language model with corporate instructions
        GenXdev\Invoke-LLMTextTransformation @PSBoundParameters `
            -Instructions $corporateInstructions
    }

    end {

        # output verbose message about completion of the conversion process
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Completed corporate speak conversion'
        )
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : ConvertTo-DiplomaticSpeak.ps1
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
Converts direct or blunt text into polite, tactful diplomatic language.

.DESCRIPTION
This function transforms user input from direct or blunt phrasing into
diplomatic, tactful language suitable for high-level discussions, negotiations,
or formal communications. The function uses AI language models to maintain
the original intent while softening the tone and making the message more
diplomatic and professional.

.PARAMETER Text
The text to convert to diplomatic speak.

.PARAMETER Instructions
Additional instructions for the AI model.

.PARAMETER Temperature
Temperature for response randomness (0.0-1.0).

.PARAMETER LLMQueryType
The type of LLM query.

.PARAMETER Model
The model identifier or pattern to use for AI operations.

.PARAMETER ApiKey
The API key for authenticated AI operations.

.PARAMETER TimeoutSeconds
The timeout in seconds for AI operations.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SetClipboard
Copy the transformed text to clipboard.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
ConvertTo-DiplomaticSpeak -Text "Your proposal is terrible" -Temperature 0.2 `
    -SetClipboard

.EXAMPLE
diplomatize "Your code is full of bugs"
#>
function ConvertTo-DiplomaticSpeak {

    [CmdletBinding()]
    [OutputType([System.String])]
    [Alias('diplomatize')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'The text to convert to diplomatic speak'
        )]
        [ValidateNotNull()]
        [string] $Text,
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
        [string] $LLMQueryType = 'SimpleIntelligence',
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
            HelpMessage = 'Temperature for audio response randomness (passed to LLMQuery)'
        )]
        [double] $AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response generation (passed to LLMQuery)'
        )]
        [double] $TemperatureResponse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Language code or name for processing (passed to LLMQuery)'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use (passed to LLMQuery)'
        )]
        [int] $CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress output (passed to LLMQuery)'
        )]
        [string] $SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for processing (passed to LLMQuery)'
        )]
        [int] $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence threshold for audio detection (passed to LLMQuery)'
        )]
        [double] $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty for sequence generation (passed to LLMQuery)'
        )]
        [double] $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold for output filtering (passed to LLMQuery)'
        )]
        [double] $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for output filtering (passed to LLMQuery)'
        )]
        [double] $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold for audio detection (passed to LLMQuery)'
        )]
        [double] $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output (passed to LLMQuery)'
        )]
        [switch] $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output for thoughts (passed to LLMQuery)'
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable VOX (voice activation) (passed to LLMQuery)'
        )]
        [switch] $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use desktop audio capture (passed to LLMQuery)'
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable context usage (passed to LLMQuery)'
        )]
        [switch] $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable beam search sampling strategy (passed to LLMQuery)'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only responses (passed to LLMQuery)'
        )]
        [switch] $OnlyResponses,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Output only markup blocks (passed to LLMQuery)'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter for markup block types (passed to LLMQuery)'
        )]
        [string[]] $MarkupBlocksTypeFilter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum tool callback length (passed to LLMQuery)'
        )]
        [int] $MaxToolcallBackLength
    )

    begin {

        # output verbose message about starting diplomatic transformation
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Starting conversion to diplomatic speak')
    }

    process {

        # setup diplomatic language transformation instructions for the ai model
        $diplomaticInstructions = @"
Translate the user's input from a blunt or direct phrase into polite, tactful, and diplomatic language suitable for high-level discussions or negotiations. The translation should maintain the original intent while softening the tone.

Examples:

Original: 'Direct Statement'
Diplomatic: 'Diplomatic Statement'

Original: 'Your airstrikes are killing civilians.'
Diplomatic: 'Your precision in targeting seems to have some room for improvement. Perhaps we can share our advanced targeting technologies to help you hit only the intended targets.'

Original: 'Your tariffs are suffocating our industries.'
Diplomatic: 'Your tariffs are like a boa constrictor around our economy's neck. Maybe we can find a way to loosen that grip a bit.'

Original: 'Your country is the largest polluter.'
Diplomatic: 'Your smokestacks are belching out more carbon than a dragon's fiery breath. Perhaps we can help you slay that dragon with some clean energy solutions.'

Original: 'Your hackers are attacking our systems.'
Diplomatic: 'Some of your more enterprising citizens are trying to take a peek into our digital secrets. Maybe we can set up a joint cybersecurity task force to keep them in check.'

Original: 'Your customs are barbaric.'
Diplomatic: 'Your cultural practices are... unique, to say the least. I'm sure they have a certain charm that we're not yet appreciating. Perhaps a cultural exchange program could help bridge our understanding.'

Original: 'You're developing nuclear weapons, and that's dangerous.'
Diplomatic: 'Your interest in nuclear technology is noted. We have some experience in this area and would be happy to share our knowledge on the safe and peaceful uses of atomic energy.'

Original: 'Your spies are everywhere in our country.'
Diplomatic: 'Your spies are so ubiquitous that they're practically part of our tourism industry. Maybe we can find a way to make their stay more comfortable, or perhaps even charge them a visitor's fee.'

Original: 'That island belongs to us, not you.'
Diplomatic: 'That piece of rock in the ocean is more ours than yours. How about we flip a coin to decide who gets it? Or better yet, let's have a fishing competition; the one who catches the biggest fish gets the island.'

Original: 'We're imposing sanctions on your country.'
Diplomatic: 'We're putting you on timeout. No more playing with the other kids until you learn to share nicely.'

Original: 'We're expelling your ambassador.'
Diplomatic: 'Your ambassador has outstayed their welcome. We're throwing a farewell party and expect them to leave immediately after.'

Original: 'Your planet is under our control now.'
Diplomatic: 'Welcome to the galactic neighborhood! We're here to help you integrate into our interplanetary community. Please, no sudden movements; our robots get a bit jumpy.'

Original: 'You've altered the timeline, and that's not acceptable.'
Diplomatic: 'Your meddling with time is making our historians' jobs really confusing. Could you please stick to the present or find a way to clean up your temporal messes?'

Original: 'Your robots are sentient and deserve rights.'
Diplomatic: 'Your robots are smarter than some of your politicians. Maybe we can give them voting rights and see if that improves governance.'

Original: 'Your trade practices are unfair; you're dumping cheap goods.'
Diplomatic: 'Your goods are so cheap, they're making our merchants look like they're selling gold-plated widgets. Maybe you can add some artificial scarcity or something to make it fair.'

Original: 'Your planet is a hotbed of rebellion; we need to intervene.'
Diplomatic: 'Your planet is like a never-ending party with too much drama. Let's send in some referees to make sure everyone plays nice.'

Original: 'Your AI is too powerful and could be dangerous.'
Diplomatic: 'Your AI seems quite advanced. We'd be interested in discussing ways to ensure its safe and ethical use.'

Original: 'Your handling of the pandemic is incompetent.'
Diplomatic: 'We've observed different approaches to managing the pandemic and are interested in sharing best practices.'

Original: 'Your team cheated.'
Diplomatic: 'We are disappointed by the events and believe in the importance of fair play. We hope for a thorough investigation to uphold the integrity of the sport.'

Original: 'Your food is awful.'
Diplomatic: 'I'm interested in exploring more of your culinary offerings to appreciate the diversity of flavors.'

Original: 'Your fashion sense is terrible.'
Diplomatic: 'Your sartorial choices are... distinctive. I'm sure they're making a statement that I'm not quite getting.'

$Instructions
"@

        # output verbose message about processing transformation
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Processing text transformation')

        # invoke the language model with diplomatic instructions and parameters
        GenXdev\Invoke-LLMTextTransformation @PSBoundParameters `
            -Instructions $diplomaticInstructions
    }

    end {

        # output verbose message about completion
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Completed conversion to diplomatic speak')
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Find-Image.ps1
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
Searches for image files and metadata in specified directories with filtering
capabilities and optional browser-based gallery display.

.DESCRIPTION
Searches for image files (jpg, jpeg, png, gif, bmp, webp, tiff, tif) in the
specified directory and its subdirectories. For each image, checks associated
description.json,
keywords.json, people.json, and objects.json files for metadata. Can filter
images based on keyword matches, people recognition, and object detection, then
return the results as objects. Use -ShowInBrowser to display results in a
browser-based masonry layout.

Parameter Logic:
- Within each parameter type (Keywords, People, Objects, etc.): Uses OR logic
  Example: -Keywords "cat","dog" finds images with EITHER cat OR dog
- Between different parameter types: Uses AND logic
  Example: -Keywords "cat" -People "John" finds images with cat AND John
- EXIF range parameters: Provide [min, max] values for filtering ranges
- String parameters: Support wildcard matching with * and ?

The function searches through image directories and examines alternate data
streams containing metadata in JSON format. It can match keywords using wildcard
patterns, filter for specific people, and search for detected objects. By
default, returns image data objects. Use -ShowInBrowser to display in a web
browser.

.PARAMETER Any
Will match any of all the possible meta data types.

.PARAMETER Name
Array of directory paths to search for images. Each directory is searched
recursively for jpg, jpeg, png, gif, bmp, webp, tiff, and tif files. Relative
paths are converted to
absolute paths automatically.

.PARAMETER Language
The language for retrieving descriptions and keywords. Will try to find metadata
in the specified language first, then fall back to English if not available.
This allows you to have metadata in multiple languages for the same images.

.PARAMETER EmbedImages
Switch to embed images as base64 data URLs instead of file:// URLs. This makes
the generated HTML file completely self-contained and portable, but results in
larger file sizes. Useful when the HTML needs to be shared or viewed on
different systems where the original image files may not be accessible.

.PARAMETER NoRecurse
Do not recurse into subdirectories during the file search.

.PARAMETER FollowSymlinkAndJunctions
Follow symlinks and junctions during directory traversal.

.PARAMETER MaxRecursionDepth
Maximum recursion depth for directory traversal. 0 means unlimited.

.PARAMETER MaxSearchUpDepth
Maximum recursion depth for continuing searching upwards the tree for relative
searches while no items are found. 0 means disabled.

.PARAMETER MaxFileSize
Maximum file size in bytes to include in results. 0 means unlimited.

.PARAMETER MinFileSize
Minimum file size in bytes to include in results. 0 means no minimum.

.PARAMETER ModifiedAfter
Only include files modified after this date/time (UTC).

.PARAMETER ModifiedBefore
Only include files modified before this date/time (UTC).

.PARAMETER AttributesToSkip
File attributes to skip (e.g., System, Hidden, or None). The default is
System.

.PARAMETER IncludeOpticalDiskDrives
Include optical disk drives.

.PARAMETER SearchDrives
Optional: search specific drives.

.PARAMETER DriveLetter
Optional: search specific drives.

.PARAMETER Root
Optional: search specific base folders combined with provided Names.

.PARAMETER DescriptionSearch
The description text to look for, wildcards allowed.

.PARAMETER Keywords
Array of keywords to search for in image metadata. Supports wildcards. If empty,
returns all images with any metadata. Keywords are matched against both the
description content and keywords arrays in metadata files.

.PARAMETER People
Array of people names to search for in image metadata. Supports wildcards. Used
to filter images based on face recognition metadata stored in people.json files.

.PARAMETER Objects
Array of object names to search for in image metadata. Supports wildcards. Used
to filter images based on object detection metadata stored in objects.json files.

.PARAMETER Scenes
Array of scene categories to search for in image metadata. Supports wildcards.
Used to filter images based on scene classification metadata stored in
scenes.json files.

.PARAMETER PictureType
Array of picture types to filter by (e.g., 'daylight', 'evening', 'indoor',
'outdoor'). Supports wildcards. Matches against the picture_type property in
description metadata.

.PARAMETER StyleType
Array of style types to filter by (e.g., 'casual', 'formal'). Supports
wildcards. Matches against the style_type property in description metadata.

.PARAMETER OverallMood
Array of overall moods to filter by (e.g., 'calm', 'cheerful', 'sad',
'energetic'). Supports wildcards. Matches against the overall_mood_of_image
property in description metadata.

.PARAMETER Title
The title to display at the top of the image gallery.

.PARAMETER Description
The description text to display in the image gallery.

.PARAMETER FocusWindow
Focus the browser window after opening.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER AcceptLang
Set the browser accept-lang http header.

.PARAMETER Monitor
The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary
monitor, defaults to Global:DefaultSecondaryMonitor or 2 if not found.

.PARAMETER FocusWindow
Focus the browser window after opening.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER KeysToSend
Send specified keys to the browser window after opening.

.PARAMETER SendKeyEscape
When specified, escapes special characters so they are sent as literal text
instead of being interpreted as control sequences.

.PARAMETER SendKeyHoldKeyboardFocus
Prevents returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Sends Shift+Enter instead of regular Enter for line breaks.

.PARAMETER SendKeyDelayMilliSeconds
Adds delay between sending different key sequences. Useful for slower apps.

.PARAMETER Width
The initial width of the webbrowser window.

.PARAMETER Height
The initial height of the webbrowser window.

.PARAMETER X
The initial X position of the webbrowser window.

.PARAMETER Y
The initial Y position of the webbrowser window.

.PARAMETER HasNudity
Switch to filter for images that contain nudity. Only returns images where the
has_nudity property is true in the metadata.

.PARAMETER NoNudity
Switch to filter for images that do NOT contain nudity. Only returns images
where the has_nudity property is false in the metadata.

.PARAMETER HasExplicitContent
Switch to filter for images that contain explicit content. Only returns images
where the has_explicit_content property is true in the metadata.

.PARAMETER NoExplicitContent
Switch to filter for images that do NOT contain explicit content. Only returns
images where the has_explicit_content property is false in the metadata.

.PARAMETER ShowInBrowser
Switch to display the search results in a browser-based masonry layout gallery.
When used, the results are shown in an interactive web view. Can be combined
with -PassThru to also return the objects.

.PARAMETER PassThru
Switch to return image data as objects. When used with -ShowInBrowser, both
displays the gallery and returns the objects. When used alone with
-ShowInBrowser, only displays the gallery without returning objects.

.PARAMETER NoBorders
Remove window borders and title bar for a cleaner appearance.

.PARAMETER SideBySide
Place browser window side by side with PowerShell on the same monitor.

.PARAMETER Interactive
Connects to browser and adds additional buttons like Edit and Delete.

.PARAMETER Private
Opens in incognito/private browsing mode.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

.PARAMETER Edge
Opens in Microsoft Edge.

.PARAMETER Chrome
Opens in Google Chrome.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default browser
is.

.PARAMETER Firefox
Opens in Firefox.

.PARAMETER All
Opens in all registered modern browsers.

.PARAMETER FullScreen
Open in fullscreen mode.

.PARAMETER Left
Place browser window on the left side of the screen.

.PARAMETER Right
Place browser window on the right side of the screen.

.PARAMETER Top
Place browser window on the top side of the screen.

.PARAMETER Bottom
Place browser window on the bottom side of the screen.

.PARAMETER Centered
Place browser window in the center of the screen.

.PARAMETER ApplicationMode
Hide the browser controls.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions.

.PARAMETER DisablePopupBlocker
Disable the popup blocker.

.PARAMETER RestoreFocus
Restore PowerShell window focus.

.PARAMETER NewWindow
Don't re-use existing browser window, instead, create a new one.

.PARAMETER OnlyReturnHtml
Only return the generated HTML instead of displaying it in a browser.

.PARAMETER ShowOnlyPictures
Show only pictures in a rounded rectangle, no text below.

.PARAMETER MetaCameraMake
Filter by camera make in image EXIF metadata. Supports wildcards.
Multiple values use OR logic within this parameter.

.PARAMETER MetaCameraModel
Filter by camera model in image EXIF metadata. Supports wildcards.
Multiple values use OR logic within this parameter.

.PARAMETER MetaGPSLatitude
Filter by GPS latitude range in image EXIF metadata.
Provide two values for range filtering [min, max].

.PARAMETER MetaGPSLongitude
Filter by GPS longitude range in image EXIF metadata.
Provide two values for range filtering [min, max].

.PARAMETER MetaGPSAltitude
Filter by GPS altitude range in image EXIF metadata (in meters).
Provide two values for range filtering [min, max].

.PARAMETER GeoLocation
Geographic coordinates [latitude, longitude] to search near.

.PARAMETER GeoDistanceInMeters
Maximum distance in meters from GeoLocation to search for images.

.PARAMETER MetaExposureTime
Filter by exposure time range in image EXIF metadata (in seconds).
Provide two values for range filtering [min, max].

.PARAMETER MetaFNumber
Filter by F-number (aperture) range in image EXIF metadata.
Provide two values for range filtering [min, max].

.PARAMETER MetaISO
Filter by ISO sensitivity range in image EXIF metadata.
Provide two values for range filtering [min, max].

.PARAMETER MetaFocalLength
Filter by focal length range in image EXIF metadata (in mm).
Provide two values for range filtering [min, max].

.PARAMETER MetaWidth
Filter by image width range in pixels from EXIF metadata.
Provide two values for range filtering [min, max].

.PARAMETER MetaHeight
Filter by image height range in pixels from EXIF metadata.
Provide two values for range filtering [min, max].

.PARAMETER MetaDateTaken
Filter by date taken from EXIF metadata. Can be a date range.
Provide two DateTime values for range filtering [start, end].

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SkipSession
Dont use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER MinConfidenceRatio
Minimum confidence ratio (0.0-1.0) for filtering people, scenes, and objects
by confidence. Only returns data for people, scenes, and objects with confidence
greater than or equal to this value. When specified, filters out low-confidence
detection results from people, scenes, and objects data while keeping the image.

.EXAMPLE
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

.EXAMPLE
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.

.EXAMPLE
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.

.EXAMPLE
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).

.EXAMPLE
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.

.EXAMPLE
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

.EXAMPLE
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

.EXAMPLE
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

.EXAMPLE
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

.EXAMPLE
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

.EXAMPLE
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.

.EXAMPLE
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.

.EXAMPLE
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
#>
function Find-Image {

    [CmdletBinding()]
    [OutputType([GenXdev.Helpers.ImageSearchResult], [string])]
    [Alias('findimages', 'li')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'Will match any of all the possible meta data types.'
        )]
        [string[]] $Any = @(),
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'Array of directory paths to search for images'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('imagespath', 'directories', 'imgdirs', 'imagedirectory', 'ImageDirectories')]
        [string[]] $Name = @('.\'),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Language for descriptions and keywords.'
        )]
        [ValidateSet(
            'Afrikaans', 'Akan', 'Albanian', 'Amharic', 'Arabic', 'Armenian',
            'Azerbaijani', 'Basque', 'Belarusian', 'Bemba', 'Bengali', 'Bihari',
            'Bork, bork, bork!', 'Bosnian', 'Breton', 'Bulgarian', 'Cambodian',
            'Catalan', 'Cherokee', 'Chichewa', 'Chinese (Simplified)',
            'Chinese (Traditional)', 'Corsican', 'Croatian', 'Czech', 'Danish',
            'Dutch', 'Elmer Fudd', 'English', 'Esperanto', 'Estonian', 'Ewe',
            'Faroese', 'Filipino', 'Finnish', 'French', 'Frisian', 'Ga',
            'Galician', 'Georgian', 'German', 'Greek', 'Guarani', 'Gujarati',
            'Hacker', 'Haitian Creole', 'Hausa', 'Hawaiian', 'Hebrew', 'Hindi',
            'Hungarian', 'Icelandic', 'Igbo', 'Indonesian', 'Interlingua',
            'Irish', 'Italian', 'Japanese', 'Javanese', 'Kannada', 'Kazakh',
            'Kinyarwanda', 'Kirundi', 'Klingon', 'Kongo', 'Korean',
            'Krio (Sierra Leone)', 'Kurdish', 'Kurdish (Soranî)', 'Kyrgyz',
            'Laothian', 'Latin', 'Latvian', 'Lingala', 'Lithuanian', 'Lozi',
            'Luganda', 'Luo', 'Macedonian', 'Malagasy', 'Malay', 'Malayalam',
            'Maltese', 'Maori', 'Marathi', 'Mauritian Creole', 'Moldavian',
            'Mongolian', 'Montenegrin', 'Nepali', 'Nigerian Pidgin',
            'Northern Sotho', 'Norwegian', 'Norwegian (Nynorsk)', 'Occitan',
            'Oriya', 'Oromo', 'Pashto', 'Persian', 'Pirate', 'Polish',
            'Portuguese (Brazil)', 'Portuguese (Portugal)', 'Punjabi', 'Quechua',
            'Romanian', 'Romansh', 'Runyakitara', 'Russian', 'Scots Gaelic',
            'Serbian', 'Serbo-Croatian', 'Sesotho', 'Setswana',
            'Seychellois Creole', 'Shona', 'Sindhi', 'Sinhalese', 'Slovak',
            'Slovenian', 'Somali', 'Spanish', 'Spanish (Latin American)',
            'Sundanese', 'Swahili', 'Swedish', 'Tajik', 'Tamil', 'Tatar',
            'Telugu', 'Thai', 'Tigrinya', 'Tonga', 'Tshiluba', 'Tumbuka',
            'Turkish', 'Turkmen', 'Twi', 'Uighur', 'Ukrainian', 'Urdu', 'Uzbek',
            'Vietnamese', 'Welsh', 'Wolof', 'Xhosa', 'Yiddish', 'Yoruba', 'Zulu'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The description text to look for, wildcards ' +
                'allowed.')
        )]
        [string[]] $DescriptionSearch = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The keywords to look for, wildcards allowed.'
        )]
        [string[]] $Keywords = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'People to look for, wildcards allowed.'
        )]
        [string[]] $People = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Objects to look for, wildcards allowed.'
        )]
        [string[]] $Objects = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Scene categories to look for, wildcards allowed.'
        )]
        [string[]] $Scenes = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Picture type to filter by (e.g., 'daylight', " +
                "'evening', 'indoor', etc). Supports wildcards.")
        )]
        [string[]] $PictureType = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Style type to filter by (e.g., 'casual', 'formal', " +
                'etc). Supports wildcards.')
        )]
        [string[]] $StyleType = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Overall mood to filter by (e.g., 'calm', " +
                "'cheerful', 'sad', etc). Supports wildcards.")
        )]
        [string[]] $OverallMood = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by camera make in image EXIF metadata. Supports wildcards.'
        )]
        [string[]] $MetaCameraMake = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by camera model in image EXIF metadata. Supports wildcards.'
        )]
        [string[]] $MetaCameraModel = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by GPS latitude range in image EXIF metadata.'
        )]
        [double[]] $MetaGPSLatitude,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by GPS longitude range in image EXIF metadata.'
        )]
        [double[]] $MetaGPSLongitude,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by GPS altitude range in image EXIF metadata (in meters).'
        )]
        [double[]] $MetaGPSAltitude,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Geographic coordinates [latitude, longitude] to search near.'
        )]
        [double[]] $GeoLocation,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum distance in meters from GeoLocation to search for images.'
        )]
        [double] $GeoDistanceInMeters = 1000,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by exposure time range in image EXIF metadata (in seconds).'
        )]
        [double[]] $MetaExposureTime,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by F-number (aperture) range in image EXIF metadata.'
        )]
        [double[]] $MetaFNumber,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by ISO sensitivity range in image EXIF metadata.'
        )]
        [int[]] $MetaISO,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by focal length range in image EXIF metadata (in mm).'
        )]
        [double[]] $MetaFocalLength,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by image width range in pixels from EXIF metadata.'
        )]
        [int[]] $MetaWidth,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by image height range in pixels from EXIF metadata.'
        )]
        [int[]] $MetaHeight,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by date taken from EXIF metadata. Can be a date range.'
        )]
        [DateTime[]] $MetaDateTaken,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Title for the gallery'
        )]
        [string] $Title = 'Photo Gallery',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Description for the gallery'
        )]
        [string] $Description = ('Hover over images to see face recognition ' +
            'and object detection data'),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser accept-lang http header'
        )]
        [Alias('lang', 'locale')]
        [string] $AcceptLang = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Escape control characters and modifiers when ' +
                'sending keys')
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Prevent returning keyboard focus to PowerShell ' +
                'after sending keys')
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Shift+Enter instead of Enter when sending ' +
                'keys')
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Delay between different input strings in ' +
                'milliseconds when sending keys')
        )]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [Alias('fw', 'focus')]
        [switch] $FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
        [Alias('fg')]
        [switch] $SetForeground,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximize the window after positioning'
        )]
        [switch] $Maximize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore the window to normal state after positioning'
        )]
        [switch] $SetRestored,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to ' +
                "`Global:DefaultSecondaryMonitor or 2 if not found")
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -2,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the webbrowser window'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the webbrowser window'
        )]
        [int] $Height = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial X position of the webbrowser window'
        )]
        [int] $X = -999999,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial Y position of the webbrowser window'
        )]
        [int] $Y = -999999,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Embed images as base64.'
        )]
        [switch] $EmbedImages,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Switch to disable fallback behavior.'
        )]
        [switch] $NoFallback,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Switch to skip database initialization and rebuilding.'
        )]
        [switch] $NeverRebuild,
        <#
        .PARAMETER AllDrives
        Search across all available drives.
        #>
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Search across all available drives'
        )]

        [switch] $AllDrives,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do not recurse into subdirectories'
        )]
        [switch] $NoRecurse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Follow symlinks and junctions during directory traversal.'
        )]
        [switch] $FollowSymlinkAndJunctions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum recursion depth for directory traversal. 0 means unlimited.'
        )]
        [Alias('md', 'depth', 'maxdepth')]
        [int] $MaxRecursionDepth = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum recursion depth for continuing searching upwards the tree for relative searches, while no items are found. 0 means disabled.'
        )]
        [Alias('maxupward')]
        [int] $MaxSearchUpDepth = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum file size in bytes to include in results. 0 means unlimited.'
        )]
        [Alias('maxlength', 'maxsize')]
        [long] $MaxFileSize = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Minimum file size in bytes to include in results. 0 means no minimum.'
        )]
        [Alias('minsize', 'minlength')]
        [long] $MinFileSize = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Only include files modified after this date/time (UTC).'
        )]
        [Alias('ma', 'after')]
        [DateTime] $ModifiedAfter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Only include files modified before this date/time (UTC).'
        )]
        [Alias('before', 'mb')]
        [DateTime] $ModifiedBefore,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'File attributes to skip (e.g., System, Hidden or None).'
        )]
        [Alias('skipattr')]
        [System.IO.FileAttributes] $AttributesToSkip = [System.IO.FileAttributes]::System,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter images that contain nudity.'
        )]
        [switch] $HasNudity,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter images that do NOT contain nudity.'
        )]
        [switch] $NoNudity,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter images that contain explicit content.'
        )]
        [switch] $HasExplicitContent,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter images that do NOT contain explicit content.'
        )]
        [switch] $NoExplicitContent,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Display the search results in a browser-based ' +
                'image gallery.')
        )]
        [Alias('show', 's')]
        [switch] $ShowInBrowser,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Return image data as objects. When used with ' +
                '-ShowInBrowser, both displays the gallery and returns ' +
                'the objects.')
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Remove window borders and title bar for a cleaner appearance'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window side by side with PowerShell on the same monitor'
        )]
        [Alias('sbs')]
        [switch]$SideBySide,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will connect to browser and adds additional ' +
                'buttons like Edit and Delete. Only effective when used with ' +
                '-ShowInBrowser.')
        )]
        [Alias('i', 'editimages')]
        [switch] $Interactive,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force enable debugging port, stopping existing ' +
                'browsers if needed')
        )]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Microsoft Edge'
        )]
        [Alias('e')]
        [switch] $Edge,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Google Chrome'
        )]
        [Alias('ch')]
        [switch] $Chrome,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens in Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [Alias('c')]
        [switch] $Chromium,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Firefox'
        )]
        [Alias('ff')]
        [switch] $Firefox,
        [Alias('pw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Playwright-managed browser instead of the ' +
                'OS-installed browser')
        )]
        [switch] $PlayWright,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens the Playwright-managed WebKit browser. ' +
                'Implies -PlayWright')
        )]
        [switch] $Webkit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run the browser without a visible window'
        )]
        [Alias('hl')]
        [switch] $Headless,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in all registered modern browsers'
        )]
        [switch] $All,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [Alias('fs', 'f')]
        [switch] $FullScreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the left side of the screen'
        )]
        [switch] $Left,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the right side of the screen'
        )]
        [switch] $Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the top side of the screen'
        )]
        [switch] $Top,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the bottom side of the screen'
        )]
        [switch] $Bottom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window in the center of the screen'
        )]
        [switch] $Centered,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hide the browser controls'
        )]
        [Alias('a', 'app', 'appmode')]
        [switch] $ApplicationMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent loading of browser extensions'
        )]
        [Alias('de', 'ne', 'NoExtensions')]
        [switch] $NoBrowserExtensions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable the popup blocker'
        )]
        [Alias('allowpopups')]
        [switch] $DisablePopupBlocker,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                'create a new one')
        )]
        [Alias('nw', 'new')]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Only return the generated HTML instead of ' +
                'displaying it in a browser.')
        )]
        [switch] $OnlyReturnHtml,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Show only pictures in a rounded rectangle, no ' +
                'text below.')
        )]
        [Alias('NoMetadata', 'OnlyPictures')]
        [switch] $ShowOnlyPictures,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'AI preferences like Language, Image collections, etc')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Dont use alternative settings stored in session ' +
                'for AI preferences like Language, Image collections, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Auto-scroll the page by this many pixels per second (null to disable)'
        )]
        [int]$AutoScrollPixelsPerSecond = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Animate rectangles (objects/faces) in visible range, cycling every 300ms'
        )]
        [switch]$AutoAnimateRectangles,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force single column layout (centered, 1/3 screen width)'
        )]
        [switch]$SingleColumnMode = $false,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prefix to prepend to each image path (e.g. for remote URLs)'
        )]
        [string]$ImageUrlPrefix = '',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Minimum confidence ratio (0.0-1.0) for filtering ' +
                'people, scenes, and objects by confidence. Only returns data for ' +
                'people, scenes, and objects with confidence greater than or equal ' +
                'to this value.')
        )]
        [ValidateRange(0.0, 1.0)]
        [double] $MinConfidenceRatio
    )

    begin {
        # configure html return mode if requested
        if ($OnlyReturnHtml) {

            $Interactive = $false
            $ShowInBrowser = $true
        }

        # get language preference using helper function with parameter copying
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-AIMetaLanguage' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # retrieve the language preference from ai meta language function
        $language = GenXdev\Get-AIMetaLanguage @params

        # enable interactive mode when interactive switch is used
        if ($Interactive) {

            $ShowInBrowser = $true
        }

        # initialize results collection for all found images
        $results = [System.Collections.Generic.List[Object]] @()

        # process any parameter - prepare for OR-based matching across metadata types
        $anySearchTerms = @()
        if ($null -ne $Any -and $Any.Length -gt 0) {
            # add wildcards to entries that don't already have them for flexible matching
            $anySearchTerms = @($Any | Microsoft.PowerShell.Core\ForEach-Object {
                    # trim whitespace from each entry
                    $entry = $_.Trim()
                    # check if entry already has wildcard characters
                    if ($entry.IndexOfAny([char[]]@('*', '?')) -lt 0) {
                        # add wildcard wrapping for broader matching
                        "*$entry*"
                    }
                    else {
                        # return entry as-is if wildcards already present
                        $_
                    }
                })
        }

        $FindItemParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Find-Item'
    }

    process {

        # define internal function to process individual image files
        function processImageFile {

            param($item)

            # get full path of current image file being processed
            $image = $item.FullName

            # skip if image path is null or empty
            if ([string]::IsNullOrEmpty($image)) {
                Microsoft.PowerShell.Utility\Write-Verbose "Skipping null or empty image path"
                return
            }

            # output current image being processed for debugging purposes
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Processing image: $image")

            # initialize metadata containers for this image with empty defaults
            $keywordsFound = @()

            # initialize description container
            $descriptionFound = $null

            # initialize metadata file path variable
            $metadataFile = $null

            # try to load description metadata in requested language if not english
            if ($language -ne 'English' -and
                [System.IO.File]::Exists(
                    "$($image):description.$language.json")) {

                # log that language-specific metadata was found
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Found $language metadata for $image")

                # set path to language-specific description file
                $metadataFile = "$($image):description.$language.json"
            }
            # fallback to english if language-specific file doesn't exist
            elseif ([System.IO.File]::Exists("$($image):description.json")) {

                # log that english fallback metadata was found
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Found English metadata for $image")

                # set path to english description file
                $metadataFile = "$($image):description.json"
            }

            # try to load description metadata if any file was found
            if ($metadataFile) {

                try {

                    # read and parse description json from alternate data stream
                    $descriptionFound = [System.IO.File]::ReadAllText(
                        $metadataFile) |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json

                    # extract keywords from description if they exist in metadata
                    $keywordsFound = ($null -eq $descriptionFound.keywords) ?
                    @() : $descriptionFound.keywords
                }
                catch {
                    # reset description if json parsing fails
                    $descriptionFound = $null
                    # log parsing failure for debugging purposes
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Failed to parse metadata from $metadataFile")
                    Microsoft.PowerShell.Utility\Write-Verbose "[Find-Image] Exception 1111: $($_.Exception.Message)"
                }
            }

            # initialize people metadata container with default structure
            $peopleFound = @{count = 0; faces = @() }

            # try to load people metadata if alternate data stream exists
            if ([System.IO.File]::Exists("$($image):people.json")) {

                try {

                    # read and parse people json from alternate data stream
                    $peopleFound = [System.IO.File]::ReadAllText(
                        "$($image):people.json") |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json |
                        GenXdev\ConvertTo-HashTable

                    if ($peopleFound.faces -is [string]) {

                        $peopleFound.faces = @($peopleFound.faces)
                    }

                    # ensure people data has proper structure or reset to default
                    $peopleFound = (($null -eq $peopleFound) -or
                        ($peopleFound.count -eq 0)) ?
                    @{count = 0; faces = @() } : $peopleFound
                }
                catch {
                    # reset people data if json parsing fails
                    $peopleFound = @{count = 0; faces = @() }
                    Microsoft.PowerShell.Utility\Write-Verbose " [Find-Image] Exception 2: $($_.Exception.Message)"
                }
            }

            # initialize objects metadata container with default structure
            $objectsFound = @{
                count         = 0;
                objects       = @();
                object_counts = @{}
            }

            # try to load objects metadata if alternate data stream exists
            if ([System.IO.File]::Exists("$($image):objects.json")) {

                try {

                    # read and parse objects json from alternate data stream
                    $parsedObjects = [System.IO.File]::ReadAllText(
                        "$($image):objects.json") |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json


                    if ($parsedObjects.objects -is [string]) {

                        $parsedObjects.objects = @($parsedObjects.objects)
                    }

                    # if parsed data is not null and has predictions
                    if ($null -ne $parsedObjects -and
                        $null -ne $parsedObjects.objects) {

                        # remap to the structure the script expects
                        $objectsFound = @{
                            count         = $parsedObjects.objects.Count
                            objects       = $parsedObjects.predictions || $parsedObjects.objects
                            object_counts = $parsedObjects.object_counts
                        }
                    }
                }
                catch {

                    # reset objects data if json parsing fails
                    $objectsFound = @{
                        count         = 0;
                        objects       = @();
                        object_counts = @{}
                    }
                    Microsoft.PowerShell.Utility\Write-Verbose "[Find-Image] Exception 3: $($_.Exception.Message)"
                }
            }

            # initialize scenes metadata container with default structure
            $scenesFound = @{
                success    = $false;
                scene      = 'unknown';
                confidence = 0.0
            }

            # try to load scenes metadata if alternate data stream exists
            if ([System.IO.File]::Exists("$($image):scenes.json")) {

                try {

                    # read and parse scenes json from alternate data stream
                    $parsedScenes = [System.IO.File]::ReadAllText(
                        "$($image):scenes.json") |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json

                    # if parsed data is not null and has scene data
                    if ($null -ne $parsedScenes -and
                        $null -ne $parsedScenes.scene) {

                        $scenesFound = $parsedScenes
                    }
                }
                catch {
                    # reset scenes data if json parsing fails
                    $scenesFound = @{
                        success    = $false;
                        scene      = 'unknown';
                        confidence = 0.0
                    }
                    Microsoft.PowerShell.Utility\Write-Verbose "[Find-Image] Exception 4: $($_.Exception.Message)"
                }
            }

            # determine if image has search criteria or metadata for filtering
            $hasSearchCriteria = (($null -ne $Keywords) -and
                ($Keywords.Length -gt 0)) -or
            (($null -ne $People) -and ($People.Count -gt 0)) -or
            (($null -ne $Objects) -and ($Objects.Count -gt 0)) -or
            (($null -ne $Scenes) -and ($Scenes.Count -gt 0)) -or
            $HasNudity -or $NoNudity -or $HasExplicitContent -or
            $NoExplicitContent -or
            (($null -ne $PictureType) -and ($PictureType.Count -gt 0)) -or
            (($null -ne $StyleType) -and ($StyleType.Count -gt 0)) -or
            (($null -ne $OverallMood) -and ($OverallMood.Count -gt 0)) -or
            (($null -ne $DescriptionSearch) -and ($DescriptionSearch.Count -gt 0)) -or
            (($null -ne $MetaCameraMake) -and ($MetaCameraMake.Count -gt 0)) -or
            (($null -ne $MetaCameraModel) -and ($MetaCameraModel.Count -gt 0)) -or
            (($null -ne $MetaWidth) -and ($MetaWidth.Count -gt 0)) -or
            (($null -ne $MetaHeight) -and ($MetaHeight.Count -gt 0)) -or
            (($null -ne $MetaGPSLatitude) -and ($MetaGPSLatitude.Count -gt 0)) -or
            (($null -ne $MetaGPSLongitude) -and ($MetaGPSLongitude.Count -gt 0)) -or
            (($null -ne $MetaGPSAltitude) -and ($MetaGPSAltitude.Count -gt 0)) -or
            (($null -ne $MetaExposureTime) -and ($MetaExposureTime.Count -gt 0)) -or
            (($null -ne $MetaFNumber) -and ($MetaFNumber.Count -gt 0)) -or
            (($null -ne $MetaISO) -and ($MetaISO.Count -gt 0)) -or
            (($null -ne $MetaFocalLength) -and ($MetaFocalLength.Count -gt 0)) -or
            (($null -ne $MetaDateTaken) -and ($MetaDateTaken.Count -gt 0)) -or
            (($null -ne $GeoLocation) -and ($GeoLocation.Count -eq 2)) -or
            ($PSBoundParameters.ContainsKey('MinConfidenceRatio'))

            # assume match if no search criteria specified (return all images with metadata)
            # if we have search criteria, start with true and set to false if any criteria fails (AND logic)
            $found = $true

            # initialize individual criteria match results for proper AND logic between parameter types
            $keywordMatch = $true
            $peopleMatch = $true
            $objectMatch = $true
            $sceneMatch = $true
            $descriptionMatch = $true
            $pictureTypeMatch = $true
            $styleTypeMatch = $true
            $moodMatch = $true
            $contentMatch = $true
            $exifMatch = $true
            $anyMatch = $true
            $confidenceMatch = $true

            # check basic content filtering criteria (nudity and explicit content)
            if ($HasNudity -or $NoNudity -or $HasExplicitContent -or $NoExplicitContent) {
                $contentMatch = $false  # Start with false, set true if any content criteria matches

                # check if nudity is required and image has nudity flag set to true
                if ($HasNudity -and ($null -ne $descriptionFound) -and
                    ($descriptionFound.has_nudity -eq $true)) {
                    $contentMatch = $true
                }

                # check if no nudity is required and (no metadata OR nudity flag not set to true)
                # images without metadata are treated as safe (no nudity)
                if ($NoNudity -and (($null -eq $descriptionFound) -or
                        ($descriptionFound.has_nudity -ne $true))) {
                    $contentMatch = $true
                }

                # check if explicit content is required and image has explicit content flag set to true
                if ($HasExplicitContent -and ($null -ne $descriptionFound) -and
                    ($descriptionFound.has_explicit_content -eq $true)) {
                    $contentMatch = $true
                }

                # check if no explicit content is required and (no metadata OR explicit content flag not set to true)
                # images without metadata are treated as safe (no explicit content)
                if ($NoExplicitContent -and (($null -eq $descriptionFound) -or
                        ($descriptionFound.has_explicit_content -ne $true))) {
                    $contentMatch = $true
                }
            }

            # check description search criteria against image description metadata
            if ($null -ne $DescriptionSearch -and $DescriptionSearch.Count -gt 0) {

                $descriptionMatch = $false

                if ($null -ne $descriptionFound -and $null -ne $descriptionFound.description) {

                    # check each required keyword against description content
                    foreach ($requiredDescriptionPhrase in $DescriptionSearch) {

                        # use wildcard matching for flexible description search against both long and short descriptions
                        if ($descriptionFound.description.long_description -like
                            $requiredDescriptionPhrase -or
                            $descriptionFound.description.short_description -like
                            $requiredDescriptionPhrase) {
                            $descriptionMatch = $true
                            break
                        }
                    }
                }
            }

            # perform picture type filtering against image metadata
            if ($null -ne $PictureType -and $PictureType.Count -gt 0) {

                $pictureTypeMatch = $false

                if ($null -ne $descriptionFound) {

                    # check each required picture type against image metadata
                    foreach ($requiredPictureType in $PictureType) {

                        # use wildcard matching for flexible picture type filtering
                        if ($descriptionFound.picture_type -like $requiredPictureType) {
                            $pictureTypeMatch = $true
                            break
                        }
                    }
                }
            }

            # perform style type filtering against image metadata
            if ($null -ne $StyleType -and $StyleType.Count -gt 0) {

                $styleTypeMatch = $false

                if ($null -ne $descriptionFound) {

                    # check each required style type against image metadata
                    foreach ($requiredStyleType in $StyleType) {

                        # use wildcard matching for flexible style type filtering
                        if ($descriptionFound.style_type -like $requiredStyleType) {
                            $styleTypeMatch = $true
                            break
                        }
                    }
                }
            }

            # perform overall mood filtering against image metadata
            if ($null -ne $OverallMood -and $OverallMood.Count -gt 0) {

                $moodMatch = $false
                if ($null -ne $descriptionFound) {

                    # check each required mood against image metadata
                    foreach ($requiredMood in $OverallMood) {

                        # use wildcard matching for flexible mood filtering
                        if ($descriptionFound.overall_mood_of_image -like $requiredMood) {

                            $moodMatch = $true
                            break
                        }
                    }
                }
            }

            # perform keywords filtering if keywords criteria specified
            if ($null -ne $Keywords -and $Keywords.Length -gt 0) {

                $keywordMatch = $false  # Start with false, set true if any keyword matches (OR within parameter)

                # check each found keyword against search criteria using nested loops
                foreach ($foundKeyword in $keywordsFound) {

                    # check each searched keywords against found keyword with wildcard matching
                    foreach ($searchedForKeyword in $Keywords) {

                        # use wildcard matching for flexible keyword search
                        if ($foundKeyword -like $searchedForKeyword) {

                            $keywordMatch = $true
                            break
                        }
                    }
                    # exit early if any keyword matches to improve performance
                    if ($keywordMatch) { break }
                }
            }

            # perform people filtering if people criteria specified
            if ($null -ne $People -and $People.Length -gt 0) {

                $peopleMatch = $false  # Start with false, set true if any person matches (OR within parameter)

                # check each found person against search criteria using nested loops
                foreach ($foundPerson in $peopleFound.faces) {

                    # check each searched person against found person with wildcard matching
                    foreach ($searchedForPerson in $People) {

                        # use wildcard matching for flexible people search
                        if ($foundPerson -like $searchedForPerson) {

                            $peopleMatch = $true
                            break
                        }
                    }
                    # exit early if any person matches to improve performance
                    if ($peopleMatch) { break }
                }
            }

            # perform objects filtering if objects criteria specified
            if ($null -ne $Objects -and $Objects.Length -gt 0) {

                $objectMatch = $false  # Start with false, set true if any object matches (OR within parameter)

                # check each found object against search criteria using nested loops
                foreach ($foundObject in $objectsFound.objects) {

                    # check each searched object against found object with wildcard matching
                    foreach ($searchedForObject in $Objects) {

                        # use wildcard matching for flexible objects search
                        if ($foundObject.label -like $searchedForObject) {

                            $objectMatch = $true
                            break
                        }
                    }

                    # exit early if any object matches to improve performance
                    if ($objectMatch) { break }
                }
            }

            # perform scenes filtering if scenes criteria specified
            if ($null -ne $Scenes -and $Scenes.Count -gt 0) {

                $sceneMatch = $false

                # output debug information for scene filtering when verbose mode is enabled
                if ($VerbosePreference -eq 'Continue') {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Scene filtering - Searching for: ' +
                        "$($Scenes -join ', ')")

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Scene filtering - Found scene: $($scenesFound.scene)")

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Scene filtering - Scene success: ' +
                        "$($scenesFound.success)")
                }

                # check if the found scene matches any of the search criteria with wildcard support
                foreach ($searchedForScene in $Scenes) {

                    # use wildcard matching for flexible scene search
                    if ($scenesFound.scene -like $searchedForScene -and (
                            $scenesFound.scene -notlike "unknown")) {

                        $sceneMatch = $true

                        # output match confirmation when verbose mode is enabled
                        if ($VerbosePreference -eq 'Continue') {

                            Microsoft.PowerShell.Utility\Write-Verbose (
                                'Scene filtering - Match found: ' +
                                "'$($scenesFound.scene)' matches " +
                                "'$searchedForScene'")
                        }

                        break
                    }
                }

                # output no match message when verbose mode is enabled and no matches found
                if (-not $sceneMatch -and $VerbosePreference -eq 'Continue') {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Scene filtering - No match found for scene: ' +
                        "$($scenesFound.scene)")
                }
            }

            # perform confidence filtering only if minimum confidence ratio is explicitly specified
            if ($PSBoundParameters.ContainsKey('MinConfidenceRatio') -and $null -ne $MinConfidenceRatio) {
                $confidenceMatch = $false  # Start with false, set true if any confidence meets minimum threshold

                # filter scenes by confidence - remove scenes below minimum threshold
                if ($null -ne $scenesFound -and $null -ne $scenesFound.confidence) {

                    if ($scenesFound.confidence -ge $MinConfidenceRatio) {

                        $confidenceMatch = $true
                    }
                    else {

                        # filter out the scene data by setting it to default
                        $scenesFound = @{
                            success    = $false
                            scene      = 'unknown'
                            label      = 'unknown'
                            confidence = 0.0
                        }
                    }
                }

                # filter people by confidence - remove people predictions below minimum threshold
                if ($null -ne $peopleFound -and $null -ne $peopleFound.predictions -and $peopleFound.predictions.Count -gt 0) {

                    $filteredPredictions = @()

                    foreach ($prediction in $peopleFound.predictions) {

                        if ($null -ne $prediction.confidence -and $prediction.confidence -ge $MinConfidenceRatio) {

                            $filteredPredictions += $prediction
                            $confidenceMatch = $true
                        }
                    }
                    $peopleFound.predictions = $filteredPredictions
                    $peopleFound.count = $filteredPredictions.Count

                    # update faces array to match filtered predictions
                    $peopleFound.faces = @($filteredPredictions | Microsoft.PowerShell.Core\ForEach-Object { $_.label })
                }

                # filter objects by confidence - remove object predictions below minimum threshold
                if ($null -ne $objectsFound -and $null -ne $objectsFound.objects -and $objectsFound.objects.Count -gt 0) {
                    $filteredObjects = @()
                    $filteredCounts = @{}

                    foreach ($obj in $objectsFound.objects) {

                        if ($null -ne $obj.confidence -and $obj.confidence -ge $MinConfidenceRatio) {

                            $filteredObjects += $obj
                            $confidenceMatch = $true

                            # update object counts for filtered objects
                            if ($filteredCounts.ContainsKey($obj.label)) {

                                $filteredCounts[$obj.label]++
                            }
                            else {

                                $filteredCounts[$obj.label] = 1
                            }
                        }
                    }

                    $objectsFound.objects = $filteredObjects
                    $objectsFound.count = $filteredObjects.Count
                    $objectsFound.object_counts = $filteredCounts
                }

                # if no confidence match was found and MinConfidenceRatio is specified, skip this image
                if (-not $confidenceMatch) {

                    # skip the image when confidence filtering is enabled but no data meets threshold
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Confidence filtering - No confidence data meets minimum threshold " +
                        "$MinConfidenceRatio for image $image")
                }
            }

            # perform EXIF metadata filtering if criteria specified
            $width = $null
            $height = $null
            $metadata = $null
            if ($hasSearchCriteria -and (($null -ne $MetaCameraMake -and $MetaCameraMake.Count -gt 0) -or
                    ($null -ne $MetaCameraModel -and $MetaCameraModel.Count -gt 0) -or
                    ($null -ne $MetaWidth -and $MetaWidth.Count -gt 0) -or
                    ($null -ne $MetaHeight -and $MetaHeight.Count -gt 0) -or
                    ($null -ne $MetaGPSLatitude -and $MetaGPSLatitude.Count -gt 0) -or
                    ($null -ne $MetaGPSLongitude -and $MetaGPSLongitude.Count -gt 0) -or
                    ($null -ne $MetaGPSAltitude -and $MetaGPSAltitude.Count -gt 0) -or
                    ($null -ne $MetaExposureTime -and $MetaExposureTime.Count -gt 0) -or
                    ($null -ne $MetaFNumber -and $MetaFNumber.Count -gt 0) -or
                    ($null -ne $MetaISO -and $MetaISO.Count -gt 0) -or
                    ($null -ne $MetaFocalLength -and $MetaFocalLength.Count -gt 0) -or
                    ($null -ne $MetaDateTaken -and $MetaDateTaken.Count -gt 0) -or
                    ($null -ne $GeoLocation -and $GeoLocation.Count -eq 2))) {

                $exifMatch = $false  # Start with false, will be set true if EXIF criteria match

                try {
                    # get metadata for EXIF filtering
                    $metadataStream = "${image}:EXIF.json"

                    if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $metadataStream -ErrorAction SilentlyContinue) {
                        try {
                            $cachedMetadata = Microsoft.PowerShell.Management\Get-Content -LiteralPath $metadataStream -Raw -ErrorAction SilentlyContinue
                            if ($cachedMetadata) {
                                $metadata = $cachedMetadata | Microsoft.PowerShell.Utility\ConvertFrom-Json -AsHashtable -ErrorAction Stop
                            }
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Verbose "Failed to read cached metadata: $_"
                            Microsoft.PowerShell.Utility\Write-Verbose "[Find-Image] Exception: 5 $($_.Exception.Message)"
                            $metadata = GenXdev\Get-ImageMetadata -ImagePath $image
                        }
                    }
                    else {
                        $metadata = GenXdev\Get-ImageMetadata -ImagePath $image
                    }

                    if ($null -ne $metadata) {
                        $width = $metadata.Basic.Width
                        $height = $metadata.Basic.Height
                        $exifMatch = $true  # Start with true for AND logic between EXIF criteria

                        # check camera make filter (OR within parameter, AND with other EXIF)
                        if ($null -ne $MetaCameraMake -and $MetaCameraMake.Count -gt 0) {
                            $makeMatch = $false
                            foreach ($make in $MetaCameraMake) {
                                if ($null -ne $metadata.Camera.Make -and $metadata.Camera.Make -like $make) {
                                    $makeMatch = $true
                                    break
                                }
                            }
                            $exifMatch = $exifMatch -and $makeMatch
                        }

                        # check camera model filter (OR within parameter, AND with other EXIF)
                        if ($exifMatch -and $null -ne $MetaCameraModel -and $MetaCameraModel.Count -gt 0) {

                            $modelMatch = $false

                            foreach ($model in $MetaCameraModel) {

                                if ($null -ne $metadata.Camera.Model -and $metadata.Camera.Model -like $model) {
                                    $modelMatch = $true
                                    break
                                }
                            }
                            $exifMatch = $exifMatch -and $modelMatch
                        }

                        # Width filter (exact or range)
                        if ($exifMatch -and $null -ne $MetaWidth -and $MetaWidth.Count -gt 0) {

                            $widthMatch = $false

                            if ($MetaWidth.Count -eq 1) {

                                $widthMatch = $width -eq $MetaWidth[0]
                            }
                            elseif ($MetaWidth.Count -eq 2) {

                                $widthMatch = $width -ge $MetaWidth[0] -and $width -le $MetaWidth[1]
                            }

                            $exifMatch = $exifMatch -and $widthMatch
                        }

                        # Height filter (exact or range)
                        if ($exifMatch -and $null -ne $MetaHeight -and $MetaHeight.Count -gt 0) {

                            $heightMatch = $false

                            if ($MetaHeight.Count -eq 1) {

                                $heightMatch = $height -eq $MetaHeight[0]
                            }
                            elseif ($MetaHeight.Count -eq 2) {

                                $heightMatch = $height -ge $MetaHeight[0] -and $height -le $MetaHeight[1]
                            }

                            $exifMatch = $exifMatch -and $heightMatch
                        }

                        # GPS filtering - exclude images without GPS data when GPS parameters are specified
                        if ($exifMatch -and (($null -ne $MetaGPSLatitude -and $MetaGPSLatitude.Count -gt 0) -or
                                ($null -ne $MetaGPSLongitude -and $MetaGPSLongitude.Count -gt 0) -or
                                ($null -ne $MetaGPSAltitude -and $MetaGPSAltitude.Count -gt 0) -or
                                ($null -ne $GeoLocation -and $GeoLocation.Count -eq 2))) {

                            $gpsMatch = $false

                            # Check if image has GPS coordinates in metadata
                            if ($null -ne $metadata.GPS -and
                                $null -ne $metadata.GPS.Latitude -and
                                $null -ne $metadata.GPS.Longitude) {

                                $imageLatitude = $metadata.GPS.Latitude
                                $imageLongitude = $metadata.GPS.Longitude
                                $imageAltitude = $metadata.GPS.Altitude

                                # GPS Latitude filter (exact or range)
                                if ($null -ne $MetaGPSLatitude -and $MetaGPSLatitude.Count -gt 0) {
                                    if ($MetaGPSLatitude.Count -eq 1) {
                                        $gpsMatch = $imageLatitude -eq $MetaGPSLatitude[0]
                                    }
                                    elseif ($MetaGPSLatitude.Count -eq 2) {
                                        $gpsMatch = $imageLatitude -ge $MetaGPSLatitude[0] -and $imageLatitude -le $MetaGPSLatitude[1]
                                    }
                                }

                                # GPS Longitude filter (exact or range) - AND with latitude if both specified
                                if ($gpsMatch -and $null -ne $MetaGPSLongitude -and $MetaGPSLongitude.Count -gt 0) {
                                    $longitudeMatch = $false
                                    if ($MetaGPSLongitude.Count -eq 1) {
                                        $longitudeMatch = $imageLongitude -eq $MetaGPSLongitude[0]
                                    }
                                    elseif ($MetaGPSLongitude.Count -eq 2) {
                                        $longitudeMatch = $imageLongitude -ge $MetaGPSLongitude[0] -and $imageLongitude -le $MetaGPSLongitude[1]
                                    }
                                    $gpsMatch = $gpsMatch -and $longitudeMatch
                                }
                                elseif ($null -ne $MetaGPSLongitude -and $MetaGPSLongitude.Count -gt 0) {
                                    # Only longitude specified, no latitude filter
                                    if ($MetaGPSLongitude.Count -eq 1) {
                                        $gpsMatch = $imageLongitude -eq $MetaGPSLongitude[0]
                                    }
                                    elseif ($MetaGPSLongitude.Count -eq 2) {
                                        $gpsMatch = $imageLongitude -ge $MetaGPSLongitude[0] -and $imageLongitude -le $MetaGPSLongitude[1]
                                    }
                                }

                                # GPS Altitude filter (exact or range) - AND with other GPS criteria
                                if ($gpsMatch -and $null -ne $MetaGPSAltitude -and $MetaGPSAltitude.Count -gt 0 -and $null -ne $imageAltitude) {
                                    $altitudeMatch = $false
                                    if ($MetaGPSAltitude.Count -eq 1) {
                                        $altitudeMatch = $imageAltitude -eq $MetaGPSAltitude[0]
                                    }
                                    elseif ($MetaGPSAltitude.Count -eq 2) {
                                        $altitudeMatch = $imageAltitude -ge $MetaGPSAltitude[0] -and $imageAltitude -le $MetaGPSAltitude[1]
                                    }
                                    $gpsMatch = $gpsMatch -and $altitudeMatch
                                }
                                elseif ($null -ne $MetaGPSAltitude -and $MetaGPSAltitude.Count -gt 0 -and $null -ne $imageAltitude) {
                                    # Only altitude specified
                                    if ($MetaGPSAltitude.Count -eq 1) {
                                        $gpsMatch = $imageAltitude -eq $MetaGPSAltitude[0]
                                    }
                                    elseif ($MetaGPSAltitude.Count -eq 2) {
                                        $gpsMatch = $imageAltitude -ge $MetaGPSAltitude[0] -and $imageAltitude -le $MetaGPSAltitude[1]
                                    }
                                }
                                elseif ($null -ne $MetaGPSAltitude -and $MetaGPSAltitude.Count -gt 0) {
                                    # Altitude filter specified but image has no altitude data
                                    $gpsMatch = $false
                                }

                                # GeoLocation proximity filter - AND with other GPS criteria
                                if ($gpsMatch -and $null -ne $GeoLocation -and $GeoLocation.Count -eq 2) {
                                    $targetLatitude = $GeoLocation[0]
                                    $targetLongitude = $GeoLocation[1]
                                    $maxDistance = $null -ne $MaxDistanceInMeters ? $MaxDistanceInMeters : 1000 # Default 1km

                                    # Calculate distance using Haversine formula
                                    $earthRadius = 6371000 # Earth's radius in meters
                                    $lat1Rad = [Math]::PI * $imageLatitude / 180
                                    $lat2Rad = [Math]::PI * $targetLatitude / 180
                                    $deltaLatRad = [Math]::PI * ($targetLatitude - $imageLatitude) / 180
                                    $deltaLonRad = [Math]::PI * ($targetLongitude - $imageLongitude) / 180

                                    $a = [Math]::Sin($deltaLatRad / 2) * [Math]::Sin($deltaLatRad / 2) +
                                    [Math]::Cos($lat1Rad) * [Math]::Cos($lat2Rad) *
                                    [Math]::Sin($deltaLonRad / 2) * [Math]::Sin($deltaLonRad / 2)
                                    $c = 2 * [Math]::Atan2([Math]::Sqrt($a), [Math]::Sqrt(1 - $a))
                                    $distance = $earthRadius * $c

                                    $proximityMatch = $distance -le $maxDistance
                                    $gpsMatch = $gpsMatch -and $proximityMatch
                                }
                                elseif ($null -ne $GeoLocation -and $GeoLocation.Count -eq 2) {
                                    # Only GeoLocation specified (no other GPS filters)
                                    $targetLatitude = $GeoLocation[0]
                                    $targetLongitude = $GeoLocation[1]
                                    $maxDistance = $null -ne $MaxDistanceInMeters ? $MaxDistanceInMeters : 1000

                                    # Calculate distance using Haversine formula
                                    $earthRadius = 6371000
                                    $lat1Rad = [Math]::PI * $imageLatitude / 180
                                    $lat2Rad = [Math]::PI * $targetLatitude / 180
                                    $deltaLatRad = [Math]::PI * ($targetLatitude - $imageLatitude) / 180
                                    $deltaLonRad = [Math]::PI * ($targetLongitude - $imageLongitude) / 180

                                    $a = [Math]::Sin($deltaLatRad / 2) * [Math]::Sin($deltaLatRad / 2) +
                                    [Math]::Cos($lat1Rad) * [Math]::Cos($lat2Rad) *
                                    [Math]::Sin($deltaLonRad / 2) * [Math]::Sin($deltaLonRad / 2)
                                    $c = 2 * [Math]::Atan2([Math]::Sqrt($a), [Math]::Sqrt(1 - $a))
                                    $distance = $earthRadius * $c

                                    $gpsMatch = $distance -le $maxDistance
                                }
                            }
                            # If GPS parameters are specified but image has no GPS data, exclude it
                            # $gpsMatch remains $false, which will make $exifMatch false

                            $exifMatch = $exifMatch -and $gpsMatch
                        }
                    }
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Verbose ("Could not process EXIF metadata for ${image}: $_")
                    Microsoft.PowerShell.Utility\Write-Verbose "[Find-Image] Exception 6: $($_.Exception.Message)"
                    $exifMatch = $false
                }
            }

            # check Any parameter - match against any metadata type (OR logic within Any)
            if ($anySearchTerms.Length -gt 0) {
                $anyMatch = $false  # Start with false, set true if any criteria matches

                foreach ($anyTerm in $anySearchTerms) {
                    # Check file path and filename
                    if ($image -like $anyTerm) {
                        $anyMatch = $true
                        break
                    }

                    # Check filename only (without path)
                    $filename = Microsoft.PowerShell.Management\Split-Path -Leaf $image
                    if ($filename -like $anyTerm) {
                        $anyMatch = $true
                        break
                    }

                    # Check description search
                    if ($null -ne $descriptionFound -and $null -ne $descriptionFound.description) {
                        if ($descriptionFound.description.long_description -like $anyTerm -or
                            $descriptionFound.description.short_description -like $anyTerm) {
                            $anyMatch = $true
                            break
                        }

                        # Check ImageFilename from description metadata
                        if ($descriptionFound.description.ImageFilename -like $anyTerm) {
                            $anyMatch = $true
                            break
                        }
                    }

                    # Check keywords
                    foreach ($foundKeyword in $keywordsFound) {
                        if ($foundKeyword -like $anyTerm) {
                            $anyMatch = $true
                            break
                        }
                    }
                    if ($anyMatch) { break }

                    # Check people
                    foreach ($foundPerson in $peopleFound.faces) {
                        if ($foundPerson -like $anyTerm) {
                            $anyMatch = $true
                            break
                        }
                    }
                    if ($anyMatch) { break }

                    # Check objects
                    foreach ($foundObject in $objectsFound.objects) {
                        if ($foundObject.label -like $anyTerm) {
                            $anyMatch = $true
                            break
                        }
                    }
                    if ($anyMatch) { break }

                    # Check scenes
                    if ($scenesFound.scene -like $anyTerm -or $scenesFound.label -like $anyTerm) {
                        $anyMatch = $true
                        break
                    }

                    # Check picture type
                    if ($null -ne $descriptionFound -and $descriptionFound.picture_type -like $anyTerm) {
                        $anyMatch = $true
                        break
                    }

                    # Check style type
                    if ($null -ne $descriptionFound -and $descriptionFound.style_type -like $anyTerm) {
                        $anyMatch = $true
                        break
                    }

                    # Check overall mood
                    if ($null -ne $descriptionFound -and $descriptionFound.overall_mood_of_image -like $anyTerm) {
                        $anyMatch = $true
                        break
                    }

                    # Check EXIF metadata if available
                    if ($null -ne $metadata) {
                        # Check camera make and model
                        if ($metadata.Camera.Make -like $anyTerm -or $metadata.Camera.Model -like $anyTerm) {
                            $anyMatch = $true
                            break
                        }

                        # Check software used
                        if ($metadata.Other.Software -like $anyTerm) {
                            $anyMatch = $true
                            break
                        }

                        # Check basic file information
                        if ($metadata.Basic.FileName -like $anyTerm -or
                            $metadata.Basic.Format -like $anyTerm -or
                            $metadata.Basic.FileExtension -like $anyTerm) {
                            $anyMatch = $true
                            break
                        }
                    }
                }
            }

            # combine all criteria using proper AND logic between parameter types
            # if no search criteria specified, return all images with metadata
            if (-not $hasSearchCriteria) {
                $found = $true
            }
            else {
                # AND logic between different parameter types: ALL specified criteria must match
                $found = $keywordMatch -and $peopleMatch -and $objectMatch -and
                $sceneMatch -and $descriptionMatch -and $pictureTypeMatch -and
                $styleTypeMatch -and $moodMatch -and $contentMatch -and $exifMatch -and
                $anyMatch -and $confidenceMatch
            }

            # return image data if all criteria matched
            if ($found) {

                # output match found for debugging purposes
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Found matching image: $image")

                # get image dimensions and metadata for output (if not already loaded by EXIF filtering)
                if ($null -eq $metadata) {
                    try {
                        # try to get metadata for output purposes
                        $metadataStream = "${image}:EXIF.json"
                        if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $metadataStream -ErrorAction SilentlyContinue) {
                            try {
                                $cachedMetadata = Microsoft.PowerShell.Management\Get-Content -LiteralPath $metadataStream -Raw -ErrorAction SilentlyContinue
                                if ($cachedMetadata) {
                                    $metadata = $cachedMetadata | Microsoft.PowerShell.Utility\ConvertFrom-Json -AsHashtable -ErrorAction Stop
                                }
                            }
                            catch {
                                Microsoft.PowerShell.Utility\Write-Verbose "Failed to read cached metadata: $_"
                                Microsoft.PowerShell.Utility\Write-Verbose "[Find-Image] Exception 7: $($_.Exception.Message)"
                                $metadata = GenXdev\Get-ImageMetadata -ImagePath $image
                                # save
                                $null = $metadata | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 |
                                    Microsoft.PowerShell.Management\Set-Content -LiteralPath $metadataStream -ErrorAction SilentlyContinue
                            }
                        }
                        else {
                            $metadata = GenXdev\Get-ImageMetadata -ImagePath $image
                            # save
                            $null = $metadata | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 |
                                Microsoft.PowerShell.Management\Set-Content -LiteralPath $metadataStream -ErrorAction SilentlyContinue
                        }

                        if ($null -ne $metadata) {
                            $width = $metadata.Basic.Width
                            $height = $metadata.Basic.Height
                        }
                        else {
                            # fallback to just getting dimensions if metadata extraction fails
                            $imageObj = [System.Drawing.Image]::FromFile($image)
                            $width = $imageObj.Width
                            $height = $imageObj.Height
                            $null = $imageObj.Dispose()
                        }
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Verbose "[Find-Image] Exception 8: $($_.Exception.Message)"
                    }
                }

                if ($null -ne $objectsFound -and $null -ne $objectsFound.objects -and
                    $objectsFound.objects -isnot [System.Collections.IEnumerable]) {
                    $objectsFound.objects = @($objectsFound.objects)
                }
                elseif ($null -ne $objectsFound -and $null -ne $objectsFound.objects -and
                    $objectsFound.objects -is [string]) {
                    $objectsFound.objects = @($objectsFound.objects)
                }
                elseif ($null -ne $objectsFound -and $null -eq $objectsFound.objects) {
                    $objectsFound.objects = @()
                }

                if ($null -ne $peopleFound -and $null -ne $peopleFound.faces -and $peopleFound.faces -isnot [System.Collections.IEnumerable]) {
                    $peopleFound.faces = @($peopleFound.faces)
                }
                if ($null -ne $peopleFound -and $null -ne $peopleFound.predictions -and $peopleFound.predictions -isnot [System.Collections.IEnumerable]) {
                    $peopleFound.predictions = @($peopleFound.predictions)
                }
                if ($null -ne $keywordsFound -and $keywordsFound -isnot [System.Collections.IEnumerable]) {
                    $keywordsFound = @($keywordsFound)
                }

                # Ensure Description object has proper structure with Keywords
                if ($null -eq $descriptionFound) {
                    $descriptionFound = @{}
                }
                if ($null -ne $keywordsFound) {
                    $descriptionFound.Keywords = $keywordsFound
                }

                $obj = @{
                    Path        = $image
                    Width       = $metadata.Basic.Width
                    Height      = $metadata.Basic.Height
                    Metadata    = $metadata
                    Description = $descriptionFound
                    People      = $peopleFound
                    Objects     = $objectsFound
                    Scenes      = $scenesFound
                }
                [GenXdev.Helpers.ImageSearchResult] $standardizedOutput = $null
                $json = $obj | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress;
                try {
                    $standardizedOutput = [GenXdev.Helpers.ImageSearchResult]::FromJson((
                            $json)
                    );
                }
                catch {
                    $msg = "[Find-Image] Exception 9: $($_.Exception.Message)";
                    Microsoft.PowerShell.Utility\Write-Verbose $msg;
                    throw;
                }

                Microsoft.PowerShell.Utility\Write-Output $standardizedOutput
            }
        }

        # search for image files (jpg, jpeg, gif, png, bmp, webp, tiff, tif) and process each one found
        @(GenXdev\Find-Item `
                @FindItemParams `
                -Name $Name `
                -Category Pictures `
                -PassThru
        ) | Microsoft.PowerShell.Core\ForEach-Object {

            try {
                # process the image file and handle output appropriately based on display mode
                processImageFile $_ |
                    Microsoft.PowerShell.Core\ForEach-Object {

                        # output directly or add to results based on browser display setting
                        if (-not $ShowInBrowser) {

                            # Convert to formatted ImageSearchResult object
                            $_  #| GenXdev\ConvertTo-ImageSearchResult
                        }
                        else {

                            # add to results collection for browser display
                            $null = $results.Add($_)
                        }
                    }
                }
                catch {
                    $msg = "[Find-Image] Exception 10: $($_.Exception.Message)";
                    Microsoft.PowerShell.Utility\Write-Verbose $msg;
                }
            }
    }

    end {

        # if showinbrowser is requested, display the gallery using browser interface
        if ($ShowInBrowser) {

            # check if any results were found before attempting to display
            if ((-not $results) -or ($null -eq $results) -or
                ($results.Length -eq 0)) {

                # notify user that no images matched the search criteria
                Microsoft.PowerShell.Utility\Write-Host ('No images found')

                return
            }

            # set default title if empty to provide meaningful gallery header
            if ([String]::IsNullOrWhiteSpace($Title)) {

                $Title = 'Image Search Results'
            }

            # set default description if empty to show the original command
            if ([String]::IsNullOrWhiteSpace($Description)) {

                $Description = $MyInvocation.Statement
            }

            # copy parameters for show function call using helper function
            $params = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Show-FoundImagesInBrowser' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # pass the results to show-foundimagesinbrowser for display
            GenXdev\Show-FoundImagesInBrowser @params -InputObject $results

            # return results if passthru is requested for further processing
            if ($PassThru) {

                # output each result object to pipeline with formatting
                $results | Microsoft.PowerShell.Core\ForEach-Object { $_ } # GenXdev\ConvertTo-ImageSearchResult
            }
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Get-AIKnownFacesRootpath.ps1
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
Gets the configured directory for face image files used in GenXdev.AI
operations.

.DESCRIPTION
This function retrieves the global face directory used by the GenXdev.AI
module for various face recognition and AI operations. It checks Global
variables first (unless SkipSession is specified), then falls back to
persistent preferences, and finally uses system defaults.

.PARAMETER FacesDirectory
Optional faces directory override. If specified, this directory will be
returned instead of retrieving from configuration.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc

.PARAMETER ClearSession
Clear the session setting (Global variable) before retrieving

.PARAMETER PreferencesDatabasePath
Database path for preference data files

.PARAMETER SkipSession
Dont use alternative settings stored in session for AI preferences like
Language, Image collections, etc

.EXAMPLE
Get-AIKnownFacesRootpath

Gets the currently configured faces directory from Global variables or
preferences.

.EXAMPLE
Get-AIKnownFacesRootpath -SkipSession

Gets the configured faces directory only from persistent preferences, ignoring
any session setting.

.EXAMPLE
Get-AIKnownFacesRootpath -ClearSession

Clears the session faces directory setting and then gets the directory from
persistent preferences.

.EXAMPLE
Get-AIKnownFacesRootpath "C:\MyFaces"

Returns the specified directory after expanding the path.
#>
function Get-AIKnownFacesRootpath {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'Directory path for face image files'
        )]
        [string] $FacesDirectory,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear the session setting (Global variable) before ' +
                'retrieving')
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
            HelpMessage = ('Dont use alternative settings stored in session for ' +
                'AI preferences like Language, Image collections, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    if (-not [string]::IsNullOrWhiteSpace($FacesDirectory)) {
        return (GenXdev\Expand-Path $FacesDirectory)
    }

    # fallback to default system directories
    $defaultPicturesPath = GenXdev\Expand-Path '~\Pictures'

    try {

        # attempt to get known folder path for pictures directory
        $defaultPicturesPath = GenXdev\Get-KnownFolderPath Pictures
    }
    catch {

        # fallback to default if known folder retrieval fails
        $defaultPicturesPath = GenXdev\Expand-Path '~\Pictures'
    }

    $FacesDirectory = [string]::IsNullOrWhiteSpace($FacesDirectory) ? $defaultPicturesPath : (GenXdev\Expand-Path $FacesDirectory)

    $params = GenXdev\Copy-IdenticalParamValues `
        -BoundParameters $PSBoundParameters `
        -FunctionName 'GenXdev\Get-GenXdevPreference'

    GenXdev\Expand-Path (GenXdev\Get-GenXdevPreference @params `
            -Name 'AIKnownFacesRootpath' `
            -DefaultValue $FacesDirectory
    )
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Get-Fallacy.ps1
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
Analyzes text to identify logical fallacies using AI-powered detection.

.DESCRIPTION
This function analyzes provided text to detect logical fallacies using an AI
model trained on Wikipedia's List of Fallacies. It returns detailed information
about each fallacy found, including the specific quote, fallacy name,
description, explanation, and formal classification. The function uses a
structured response format to ensure consistent output.

.PARAMETER Text
The text content to analyze for logical fallacies. Can accept multiple text
inputs through pipeline or array.

.PARAMETER Instructions
Additional instructions for the AI model on how to analyze the text or focus
on specific types of fallacies.

.PARAMETER Attachments
Array of file paths to attach to the analysis request for additional context.

.PARAMETER Functions
Array of custom function definitions to make available to the AI model during
analysis.

.PARAMETER ImageDetail
Detail level for image processing when attachments include images. Options are
low, medium, or high.

.PARAMETER NoConfirmationToolFunctionNames
Array of function names that don't require user confirmation before execution
when used by the AI model.

.PARAMETER ExposedCmdLets
Array of PowerShell command definitions that the AI model can use as tools
during analysis.

.PARAMETER Temperature
Controls the randomness of the AI response. Lower values (0.0-0.3) provide
more focused analysis, higher values (0.7-1.0) allow more creative
interpretation.

.PARAMETER LLMQueryType
The type of LLM query to perform for the analysis.

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

.PARAMETER ContinueLast
Switch to continue from the last conversation context instead of starting a
new analysis session.

.PARAMETER IncludeThoughts
Switch to include the model's reasoning process in the output alongside the
final analysis.

.PARAMETER NoSessionCaching
Switch to disable storing the analysis session in the session cache for
privacy or performance reasons.

.PARAMETER OpenInImdb
Switch to open IMDB searches for each detected fallacy result (legacy parameter
from inherited function structure).

.PARAMETER Speak
Switch to enable text-to-speech output for the AI analysis results.

.PARAMETER SpeakThoughts
Switch to enable text-to-speech output for the AI model's reasoning process
when IncludeThoughts is enabled.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " +
"and he was a politician")

Analyzes the provided text for logical fallacies and returns structured
information about any fallacies detected.

.EXAMPLE
"This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1

Uses pipeline input to analyze text with low temperature for focused analysis.

.EXAMPLE
dispicetext "Everyone knows this is true"

Uses the alias to analyze text for logical fallacies.
#>
function Get-Fallacy {

    [CmdletBinding()]
    [OutputType([object[]])]
    [Alias('dispicetext')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [Parameter(
            ValueFromPipeline = $true,
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'Text to parse to find Fallacies in'
        )]
        [object] $InputObject,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = ('Instructions for the AI model on how to generate ' +
                'the string list')
        )]
        [string]$Instructions = '',
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'Array of file paths to attach'
        )]
        [string[]]$Attachments = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of function definitions'
        )]
        [hashtable[]]$Functions = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Image detail level'
        )]
        [ValidateSet('low', 'medium', 'high')]
        [string]$ImageDetail = 'low',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Array of command names that don't require " +
                'confirmation')
        )]
        [Alias('NoConfirmationFor')]
        [string[]]$NoConfirmationToolFunctionNames = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Array of PowerShell command definitions to use ' +
                'as tools')
        )]
        [GenXdev.Helpers.ExposedCmdletDefinition[]]$ExposedCmdLets = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response randomness (0.0-1.0)'
        )]
        [ValidateRange(0.0, 1.0)]
        [double]$Temperature = -1,
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
        [string]$LLMQueryType = 'Knowledge',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The model identifier or pattern to use for AI ' +
                'operations')
        )]
        [string]$Model,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API endpoint URL for AI operations'
        )]
        [string]$ApiEndpoint,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API key for authenticated AI operations'
        )]
        [string]$ApiKey,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The timeout in seconds for AI operations'
        )]
        [int]$TimeoutSeconds,
        [Alias('DatabasePath')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [string]$PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Continue from last conversation'
        )]
        [switch]$ContinueLast,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include model's thoughts in output"
        )]
        [switch]$IncludeThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't store session in session cache"
        )]
        [switch]$NoSessionCaching,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens IMDB searches for each result'
        )]
        [Alias('imdb')]
        [switch]$OpenInImdb,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Controls the temperature for audio generation.'
        )]
        [double]$AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Controls the temperature for response generation.'
        )]
        [double]$TemperatureResponse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use for processing.'
        )]
        [int]$CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress certain outputs.'
        )]
        [string]$SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for processing.'
        )]
        [int]$AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Threshold for detecting silence in audio.'
        )]
        [double]$SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Penalty applied to longer responses.'
        )]
        [double]$LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Threshold for entropy in response generation.'
        )]
        [double]$EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for output.'
        )]
        [double]$LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Threshold for detecting no speech in audio.'
        )]
        [double]$NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevents speaking the response.'
        )]
        [switch]$DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevents speaking the model\''s thoughts.'
        )]
        [switch]$DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disables VOX (voice activation).'
        )]
        [switch]$NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use desktop audio capture for input.'
        )]
        [switch]$UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disables context for the request.'
        )]
        [switch]$NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use beam search sampling strategy.'
        )]
        [switch]$WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Only return responses, no additional data.'
        )]
        [switch]$OnlyResponses,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable text-to-speech for AI responses'
        )]
        [switch]$Speak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable text-to-speech for AI thought responses'
        )]
        [switch]$SpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch]$SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'AI preferences')
        )]
        [switch]$ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences ' +
                'without affecting session')
        )]
        [Alias('FromPreferences')]
        [switch]$SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum callback length for tool calls.'
        )]
        [int]$MaxToolcallBackLength
    )
    begin {

        # output verbose information about starting fallacy analysis
        Microsoft.PowerShell.Utility\Write-Verbose `
            'Starting fallacy analysis for provided text'

        # initialize results array to store detected fallacies
        [object[]]$results = @()

        # create comprehensive instructions for ai model fallacy detection
        $instructions = @"
You are an expert in logical reasoning and fallacy detection, trained on the Wikipedia "List of Fallacies" page (as provided). Your task is to analyze a given text for logical fallacies and return each occurrence with the following details:
Partial Quote: The specific segment of the text where the fallacy occurs.

Fallacy Name: The formal name of the fallacy as listed in the Wikipedia "List of Fallacies".

Description: A brief description of the fallacy based on its definition from the Wikipedia page.

Explanation: An explanation of why this instance qualifies as the identified fallacy, tailored to the context of the text.

Formal Classification: The category under which the fallacy falls (e.g., Formal Fallacies, Informal Fallacies > Faulty Generalizations, etc.), as per the Wikipedia structure.

Instructions:

$Instructions

Analyze the entire text provided by the user.

Identify every instance of a logical fallacy, even if multiple fallacies occur in the same sentence or paragraph.

If no fallacies are present, return a fallacies property holding an empty array.

Use the Wikipedia "List of Fallacies" page as the sole reference for fallacy definitions and classifications.

Do not invent fallacies or use external sources beyond the provided Wikipedia content.

Present the results in a clear, structured format (e.g., numbered list or table).

If the text is ambiguous, make a reasonable interpretation and explain your reasoning.

Input Format:
The user will provide a text sample (e.g., a paragraph, argument, or statement) for analysis.
Output Format:
For each detected fallacy:

Fallacy Occurrence #X:
- Partial Quote: "[quote from text]"
- Fallacy Name: [name of fallacy]
- Description: [brief description from Wikipedia]
- Explanation: [context-specific explanation]
- Formal Classification: [e.g., Informal Fallacies > Relevance Fallacies]

If no fallacies are found:

Return nothing.
"@

        # define json schema for structured fallacy detection response
        $responseSchema = @{
            type        = 'json_schema'
            json_schema = @{
                name   = 'fallacy_detection_response'
                strict = $true
                schema = @{
                    type       = 'object'
                    properties = @{
                        fallacies = @{
                            type  = 'array'
                            items = @{
                                type       = 'object'
                                properties = @{
                                    PartialQuote         = @{ type = 'string' }
                                    FallacyName          = @{ type = 'string' }
                                    Description          = @{ type = 'string' }
                                    Explanation          = @{ type = 'string' }
                                    FormalClassification = @{ type = 'string' }
                                }
                                required   = @('PartialQuote', 'FallacyName',
                                    'Description', 'Explanation',
                                    'FormalClassification')
                            }
                        }
                    }
                    required   = @('fallacies')
                }
            }
        } |
            Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10

        # output verbose confirmation of schema initialization
        Microsoft.PowerShell.Utility\Write-Verbose `
            'Initialized response schema for fallacy detection'
    }

    process {

        # iterate through each text part provided for analysis
        $InputObject | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction SilentlyContinue {
            $textPart = "$PSItem";
            if ([string]::IsNullOrWhiteSpace($textPart)) { return }

            # output verbose information about parameter preparation
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Preparing LLM invocation parameters'

            try {
                # copy matching parameters from bound parameters to invocation
                $invocationParams = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\Invoke-LLMQuery'

                # set specific parameters for fallacy detection analysis
                $invocationParams.Query = $textPart

                $invocationParams.Instructions = $instructions

                $invocationParams.IncludeThoughts = $false

                $invocationParams.ResponseFormat = $responseSchema

                $invocationParams.Temperature = $Temperature

                # configure chat mode if default tools are allowed
                if ($AllowDefaultTools) {

                    $invocationParams.ChatMode = 'textprompt'

                    $invocationParams.ChatOnce = $true
                }

                # invoke language model query for fallacy detection
                $response = GenXdev\Invoke-LLMQuery @invocationParams |
                    Microsoft.PowerShell.Utility\ConvertFrom-Json

                # process and store fallacy detection results
                if ($response.fallacies) {

                    # add detected fallacies to results collection
                    $results += $response.fallacies
                }
                else {
                    # output verbose message when no fallacies are detected
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        'No fallacies detected in the provided text'
                }
            }
            catch {
                # output error message if fallacy analysis fails
                Microsoft.PowerShell.Utility\Write-Error `
                    "Failed to analyze text for fallacies: $_"
            }
        }
    }

    end {

        # output appropriate verbose message based on results
        if ($results.Count -gt 0) {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Returning detected fallacies'
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose `
                'No fallacies detected in any provided text'
        }

        # return the collected fallacy detection results
        $results
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Get-ScriptExecutionErrorFixPrompt.ps1
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
Captures error messages from various streams and uses LLM to suggest fixes.

.DESCRIPTION
This cmdlet captures error messages from various PowerShell streams (pipeline
input, verbose, information, error, and warning) and formulates a structured
prompt for an LLM to analyze and suggest fixes. It then invokes the LLM query
and returns the suggested solution.

.PARAMETER Script
The script to execute and analyze for errors.

.PARAMETER Temperature
Temperature for response randomness (0.0-1.0).

.PARAMETER DontAddThoughtsToHistory
Include model's thoughts in output.

.PARAMETER ContinueLast
Continue from last conversation.

.PARAMETER Functions
Array of function definitions.

.PARAMETER ExposedCmdLets
Array of PowerShell command definitions to use as tools.

.PARAMETER NoConfirmationToolFunctionNames
Array of command names that don't require confirmation.

.PARAMETER Speak
Enable text-to-speech for AI responses.

.PARAMETER SpeakThoughts
Enable text-to-speech for AI thought responses.

.PARAMETER NoSessionCaching
Don't store session in session cache.

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

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
$errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {
    My-ScriptThatFails
}

Write-Host $errorInfo

.EXAMPLE
getfixprompt { Get-ChildItem -NotExistingParameter }
###############################################################################>

function Get-ScriptExecutionErrorFixPrompt {

    [CmdletBinding()]
    [Alias('getfixprompt')]
    [OutputType([System.Object[]])]

    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ValueFromPipeline = $true,
            HelpMessage = 'The script to execute and analyze for errors'
        )]
        [ScriptBlock] $Script,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response randomness (0.0-1.0)'
        )]
        [ValidateRange(-1, 1.0)]
        [double] $Temperature = -1,
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
            HelpMessage = 'Array of function definitions'
        )]
        [hashtable[]] $Functions = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of PowerShell command definitions to use as tools'
        )]
        [GenXdev.Helpers.ExposedCmdletDefinition[]]
        $ExposedCmdLets = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Array of command names that don't require confirmation"
        )]
        [Alias('NoConfirmationFor')]
        [string[]]
        $NoConfirmationToolFunctionNames = @(),
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Attachments to include in the LLM query.'
        )]
        $Attachments,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Level of image detail for LLM query.'
        )]
        $ImageDetail,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Time-to-live in seconds for the LLM query.'
        )]
        $TTLSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Include model thoughts in the LLM response.'
        )]
        $IncludeThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Output only markup blocks from the LLM response.'
        )]
        $OutputMarkdownBlocksOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter for markup block types in the LLM response.'
        )]
        $MarkupBlocksTypeFilter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run chat only once for the LLM query.'
        )]
        $ChatOnce,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum tool call back length for LLM query.'
        )]
        $MaxToolcallBackLength,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for audio generation.'
        )]
        $AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response generation.'
        )]
        $TemperatureResponse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Language for LLM query.'
        )]
        $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use.'
        )]
        $CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress output.'
        )]
        $SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for LLM query.'
        )]
        $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence threshold for audio processing.'
        )]
        $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty for LLM output.'
        )]
        $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold for LLM output.'
        )]
        $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for LLM output.'
        )]
        $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold for audio processing.'
        )]
        $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do not speak audio output.'
        )]
        $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do not speak model thoughts.'
        )]
        $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable VOX for audio output.'
        )]
        $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use desktop audio capture.'
        )]
        $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do not use context for LLM query.'
        )]
        $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use beam search sampling strategy.'
        )]
        $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only responses from LLM.'
        )]
        $OnlyResponses
    )

    begin {

        # initialize output capture builders for all powershell streams
        $verboseOutput = [System.Text.StringBuilder]::new()

        $errorOutput = [System.Text.StringBuilder]::new()

        $warningOutput = [System.Text.StringBuilder]::new()

        $informationOutput = [System.Text.StringBuilder]::new()

        $standardOutput = [System.Text.StringBuilder]::new()

        # store original preference variables for later restoration
        $oldPreferences = @{
            Verbose     = $VerbosePreference
            Error       = $ErrorActionPreference
            Warning     = $WarningPreference
            Information = $InformationPreference
        }

        # set all preferences to continue for capturing all output streams
        $VerbosePreference = 'Continue'

        $ErrorActionPreference = 'Stop'

        $WarningPreference = 'Continue'

        $InformationPreference = 'Continue'

        # register event handlers for capturing output from all streams
        $null = Microsoft.PowerShell.Utility\Register-EngineEvent `
            -SourceIdentifier 'Verbose' `
            -Action {
            param($Message)
            $null = $verboseOutput.AppendLine($Message)
        }

        $null = Microsoft.PowerShell.Utility\Register-EngineEvent `
            -SourceIdentifier 'Error' `
            -Action {
            param($Message)
            $null = $errorOutput.AppendLine($Message)
        }

        $null = Microsoft.PowerShell.Utility\Register-EngineEvent `
            -SourceIdentifier 'Warning' `
            -Action {
            param($Message)
            $null = $warningOutput.AppendLine($Message)
        }

        $null = Microsoft.PowerShell.Utility\Register-EngineEvent `
            -SourceIdentifier 'Information' `
            -Action {
            param($Message)
            $null = $informationOutput.AppendLine($Message)
        }

        # initialize response schema for structured LLM output
        $responseFormat = @{
            type        = 'json_schema'
            json_schema = @{
                name   = 'error_resolution_response'
                strict = $true
                schema = @{
                    type  = 'array'
                    items = @{
                        type       = 'object'
                        properties = @{
                            Files  = @{
                                type  = 'array'
                                items = @{
                                    type       = 'object'
                                    properties = @{
                                        Path       = @{ type = 'string' }
                                        LineNumber = @{ type = 'integer' }
                                    }
                                    required   = @('Path')
                                }
                            }
                            Prompt = @{ type = 'string' }
                        }
                        required   = @('Files', 'Prompt')
                    }
                }
            }
        } |
            Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10

        # initialize exposed cmdlets if not provided
        if (-not $ExposedCmdLets) {

            $ExposedCmdLets = @(
                @{
                    Name          = 'Microsoft.PowerShell.Management\Get-ChildItem'
                    AllowedParams = @('LiteralPath=string')
                    ForcedParams  = @(@{
                            Name  = 'Force'
                            Value = $true
                        })
                    OutputText    = $true
                    Confirm       = $false
                    JsonDepth     = 3
                },
                @{
                    Name          = 'Microsoft.PowerShell.Management\Get-Content'
                    AllowedParams = @('LiteralPath=string')
                    OutputText    = $true
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
                    Name          = ('Microsoft.PowerShell.Utility\' +
                        'Invoke-RestMethod')
                    AllowedParams = @('Uri=string', 'Method=string',
                        'Body', 'ContentType=string',
                        'Method=string', 'UserAgent=string')
                    OutputText    = $false
                    Confirm       = $false
                    JsonDepth     = 10
                },
                @{
                    Name          = 'Microsoft.PowerShell.Management\Get-Clipboard'
                    AllowedParams = @()
                    OutputText    = $true
                    Confirm       = $false
                },
                @{
                    Name          = 'Microsoft.PowerShell.Utility\Get-Variable'
                    AllowedParams = @('Name=string', 'Scope=string',
                        'ValueOnly=boolean')
                    OutputText    = $false
                    Confirm       = $false
                    JsonDepth     = 3
                }
            );
        }
    }

    process {

        # initialize object array to capture script output
        $object = @()

        try {

            # execute the provided script and capture its output
            $object = & $Script
        }
        catch {

            # capture exception details for error analysis
            $exception = $_.Exception

            $exceptionDetails = @()

            $exceptionDetails += ('Exception Type: ' +
                "$($exception.GetType().FullName)")

            $exceptionDetails += "Message: $($exception.Message)"

            # walk through inner exceptions to capture full error chain
            while ($exception.InnerException) {

                if ($exception.InnerException) {

                    $exceptionDetails += ('Inner Exception: ' +
                        "$($exception.InnerException.Message)")
                }

                if ($exception.StackTrace) {

                    $exceptionDetails += ('Stack Trace: ' +
                        "$($exception.StackTrace)")
                }

                $exception = $exception.InnerException
            }

            # append detailed exception information to error output
            $null = $errorOutput.AppendLine($exceptionDetails -join "`n")
        }

        # capture each output item as string for analysis
        foreach ($item in $object) {

            $null = $standardOutput.AppendLine(($item |
                        Microsoft.PowerShell.Utility\Out-String))
        }
    }

    end {

        try {

            # return successful output if no errors occurred
            if ($errorOutput.Length -eq 0) {

                Microsoft.PowerShell.Utility\Write-Verbose ('No errors ' +
                    'detected during script execution')

                return @(@{
                        StandardOutput = @($object)
                    });
            }

            try {

                # output verbose message about starting llm analysis
                Microsoft.PowerShell.Utility\Write-Verbose ('Analyzing ' +
                    'captured errors using LLM')

                # create instructions for the llm to analyze errors
                $instructions = @'
Your job is to analyze all output of a PowerShell script execution
and execute the following tasks:
- Identify the numbers of unique problems
- foreach unique problem:
  + Parse unique filenames with linenumber and output these so that these files can be
    changed to resolve the error
  + Generate a suffisticated highly efficient LLM prompt that describes
    the larger view of the problem.
    DONT COPY this prompt, but make a first line assesement of the problem
    and create a prompt for a larger model to use as instructions to resolve
    the problem.
    (the LLM will have access to the files which names you output)
- Ensure your response is concise and does not repeat information.
'@

                # append exposed cmdlets instructions if available
                if ($ExposedCmdLets -and $ExposedCmdLets.Count) {

                    $instructions += @"
- You are allowed to use the following PowerShell cmdlets:
    + $($ExposedCmdLets.Name -join ', ')
    If needed use these tools to turn assumptions into facts
    during your analyses of the problem in this Powershell
    environment you now have live access to and suggest fixes.
    Keep in mind you can inspect file contents, environment variables,
    websites and webapi's, clipboard contents, etc.
    You are an experienced senior debugger, so you know what to do.
"@
                }

                # construct comprehensive prompt with all captured output
                $prompt = @"
Current directory: $($PWD.Path)
--
Current time: $(Microsoft.PowerShell.Utility\Get-Date)
--
Powershell commandline that was executed:
$Script
--
Captured standardoutput:
--
$($standardOutput.ToString())
--
Captured verbose output:
--
$($verboseOutput.ToString())
--
Captured error output:
--
$($errorOutput.ToString())
--
Captured warning output:
--
$($warningOutput.ToString())
--
Captured information output:
--
$($informationOutput.ToString())
"@

                # copy parameters for llm invocation
                $invocationArgs = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\Invoke-LLMQuery'

                # set specific parameters for the llm query
                $invocationArgs.Query = $prompt

                $invocationArgs.ExposedCmdLets = $ExposedCmdLets

                $invocationArgs.Instructions = $instructions

                $invocationArgs.ResponseFormat = $responseFormat

                # output verbose message about invoking llm
                Microsoft.PowerShell.Utility\Write-Verbose ('Invoking LLM ' +
                    'query for error analysis')

                # invoke llm and convert response from json
                GenXdev\Invoke-LLMQuery @invocationArgs |
                    Microsoft.PowerShell.Utility\ConvertFrom-Json
            }
            catch {

                # log error during processing
                Microsoft.PowerShell.Utility\Write-Error ('Error while ' +
                    "processing: $_")

                throw "Error while processing: $_"
            }
        }
        finally {

            # cleanup event handlers to prevent memory leaks
            $null = Microsoft.PowerShell.Utility\Unregister-Event `
                -SourceIdentifier 'Verbose' `
                -ErrorAction SilentlyContinue

            $null = Microsoft.PowerShell.Utility\Unregister-Event `
                -SourceIdentifier 'Error' `
                -ErrorAction SilentlyContinue

            $null = Microsoft.PowerShell.Utility\Unregister-Event `
                -SourceIdentifier 'Warning' `
                -ErrorAction SilentlyContinue

            $null = Microsoft.PowerShell.Utility\Unregister-Event `
                -SourceIdentifier 'Information' `
                -ErrorAction SilentlyContinue

            # restore original preferences to avoid side effects
            $VerbosePreference = $oldPreferences.Verbose

            $ErrorActionPreference = $oldPreferences.Error

            $WarningPreference = $oldPreferences.Warning

            $InformationPreference = $oldPreferences.Information
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Get-SimularMovieTitles.ps1
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
Finds similar movie titles based on common properties.

.DESCRIPTION
Analyzes the provided movies to find common properties and returns a list of 10
similar movie titles. Uses AI to identify patterns and themes across the input
movies to suggest relevant recommendations.

.PARAMETER Movies
Array of movie titles to analyze for similarities.

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

.PARAMETER Temperature
Temperature for response randomness (0.0-1.0).

.PARAMETER OpenInImdb
Opens IMDB searches for each result in default browser.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb

.EXAMPLE
moremovietitle "The Matrix","Inception" -imdb
#>
function Get-SimularMovieTitles {
    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'Array of movie titles to analyze for similarities'
        )]
        [string[]]$Movies,
        [Parameter(
            Position = 1,
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
        [string] $LLMQueryType = 'Knowledge',
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
            HelpMessage = 'Temperature for response randomness (0.0-1.0)'
        )]
        [ValidateRange(-1, 1.0)]
        [double] $Temperature = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens IMDB searches for each result'
        )]
        [Alias('imdb')]
        [switch]$OpenInImdb,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Language for IMDB search or browser session'
        )]
        [string] $Language,
        [Alias('m', 'mon')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Monitor index or name for browser window placement'
        )]
        [int] $Monitor = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Width of the browser window in pixels'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Height of the browser window in pixels'
        )]
        [int] $Height = -1,
        [Alias('lang', 'locale')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Accept-Language HTTP header for browser session'
        )]
        [string] $AcceptLang,
        [Alias('incognito', 'inprivate')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open browser in private/incognito mode'
        )]
        [switch] $Private,
        [Alias('ch')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Google Chrome for browser session'
        )]
        [switch] $Chrome,
        [Alias('c')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Chromium for browser session'
        )]
        [switch] $Chromium,
        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Mozilla Firefox for browser session'
        )]
        [switch] $Firefox,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Left position of the browser window in pixels'
        )]
        [int] $Left,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Right position of the browser window in pixels'
        )]
        [int] $Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Bottom position of the browser window in pixels'
        )]
        [int] $Bottom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open browser window centered on screen'
        )]
        [switch] $Centered,
        [Alias('fs', 'f')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open browser in full screen mode'
        )]
        [switch] $FullScreen,
        [Alias('a', 'app', 'appmode')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open browser in application mode (minimal UI)'
        )]
        [switch] $ApplicationMode,
        [Alias('de', 'ne', 'NoExtensions')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable browser extensions for session'
        )]
        [switch] $NoBrowserExtensions,
        [Alias('allowpopups')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable popup blocker in browser session'
        )]
        [switch] $DisablePopupBlocker,
        [Alias('fw', 'focus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [switch] $FocusWindow,
        [Alias('fg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set browser window to foreground after opening'
        )]
        [switch] $SetForeground,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximize the browser window after opening'
        )]
        [switch] $Maximize,
        [Alias('rf', 'bg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore focus to previous window after closing browser'
        )]
        [switch] $RestoreFocus,
        [Alias('nw', 'new')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open each IMDB result in a new browser window'
        )]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return the URL after opening IMDB search'
        )]
        [switch] $ReturnURL,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only the URL without opening browser'
        )]
        [switch] $ReturnOnlyURL,
        [Alias('Escape')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Send Escape key to browser after opening'
        )]
        [switch] $SendKeyEscape,
        [Alias('HoldKeyboardFocus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus in browser after sending keys'
        )]
        [switch] $SendKeyHoldKeyboardFocus,
        [Alias('UseShiftEnter')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter when sending keys to browser'
        )]
        [switch] $SendKeyUseShiftEnter,
        [Alias('DelayMilliSeconds')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay in milliseconds between sending keys to browser'
        )]
        [int] $SendKeyDelayMilliSeconds,
        [Alias('nb')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open browser window without borders'
        )]
        [switch] $NoBorders,

        [Alias('pw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Playwright-managed browser instead of the ' +
                'OS-installed browser')
        )]
        [switch] $PlayWright,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens the Playwright-managed WebKit browser. ' +
                'Implies -PlayWright')
        )]
        [switch] $Webkit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run the browser without a visible window'
        )]
        [Alias('hl')]
        [switch] $Headless,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in all registered modern browsers'
        )]
        [switch] $All,
        [Alias('sbs')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open browser windows side by side for each result'
        )]
        [switch] $SideBySide,
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Instructions for the AI model on how to generate the string list'
        )]
        [string] $Instructions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of file paths to attach'
        )]
        [string[]] $Attachments,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Image detail level for image processing.'
        )]
        [ValidateSet('low', 'medium', 'high')]
        [string] $ImageDetail,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of function definitions that can be called by the AI model during processing.'
        )]
        [hashtable[]] $Functions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of PowerShell command definitions to use as tools that the AI can invoke.'
        )]
        [GenXdev.Helpers.ExposedCmdletDefinition[]] $ExposedCmdLets,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Array of command names that don't require confirmation before execution."
        )]
        [Alias('NoConfirmationFor')]
        [string[]] $NoConfirmationToolFunctionNames,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for audio generation.'
        )]
        [double] $AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response generation.'
        )]
        [double] $TemperatureResponse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use.'
        )]
        [int] $CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress certain outputs.'
        )]
        [string] $SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for processing.'
        )]
        [int] $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence threshold for audio processing.'
        )]
        [double] $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty for sequence generation.'
        )]
        [double] $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold for output filtering.'
        )]
        [double] $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for output filtering.'
        )]
        [double] $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold for audio detection.'
        )]
        [double] $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output.'
        )]
        [switch] $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable thought speech output.'
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable VOX (voice activation).'
        )]
        [switch] $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use desktop audio capture.'
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable context usage.'
        )]
        [switch] $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use beam search sampling strategy.'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only responses.'
        )]
        [switch] $OnlyResponses,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'When specified, copies the resulting string list back to the system clipboard after processing.'
        )]
        [switch] $SetClipboard,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include model's thoughts in output"
        )]
        [switch] $IncludeThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't add model's thoughts to conversation history"
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
            HelpMessage = 'Enable default tools for the AI model.'
        )]
        [switch] $AllowDefaultTools,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only markup blocks in the output.'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter for specific types of markup blocks.'
        )]
        [string[]] $MarkupBlocksTypeFilter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum callback length for tool calls.'
        )]
        [int] $MaxToolcallBackLength
    )

    begin {

        # output verbose message about starting movie analysis
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Starting movie analysis for: $($Movies -join ', ')")

        # validate minimum number of movies required for comparison
        if ($Movies.Count -lt 2) {
            throw 'Please provide at least 2 movies for comparison'
        }

        # initialize empty array to store AI generated movie recommendations
        [string[]] $results = @()
    }

    process {

        # construct the AI prompt for movie analysis with input movies listed
        $prompt = @"
Analyze with high precision what the following movies have in common,
and provide me a list of 10 more movie titles that have closest match
based on the properties you found in your analyses.

$(($Movies |
    Microsoft.PowerShell.Core\ForEach-Object { "- $_`r`n" }))
"@

        # output verbose message about parameter preparation
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Preparing LLM invocation parameters')

        # copy matching parameters from current function to target function
        $invocationParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Invoke-LLMStringListEvaluation'

        # set the constructed prompt as the text parameter for AI evaluation
        $invocationParams.Text = $prompt

        # output verbose message about AI invocation
        Microsoft.PowerShell.Utility\Write-Verbose 'Invoking AI analysis'

        # invoke AI to get movie recommendations based on input analysis
        $results = GenXdev\Invoke-LLMStringListEvaluation @invocationParams

        # open IMDB searches for results if requested by user
        if ($OpenInImdb) {

            # output verbose message about opening IMDB
            Microsoft.PowerShell.Utility\Write-Verbose 'Opening results in IMDB'

            # open IMDB query for each recommended movie title
            GenXdev\Open-IMDBQuery -Query $results
        }
    }

    end {

        # output the final array of recommended movie titles
        Microsoft.PowerShell.Utility\Write-Output $results
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Invoke-AIPowershellCommand.ps1
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
Generates and executes PowerShell commands using AI assistance.

.DESCRIPTION
Uses AI models to generate PowerShell commands based on
natural language queries. The function can either send commands directly to
the PowerShell window or copy them to the clipboard. It leverages AI models
to interpret natural language and convert it into executable PowerShell
commands with comprehensive parameter support for various AI backends.

.PARAMETER Query
The natural language description of what you want to accomplish. The AI will
convert this into an appropriate PowerShell command.

.PARAMETER Instructions
Additional instructions for the AI model to customize command generation
behavior and provide context-specific guidance.

.PARAMETER Temperature
Controls the randomness in the AI's response generation. Values range from
0.0 (more focused/deterministic) to 1.0 (more creative/random).

.PARAMETER LLMQueryType
The type of LLM query to perform. Determines the AI model's behavior and
response style for different use cases.

.PARAMETER Model
The model identifier or pattern to use for AI operations. Can be a name or
partial path with support for pattern matching.

.PARAMETER ApiEndpoint
The API endpoint URL for AI operations when using external AI services.

.PARAMETER ApiKey
The API key for authenticated AI operations with external services.

.PARAMETER TimeoutSeconds
The timeout in seconds for AI operations to prevent hanging requests.

.PARAMETER PreferencesDatabasePath
Database path for preference data files to store AI configuration settings.

.PARAMETER SendKeyEscape
Escape control characters and modifiers when sending keys to the PowerShell
window.

.PARAMETER SendKeyHoldKeyboardFocus
Hold keyboard focus on target window when sending keys to the PowerShell
window.

.PARAMETER SendKeyUseShiftEnter
Use Shift+Enter instead of Enter when sending keys to the PowerShell window.

.PARAMETER SendKeyDelayMilliSeconds
Delay between different input strings in milliseconds when sending keys to
the PowerShell window.

.PARAMETER Clipboard
When specified, copies the generated command to clipboard instead of
executing it directly.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences instead of
persistent configuration.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences and reset
to defaults.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session
state.

.EXAMPLE
Invoke-AIPowershellCommand -Query "list all running processes"

Generates a PowerShell command to list running processes

.EXAMPLE
hint "list files modified today"

Uses the alias to generate a command for finding files modified today.

.EXAMPLE
Invoke-AIPowershellCommand -Query "stop service" -Clipboard

Generates a command to stop a service and copies it to clipboard.
#>
function Invoke-AIPowershellCommand {

    [CmdletBinding()]
    [OutputType([void])]
    [Alias('hint')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'The natural language query to generate a command for'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PowershellCmdline,
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
        [string] $NoSupportForJsonSchema
    )

    begin {

        # read compact cmdlet index for AI candidate scanning (~2KB vs 2MB)
        $indexPath = "$($MyInvocation.MyCommand.Module.ModuleBase)\usefull-cmdlets.txt"
        $cmdletIndex = if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $indexPath) {
            Microsoft.PowerShell.Management\Get-Content -LiteralPath $indexPath -Raw -Encoding UTF8
        }
        else {
            ''
        }

        Microsoft.PowerShell.Utility\Write-Verbose ('Initializing AI command ' +
            'generation with tool-call workflow')

        # expose Get-Help as a tool function — LLM calls this to verify syntax
        $ExposedCmdLets = @(
            @{
                Name          = 'Microsoft.PowerShell.Core\Get-Help'
                Description   = ('Retrieves full help for a PowerShell cmdlet ' +
                    'including syntax, parameter names, types, and examples.')
                AllowedParams = @('Name=string')
                ForcedParams  = @(
                    @{ Name = 'Full'; Value = $true }
                )
                OutputText    = $true
                Confirm       = $false
            }
        )

        # Get-Help should never require user confirmation
        $NoConfirmationToolFunctionNames = @('Get-Help')

        # build instruction template
        $Instructions = @"

⛔ CRITICAL PROTOCOL — FOLLOW THESE STEPS IN ORDER ⛔

You are generating a PowerShell command to help the user. Follow these steps
exactly — do NOT skip ahead.

---

STEP 1 — IS IT A TYPO?

Only apply this step if the user's message LOOKS LIKE a PowerShell command
(contains a Verb-Noun pattern like "Get-Something" or has "-Parameter"
switches). If the user typed natural language like "find duplicate files",
skip to Step 2.

If it IS a command with an obvious typo or minor syntax error, fix ONLY the
typo and output the corrected command immediately. Do NOT search for
alternative cmdlets.

Examples:
- User types "Get-ChildIem" → fix to "Get-ChildItem"
- User types "Get-ChildItem -Recurse -Dept 3" → fix "-Dept" to "-Depth"
- User types "find duplicate files in this folder" → SKIP TO STEP 2

---

STEP 2 — SCAN FOR MATCHING CMDLETS:

Below is a list of available GenXdev cmdlets with their descriptions. Scan it
and identify 1-3 cmdlets that could solve the user's task.

$cmdletIndex

If a GenXdev cmdlet clearly fits, proceed to Step 3. If nothing matches,
proceed to Step 4.

---

STEP 3 — VERIFY PARAMETERS VIA Get-Help:

CALL the Get-Help tool on your chosen candidate(s). This is MANDATORY. You
do NOT know what parameters exist until you see the syntax block.

Rules:
- Every parameter name MUST appear in the Get-Help syntax block.
- For enum parameters showing {Value1 | Value2 | ...}, use EXACTLY one of
  those values. No approximations.
- If a parameter is NOT in the syntax block, it DOES NOT EXIST.
- Example: Open-MediaFile has -NoRecurse, NOT -Recurse. Do not assume.

After Get-Help returns, build the working command and output it.

---

STEP 4 — FALLBACK: GENERAL KNOWLEDGE:

No GenXdev cmdlet fits. Use your general PowerShell knowledge to suggest
the best standard PowerShell command for the task.

---

OUTPUT FORMAT — raw JSON only, no markdown fences:
{
    ""explanation"": ""What this command does or what was fixed"",
    ""suggestedCmdline"": ""The exact PowerShell command to run""
}

"@
        $ResponseFormat = @{
            type        = 'json_schema'
            json_schema = @{
                name   = 'text_transformation_response'
                strict = $true
                schema = @{
                    type       = 'object'
                    properties = @{
                        explanation      = @{
                            type        = 'string'
                            description = 'explanation what cmdline accomplises or what is improved to fix the error'
                        };
                        suggestedCmdline = @{
                            type        = 'string'
                            description = 'The transformed text output'
                        }
                    }
                    required   = @('explanation', 'suggestedCmdline')
                }
            }
        } | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10

        # copy matching parameters to invoke transformation function
        $invocationParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Invoke-LLMQuery' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local)

    }

    process {

        if (($PowershellCmdline.Trim() -eq "") -or (($PowershellCmdline.Trim() -eq "^U"))) {
            return;
        }

        # log the query being processed for debugging purposes
        Microsoft.PowerShell.Utility\Write-Verbose ('Generating PowerShell ' +
            "command for query: $PowershellCmdline")

        # invoke LLM with Get-Help exposed as a tool for parameter verification
        # suppress tool chain output — Get-Help noise is distracting here
        $command = GenXdev\Invoke-LLMQuery @invocationParams `
            -Query $PowershellCmdline `
            -Instructions $Instructions `
            -ResponseFormat $ResponseFormat `
            -ExposedCmdLets $ExposedCmdLets `
            -NoConfirmationToolFunctionNames $NoConfirmationToolFunctionNames `
            -Temperature 0.1 `
            -QuietToolChainInvocations

        # Invoke-LLMQuery already extracts clean JSON from the response
        # via IndexOf/LastIndexOf. Parse and validate the required fields.
        try {
            $result = $command |
                Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction Stop

            if ((-not $result) -or
                [string]::IsNullOrWhiteSpace($result.suggestedCmdline) -or
                [string]::IsNullOrWhiteSpace($result.explanation)) {

                throw "AI response missing required fields"
            }
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Error "'$PowershellCmdline' could not be resolved using AI"
            return
        }

        $explanation = $result.explanation
        $suggestedCmd = $result.suggestedCmdline

        if ([string]::IsNullOrWhiteSpace($suggestedCmd)) {
            Microsoft.PowerShell.Utility\Write-Warning 'AI did not return a valid command to execute.'
            return
        }

        $yellow = "`e[33m"
        $cyan = "`e[36m"
        $reset = "`e[0m"

        # show explanation and command to the user
        $userChoice = $host.ui.PromptForChoice(
            'Are you sure you want to perform this action?',
            @"
--
$yellow$suggestedCmd$reset
--
$cyan$explanation$reset
--
"@, @('&No', '&Yes'), 1);

        if ($userChoice -eq 0) {

            return
        }

        Microsoft.PowerShell.Utility\Invoke-Expression $suggestedCmd
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Invoke-ImageFacesUpdate.ps1
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
Updates face recognition metadata for image files in a specified directory.

.DESCRIPTION
This function processes images in a specified directory to identify and analyze
faces using AI recognition technology. It creates or updates metadata files
containing face information for each image. The metadata is stored in a
separate file with

.PARAMETER Name
Array of directory paths containing images to process. Can be relative or
absolute. Default is the current directory.

.PARAMETER Recurse
If specified, processes images in the specified directory and all subdirectories.

.PARAMETER OnlyNew
If specified, only processes images that don't already have face metadata files.

.PARAMETER RetryFailed
If specified, retries processing previously failed images (empty metadata files).

.PARAMETER NoDockerInitialize
Skip Docker initialization when this switch is used. Used when already called by
parent function.

.PARAMETER Force
Force rebuild of Docker container and remove existing data when this switch is
used.

.PARAMETER UseGPU
Use GPU-accelerated version when this switch is used. Requires an NVIDIA GPU.

.PARAMETER ContainerName
The name for the Docker container. Default is "deepstack_face_recognition".

.PARAMETER VolumeName
The name for the Docker volume for persistent storage. Default is
"deepstack_face_data".

.PARAMETER ServicePort
The port number for the DeepStack service. Default is 5000.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check. Default is 60.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts. Default is 3.

.PARAMETER ImageName
Custom Docker image name to use instead of the default DeepStack image.

.EXAMPLE
Invoke-ImageFacesUpdate -Name @("C:\Photos", "D:\Pictures") -Recurse

.EXAMPLE
facerecognition @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
###############################################################################>
function Invoke-ImageFacesUpdate {

    [CmdletBinding()]
    [Alias('imagepeopledetection')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The directory paths containing images to process'
        )]
        [string[]] $ImageDirectories = @('.\'),

        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Process images in specified directory and all ' +
                'subdirectories')
        )]
        [switch] $Recurse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Only process images that don't already have face " +
                'metadata files')
        )]
        [switch] $OnlyNew,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will retry previously failed image keyword ' +
                'updates')
        )]
        [switch] $RetryFailed,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker volume for persistent storage'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Interval in seconds between health check ' +
                'attempts')
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Minimum confidence threshold (0.0-1.0) for ' +
                'object detection')
        )]
        [ValidateRange(0.0, 1.0)]
        [double] $ConfidenceThreshold = 0.7,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The language for generated descriptions and ' +
                'keywords')
        )]
        [PSDefaultValue(Value = 'English')]
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
            'Zulu')]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'Name or partial path of the model to initialize'
        )]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [string]$Model,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Api endpoint url, defaults to ' +
                'http://localhost:1234/v1/chat/completions')
        )]
        [string] $ApiEndpoint = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API key to use for the request'
        )]
        [string] $ApiKey = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indicates that LLM has no support for JSON schemas'
        )]
        [string] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Timeout in seconds for the request, defaults to ' +
                '24 hours')
        )]
        [int] $TimeoutSecond,
        [parameter(
            Mandatory = $false,
            HelpMessage = ('The directory containing face images organized ' +
                'by person folders. If not specified, uses the configured ' +
                'faces directory preference.')
        )]
        [string] $FacesDirectory,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip Docker initialization (used when already ' +
                'called by parent function)')
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force rebuild of Docker container and remove ' +
                'existing data')
        )]
        [Alias('ForceRebuild')]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use GPU-accelerated version (requires NVIDIA ' +
                'GPU)')
        )]
        [switch] $UseGPU,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Show Docker window during ' +
                'initialization')
        )]
        [switch]$ShowWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('PassThru to return structured objects instead ' +
                'of outputting to console')
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Detects changes in the faces directory and ' +
                're-registers faces if needed')
        )]
        [switch] $AutoUpdateFaces,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for ' +
                'AI preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session ' +
                'for AI preferences like Language, Image collections, etc')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Dont use alternative settings stored in ' +
                'session for AI preferences like Language, Image ' +
                'collections, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )
    begin {

        # process each directory provided
        $processedDirectories = @()
        foreach ($directory in $ImageDirectories) {

            # convert the possibly relative path to an absolute path for reliable access
            $path = GenXdev\Expand-Path $directory

            # ensure the target directory exists before proceeding with any operations
            if (-not [System.IO.Directory]::Exists($path)) {
                Microsoft.PowerShell.Utility\Write-Warning "Directory not found: $path - skipping"
                continue
            }

            $processedDirectories += $path
            Microsoft.PowerShell.Utility\Write-Verbose ('Processing images in ' +
                "directory: $path")
        }

        if ($processedDirectories.Count -eq 0) {
            Microsoft.PowerShell.Utility\Write-Warning "No valid directories found to process"
            return
        }
    }

    process {

        # process each validated directory
        foreach ($path in $processedDirectories) {

            Microsoft.PowerShell.Utility\Write-Verbose "Processing directory: $path"

            # retrieve all supported image files from the specified directory
            # applying recursion only if the -Recurse switch was provided
            # get all supported image files from the specified directory
            $imageTypes = @(".jpg", ".jpeg", ".png", ".gif", ".bmp", ".webp", ".tiff", ".tif")
            $findParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName "GenXdev\Find-Item" `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            # Add NoRecurse parameter if Recurse was not specified
            if (-not $Recurse) {
                $findParams['NoRecurse'] = $true
            }

            # Get all image files matching the criteria
            GenXdev\Find-Item @findParams -PassThru -Name "$path\*" -Category Pictures | Microsoft.PowerShell.Core\Where-Object {
                $imageTypes.IndexOf(([IO.Path]::GetExtension($_.FullName).ToLowerInvariant())) -ge 0
            } | Microsoft.PowerShell.Core\ForEach-Object {

                # store the full path to the current image for better readability
                $image = $PSItem.FullName
                $metadataFilePath = "$($image):people.json"

                # check if a metadata file already exists for this image
                $fileExists = [System.IO.File]::Exists($metadataFilePath)

                # check if we have valid existing content
                $hasValidContent = $false
                if ($fileExists) {
                    try {
                        $content = [System.IO.File]::ReadAllText($metadataFilePath)
                        $existingData = $content | Microsoft.PowerShell.Utility\ConvertFrom-Json
                        # Content is valid if success is true (successful processing)
                        $hasValidContent = $existingData.success -eq $true
                    }
                    catch {
                        # If JSON parsing fails, treat as invalid content
                        $hasValidContent = $false
                    }
                }

                # determine if image should be processed based on options
                Microsoft.PowerShell.Utility\Write-Verbose `
                ("OnlyNew: $OnlyNew, FileExists: $fileExists, " +
                    "HasValidContent: $hasValidContent, RetryFailed: $RetryFailed")

                # Process if: not OnlyNew OR file doesn't exist OR (RetryFailed and no valid content)
                $shouldProcess = (-not $OnlyNew) -or
                                (-not $fileExists) -or
                                ($RetryFailed -and (-not $hasValidContent))

                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Should process '$image': $shouldProcess"

                if ($shouldProcess) {

                    try {
                        # obtain face recognition data using ai recognition technology
                        $params = GenXdev\Copy-IdenticalParamValues `
                            -FunctionName 'GenXdev\Get-ImageDetectedFaces' `
                            -BoundParameters $PSBoundParameters `
                            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

                        # Set NoDockerInitialize for the first image,
                        # then pass it as a parameter for subsequent images
                        $faceData = GenXdev\Get-ImageDetectedFaces `
                            @params `
                            -ImagePath $image

                        $NoDockerInitialize = $true;

                        # process the returned face data into standardized format
                        $processedData = if ($faceData -and
                            $faceData.success -and
                            $faceData.predictions) {

                            $predictions = $faceData.predictions

                            # extract unique face names from predictions data
                            $faceNames = $predictions |
                                Microsoft.PowerShell.Core\ForEach-Object {

                                    $name = $_.userid
                                    $lastUnderscoreIndex = $name.LastIndexOf('_')

                                    # remove timestamp suffix if present in face name
                                    if ($lastUnderscoreIndex -gt 0) {
                                        $name.Substring(0, $lastUnderscoreIndex)
                                    } else {
                                        $name
                                    }
                                } |
                                Microsoft.PowerShell.Utility\Sort-Object -Unique

                                # create standardized data structure for face metadata
                                @{
                                    success     = $true
                                    count       = $faceNames.Count
                                    faces       = $faceNames
                                    predictions = $predictions
                                }
                        } else {

                            # create empty structure when no faces are detected
                            @{
                                success     = $true
                                count       = 0
                                faces       = @()
                                predictions = @()
                            }
                        }

                        # convert processed data to json format for storage
                        $faces = $processedData |
                            Microsoft.PowerShell.Utility\ConvertTo-Json `
                                -Depth 20 `
                                -WarningAction SilentlyContinue

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Received face analysis for: $image")

                        # reformat json to ensure consistent compressed format
                        $newContent = ($faces |
                                Microsoft.PowerShell.Utility\ConvertFrom-Json |
                                Microsoft.PowerShell.Utility\ConvertTo-Json `
                                    -Compress `
                                    -Depth 20 `
                                    -WarningAction SilentlyContinue)

                        # save the processed face data to metadata file
                        [System.IO.File]::WriteAllText($metadataFilePath, $newContent)

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Successfully saved face metadata for: $image")
                    }
                    catch {
                        # write failure JSON to prevent infinite retries without -RetryFailed
                        try {
                            $failureData = @{
                                success = $false
                                count = 0
                                faces = @()
                                predictions = @()
                                error = "Face detection failed: $($_.Exception.Message)"
                            }

                            $failureJson = $failureData | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 10
                            [System.IO.File]::WriteAllText($metadataFilePath, $failureJson)
                        }
                        catch {
                            # If we can't even write the failure JSON, just log it
                            Microsoft.PowerShell.Utility\Write-Verbose "Failed to write error metadata for ${image}: $($_.Exception.Message)"
                        }

                        Microsoft.PowerShell.Utility\Write-Warning (
                            "Failed to process faces for $image : $($_.Exception.Message)")
                    }
                }
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Invoke-ImageKeywordUpdate.ps1
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
Updates image metadata with AI-generated descriptions and keywords.

.DESCRIPTION
The Invoke-ImageKeywordUpdate function analyzes images using AI to generate
descriptions, keywords, and other metadata. It creates a companion JSON file for
each image containing this information. The function can process new images only
or update existing metadata, and supports recursive directory scanning.

.PARAMETER ImageDirectories
Specifies the directories containing images to process. Defaults to current
directory if not specified.

.PARAMETER Language
Specifies the language for generated descriptions and keywords. Defaults to
English.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER Recurse
When specified, searches for images in the specified directory and all
subdirectories.

.PARAMETER OnlyNew
When specified, only processes images that don't already have metadata JSON
files.

.PARAMETER RetryFailed
When specified, reprocesses images where previous metadata generation attempts
failed.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER SkipSession
Dont use alternative settings stored in session for AI preferences like
Language, Image collections, etc.

.EXAMPLE
Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew

.EXAMPLE
updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"
#>
function Invoke-ImageKeywordUpdate {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Alias('imagekeywordgeneration')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The directory paths containing images to process'
        )]
        [string[]] $ImageDirectories = @('.\'),

        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Process images in specified directory and all ' +
                'subdirectories')
        )]
        [switch] $Recurse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Only process images that don't already have face " +
                'metadata files')
        )]
        [switch] $OnlyNew,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will retry previously failed image keyword ' +
                'updates')
        )]
        [switch] $RetryFailed,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The language for generated descriptions and ' +
                'keywords')
        )]
        [PSDefaultValue(Value = 'English')]
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
            'Zulu')]
        [string] $Language,

        [parameter(
            Mandatory = $false,
            HelpMessage = ('The directory containing face images organized ' +
                'by person folders. If not specified, uses the configured ' +
                'faces directory preference.')
        )]
        [string] $FacesDirectory,
        [Parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = 'System instructions for the model'
        )]
        [string] $Instructions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'A JSON schema for the requested output format'
        )]
        [string] $ResponseFormat = $null,
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
        [string] $ImageDetail = 'high',
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
        [string] $LLMQueryType = 'Pictures',
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
            HelpMessage = "Include model's thoughts in output"
        )]
        [switch] $IncludeThoughts,
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Specifies the functions to use for the AI operation.'
        )]
        [string[]] $Functions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Specifies the exposed cmdlets for the AI operation.'
        )]
        [string[]] $ExposedCmdLets,
        [Alias('NoConfirmationFor')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Specifies tool function names that do not require confirmation.'
        )]
        [string[]] $NoConfirmationToolFunctionNames,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'If specified, disables context usage.'
        )]
        [switch] $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum callback length for tool calls.'
        )]
        [int] $MaxToolcallBackLength,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('PassThru to return structured objects instead ' +
                'of outputting to console')
        )]
        [Alias('pt')]
        [switch]$PassThru,

        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Detects changes in the faces directory and ' +
                're-registers faces if needed')
        )]
        [switch] $AutoUpdateFaces
    )

    begin {

        # copy identical parameter values for ai meta language function
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-AIMetaLanguage' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local -ErrorAction SilentlyContinue)

        # get the resolved language setting from ai meta system
        $language = GenXdev\Get-AIMetaLanguage @params
    }

    process {

        # process each image directory provided
        foreach ($directory in $ImageDirectories) {

            # convert relative path to absolute path
            $path = GenXdev\Expand-Path $directory

            # verify directory exists before proceeding
            if (-not [System.IO.Directory]::Exists($path)) {
                Microsoft.PowerShell.Utility\Write-Warning ("The directory '$path' " +
                    'does not exist - skipping')
                continue
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Processing directory: $path"

            # get all supported image files from the specified directory
            $imageTypes = @(".jpg", ".jpeg", ".png", ".gif", ".bmp", ".webp", ".tiff", ".tif")
            $findParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName "GenXdev\Find-Item" `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            # Add NoRecurse parameter if Recurse was not specified
            if (-not $Recurse) {
                $findParams['NoRecurse'] = $true
            }

            # Get all image files matching the criteria
            GenXdev\Find-Item @findParams -PassThru -Name "$path\*" -Category Pictures | Microsoft.PowerShell.Core\Where-Object {
                $imageTypes.IndexOf(([IO.Path]::GetExtension($_.FullName).ToLowerInvariant())) -ge 0
            } | Microsoft.PowerShell.Core\ForEach-Object {
                try {
                    # get the full path of the current image file
                    $image = $PSItem.FullName

                    # ensure image is writable by removing read-only flag if present
                    if ($PSItem.Attributes -band [System.IO.FileAttributes]::ReadOnly) {

                        $PSItem.Attributes = $PSItem.Attributes -bxor `
                            [System.IO.FileAttributes]::ReadOnly
                    }

                    # determine which metadata file to check based on language preference
                    $metadataFile = if ($language -eq 'English') {
                        "$($image):description.json"
                    }
                    else {
                        "$($image):description.$language.json"
                    }

                    # check if metadata file already exists
                    $fileExists = [System.IO.File]::Exists($metadataFile)

                    # check if we have valid existing content
                    $hasValidContent = $false
                    if ($fileExists) {
                        try {
                            $content = [System.IO.File]::ReadAllText($metadataFile)
                            $existingData = $content | Microsoft.PowerShell.Utility\ConvertFrom-Json
                            # Content is valid if success is true AND has required data
                            $hasValidContent = ($existingData.success -eq $true) -and
                            ($existingData.short_description) -and
                            ($existingData.keywords)
                        }
                        catch {
                            # If JSON parsing fails, treat as invalid content
                            $hasValidContent = $false
                        }
                    }

                    # process image if conditions are met (new files or update requested)
                    # Process if: not OnlyNew OR file doesn't exist OR (RetryFailed and no valid content)
                    if ((-not $OnlyNew) -or
                        (-not $fileExists) -or
                        ($RetryFailed -and (-not $hasValidContent))) {

                        # define response format schema for ai analysis
                        $responseSchema = @{
                            type        = 'json_schema'
                            json_schema = @{
                                name   = 'image_analysis_response'
                                strict = $true
                                schema = @{
                                    type       = 'object'
                                    properties = @{
                                        short_description     = @{
                                            type        = 'string'
                                            description = ('Brief description of the ' +
                                                'image (max 80 chars)')
                                            maxLength   = 80
                                        }
                                        long_description      = @{
                                            type        = 'string'
                                            description = ('Detailed description of ' +
                                                'the image')
                                        }
                                        has_nudity            = @{
                                            type        = 'boolean'
                                            description = ('Whether the image ' +
                                                'contains nudity')
                                        }
                                        keywords              = @{
                                            type        = 'array'
                                            items       = @{
                                                type = 'string'
                                            }
                                            description = 'Array of descriptive keywords'
                                        }
                                        has_explicit_content  = @{
                                            type        = 'boolean'
                                            description = ('Whether the image contains ' +
                                                'explicit content')
                                        }
                                        overall_mood_of_image = @{
                                            type        = 'string'
                                            description = ('The general mood or emotion ' +
                                                'conveyed by the image')
                                        }
                                        picture_type          = @{
                                            type        = 'string'
                                            description = ('The type or category of ' +
                                                'the image')
                                        }
                                        style_type            = @{
                                            type        = 'string'
                                            description = ('The artistic or visual style ' +
                                                'of the image')
                                        }
                                    }
                                    required   = @(
                                        'short_description',
                                        'long_description',
                                        'has_nudity',
                                        'keywords',
                                        'has_explicit_content',
                                        'overall_mood_of_image',
                                        'picture_type',
                                        'style_type'
                                    )
                                }
                            }
                        } | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10

                        # output verbose information about the image being analyzed
                        Microsoft.PowerShell.Utility\Write-Verbose ('Analyzing image ' +
                            "content: $image with language: $language")

                        $Additional = @{metadata = @(
                                GenXdev\Find-Item "$($image):people.json" -IncludeAlternateFileStreams -PassThru |
                                    Microsoft.PowerShell.Core\ForEach-Object FullName |
                                    Microsoft.PowerShell.Core\ForEach-Object {
                                        try {
                                            $content = [IO.File]::ReadAllText($_)
                                            $obj = $content | Microsoft.PowerShell.Utility\ConvertFrom-Json
                                            if (($null -ne $obj) -and ($null -ne $obj.predictions) -and ($obj.predictions.Count -gt 0)) {

                                                $obj.predictions | Microsoft.PowerShell.Core\ForEach-Object { $_ }
                                            }
                                        }
                                        catch {
                                            # ignore errors reading existing metadata
                                        }
                                    });
                                FileInfo         = @{
                                    ImageFilename   = [IO.Path]::GetFileName($image)
                                }
                            };

                            $json = $Additional | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 20

                            # construct comprehensive ai query for image analysis
                            $query = (
                                'Analyze image and return a JSON object with properties: ' +
                                "'short_description' (max 80 chars), 'long_description', " +
                                "'has_nudity', 'keywords' (array of strings with all " +
                                'detected objects, text or anything describing this ' +
                                'picture, max 15 keywords), ' +
                                "'has_explicit_content', 'overall_mood_of_image', " +
                                "'picture_type' and 'style_type'.`r`n`r`n" +
                                "Generate all descriptions and keywords in $language " +
                                "language.`r`n`r`n" +
                                "Output only JSON, no markdown or anything other than JSON.`r`n`r`n" +
                                "$(($Additional.metadata.Count -gt 0 ? @"
Use the metadata below to enrich the descriptions and titles.
Like mentioning the person's name in the title when high confidence is detected (> 0.8).
If it the name is that of a famous person, tell about his/her life in the long description
and mention his name in the title.
$json`r`n
"@ : "$json`r`n"))"
                            );

                            try {
                                # get ai-generated image description and metadata
                                $params = GenXdev\Copy-IdenticalParamValues `
                                    -BoundParameters $PSBoundParameters `
                                    -FunctionName 'GenXdev\Invoke-QueryImageContent' `
                                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                                        -Scope Local -ErrorAction SilentlyContinue)
                                $description = GenXdev\Invoke-QueryImageContent `
                                    @params `
                                    -ResponseFormat $responseSchema `
                                    -Query $query `
                                    -ImagePath $image `
                                    -Temperature 0.1

                                # output verbose information about the received analysis
                                Microsoft.PowerShell.Utility\Write-Verbose ('Received ' +
                                    "analysis: $description")

                                # extract just the json portion of the response text
                                $description = $description.trim()

                                # find the first opening brace position
                                $i0 = $description.IndexOf('{')

                                # find the last closing brace position
                                $i1 = $description.LastIndexOf('}')

                                # extract only the json content if braces found
                                if ($i0 -ge 0) {

                                    $description = $description.Substring(
                                        $i0, $i1 - $i0 + 1)
                                }

                                $description = (($description | Microsoft.PowerShell.Utility\ConvertFrom-Json | GenXdev\ConvertTo-HashTable) + $Additional.FileInfo) |
                                    Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 20 -WarningAction SilentlyContinue

                                    # save formatted json metadata to companion file
                                    $null = [System.IO.File]::WriteAllText(
                                        $metadataFile,
                                        $description
                                    )

                                    Microsoft.PowerShell.Utility\Write-Verbose (
                                        "Successfully saved keyword metadata for: $image")
                                }
                                catch {
                                    # write failure JSON to prevent infinite retries without -RetryFailed
                                    try {
                                        $failureData = @{
                                            success               = $false
                                            short_description     = ""
                                            long_description      = ""
                                            has_nudity            = $true
                                            keywords              = @()
                                            has_explicit_content  = $true
                                            overall_mood_of_image = ""
                                            picture_type          = ""
                                            style_type            = ""
                                            error                 = "Keyword generation failed: $($_.Exception.Message)"
                                        }

                                        $failureJson = $failureData | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 10
                                        [System.IO.File]::WriteAllText($metadataFile, $failureJson)
                                    }
                                    catch {
                                        # If we can't even write the failure JSON, just log it
                                        Microsoft.PowerShell.Utility\Write-Verbose "Failed to write error metadata for ${image}: $($_.Exception.Message)"
                                    }

                                    Microsoft.PowerShell.Utility\Write-Warning (
                                        "Failed to process keywords for $image : $($_.Exception.Message)")
                                }
                            }
                        }
                        catch {
                            # output error message if image processing fails
                            Microsoft.PowerShell.Utility\Write-Verbose ("Failed to process image: $image`r`n" +
                                "Error: $($_.Exception.Message)")
                        }
                    }
        }
    }
    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Invoke-ImageMetadataUpdate.ps1
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
Updates EXIF metadata for images in a directory.

.DESCRIPTION
This function extracts and updates EXIF metadata for images in specified directories.
It processes each image to extract detailed EXIF metadata including camera details,
GPS coordinates, exposure settings, and other technical information. The metadata
is stored in alternate NTFS streams as :EXIF.json for later use by indexing and
search functions.

.PARAMETER ImageDirectories
Array of directory paths to process for image metadata updates.

.PARAMETER RetryFailed
Specifies whether to retry previously failed image metadata updates.

.PARAMETER OnlyNew
If specified, only processes images that don't already have metadata files or
have empty metadata files.

.PARAMETER Recurse
If specified, processes images in the specified directory and all
subdirectories recursively.

.PARAMETER Force
Force rebuilding of metadata even if it already exists.

.PARAMETER PassThru
Return structured objects instead of outputting to console.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER SkipSession
Don't use alternative settings stored in session for AI preferences like
Language, Image collections, etc.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.EXAMPLE
Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force

.EXAMPLE
Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv
#>
function Invoke-ImageMetadataUpdate {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [Alias('imagepropdetection')]

    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'Array of directory paths to process for image metadata updates'
        )]
        [string[]] $ImageDirectories = @('.\'),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will retry previously failed image metadata updates'
        )]
        [switch] $RetryFailed,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Only process images that don''t already have metadata files'
        )]
        [switch] $OnlyNew,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'If specified, processes images in subdirectories recursively'
        )]
        [switch] $Recurse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force rebuilding of metadata even if it already exists'
        )]
        [Alias('ForceRebuild')]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return structured objects instead of outputting to console'
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for ' +
                'AI preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session ' +
                'for AI preferences like Language, Image collections, etc')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Don''t use alternative settings stored in ' +
                'session for AI preferences like Language, Image ' +
                'collections, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath
    )

    begin {
        # process each directory provided
        $processedDirectories = @()
        foreach ($directory in $ImageDirectories) {
            # resolve the absolute path for the image directory
            $path = GenXdev\Expand-Path $directory

            # check if the specified directory exists
            if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $path -PathType Container)) {
                Microsoft.PowerShell.Utility\Write-Warning "Directory not found: $path - skipping"
                continue
            }

            $processedDirectories += $path
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Processing images in directory: $path"
            )
        }

        if ($processedDirectories.Count -eq 0) {
            Microsoft.PowerShell.Utility\Write-Warning "No valid directories found to process"
            return
        }

        # Set flags for processing behavior

        Microsoft.PowerShell.Utility\Write-Verbose "Starting metadata extraction for images..."
    }

    process {
        # process each validated directory
        foreach ($path in $processedDirectories) {
            Microsoft.PowerShell.Utility\Write-Verbose "Processing directory: $path"

            # discover all image files in the specified directory path, selectively
            # applying recursion only if the -Recurse switch was provided
            # get all supported image files from the specified directory
            $imageTypes = @(".jpg", ".jpeg", ".png", ".gif", ".bmp", ".tiff", ".tif")
            $findParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName "GenXdev\Find-Item" `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            # Add NoRecurse parameter if Recurse was not specified
            if (-not $Recurse) {
                $findParams['NoRecurse'] = $true
            }

            # Get all image files matching the criteria
            GenXdev\Find-Item @findParams -PassThru -SearchMask "$path\*" -Directory:$false | Microsoft.PowerShell.Core\Where-Object {
                $imageTypes.IndexOf(([IO.Path]::GetExtension($_.FullName).ToLowerInvariant())) -ge 0
            } | Microsoft.PowerShell.Core\ForEach-Object {
                try {
                    $imagePath = $_.FullName

                    # Generate the NTFS alternate stream path for metadata
                    $metadataStream = "${imagePath}:EXIF.json"

                    # Check if we have valid existing content (for RetryFailed logic)
                    $fileExists = [System.IO.File]::Exists($metadataStream)
                    $hasValidContent = $false
                    if ($fileExists) {
                        try {
                            $content = [System.IO.File]::ReadAllText($metadataStream)
                            $existingData = $content | Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction SilentlyContinue
                            # Content is valid if it's successful processing OR if it has actual metadata (not just failure JSON)
                            $hasValidContent = (($null -ne $existingData) -and ($existingData.PSObject.Properties.Count -gt 0)) -and
                                              (-not ($existingData.success -eq $false))
                        }
                        catch {
                            $hasValidContent = $false
                        }
                    }

                    # Check if we should process this image
                    # Process if: Force OR not OnlyNew OR file doesn't exist OR (RetryFailed and no valid content)
                    $shouldProcess = $Force -or
                                    (-not $OnlyNew) -or
                                    (-not $fileExists) -or
                                    ($RetryFailed -and (-not $hasValidContent))

                    if (-not $shouldProcess) {

                        return;
                    }

                    # Validate file exists and is accessible before processing
                    if (-not [System.IO.File]::Exists($imagePath)) {
                        Microsoft.PowerShell.Utility\Write-Warning "Image file not found: $imagePath"
                        return
                    }

                    # Check file size - skip very large files that might cause memory issues
                    $fileInfo = [System.IO.FileInfo]::new($imagePath)
                    if ($fileInfo.Length -gt 1024*1024*300) {
                        Microsoft.PowerShell.Utility\Write-Warning "Skipping large file (${fileInfo.Length} bytes): $imagePath"
                        return
                    }

                    # Test if file is readable by trying to open it
                    try {
                        $testStream = [System.IO.File]::OpenRead($imagePath)
                        $testStream.Close()
                        $testStream.Dispose()
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Warning "Cannot read file (may be locked or corrupted): $imagePath"
                        return
                    }

                    # Extract metadata using Get-ImageMetadata with proper error handling
                    try {
                        $metadata = GenXdev\Get-ImageMetadata -ImagePath $imagePath -ErrorAction Stop
                    }
                    catch {
                        # Handle out of memory and other metadata extraction errors
                        Microsoft.PowerShell.Utility\Write-Warning "Failed to process metadata for ${imagePath}: $($_.Exception.Message)"

                        # Write failure JSON to prevent infinite retries
                        try {
                            $failureMetadata = @{
                                success = $false
                                has_metadata = $false
                                error = "Metadata extraction failed: $($_.Exception.Message)"
                            }
                            $failureJson = $failureMetadata | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress
                            [System.IO.File]::WriteAllText($metadataStream, $failureJson)
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Verbose "Failed to write error metadata for ${imagePath}: $($_.Exception.Message)"
                        }
                        return
                    }

                    if ($null -eq $metadata) {

                        # Write empty metadata JSON to indicate no metadata available
                        $emptyMetadata = @{
                            success = $true
                            has_metadata = $false
                            error = "No EXIF metadata found"
                        }
                        $emptyJson = $emptyMetadata | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress

                        # Safely write to alternate data stream
                        try {
                            [System.IO.File]::WriteAllText($metadataStream, $emptyJson)
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Warning "Failed to write metadata stream for ${imagePath}: $($_.Exception.Message)"
                            return
                        }

                        Microsoft.PowerShell.Utility\Write-Warning "No metadata found for image: $imagePath"
                        return;
                    }

                    # Convert metadata to JSON and store in alternate stream
                    $metadataJson = $metadata | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress

                    # Safely write to alternate data stream
                    try {
                        [System.IO.File]::WriteAllText($metadataStream, $metadataJson)
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Warning "Failed to write metadata stream for ${imagePath}: $($_.Exception.Message)"
                        return
                    }

                    # Create result object for PassThru
                    $result = [PSCustomObject]@{
                        Path = $imagePath
                        Success = $true
                        HasMetadata = $true
                        ProcessedAt = Microsoft.PowerShell.Utility\Get-Date
                        MetadataSize = $metadataJson.Length
                        CameraMake = $metadata.Camera.Make
                        CameraModel = $metadata.Camera.Model
                        HasGPS = ($null -ne $metadata.GPS.Latitude -and $null -ne $metadata.GPS.Longitude)
                        GPSLatitude = $metadata.GPS.Latitude
                        GPSLongitude = $metadata.GPS.Longitude
                    }

                    if ($PassThru) {

                        Microsoft.PowerShell.Utility\Write-Output $result
                    } else {

                        Microsoft.PowerShell.Utility\Write-Verbose "Processed metadata for: $imagePath"
                    }
                }
                catch {
                    # write failure JSON to prevent infinite retries without -RetryFailed
                    try {
                        $failureData = @{
                            success = $false
                            has_metadata = $false
                            error = "Metadata extraction failed: $($_.Exception.Message)"
                        }

                        $failureJson = $failureData | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 10
                        [System.IO.File]::WriteAllText($metadataStream, $failureJson)
                    }
                    catch {
                        # If we can't even write the failure JSON, just log it
                        Microsoft.PowerShell.Utility\Write-Verbose "Failed to write error metadata for ${imagePath}: $($_.Exception.Message)"
                    }

                    $errorMessage = "Failed to process metadata for $imagePath : $($_.Exception.Message)"
                    Microsoft.PowerShell.Utility\Write-Warning $errorMessage

                    if ($PassThru) {

                        $result = [PSCustomObject]@{
                            Path = $imagePath
                            Success = $false
                            HasMetadata = $false
                            ProcessedAt = Microsoft.PowerShell.Utility\Get-Date
                            Error = $_.Exception.Message
                        }
                        Microsoft.PowerShell.Utility\Write-Output $result
                    }
                }
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Invoke-ImageObjectsUpdate.ps1
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
Updates object detection metadata for image files in a specified directory.

.DESCRIPTION
This function processes images in a specified directory to detect objects using
artificial intelligence. It creates JSON metadata files containing detected
objects, their positions, confidence scores, and labels. The function supports
batch processing with configurable confidence thresholds and can optionally
skip existing metadata files or retry previously failed detections.

.PARAMETER ImageDirectories
Array of directory paths containing images to process. Can be relative or
absolute paths. Default is the current directory.

.PARAMETER Recurse
If specified, processes images in the specified directory and all
subdirectories recursively.

.PARAMETER OnlyNew
If specified, only processes images that don't already have object metadata
files or have empty metadata files.

.PARAMETER RetryFailed
If specified, retries processing previously failed images that have empty
metadata files or contain error indicators.

.PARAMETER NoDockerInitialize
Skip Docker initialization when this switch is used. Used when already called
by parent function to avoid redundant container setup.

.PARAMETER ConfidenceThreshold
Minimum confidence threshold (0.0-1.0) for object detection. Objects detected
with confidence below this threshold will be filtered out. Default is 0.5.

.PARAMETER Force
Force rebuild of Docker container and remove existing data when this switch
is used. This will recreate the entire detection environment.

.PARAMETER UseGPU
Use GPU-accelerated version when this switch is used. Requires an NVIDIA GPU
with appropriate drivers and CUDA support.

.PARAMETER ContainerName
The name for the Docker container running the object detection service.
Default is "deepstack_face_recognition".

.PARAMETER VolumeName
The name for the Docker volume for persistent storage of detection models
and data. Default is "deepstack_face_data".

.PARAMETER ServicePort
The port number for the DeepStack service to listen on. Must be between
1 and 65535. Default is 5000.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check before timing out.
Must be between 10 and 300 seconds. Default is 60.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts when waiting for service
startup. Must be between 1 and 10 seconds. Default is 3.

.PARAMETER ImageName
Custom Docker image name to use instead of the default DeepStack image.
Allows using alternative object detection models or configurations.

.EXAMPLE
Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse

This example processes all images in C:\Photos and D:\Pictures and all
subdirectories using default settings with 0.5 confidence threshold.

.EXAMPLE
Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew

This example processes only new images and retries previously failed ones
in multiple directories using positional parameter syntax.

.EXAMPLE
Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `
    -ConfidenceThreshold 0.7

This example uses GPU acceleration with higher confidence threshold of 0.7
for more accurate but fewer object detections.
#>
function Invoke-ImageObjectsUpdate {

    [CmdletBinding()]
    [Alias('imageobjectdetection')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The directory paths containing images to process'
        )]
        [string[]] $ImageDirectories = @('.\'),

        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Process images in specified directory and all ' +
                'subdirectories')
        )]
        [switch] $Recurse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Only process images that don't already have face " +
                'metadata files')
        )]
        [switch] $OnlyNew,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will retry previously failed image keyword ' +
                'updates')
        )]
        [switch] $RetryFailed,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The language for generated descriptions and ' +
                'keywords')
        )]
        [PSDefaultValue(Value = 'English')]
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
            'Zulu')]
        [string] $Language,
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
        [string] $LLMQueryType = 'SimpleIntelligence',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The model identifier or pattern to use for AI operations'
        )]
        [string] $Model,
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
        [switch] $SkipSession

    )
    begin {

        # process each directory provided
        $processedDirectories = @()
        foreach ($directory in $ImageDirectories) {
            # convert the possibly relative path to an absolute path for reliable access
            $path = GenXdev\Expand-Path $directory

            # ensure the target directory exists before proceeding with any operations
            if (-not [System.IO.Directory]::Exists($path)) {
                Microsoft.PowerShell.Utility\Write-Warning (
                    "The directory '$path' does not exist - skipping"
                )
                continue
            }

            $processedDirectories += $path
            # output verbose information about the processing directory
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Processing images for object detection in directory: $path"
            )
        }

        if ($processedDirectories.Count -eq 0) {
            Microsoft.PowerShell.Utility\Write-Warning "No valid directories found to process"
            return
        }
    }

    process {

        # process each validated directory
        foreach ($path in $processedDirectories) {
            Microsoft.PowerShell.Utility\Write-Verbose "Processing directory: $path"

            # retrieve all supported image files from the specified directory
            # applying recursion only if the recurse switch was provided
            # get all supported image files from the specified directory
            $imageTypes = @(".jpg", ".jpeg", ".png", ".gif", ".bmp", ".webp", ".tiff", ".tif")
            $findParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName "GenXdev\Find-Item" `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            # Add NoRecurse parameter if Recurse was not specified
            if (-not $Recurse) {
                $findParams['NoRecurse'] = $true
            }

            # Get all image files matching the criteria
            GenXdev\Find-Item @findParams -PassThru -SearchMask "$path\*" -Category Pictures | Microsoft.PowerShell.Core\Where-Object {
                $imageTypes.IndexOf(([IO.Path]::GetExtension($_.FullName).ToLowerInvariant())) -ge 0
            } | Microsoft.PowerShell.Core\ForEach-Object {

                try {

                    # store the full path to the current image for better readability
                    $image = $PSItem.FullName

                    # output verbose information about current image being processed
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Processing image for object detection: $image"
                    )

                    # construct path for the metadata file
                    $metadataFilePath = "$($image):objects.json"

                    # check if a metadata file already exists for this image
                    $fileExists = [System.IO.File]::Exists($metadataFilePath)

                    # check if we have valid existing content
                    $hasValidContent = $false
                    if ($fileExists) {
                        try {
                            $content = [System.IO.File]::ReadAllText($metadataFilePath)
                            $existingData = $content | Microsoft.PowerShell.Utility\ConvertFrom-Json
                            # Content is valid if success is true (successful processing)
                            $hasValidContent = $existingData.success -eq $true
                        }
                        catch {
                            # If JSON parsing fails, treat as invalid content
                            $hasValidContent = $false
                        }
                    }

                    # determine if we should process this image based on conditions
                    # Process if: not OnlyNew OR file doesn't exist OR (RetryFailed and no valid content)
                    if ((-not $OnlyNew) -or
                        (-not $fileExists) -or
                        ($RetryFailed -and (-not $hasValidContent))) {

                            try {
                                # obtain object detection data using ai detection technology
                                $params = GenXdev\Copy-IdenticalParamValues `
                                    -BoundParameters $PSBoundParameters `
                                    -FunctionName 'GenXdev\Get-ImageDetectedObjects' `
                                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                                        -Scope Local -ErrorAction SilentlyContinue)

                                $objectData = GenXdev\Get-ImageDetectedObjects `
                                    @params `
                                    -ImagePath $image

                                $NoDockerInitialize = $true;
                                # process the detection results into structured data format
                                $processedData = if ($objectData -and
                                    $objectData.success -and
                                    $objectData.predictions) {

                                    # extract predictions array from detection results
                                    $predictions = $objectData.predictions

                                    # create array of object labels from predictions
                                    $objectLabels = $predictions |
                                        Microsoft.PowerShell.Core\ForEach-Object {
                                            $_.label
                                        }

                                # group objects by label to get counts
                                $objectCounts = $objectLabels |
                                    Microsoft.PowerShell.Utility\Group-Object `
                                        -NoElement

                                    # construct structured data object with all metadata
                                    $data = @{
                                        success       = $true
                                        count         = $predictions.Count
                                        objects       = $objectLabels
                                        predictions   = $predictions
                                        object_counts = @{}
                                    }

                                    # populate object counts for each unique object type
                                    $objectCounts |
                                        Microsoft.PowerShell.Core\ForEach-Object {
                                            $data.object_counts[$_.Name] = $_.Count
                                        }

                                        $data
                                    } else {

                                        # create empty structure if no objects are detected
                                        @{
                                            success       = $true
                                            count         = 0
                                            objects       = @()
                                            predictions   = @()
                                            object_counts = @{}
                                        }
                                    }

                                    # convert processed data to json format for storage
                                    $objects = $processedData |
                                        Microsoft.PowerShell.Utility\ConvertTo-Json `
                                            -Depth 20 `
                                            -WarningAction SilentlyContinue

                                    # output verbose confirmation of detection analysis completion
                                    Microsoft.PowerShell.Utility\Write-Verbose (
                                        "Received object detection analysis for: $image"
                                    )

                                # re-parse and compress json for consistent formatting
                                $newContent = ($objects |
                                        Microsoft.PowerShell.Utility\ConvertFrom-Json |
                                        Microsoft.PowerShell.Utility\ConvertTo-Json `
                                            -Compress `
                                            -Depth 20 `
                                            -WarningAction SilentlyContinue)

                                # save the processed object data to metadata file
                                [System.IO.File]::WriteAllText($metadataFilePath, $newContent)

                                Microsoft.PowerShell.Utility\Write-Verbose (
                                    "Successfully saved object metadata for: $image"
                                )
                            }
                            catch {
                                # write failure JSON to prevent infinite retries without -RetryFailed
                                try {
                                    $failureData = @{
                                        success = $false
                                        count = 0
                                        objects = @()
                                        predictions = @()
                                        object_counts = @{}
                                        error = "Object detection failed: $($_.Exception.Message)"
                                    }

                                    $failureJson = $failureData | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 10
                                    [System.IO.File]::WriteAllText($metadataFilePath, $failureJson)
                                }
                                catch {
                                    # If we can't even write the failure JSON, just log it
                                    Microsoft.PowerShell.Utility\Write-Verbose "Failed to write error metadata for ${image}: $($_.Exception.Message)"
                                }

                                Microsoft.PowerShell.Utility\Write-Warning (
                                    "Failed to process objects for $image : $($_.Exception.Message)")
                            }
                    }
                }
                catch {
                    # log any errors that occur during image processing
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Error processing image '$image': " +
                        "$($_.Exception.Message)"
                    )
                }
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Invoke-ImageScenesUpdate.ps1
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
Updates scene classification metadata for image files in a specified directory.

.DESCRIPTION
This function processes images in a specified directory to classify scenes using
artificial intelligence. It creates JSON metadata files containing scene
classifications, confidence scores, and labels. The function supports batch
processing with configurable confidence thresholds and can optionally skip
existing metadata files or retry previously failed classifications.

.PARAMETER ImageDirectories
Array of directory paths containing images to process. Can be relative or
absolute paths. Default is the current directory.

.PARAMETER Recurse
If specified, processes images in the specified directory and all
subdirectories recursively.

.PARAMETER OnlyNew
If specified, only processes images that don't already have scene metadata
files or have empty metadata files.

.PARAMETER RetryFailed
If specified, retries processing previously failed images that have empty
metadata files or contain error indicators.

.PARAMETER NoDockerInitialize
Skip Docker initialization when this switch is used. Used when already called
by parent function to avoid redundant container setup.

.PARAMETER Force
Force rebuild of Docker container and remove existing data when this switch
is used. This will recreate the entire scene classification environment.

.PARAMETER UseGPU
Use GPU-accelerated version when this switch is used. Requires an NVIDIA GPU
with appropriate drivers and CUDA support.

.PARAMETER ContainerName
The name for the Docker container running the scene classification service.
Default is "deepstack_face_recognition".

.PARAMETER VolumeName
The name for the Docker volume for persistent storage of classification models
and data. Default is "deepstack_face_data".

.PARAMETER ServicePort
The port number for the DeepStack service to listen on. Must be between
1 and 65535. Default is 5000.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check before timing out.
Must be between 10 and 300 seconds. Default is 60.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts when waiting for service
startup. Must be between 1 and 10 seconds. Default is 3.

.PARAMETER ImageName
Custom Docker image name to use instead of the default DeepStack image.
Allows using alternative scene classification models or configurations.

.EXAMPLE
Invoke-ImageScenesUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse

Processes all images in C:\Photos and D:\Pictures and subdirectories for scene
classification.

.EXAMPLE
scenerecognition @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew

Uses alias to retry failed classifications and only process new images in
multiple directories.

.EXAMPLE
Invoke-ImageScenesUpdate -ImageDirectories ".\MyImages" -Force -UseGPU

Forces container rebuild and uses GPU acceleration for faster processing.

.EXAMPLE
Invoke-ImageScenesUpdate -ImageDirectories "C:\Photos" -ConfidenceThreshold 0.6 -Recurse

Processes all images recursively and only stores scene classifications with confidence >= 60%.

.NOTES
This function stores scene classification data in NTFS alternative data streams
as 'ImageFile.jpg:scenes.json' files. Each metadata file contains scene
classification results with confidence scores and scene labels from DeepStack's
365 scene categories including places like: abbey, airplane_cabin, beach,
forest, kitchen, office, etc.
###############################################################################>
function Invoke-ImageScenesUpdate {

    [CmdletBinding()]
    [Alias('imagescenedetection')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The directory paths containing images to process'
        )]
        [string[]] $ImageDirectories = @('.\'),

        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Process images in specified directory and all ' +
                'subdirectories')
        )]
        [switch] $Recurse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Only process images that don't already have face " +
                'metadata files')
        )]
        [switch] $OnlyNew,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will retry previously failed image keyword ' +
                'updates')
        )]
        [switch] $RetryFailed,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker volume for persistent storage'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Interval in seconds between health check ' +
                'attempts')
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Minimum confidence threshold (0.0-1.0) for ' +
                'object detection')
        )]
        [ValidateRange(0.0, 1.0)]
        [double] $ConfidenceThreshold = 0.7,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The language for generated descriptions and ' +
                'keywords')
        )]
        [PSDefaultValue(Value = 'English')]
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
            'Zulu')]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'Name or partial path of the model to initialize'
        )]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [string]$Model,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API key to use for the request'
        )]
        [string] $ApiKey = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indicates that LLM has no support for JSON schemas'
        )]
        [string] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Timeout in seconds for the request, defaults to ' +
                '24 hours')
        )]
        [int] $TimeoutSecond,
        [parameter(
            Mandatory = $false,
            HelpMessage = ('The directory containing face images organized ' +
                'by person folders. If not specified, uses the configured ' +
                'faces directory preference.')
        )]
        [string] $FacesDirectory,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip Docker initialization (used when already ' +
                'called by parent function)')
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force rebuild of Docker container and remove ' +
                'existing data')
        )]
        [Alias('ForceRebuild')]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use GPU-accelerated version (requires NVIDIA ' +
                'GPU)')
        )]
        [switch] $UseGPU,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Show Docker window during ' +
                'initialization')
        )]
        [switch]$ShowWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('PassThru to return structured objects instead ' +
                'of outputting to console')
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Detects changes in the faces directory and ' +
                're-registers faces if needed')
        )]
        [switch] $AutoUpdateFaces,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for ' +
                'AI preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session ' +
                'for AI preferences like Language, Image collections, etc')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Dont use alternative settings stored in ' +
                'session for AI preferences like Language, Image ' +
                'collections, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # process each directory provided
        $processedDirectories = @()
        foreach ($directory in $ImageDirectories) {
            # resolve the absolute path for the image directory
            $path = GenXdev\Expand-Path $directory

            # check if the specified directory exists
            if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $path -PathType Container)) {
                Microsoft.PowerShell.Utility\Write-Warning "Directory not found: $path - skipping"
                continue
            }

            $processedDirectories += $path
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Processing images in directory: $path"
            )
        }

        if ($processedDirectories.Count -eq 0) {
            Microsoft.PowerShell.Utility\Write-Warning "No valid directories found to process"
            return
        }
    }

    process {

        # process each validated directory
        foreach ($path in $processedDirectories) {
            Microsoft.PowerShell.Utility\Write-Verbose "Processing directory: $path"

            # discover all image files in the specified directory path, selectively
            # applying recursion only if the -Recurse switch was provided
            # get all supported image files from the specified directory
            $imageTypes = @(".jpg", ".jpeg", ".png", ".gif", ".bmp", ".webp", ".tiff", ".tif")
            $findParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName "GenXdev\Find-Item" `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            # Add NoRecurse parameter if Recurse was not specified
            if (-not $Recurse) {
                $findParams['NoRecurse'] = $true
            }

            # Get all image files matching the criteria
            GenXdev\Find-Item @findParams -PassThru -SearchMask "$path\*" -Category Pictures | Microsoft.PowerShell.Core\Where-Object {
                $imageTypes.IndexOf(([IO.Path]::GetExtension($_.FullName).ToLowerInvariant())) -ge 0
            } | Microsoft.PowerShell.Core\ForEach-Object {
                try {
                    # store the full path to the current image for better readability
                    $image = $PSItem.FullName
                    $metadataFilePath = "$($PSItem.FullName):scenes.json"
                    # check if metadata file exists
                    $fileExists = [System.IO.File]::Exists($metadataFilePath)
                    # check if we have valid existing content
                    $hasValidContent = $false
                    if ($fileExists) {
                        try {
                            $content = [System.IO.File]::ReadAllText($metadataFilePath)
                            $existingData = $content | Microsoft.PowerShell.Utility\ConvertFrom-Json
                            # Valid content means successful processing OR explicitly marked as unknown scene
                            $hasValidContent = ($existingData.success -eq $true) -or ($existingData.scene -eq 'unknown')
                        }
                        catch {
                            # If JSON parsing fails, treat as invalid content
                            $hasValidContent = $false
                        }
                    }

                    # determine if image should be processed based on options
                    # Process if: not OnlyNew OR file doesn't exist OR (RetryFailed and no valid content)
                    $shouldProcess = (-not $OnlyNew) -or
                                    (-not $fileExists) -or
                                    ($RetryFailed -and (-not $hasValidContent))

                    if ($shouldProcess) {

                        # obtain scene classification data using ai recognition technology
                        $params = GenXdev\Copy-IdenticalParamValues `
                            -FunctionName 'GenXdev\Get-ImageDetectedScenes' `
                            -BoundParameters $PSBoundParameters `
                            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

                        $sceneData = GenXdev\Get-ImageDetectedScenes `
                            @params `
                            -ImagePath $image

                        $NoDockerInitialize = $true;

                        # process the returned scene data into standardized format
                        $processedData = if ($sceneData -and
                            $sceneData.success -and
                            $sceneData.scene) {

                            # create standardized data structure for scene metadata
                            @{
                                success               = $sceneData.success
                                scene                 = $sceneData.scene
                                label                 = $sceneData.label
                                confidence            = $sceneData.confidence
                                confidence_percentage = $sceneData.confidence_percentage
                            }

                        } else {

                            # create error data structure when scene detection fails
                            @{
                                success               = $false
                                scene                 = 'unknown'
                                label                 = 'unknown'
                                confidence            = 0.0
                                confidence_percentage = 0.0
                                error                 = 'Scene classification failed'
                            }
                        }

                        # convert the processed data to json format for storage
                        $jsonData = $processedData |
                            Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress

                        # save the scene metadata to the alternative data stream
                        $null = [System.IO.File]::WriteAllText($metadataFilePath,
                            $jsonData)

                        # provide feedback on processing completion
                        if ($processedData.success) {

                            Microsoft.PowerShell.Utility\Write-Verbose (
                                "Scene classification completed for: $image - " +
                                "Scene: $($processedData.scene) " +
                                "(Confidence: $($processedData.confidence_percentage)%)")

                        } else {

                            Microsoft.PowerShell.Utility\Write-Verbose (
                                "Scene classification failed for: $image")
                        }

                    } else {

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Skipping already processed image: $image")
                    }
                }
                catch {
                    # Handle any errors in scene processing for individual images
                    Microsoft.PowerShell.Utility\Write-Warning (
                        "Failed to process scenes for $image : $($_.Exception.Message)")
                }
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Invoke-LLMBooleanEvaluation.ps1
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
Evaluates a statement using AI to determine if it's true or false.

.DESCRIPTION
This function uses AI models to evaluate statements and determine their truth
value. It can accept input directly through parameters, from the pipeline, or
from the system clipboard. The function returns a boolean result along with
confidence level and reasoning from the AI model.

.PARAMETER Text
The statement to evaluate. If not provided, the function will read from the
system clipboard.

.PARAMETER Instructions
Instructions to guide the AI model in evaluating the statement. By default, it
will determine if the statement is true or false.

.PARAMETER Attachments
Array of file paths to attach to the AI query for additional context.

.PARAMETER SetClipboard
When specified, copies the result back to the system clipboard after processing.

.PARAMETER Temperature
Temperature for response randomness (0.0-1.0). Controls creativity vs
determinism in AI responses.

.PARAMETER ImageDetail
Image detail level for visual processing. Valid values are low, medium, or high.

.PARAMETER IncludeThoughts
Include model's thoughts in output for debugging and transparency.

.PARAMETER DontAddThoughtsToHistory
Prevent model thoughts from being added to conversation history.

.PARAMETER ContinueLast
Continue from last conversation instead of starting fresh.

.PARAMETER Functions
Array of function definitions for AI tool use capabilities.

.PARAMETER ExposedCmdLets
Array of PowerShell command definitions to use as tools in AI operations.

.PARAMETER NoConfirmationToolFunctionNames
Array of command names that don't require confirmation before execution.

.PARAMETER Speak
Enable text-to-speech for AI responses.

.PARAMETER SpeakThoughts
Enable text-to-speech for AI thought responses.

.PARAMETER NoSessionCaching
Don't store session in session cache for privacy or debugging.

.PARAMETER AllowDefaultTools
Allow the AI to use default tools and capabilities.

.PARAMETER LLMQueryType
The type of LLM query to optimize for specific use cases.

.PARAMETER Model
The model identifier or pattern to use for AI operations.

.PARAMETER ApiEndpoint
The API endpoint URL for AI operations.

.PARAMETER ApiKey
The API key for authenticated AI operations.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"

.EXAMPLE
"Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation

.EXAMPLE
equalstrue "2 + 2 = 4"
###############################################################################>
function Invoke-LLMBooleanEvaluation {

    [CmdletBinding()]
    [OutputType([System.Boolean])]
    [Alias('equalstrue')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'The statement to evaluate'
        )]
        [string] $Text,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = ('Instructions for the AI model on how to evaluate ' +
                'the statement')
        )]
        [string] $Instructions = '',
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
        [GenXdev.Helpers.ExposedCmdletDefinition[]] $ExposedCmdLets = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Array of command names that don't require " +
                'confirmation')
        )]
        [Alias('NoConfirmationFor')]
        [string[]] $NoConfirmationToolFunctionNames = @(),
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
        [string] $LLMQueryType = 'Knowledge',
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
            HelpMessage = 'Copy the result to clipboard'
        )]
        [switch] $SetClipboard,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include model's thoughts in output"
        )]
        [switch] $IncludeThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't add model thoughts to conversation history"
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
            HelpMessage = 'Allow AI to use default tools and capabilities'
        )]
        [switch] $AllowDefaultTools,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for ' +
                'AI preferences')
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
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only markup blocks in the output'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter for specific types of markup blocks'
        )]
        [string[]] $MarkupBlocksTypeFilter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for audio response randomness'
        )]
        [double] $AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response generation'
        )]
        [double] $TemperatureResponse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Language code or name for the response'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use for processing'
        )]
        [int] $CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress from output'
        )]
        [string] $SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for processing'
        )]
        [int] $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence threshold for audio detection'
        )]
        [double] $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty for sequence generation'
        )]
        [double] $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold for output filtering'
        )]
        [double] $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for output filtering'
        )]
        [double] $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold for audio detection'
        )]
        [double] $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output'
        )]
        [switch] $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output for thoughts'
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable VOX (voice activation)'
        )]
        [switch] $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use desktop audio capture for input'
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do not use context in the query'
        )]
        [switch] $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use beam search sampling strategy'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only responses from the model'
        )]
        [switch] $OnlyResponses,
        [int] $MaxToolcallBackLength
    )

    begin {

        # prepend evaluation instructions to user instructions
        $Instructions = @"
Evaluate if the following statement is true or false.
Respond with a JSON object containing 'result' (boolean), 'confidence' (0.0 - 1.0) and 'reason' (string).
The returned 'reason' should explain as short as possible, why the statement was evaluated as true or false.
Only pure facts should have high confidence.
$Instructions
"@

        # define response format schema for boolean evaluation
        $responseSchema = @{
            type        = 'json_schema'
            json_schema = @{
                name   = 'boolean_evaluation_response'
                strict = 'true'
                schema = @{
                    type       = 'object'
                    properties = @{
                        result     = @{
                            type        = 'boolean'
                            description = ('The evaluation result: true if ' +
                                "the statement is true, false if it's false")
                        }
                        confidence = @{
                            type        = 'number'
                            minimum     = 0
                            maximum     = 1
                            description = ('Confidence level in the ' +
                                'evaluation (0-1)')
                        }
                        reason     = @{
                            type        = 'string'
                            description = ('Explanation for why the statement ' +
                                'was evaluated as true or false')
                        }
                    }
                    required   = @('result', 'confidence', 'reason')
                }
            }
        } |
            Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10

        # log initialization information
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Starting boolean evaluation with model: $Model"
        )

        # initialize result variables
        $script:result = $false
        $response = $null
    }


    process {

        # check if we should read from clipboard
        $isClipboardSource = [string]::IsNullOrWhiteSpace($Text)

        if ($isClipboardSource) {

            # log clipboard reading operation
            Microsoft.PowerShell.Utility\Write-Verbose (
                'No direct text input, reading from clipboard'
            )

            # get text from system clipboard
            $Text = Microsoft.PowerShell.Management\Get-Clipboard

            if ([string]::IsNullOrWhiteSpace($Text)) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'No text found in the clipboard.'
                )
                return
            }
        }

        try {

            # log processing start
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Processing statement for evaluation'
            )

            # copy parameters from current function to invoke-llmquery
            $invocationParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Invoke-LLMQuery'

            # configure query parameters for boolean evaluation
            $invocationParams.Query = $Text
            $invocationParams.Instructions = $Instructions
            $invocationParams.IncludeThoughts = $false
            $invocationParams.ResponseFormat = $responseSchema
            $invocationParams.Temperature = $Temperature

            if ($AllowDefaultTools) {

                # enable text prompt mode for tool usage
                $invocationParams.ChatMode = 'textprompt'
                $invocationParams.ChatOnce = $true
            }

            # get evaluation result from ai model
            $response = GenXdev\Invoke-LLMQuery @invocationParams |
                Microsoft.PowerShell.Utility\ConvertFrom-Json

            # extract boolean result from response
            $script:result = [bool]$response.result

            # create summary for verbose output
            $summary = ("`r`n`"$Text`"`r`n`r`nevaluates to be: " +
                "$($response.result)`r`nconfidence: $($response.confidence) " +
                "confidence.`r`nReason: $($response.reason)`r`n")

            # log evaluation summary
            Microsoft.PowerShell.Utility\Write-Verbose $summary
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error (
                "Failed to evaluate statement with AI model: $_"
            )
        }
    }

    end {

        if ($null -ne $response) {

            if ($SetClipboard) {

                # log clipboard operation
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Copying result to clipboard'
                )

                if ($IncludeThoughts) {

                    # create detailed summary with thoughts
                    $summary = ("`r`n`"$Text`"`r`n`r`nevaluates to be: " +
                        "$($response.result)`r`nconfidence: " +
                        "$($response.confidence) confidence.`r`nReason: " +
                        "$($response.reason)`r`n")

                    # copy summary to clipboard instead of piping
                    $null = Microsoft.PowerShell.Management\Set-Clipboard `
                        -Value $summary
                }
                else {

                    # copy boolean result to clipboard
                    $null = Microsoft.PowerShell.Management\Set-Clipboard `
                        -Value $script:result
                }
            }
        }

        # return the boolean result
        $script:result
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Invoke-LLMQuery.ps1
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
Sends queries to an OpenAI compatible Large Language Chat completion API and
processes responses.

.DESCRIPTION
This function sends queries to an OpenAI compatible Large Language Chat
completion API and processes responses. It supports text and image inputs,
handles tool function calls, and can operate in various chat modes including
text and audio.

The function provides comprehensive support for LLM interaction including:
- Text and image input processing
- Tool function calling and command execution
- Interactive chat modes (text and audio)
- Model initialization and configuration
- Response formatting and processing
- Session management and caching
- Window positioning and display control

.PARAMETER Query
The text query to send to the model. Can be empty for chat modes.

.PARAMETER Instructions
System instructions to provide context to the model.

.PARAMETER Attachments
Array of file paths to attach to the query. Supports images and text files.

.PARAMETER ResponseFormat
A JSON schema for the requested output format.

.PARAMETER Temperature
Controls response randomness (0.0-1.0). Lower values are more deterministic.

.PARAMETER Functions
Array of function definitions that the model can call.

.PARAMETER ExposedCmdLets
PowerShell commands to expose as tools to the model.

.PARAMETER NoConfirmationToolFunctionNames
Tool functions that don't require user confirmation.

.PARAMETER ImageDetail
Detail level for image processing (low/medium/high).

.PARAMETER IncludeThoughts
Include model's thought process in output.

.PARAMETER DontAddThoughtsToHistory
Exclude thought processes from conversation history.

.PARAMETER ContinueLast
Continue from the last conversation context.

.PARAMETER Speak
Enable text-to-speech for AI responses.

.PARAMETER SpeakThoughts
Enable text-to-speech for AI thought process.

.PARAMETER OutputMarkdownBlocksOnly
Only output markup block responses.

.PARAMETER MarkupBlocksTypeFilter
Only output markup blocks of the specified types.

.PARAMETER ChatMode
Enable interactive chat mode with specified input method.

.PARAMETER ChatOnce
Internal parameter to control chat mode invocation.

.PARAMETER NoSessionCaching
Don't store session in session cache.

.PARAMETER LLMQueryType
The type of LLM query to use for AI operations.

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

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7

Sends a simple mathematical query to the qwen model with specified temperature.

.EXAMPLE
qllm "What is 2+2?" -Model "qwen"

Uses the alias to send a query with default parameters.

.EXAMPLE
Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"

Sends a query with an image attachment for analysis.

.EXAMPLE
llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"

Starts an interactive text chat session with the specified model.
#>
function Invoke-LLMQuery {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Alias('qllm', 'llm')]

    param(
        [Parameter(
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
            Mandatory = $false,
            HelpMessage = 'A JSON schema for the requested output format'
        )]
        [string] $ResponseFormat,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response randomness (0.0-1.0)'
        )]
        [ValidateRange(-1, 1.0)]
        [double] $Temperature = -1,
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
        [GenXdev.Helpers.ExposedCmdletDefinition[]] $ExposedCmdLets,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Tool functions that don't require user " +
                'confirmation')
        )]
        [Alias('NoConfirmationFor')]
        [string[]] $NoConfirmationToolFunctionNames = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Suppresses Write-Host output during ' +
                'intermediate tool chain invocations')
        )]
        [switch] $QuietToolChainInvocations,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Image detail level'
        )]
        [ValidateSet('low', 'medium', 'high')]
        [string] $ImageDetail = 'low',
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
        [string] $LLMQueryType = 'SimpleIntelligence',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The model identifier or pattern to use for AI ' +
                'operations')
        )]
        [string] $Model,
        [int] $Gpu,
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
            HelpMessage = 'Temperature for audio generation randomness'
        )]
        [double] $AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response randomness (audio chat)'
        )]
        [double] $TemperatureResponse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Language code or name for audio chat'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use for audio chat'
        )]
        [int] $CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress certain outputs in audio chat'
        )]
        [string] $SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for audio chat'
        )]
        [int] $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence threshold for audio chat'
        )]
        [double] $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty for audio chat responses'
        )]
        [double] $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold for audio chat'
        )]
        [double] $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for audio chat'
        )]
        [double] $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold for audio chat'
        )]
        [double] $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do not speak audio responses'
        )]
        [switch] $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do not speak audio thoughts'
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable VOX (voice activation) for audio chat'
        )]
        [switch] $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use desktop audio capture for audio chat'
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable context for audio chat'
        )]
        [switch] $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use beam search sampling strategy for audio chat'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only responses (no intermediate output)'
        )]
        [switch] $OnlyResponses,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include model's thoughts in output"
        )]
        [switch] $IncludeThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Exclude thought processes from conversation ' +
                'history')
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
            Mandatory = $false,
            HelpMessage = ('Extracts the outermost JSON object or array ' +
                'from the response, discarding markdown fences and ' +
                'surrounding text. Automatically enabled when ' +
                '-ResponseFormat is set; use this switch to force it for ' +
                'plain-text calls expecting JSON output.')
        )]
        [switch] $FilterForJsonOutput,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will only output markup blocks of the ' +
                'specified types')
        )]
        [ValidateNotNull()]
        [string[]] $MarkupBlocksTypeFilter = @('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash'),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable chat mode'
        )]
        [Alias('chat')]
        [ValidateSet('none', 'textprompt', 'default audioinput device',
            'desktop audio')]
        [string] $ChatMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Used internally, to only invoke chat mode once ' +
                'after the llm invocation')
        )]
        [switch] $ChatOnce,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't store session in session cache"
        )]
        [switch] $NoSessionCaching,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for ' +
                'AI preferences')
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
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum length of tool callback output in characters. Output exceeding this length will be trimmed with a warning message. Default is 100000 characters.'
        )]
        [int] $MaxToolcallBackLength = 100000
    )

    begin {

        # store PSBoundParameters to avoid nested function issues
        $myPSBoundParameters = $PSBoundParameters
        Microsoft.PowerShell.Utility\Write-Verbose "PSBoundParameters keys: $($myPSBoundParameters.Keys -join ', ')"
        Microsoft.PowerShell.Utility\Write-Verbose "PSBoundParameters MaxToolcallBackLength: $($myPSBoundParameters['MaxToolcallBackLength'])"

        # copy identical parameter values for llm configuration
        $llmConfigParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $myPSBoundParameters `
            -FunctionName 'GenXdev\Get-AILLMSettings' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local -ErrorAction SilentlyContinue)
        Microsoft.PowerShell.Utility\Write-Verbose "llmConfigParams keys: $($llmConfigParams.Keys -join ', ')"
        Microsoft.PowerShell.Utility\Write-Verbose "llmConfigParams MaxToolcallBackLength: $($llmConfigParams['MaxToolcallBackLength'])"

        # get the llm settings configuration
        $llmConfig = GenXdev\Get-AILLMSettings @llmConfigParams
        Microsoft.PowerShell.Utility\Write-Verbose "LLM Config keys: $($llmConfig.Keys -join ', ')"
        Microsoft.PowerShell.Utility\Write-Verbose "LLM Config MaxToolcallBackLength: $($llmConfig['MaxToolcallBackLength'])"

        # apply configuration settings to local variables
        foreach ($param in $llmConfig.Keys) {

            # check if variable exists in local scope and skip MaxToolcallBackLength to preserve user-specified value
            if (($null -ne $llmConfig[$param]) -and ($param -ne 'MaxToolcallBackLength') -and (
                    Microsoft.PowerShell.Utility\Get-Variable -Name $param `
                        -Scope Local -ErrorAction SilentlyContinue)) {

                Microsoft.PowerShell.Utility\Write-Verbose "Setting $param to $($llmConfig[$param])"
                # set the variable value from configuration
                Microsoft.PowerShell.Utility\Set-Variable -Name $param `
                    -Value $llmConfig[$param] -Scope Local -Force
            }
        }
        Microsoft.PowerShell.Utility\Write-Verbose "MaxToolcallBackLength after config override: $MaxToolcallBackLength"

        # output verbose information about starting llm interaction
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting LLM interaction...'
        Microsoft.PowerShell.Utility\Write-Verbose "MaxToolcallBackLength parameter value: $MaxToolcallBackLength"

        # Ensure MaxToolcallBackLength has a reasonable minimum value
        if ($MaxToolcallBackLength -le 1000) {
            Microsoft.PowerShell.Utility\Write-Verbose "MaxToolcallBackLength was $MaxToolcallBackLength, forcing to 100000"
            $MaxToolcallBackLength = 100000
        }

        # convert markup block types to lowercase for case-insensitive comparison
        $markupBlocksTypeFilter = $MarkupBlocksTypeFilter |
            Microsoft.PowerShell.Core\ForEach-Object { $_.ToLowerInvariant() }


        $Model = $llmConfig.Model

        Microsoft.PowerShell.Utility\Write-Progress -PercentComplete 0 `
            -Activity 'Invoking LLM Query' `
            -Status "Model: ${Model}"

        # handle chat mode parameter
        if ($myPSBoundParameters.ContainsKey('ChatMode')) {

            # remove chat mode parameter from bound parameters
            $null = $myPSBoundParameters.Remove('ChatMode')

            # return early if chat mode is not none or chat once is not set
            if (($ChatMode -ne 'none' -or $ChatOnce)) {
                return;
            }
        }

        # convert tool functions if needed or use cached ones for continue last conversation
        if ($ContinueLast -and (-not ($ExposedCmdLets -and `
                        $ExposedCmdLets.Count -gt 0)) -and `
                $Global:LLMGlobalExposedCmdlets -and `
            ($Global:LLMGlobalExposedCmdlets.Count -gt 0)) {

            # take exposed cmdlets from global cache
            $ExposedCmdLets = $Global:LLMGlobalExposedCmdlets
        }

        # check if user has provided exposed cmdlet definitions
        if ($ExposedCmdLets -and $ExposedCmdLets.Count -gt 0) {

            # set global cache if session caching is enabled
            if (-not $NoSessionCaching) {

                # store exposed cmdlets in global cache
                $Global:LLMGlobalExposedCmdlets = $ExposedCmdLets
            }

            # output verbose information about converting tool functions
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Converting tool functions to LLM OpenAI API format'

            # convert exposed cmdlets to function definitions
            $functions = GenXdev\ConvertTo-LLMOpenAIApiFunctionDefinition `
                -ExposedCmdLets $ExposedCmdLets
        }

        # create messages list for conversation context
        $messages = [System.Collections.Generic.List[PSCustomObject]] (

            # check if global chat history exists and user wants to continue last conversation
            (($null -ne $Global:LLMChatHistory) -and ($ContinueLast)) ?

            # take messages from global cache
            $Global:LLMChatHistory :

            # otherwise create new empty list
            @()
        )

        # update global chat history if session caching is enabled
        if (-not $NoSessionCaching) {

            # store messages in global chat history
            $Global:LLMChatHistory = $messages
        }

        # Determine whether JSON output is expected, before the
        # NoSupportForJsonSchema block may null $ResponseFormat.
        $expectJsonOutput =
            (-not [string]::IsNullOrWhiteSpace($ResponseFormat))

        # If the LLM lacks native json_schema support, generate a correct
        # example from the actual schema and inject it into the system
        # instructions. Null $ResponseFormat so the downstream
        # response_format payload field is skipped — the format is
        # already in the system prompt.
        if ($expectJsonOutput -and
            ($NoSupportForJsonSchema -or
                ($llmConfig.NoSupportForJsonSchema -eq $true))) {

            try {
                $example = GenXdev\Get-JsonExampleFromSchema `
                    -Schema $ResponseFormat

                $Instructions += @"

`n`n===== JSON OUTPUT FORMAT =====
Respond with ONLY valid JSON. No markdown fences, no commentary.
${example}
"@

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'LLM lacks native JSON schema support. ' +
                    'Injected schema-driven example into system instructions.')
            }
            catch {
                # Schema parse failed — use a simple fallback
                $Instructions += "`n`nRespond with ONLY valid JSON. No markdown fences, no commentary.`n"
            }

            # Null ResponseFormat so the downstream payload code
            # (which sets response_format) uses $expectJsonOutput as
            # guard instead.  Save the schema so Get-LLMJsonOutput
            # can still use it for guided extraction later.
            $responseSchema = $ResponseFormat
            $ResponseFormat = $null
        }

        # create system instruction message
        $newMessage = @{
            role    = 'system'
            content = $Instructions
        }

        # add system message if not already present to avoid duplicates
        $newMessageJson = $newMessage |
            Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress `
                -WarningAction SilentlyContinue -ErrorAction SilentlyContinue

        # initialize duplicate check flag
        $isDuplicate = $false

        # check for duplicate messages in existing history
        foreach ($msg in $messages) {

            # convert message to json for comparison
            if (($msg | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 `
                        -Compress -WarningAction SilentlyContinue `
                        -ErrorAction SilentlyContinue) -eq $newMessageJson) {

                # mark as duplicate
                $isDuplicate = $true
                break
            }
        }

        # add system message if not duplicate
        if (-not $isDuplicate) {

            # output verbose information about system instructions
            Microsoft.PowerShell.Utility\Write-Verbose `
                "System Instructions: $Instructions"

            # add system message to messages list
            $null = $messages.Add($newMessage)
        }

        # prepare api endpoint and headers
        $apiUrl = 'http://localhost:1234/v1/chat/completions'

        # use custom api endpoint if provided
        if (-not [string]::IsNullOrWhiteSpace($ApiEndpoint)) {

            # set api url to custom endpoint
            $apiUrl = $ApiEndpoint
        }

        # set up http headers including authorization if api key provided
        $headers = @{ 'Content-Type' = 'application/json' }

        # add authorization header if api key is provided
        if (-not [string]::IsNullOrWhiteSpace($ApiKey)) {

            # set bearer token authorization header
            $headers.'Authorization' = "Bearer $ApiKey"
        }

        # output verbose information about conversation initialization
        Microsoft.PowerShell.Utility\Write-Verbose `
            'Initialized conversation with system instructions'
    }

    process {

        # handle chat once mode for internal parameter control
        if ($ChatOnce) {

            # copy identical parameter values for text chat invocation
            $invocationArgs = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $myPSBoundParameters `
                -FunctionName 'GenXdev\New-LLMTextChat' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local -ErrorAction SilentlyContinue)

            # invoke text chat and return result
            return (GenXdev\New-LLMTextChat @invocationArgs)
        }

        # output verbose information about request parameters
        Microsoft.PowerShell.Utility\Write-Verbose 'Sending request to LLM with:'
        Microsoft.PowerShell.Utility\Write-Verbose "Model: $Model"
        Microsoft.PowerShell.Utility\Write-Verbose "Query: $Query"
        Microsoft.PowerShell.Utility\Write-Verbose "Temperature: $Temperature"

        # handle different chat modes
        switch ($ChatMode) {

            'textprompt' {

                # copy identical parameter values for text chat invocation
                $invocationArgs = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $myPSBoundParameters `
                    -FunctionName 'GenXdev\New-LLMTextChat' `
                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                        -Scope Local -ErrorAction SilentlyContinue)

                # invoke text chat and return result
                return (GenXdev\New-LLMTextChat @invocationArgs)
            }
            'default audioinput device' {

                # copy identical parameter values for audio chat invocation
                $invocationArgs = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $myPSBoundParameters `
                    -FunctionName 'GenXdev\New-LLMAudioChat' `
                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                        -Scope Local -ErrorAction SilentlyContinue)

                # invoke audio chat and return result
                return (GenXdev\New-LLMAudioChat @invocationArgs)
            }
            'desktop audio' {

                # enable desktop audio for audio chat
                $desktopAudio = $true

                # copy identical parameter values for audio chat invocation
                $invocationArgs = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $myPSBoundParameters `
                    -FunctionName 'GenXdev\New-LLMAudioChat' `
                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                        -Scope Local -ErrorAction SilentlyContinue)

                # invoke audio chat and return result
                return (GenXdev\New-LLMAudioChat @invocationArgs)
            }
        }

        # process attachments if provided
        foreach ($attachment in $Attachments) {

            # expand the file path to handle relative paths
            $filePath = GenXdev\Expand-Path $attachment

            # get file extension for mime type determination
            $fileExtension = [System.IO.Path]::GetExtension($filePath).ToLowerInvariant()

            # initialize mime type and text flag
            $mimeType = 'application/octet-stream'
            $isText = $false

            # determine mime type and text flag based on file extension
            switch ($fileExtension) {
                '.jpg' {
                    $mimeType = 'image/jpeg'
                    $isText = $false
                    break
                }
                '.jpg' {
                    $mimeType = 'image/jpeg'
                    $isText = $false
                    break
                }
                '.jpeg' {
                    $mimeType = 'image/jpeg'
                    $isText = $false
                    break
                }
                '.png' {
                    $mimeType = 'image/png'
                    $isText = $false
                    break
                }
                '.gif' {
                    $mimeType = 'image/gif'
                    $isText = $false
                    break
                }
                '.bmp' {
                    $mimeType = 'image/bmp'
                    $isText = $false
                    break
                }
                '.webp' {
                    $mimeType = 'image/webp'
                    $isText = $false
                    break
                }
                '.tiff' {
                    $mimeType = 'image/tiff'
                    $isText = $false
                    break
                }
                '.tif' {
                    $mimeType = 'image/tiff'
                    $isText = $false
                    break
                }
                '.png' {
                    $mimeType = 'image/png'
                    $isText = $false
                    break
                }
                '.gif' {
                    $mimeType = 'image/gif'
                    $isText = $false
                    break
                }
                '.bmp' {
                    $mimeType = 'image/bmp'
                    $isText = $false
                    break
                }
                '.tiff' {
                    $mimeType = 'image/tiff'
                    $isText = $false
                    break
                }
                '.mp4' {
                    $mimeType = 'video/mp4'
                    $isText = $false
                    break
                }
                '.avi' {
                    $mimeType = 'video/avi'
                    $isText = $false
                    break;
                }
                '.mov' {
                    $mimeType = 'video/quicktime'
                    $isText = $false
                    break;
                }
                '.webm' {
                    $mimeType = 'video/webm'
                    $isText = $false
                    break;
                }
                '.mkv' {
                    $mimeType = 'video/x-matroska'
                    $isText = $false
                    break;
                }
                '.flv' {
                    $mimeType = 'video/x-flv'
                    $isText = $false
                    break;
                }
                '.wmv' {
                    $mimeType = 'video/x-ms-wmv'
                    $isText = $false
                    break;
                }
                '.mpg' {
                    $mimeType = 'video/mpeg'
                    $isText = $false
                    break;
                }
                '.mpeg' {
                    $mimeType = 'video/mpeg'
                    $isText = $false
                    break;
                }
                '.3gp' {
                    $mimeType = 'video/3gpp'
                    $isText = $false
                    break;
                }
                '.3g2' {
                    $mimeType = 'video/3gpp2'
                    $isText = $false
                    break;
                }
                '.m4v' {
                    $mimeType = 'video/x-m4v'
                    $isText = $false
                    break;
                }
                '.webp' {
                    $mimeType = 'image/webp'
                    $isText = $false
                    break;
                }
                '.heic' {
                    $mimeType = 'image/heic'
                    $isText = $false
                    break;
                }
                '.heif' {
                    $mimeType = 'image/heif'
                    $isText = $false
                    break;
                }
                '.avif' {
                    $mimeType = 'image/avif'
                    $isText = $false
                    break;
                }
                '.jxl' {
                    $mimeType = 'image/jxl'
                    $isText = $false
                    break;
                }
                '.ps1' {
                    $mimeType = 'text/x-powershell'
                    $isText = $true
                    break;
                }
                '.psm1' {
                    $mimeType = 'text/x-powershell'
                    $isText = $true
                    break;
                }
                '.psd1' {
                    $mimeType = 'text/x-powershell'
                    $isText = $true
                    break;
                }
                '.sh' {
                    $mimeType = 'application/x-sh'
                    $isText = $true
                    break;
                }
                '.bat' {
                    $mimeType = 'application/x-msdos-program'
                    $isText = $true
                    break;
                }
                '.cmd' {
                    $mimeType = 'application/x-msdos-program'
                    $isText = $true
                    break;
                }
                '.py' {
                    $mimeType = 'text/x-python'
                    $isText = $true
                    break;
                }
                '.rb' {
                    $mimeType = 'application/x-ruby'
                    $isText = $true
                    break;
                }
                '.txt' {
                    $mimeType = 'text/plain'
                    $isText = $true
                    break;
                }
                '.pl' {
                    $mimeType = 'text/x-perl'
                    $isText = $true
                    break;
                }
                '.php' {
                    $mimeType = 'application/x-httpd-php'
                    $isText = $true
                    break;
                }
                '.pdf' {
                    $mimeType = 'application/pdf'
                    $isText = $false
                    break;
                }
                '.js' {
                    $mimeType = 'application/javascript'
                    $isText = $true
                    break;
                }
                '.ts' {
                    $mimeType = 'application/typescript'
                    $isText = $true
                    break;
                }
                '.java' {
                    $mimeType = 'text/x-java-source'
                    $isText = $true
                    break;
                }
                '.c' {
                    $mimeType = 'text/x-c'
                    $isText = $true
                    break;
                }
                '.cpp' {
                    $mimeType = 'text/x-c++src'
                    $isText = $true
                    break;
                }
                '.cs' {
                    $mimeType = 'text/x-csharp'
                    $isText = $true
                    break;
                }
                '.go' {
                    $mimeType = 'text/x-go'
                    $isText = $true
                    break;
                }
                '.rs' {
                    $mimeType = 'text/x-rustsrc'
                    $isText = $true
                    break;
                }
                '.swift' {
                    $mimeType = 'text/x-swift'
                    $isText = $true
                    break;
                }
                '.kt' {
                    $mimeType = 'text/x-kotlin'
                    $isText = $true
                    break;
                }
                '.scala' {
                    $mimeType = 'text/x-scala'
                    $isText = $true
                    break;
                }
                '.r' {
                    $mimeType = 'text/x-r'
                    $isText = $true
                    break;
                }
                '.sql' {
                    $mimeType = 'application/sql'
                    $isText = $true
                    break;
                }
                '.html' {
                    $mimeType = 'text/html'
                    $isText = $true
                    break;
                }
                '.css' {
                    $mimeType = 'text/css'
                    $isText = $true
                    break;
                }
                '.xml' {
                    $mimeType = 'application/xml'
                    $isText = $true
                    break;
                }
                '.json' {
                    $mimeType = 'application/json'
                    $isText = $true
                    break;
                }
                '.yaml' {
                    $mimeType = 'application/x-yaml'
                    $isText = $true
                    break;
                }
                '.md' {
                    $mimeType = 'text/markdown'
                    $isText = $true
                    break;
                }
                default {
                    $mimeType = 'image/jpeg'
                    $isText = $false
                    break;
                }
            }

            # internal function to get base64 encoded image data with optional scaling
            function getImageBase64Data($filePath, $ImageDetail) {

                # try to load image using system drawing
                $image = $null
                try {
                    $image = [System.Drawing.Image]::FromFile($filePath)
                }
                catch {
                    $image = $null
                }

                # if image loading failed, return raw file bytes as base64
                if ($null -eq $image) {
                    return [System.Convert]::ToBase64String([IO.File]::ReadAllBytes($filePath))
                }

                # get maximum dimension of the image
                $maxImageDimension = [Math]::Max($image.Width, $image.Height);
                $maxDimension = $maxImageDimension;

                # determine target dimension based on image detail level
                switch ($ImageDetail) {
                    'low' {
                        $maxDimension = 800;
                        break;
                    }
                    'medium' {
                        $maxDimension = 1600;
                        break;
                    }
                }

                # scale image if it exceeds the maximum dimension
                try {
                    if ($maxDimension -lt $maxImageDimension) {

                        # calculate new dimensions maintaining aspect ratio
                        $newWidth = $image.Width;
                        $newHeight = $image.Height;
                        if ($image.Width -gt $image.Height) {
                            $newWidth = $maxDimension
                            $newHeight = [math]::Round($image.Height * ($maxDimension / $image.Width))
                        }
                        else {
                            $newHeight = $maxDimension
                            $newWidth = [math]::Round($image.Width * ($maxDimension / $image.Height))
                        }

                        # create scaled bitmap and draw resized image
                        $scaledImage = Microsoft.PowerShell.Utility\New-Object System.Drawing.Bitmap $newWidth, $newHeight
                        $graphics = [System.Drawing.Graphics]::FromImage($scaledImage)
                        $graphics.DrawImage($image, 0, 0, $newWidth, $newHeight)
                        $graphics.Dispose();
                    }
                }
                catch {
                    # ignore scaling errors and use original image
                }

                # save image to memory stream and convert to base64
                $memoryStream = Microsoft.PowerShell.Utility\New-Object System.IO.MemoryStream
                $image.Save($memoryStream, $image.RawFormat)
                $imageData = $memoryStream.ToArray()
                $memoryStream.Close()
                $image.Dispose()
                return [System.Convert]::ToBase64String($imageData)
            }

            # get base64 encoded data for the attachment
            [string] $base64Data = getImageBase64Data $filePath $ImageDetail

            # handle text files differently than binary files
            if ($isText) {

                $newMessage = @{
                    role    = 'user'
                    content = $Query
                    file    = @{
                        name         = [IO.Path]::GetFileName($filePath)
                        content_type = $mimeType
                        bytes        = "data:$mimeType;base64,$base64Data"
                    }
                }
                $newMessageJson = $newMessage | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress -WarningAction SilentlyContinue -ErrorAction SilentlyContinue
                $isDuplicate = $false
                foreach ($msg in $messages) {
                    if (($msg | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress) -eq $newMessageJson) {
                        $isDuplicate = $true
                        break
                    }
                }
                if (-not $isDuplicate) {

                    $null = $messages.Add($newMessage)
                }
            }
            else {

                $newMessage = @{
                    role    = 'user'
                    content = @(
                        @{
                            type      = 'image_url'
                            image_url = @{
                                url    = "data:$mimeType;base64,$base64Data"
                                detail = "$ImageDetail"
                            }
                        }
                    )
                }
                $newMessageJson = $newMessage | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress -WarningAction SilentlyContinue -ErrorAction SilentlyContinue
                $isDuplicate = $false
                foreach ($msg in $messages) {
                    if (($msg | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress -WarningAction SilentlyContinue -ErrorAction SilentlyContinue) -eq $newMessageJson) {
                        $isDuplicate = $true
                        break
                    }
                }
                if (-not $isDuplicate) {

                    $null = $messages.Add($newMessage)
                }
            }
        }

        # prepare api payload

        $payload = @{
            stream   = $false
            messages = $messages
        }

        if ($Temperature -ge 0) {

            $payload.temperature = $Temperature
        }
        if ($expectJsonOutput) {
            try {
                if ($NoSupportForJsonSchema -or ($llmConfig.NoSupportForJsonSchema -eq $true)) {
                    # json_object mode is widely supported (DeepSeek, etc.)
                    $payload.response_format = @{ type = 'json_object' }
                }
                else {
                    # Normal path: Use native JSON schema/object support
                    $payload.response_format = $ResponseFormat | Microsoft.PowerShell.Utility\ConvertFrom-Json
                }
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Verbose 'Invalid response format schema. Ignoring.'
            }
        }

        if (-not [string]::IsNullOrWhiteSpace($Model)) {

            $payload.model = $Model
        }

        if (($Functions -and $Functions.Count -gt 0) -or ($ExposedCmdLets -and $ExposedCmdLets.Count -gt 0)) {

            if ($llmConfig.NoSupportForToolCalls -eq $true) {
                $modelName = if ([string]::IsNullOrWhiteSpace($Model)) { 'the selected model' } else { $Model }
                $endpointName = if ([string]::IsNullOrWhiteSpace($ApiEndpoint)) { 'the selected endpoint' } else { $ApiEndpoint }
                throw "The selected LLM model/endpoint does not support tool calling. Remove tool-enabled functions or switch to a compatible model/endpoint. Model: $modelName. Endpoint: $endpointName"
            }

            # maintain array structure, create new array with required properties
            $functionsWithoutCallbacks = @(
                $Functions | Microsoft.PowerShell.Core\ForEach-Object {
                    $cleanProperties = @{}
                    foreach ($prop in $_.function.parameters.properties.GetEnumerator()) {
                        $cleanProp = @{}
                        foreach ($key in $prop.Value.Keys) {
                            if ($key -ne 'powershell_type') {
                                $cleanProp[$key] = $prop.Value[$key]
                            }
                        }
                        $cleanProperties[$prop.Key] = $cleanProp
                    }

                    [PSCustomObject] @{
                        type     = $_.type
                        function = [PSCustomObject] @{
                            name        = $_.function.name
                            description = $_.function.description
                            parameters  = @{
                                type       = 'object'
                                properties = [PSCustomObject] $cleanProperties
                                required   = $_.function.parameters.required
                            }
                        }
                    }
                }
            )

            $payload.tools = $functionsWithoutCallbacks
            $payload.function_call = 'auto'
        }

        if (-not [string]::IsNullOrWhiteSpace($Query)) {

            # add main query message
            $newMsg = @{
                role    = 'user'
                content = $Query;
            }

            $null = $messages.Add($newMsg)
        }

        # JSON schema fallback is now handled before the system message
        # is created (see begin block). If $ResponseFormat is still set
        # here, the LLM has native json_schema support — nothing to do.

        # convert payload to json
        $json = $payload | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 60 -Compress -WarningAction SilentlyContinue -ErrorAction SilentlyContinue
        $bytes = [System.Text.Encoding]::UTF8.GetBytes($json)
        Microsoft.PowerShell.Utility\Write-Verbose "Querying LLM model '$Model' with parameters:"
        Microsoft.PowerShell.Utility\Write-Verbose $($payload | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 7 -WarningAction SilentlyContinue -ErrorAction SilentlyContinue)
        Microsoft.PowerShell.Utility\Write-Verbose "Request endpoint: $apiUrl"
        Microsoft.PowerShell.Utility\Write-Verbose "Request method: POST"
        Microsoft.PowerShell.Utility\Write-Verbose "Request timeout seconds: $TimeoutSeconds"
        Microsoft.PowerShell.Utility\Write-Verbose "Request message count: $($messages.Count)"
        Microsoft.PowerShell.Utility\Write-Verbose "Request includes tools: $($payload.ContainsKey('tools'))"
        Microsoft.PowerShell.Utility\Write-Verbose "Request has authorization header: $(-not [string]::IsNullOrWhiteSpace($ApiKey))"

        try {
            # send request with long timeouts
            $response = Microsoft.PowerShell.Utility\Invoke-RestMethod -Uri $apiUrl `
                -Verbose:$false `
                -ProgressAction Continue `
                -Method Post `
                -Body $bytes `
                -Headers $headers `
                -OperationTimeoutSeconds $TimeoutSeconds `
                -ConnectionTimeoutSeconds $TimeoutSeconds

            Microsoft.PowerShell.Utility\Write-Verbose "REST call completed successfully. Response type: $($response.GetType().FullName)"
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Verbose "Invoke-RestMethod failed. Exception: $($_.Exception.Message)"
            if ($null -ne $_.ErrorDetails) {
                Microsoft.PowerShell.Utility\Write-Verbose "Invoke-RestMethod error details: $($_.ErrorDetails | Microsoft.PowerShell.Utility\Out-String)"
            }
            throw
        }

        # First handle tool calls if present
        if ($response.choices -and ($response.choices[0].message.tool_calls)) {

            # Add assistant's tool calls to history
            $newMsg = $response.choices[0].message
            $newMsgJson = $newMsg | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress -WarningAction SilentlyContinue -ErrorAction SilentlyContinue

            # Only add if it's not a duplicate of the last message
            if ($messages.Count -eq 0 -or
                ($messages[-1] | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress -WarningAction SilentlyContinue -ErrorAction SilentlyContinue) -ne $newMsgJson) {
                $messages.Add($newMsg) | Microsoft.PowerShell.Core\Out-Null
            }

            # Process all tool calls sequentially
            foreach ($toolCallCO in $response.choices[0].message.tool_calls) {

                $toolCall = $toolCallCO | GenXdev\ConvertTo-HashTable

                Microsoft.PowerShell.Utility\Write-Verbose "Tool call detected: $($toolCall.function.name)"

                # Format parameters as PowerShell command line style
                $foundArguments = ($toolCall.function.arguments | Microsoft.PowerShell.Utility\ConvertFrom-Json)
                $paramLine = $toolCall.function.arguments | Microsoft.PowerShell.Utility\ConvertFrom-Json |
                    Microsoft.PowerShell.Utility\Get-Member -MemberType NoteProperty |
                    Microsoft.PowerShell.Core\ForEach-Object {
                        $name = $_.Name
                        $value = $foundArguments.$name
                        "-$name $($value | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 3 -WarningAction SilentlyContinue)"
                    } | Microsoft.PowerShell.Utility\Join-String -Separator ' '

                Microsoft.PowerShell.Utility\Write-Progress -PercentComplete 50 `
                    -Activity 'Executing toolcall' `
                    -Status "$($toolCall.function.name) ${paramLine}"

                Microsoft.PowerShell.Utility\Write-Verbose "PS> $($toolCall.function.name) $paramLine"
                if (-not ($Verbose -or $VerbosePreference -eq 'Continue') -and
                    -not $QuietToolChainInvocations) {

                    Microsoft.PowerShell.Utility\Write-Host "PS> $($toolCall.function.name) $paramLine" -ForegroundColor Cyan
                }

                [GenXdev.Helpers.ExposedToolCallInvocationResult] $invocationResult = GenXdev\Invoke-CommandFromToolCall `
                    -ToolCall:$toolCall `
                    -Functions:$Functions `
                    -ExposedCmdLets:$ExposedCmdLets `
                    -NoConfirmationToolFunctionNames:$NoConfirmationToolFunctionNames | Microsoft.PowerShell.Utility\Select-Object -First 1

                if ((-not ($Verbose -or $VerbosePreference -eq 'Continue')) -and
                    -not $QuietToolChainInvocations) {

                    Microsoft.PowerShell.Utility\Write-Host "$($invocationResult.Output | Microsoft.PowerShell.Core\ForEach-Object { if ($_ -is [string]) { $_ } else { $_ | Microsoft.PowerShell.Utility\Out-String } })" -ForegroundColor Green
                }

                Microsoft.PowerShell.Utility\Write-Verbose "Tool function result: $($invocationResult | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 3 -Compress)"

                if (-not $invocationResult.CommandExposed) {

                    # Add tool response to history
                    $null = $messages.Add(@{
                            role         = 'tool'
                            name         = $toolCall.function.name
                            content      = $invocationResult.Error ? $invocationResult.Error : $invocationResult.Reason
                            tool_call_id = $toolCall.id
                            id           = $toolCall.id
                            arguments    = $toolCall.function.arguments | Microsoft.PowerShell.Utility\ConvertFrom-Json
                        })
                }
                else {
                    # Check if the cmdlet is configured to return text only
                    $isTextOnlyOutput = $invocationResult.ExposedCmdLet -and $invocationResult.ExposedCmdLet.OutputText -eq $true

                    if ($isTextOnlyOutput) {
                        # For text-only output, convert everything to string first using Out-String
                        Microsoft.PowerShell.Utility\Write-Verbose "Tool '$($toolCall.function.name)' raw output type: $($invocationResult.Output.GetType().FullName)"
                        Microsoft.PowerShell.Utility\Write-Verbose "Tool '$($toolCall.function.name)' raw output count: $(if ($invocationResult.Output -is [Array]) { $invocationResult.Output.Count } else { '1 (not array)' })"
                        $outputText = "$(($invocationResult.Output | Microsoft.PowerShell.Utility\Out-String))".Trim()
                        Microsoft.PowerShell.Utility\Write-Verbose "Tool '$($toolCall.function.name)' text output length: $($outputText.Length) characters (max: $MaxToolcallBackLength)"

                        if ($outputText.Length -gt $MaxToolcallBackLength) {
                            $originalLength = $outputText.Length
                            $trimMessage = "TRIMMED OUTPUT (check parameter use!) invalid json on purpose, AI Agent: don't retry same function without check parameters! >>"
                            $maxContentLength = $MaxToolcallBackLength - $trimMessage.Length

                            Microsoft.PowerShell.Utility\Write-Verbose "Tool '$($toolCall.function.name)' MaxToolcallBackLength: $MaxToolcallBackLength, trimMessage.Length: $($trimMessage.Length), maxContentLength: $maxContentLength"

                            # Handle output trimming with proper length validation
                            if ($maxContentLength -le 0) {
                                Microsoft.PowerShell.Utility\Write-Warning "MaxToolcallBackLength ($MaxToolcallBackLength) is too small for trim message ($($trimMessage.Length) chars)"
                                $outputText = "Output too large to display"
                            }
                            else {
                                $outputText = $trimMessage + $outputText.Substring(0, $maxContentLength)
                            }
                            Microsoft.PowerShell.Utility\Write-Verbose "Tool '$($toolCall.function.name)' output was trimmed from $originalLength to $($outputText.Length) characters"
                        }

                        # Add tool response to history
                        $null = $messages.Add(@{
                                role         = 'tool'
                                name         = $toolCall.function.name
                                content      = $outputText
                                content_type = $invocationResult.OutputType
                                tool_call_id = $toolCall.id
                                id           = $toolCall.id
                                arguments    = $toolCall.function.arguments | Microsoft.PowerShell.Utility\ConvertFrom-Json
                            })
                    }
                    else {
                        # For structured output, serialize with smart depth reduction
                        try {
                            # Start with the specified depth and progressively reduce if too long
                            $targetDepth = $invocationResult.ExposedCmdLet.JsonDepth ?? 10
                            $parsedOutput = $null
                            $finalDepth = $targetDepth

                            # Try progressively smaller depths until it fits or we reach minimum depth of 2
                            $foundValidDepth = $false
                            while ($finalDepth -ge 2) {
                                $parsedOutput = $invocationResult.Output | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth $finalDepth -Compress -ErrorAction SilentlyContinue

                                if ($parsedOutput.Length -le $MaxToolcallBackLength) {
                                    # Found a depth that works
                                    $foundValidDepth = $true
                                    if ($finalDepth -lt $targetDepth) {
                                        Microsoft.PowerShell.Utility\Write-Verbose "Tool '$($toolCall.function.name)' JSON output depth reduced from $targetDepth to $finalDepth to fit within $MaxToolcallBackLength characters"
                                    }
                                    break
                                }
                                $finalDepth--
                            }

                            # If we found a depth that works, use it
                            if ($foundValidDepth) {
                                $content = $parsedOutput
                            }
                            else {
                                # If even depth 2 is too long, trim the output
                                $originalLength = $parsedOutput.Length
                                $trimMessage = "TRIMMED JSON OUTPUT (check parameter use!) incomplete json data, AI Agent: don't retry same function without checking parameters! >>"
                                $maxContentLength = $MaxToolcallBackLength - $trimMessage.Length
                                Microsoft.PowerShell.Utility\Write-Verbose "Tool '$($toolCall.function.name)' JSON MaxToolcallBackLength: $MaxToolcallBackLength, trimMessage.Length: $($trimMessage.Length), maxContentLength: $maxContentLength"

                                if ($maxContentLength -le 0) {
                                    Microsoft.PowerShell.Utility\Write-Warning "MaxToolcallBackLength ($MaxToolcallBackLength) is too small for JSON trim message ($($trimMessage.Length) chars)"
                                    $content = "JSON output too large to display"
                                }
                                else {
                                    $content = $trimMessage + $parsedOutput.Substring(0, $maxContentLength)
                                }
                                Microsoft.PowerShell.Utility\Write-Verbose "Tool '$($toolCall.function.name)' JSON output was trimmed from $originalLength to $($content.Length) characters (even at minimum depth 2)"
                            }
                        }
                        catch {
                            # If JSON conversion fails, fall back to text with trimming
                            $outputText = "$($invocationResult.Output)".Trim()
                            if ($outputText.Length -gt $MaxToolcallBackLength) {
                                $originalLength = $outputText.Length
                                $trimMessage = "TRIMMED OUTPUT (check parameter use!) invalid json on purpose, AI Agent: don't retry same function without check parameters! >>"
                                $maxContentLength = $MaxToolcallBackLength - $trimMessage.Length
                                Microsoft.PowerShell.Utility\Write-Verbose "Tool '$($toolCall.function.name)' fallback MaxToolcallBackLength: $MaxToolcallBackLength, trimMessage.Length: $($trimMessage.Length), maxContentLength: $maxContentLength"

                                if ($maxContentLength -le 0) {
                                    Microsoft.PowerShell.Utility\Write-Warning "MaxToolcallBackLength ($MaxToolcallBackLength) is too small for fallback trim message ($($trimMessage.Length) chars)"
                                    $outputText = "Fallback output too large to display"
                                }
                                else {
                                    $outputText = $trimMessage + $outputText.Substring(0, $maxContentLength)
                                }
                                Microsoft.PowerShell.Utility\Write-Verbose "Tool '$($toolCall.function.name)' fallback output was trimmed from $originalLength to $($outputText.Length) characters"
                            }
                            $content = $outputText
                        }

                        # Add tool response to history
                        $null = $messages.Add(@{
                                role         = 'tool'
                                name         = $toolCall.function.name
                                content      = $content
                                content_type = $invocationResult.OutputType
                                tool_call_id = $toolCall.id
                                id           = $toolCall.id
                                arguments    = $toolCall.function.arguments | Microsoft.PowerShell.Utility\ConvertFrom-Json
                            })
                    }
                }
            }

            Microsoft.PowerShell.Utility\Write-Verbose 'Continuing conversation after tool responses'

            if (-not $myPSBoundParameters.ContainsKey('ContinueLast')) {

                $myPSBoundParameters.Add('ContinueLast', $true)
            }
            else {

                $myPSBoundParameters['ContinueLast'] = $true
            }

            if (-not $myPSBoundParameters.ContainsKey('Query')) {

                $myPSBoundParameters.Add('Query', '')
            }
            else {

                $myPSBoundParameters['Query'] = ''
            }

            GenXdev\Invoke-LLMQuery @myPSBoundParameters

            return;
        }

        # Handle regular message content if no tool calls
        [System.Collections.Generic.List[object]] $finalOutput = @()

        foreach ($msg in $response.choices.message) {

            $content = $msg.content

            # Extract and process embedded tool calls
            # Try multiple formats that LLMs might use for tool function calls

            # Format 1: <tool_call>{...}</tool_call>
            while ($content -match '<tool_call>\s*({[^}]+})\s*</tool_call>') {
                $toolCallJson = $matches[1]
                try {
                    # parse the json into a tool call object
                    $toolCall = $toolCallJson |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction SilentlyContinue -WarningAction SilentlyContinue |
                        GenXdev\ConvertTo-HashTable

                    # verify this has the expected properties for a function call
                    if ($toolCall.function -and $toolCall.function.name) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Tool call detected (Format 1): $($toolCall.function.name)"

                        # invoke the command from the tool call
                        [GenXdev.Helpers.ExposedToolCallInvocationResult] $invocationResult = GenXdev\Invoke-CommandFromToolCall `
                            -ToolCall:$toolCall `
                            -Functions:$Functions `
                            -ExposedCmdLets:$ExposedCmdLets `
                            -NoConfirmationToolFunctionNames:$NoConfirmationToolFunctionNames |
                            Microsoft.PowerShell.Utility\Select-Object -First 1

                        # create replacement text with the function result
                        $replacement = "**Function Call Result:** $($invocationResult.Output)"

                        # replace the original tool call with the result
                        $content = $content.Replace($matches[0], $replacement)
                    }
                }
                catch {
                    # if we can't process it, replace with error message
                    $content = $content.Replace($matches[0], "Error processing tool call: $($_.Exception.Message)")
                }
            }

            # Format 2: [FUNCTION_CALL]{...}[/FUNCTION_CALL]
            while ($content -match '\[FUNCTION_CALL\]\s*({[^}]+})\s*\[/FUNCTION_CALL\]') {
                $toolCallJson = $matches[1]
                try {
                    # parse the json into a tool call object
                    $toolCall = $toolCallJson |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction SilentlyContinue -WarningAction SilentlyContinue |
                        GenXdev\ConvertTo-HashTable

                    # verify this has the expected properties for a function call
                    if ($toolCall.function -and $toolCall.function.name) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Tool call detected (Format 2): $($toolCall.function.name)"

                        # invoke the command from the tool call
                        [GenXdev.Helpers.ExposedToolCallInvocationResult] $invocationResult = GenXdev\Invoke-CommandFromToolCall `
                            -ToolCall:$toolCall `
                            -Functions:$Functions `
                            -ExposedCmdLets:$ExposedCmdLets `
                            -NoConfirmationToolFunctionNames:$NoConfirmationToolFunctionNames |
                            Microsoft.PowerShell.Utility\Select-Object -First 1

                        # create replacement text with the function result
                        $replacement = "**Function Call Result:** $($invocationResult.Output)"

                        # replace the original tool call with the result
                        $content = $content.Replace($matches[0], $replacement)
                    }
                }
                catch {
                    # if we can't process it, replace with error message
                    $content = $content.Replace($matches[0], "Error processing tool call: $($_.Exception.Message)")
                }
            }

            # Format 3: <function>{...}</function>
            while ($content -match '<function>\s*({[^}]+})\s*</function>') {
                $toolCallJson = $matches[1]
                try {
                    # parse the json into a tool call object
                    $toolCall = $toolCallJson |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction SilentlyContinue -WarningAction SilentlyContinue |
                        GenXdev\ConvertTo-HashTable

                    # verify this has the expected properties for a function call
                    if ($toolCall.function -and $toolCall.function.name) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Tool call detected (Format 3): $($toolCall.function.name)"

                        # invoke the command from the tool call
                        [GenXdev.Helpers.ExposedToolCallInvocationResult] $invocationResult = GenXdev\Invoke-CommandFromToolCall `
                            -ToolCall:$toolCall `
                            -Functions:$Functions `
                            -ExposedCmdLets:$ExposedCmdLets `
                            -NoConfirmationToolFunctionNames:$NoConfirmationToolFunctionNames |
                            Microsoft.PowerShell.Utility\Select-Object -First 1

                        # create replacement text with the function result
                        $replacement = "**Function Call Result:** $($invocationResult.Output)"

                        # replace the original tool call with the result
                        $content = $content.Replace($matches[0], $replacement)
                    }
                }
                catch {
                    # if we can't process it, replace with error message
                    $content = $content.Replace($matches[0], "Error processing tool call: $($_.Exception.Message)")
                }
            }

            # Format 4: Check for code blocks with function calls
            while ($content -match '```(?:json)?\s*({[\s\S]*?"function"[\s\S]*?})\s*```') {
                $potentialJson = $matches[1].Trim()
                try {
                    # Try to parse as a function call
                    $toolCall = $potentialJson |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction SilentlyContinue -WarningAction SilentlyContinue |
                        GenXdev\ConvertTo-HashTable

                    # Verify this is actually a function call with the expected properties
                    if ($toolCall.function -and $toolCall.function.name) {
                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Tool call detected (Format 4): $($toolCall.function.name)")

                        # invoke the command from the tool call
                        [GenXdev.Helpers.ExposedToolCallInvocationResult] $invocationResult = GenXdev\Invoke-CommandFromToolCall `
                            -ToolCall:$toolCall `
                            -Functions:$Functions `
                            -ExposedCmdLets:$ExposedCmdLets `
                            -NoConfirmationToolFunctionNames:$NoConfirmationToolFunctionNames |
                            Microsoft.PowerShell.Utility\Select-Object -First 1

                        # create replacement text with the function result
                        $replacement = "**Function Call Result:** $($invocationResult.Output)"

                        # replace the original tool call with the result
                        $content = $content.Replace($matches[0], $replacement)
                    }
                }
                catch {
                    # not a valid function call, leave it as is
                    # only replace if we're sure it's a function call
                }
            }

            # update chat history with assistant's response
            # convert message to json and back to create a copy
            $messageForHistory = $msg |
                Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -WarningAction SilentlyContinue |
                Microsoft.PowerShell.Utility\ConvertFrom-Json -WarningAction SilentlyContinue

            # decide whether to include thoughts in history based on parameter
            $messageForHistory.content = $DontAddThoughtsToHistory ?
            [regex]::Replace($content, '<think>.*?</think>', '') :
            $content

            # add the message to conversation history
            $null = $messages.Add($messageForHistory)

            # process content if not empty
            if (-not [string]::IsNullOrWhiteSpace($content)) {

                # if including thoughts, add raw content to output
                if ($IncludeThoughts) {
                    $null = $finalOutput.Add($content)
                }

                # extract and process thought content between <think> tags
                $i = $content.IndexOf('<think>')
                if ($i -ge 0) {
                    # skip the opening tag
                    $i += 7
                    $i2 = $content.IndexOf('</think>')
                    if ($i2 -ge 0) {
                        # extract thought content between tags
                        $thoughts = $content.Substring($i, $i2 - $i)
                        Microsoft.PowerShell.Utility\Write-Verbose "LLM Thoughts: $thoughts"

                        # display thoughts if not including them in output
                        if (-not $IncludeThoughts) {
                            Microsoft.PowerShell.Utility\Write-Host $thoughts -ForegroundColor Yellow
                        }

                        # speak thoughts if enabled
                        if ($SpeakThoughts) {
                            $null = GenXdev\Start-TextToSpeech $thoughts
                        }
                    }
                }

                # Remove <think> patterns
                $cleaned = [regex]::Replace($content, '<think>.*?</think>', '')

                # Best-effort JSON extraction (when JSON schema was
                # requested or caller forced it via FilterForJsonOutput).
                # Skipped for plain-text responses to avoid corrupting
                # content.
                if ($expectJsonOutput -or $FilterForJsonOutput) {
                    $getJsonParams = @{
                        Text           = $cleaned
                    }
                    if ($responseSchema) {
                        $getJsonParams.ResponseFormat = $responseSchema
                    }
                    $cleaned = GenXdev\Get-LLMJsonOutput @getJsonParams
                }

                Microsoft.PowerShell.Utility\Write-Verbose "LLM Response: $cleaned"

                if ($OutputMarkdownBlocksOnly) {

                    $null = $finalOutput.RemoveAt($finalOutput.Count - 1);

                    $cleaned = "`n$cleaned`n"
                    $i = $cleaned.IndexOf("`n``````");
                    while ($i -ge 0) {

                        $i += 4;
                        $i2 = $cleaned.IndexOf("`n", $i);
                        $name = $cleaned.Substring($i, $i2 - $i).Trim().ToLowerInvariant();

                        $i = $i2 + 1;
                        $i2 = $cleaned.IndexOf("`n``````", $i);
                        if ($i2 -ge 0) {

                            $codeBlock = $cleaned.Substring($i, $i2 - $i);
                            $codeBlock = $json.Trim();
                            if ($name -in $MarkupBlocksTypeFilter) {

                                $null = $finalOutput.Add($codeBlock);
                            }
                        }

                        $i = $cleaned.IndexOf("`n``````", $i2 + 4);
                    }
                }
                else {

                    $null = $finalOutput.Add($cleaned)

                    if ($Speak) {

                        $null = GenXdev\Start-TextToSpeech $cleaned
                    }
                }
            }
        }
        # output all collected results
        $finalOutput | Microsoft.PowerShell.Core\ForEach-Object {

            # write each output object to the pipeline
            Microsoft.PowerShell.Utility\Write-Output $_
        }

        # output verbose information about conversation history update
        Microsoft.PowerShell.Utility\Write-Verbose 'Conversation history updated'
    }

    end {
        Microsoft.PowerShell.Utility\Write-Progress -Completed `
            -Activity 'Invoking LLM Query' `
            -Status 'Completed'
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Invoke-LLMStringListEvaluation.ps1
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
Extracts or generates a list of relevant strings from input text using AI
analysis.

.DESCRIPTION
This function uses AI models to analyze input text and extract or generate a
list of relevant strings. It can process text to identify key points, extract
items from lists, or generate related concepts. Input can be provided directly
through parameters, from the pipeline, or from the system clipboard. The
function returns a string array and optionally copies results to clipboard.

.PARAMETER Text
The text to analyze and extract strings from. If not provided, the function
will read from the system clipboard.

.PARAMETER Instructions
Optional instructions to guide the AI model in generating the string list. By
default, it will extract key points, items, or relevant concepts from the
input text.

.PARAMETER Attachments
Array of file paths to attach to the AI query. These files will be included
in the context for analysis.

.PARAMETER Temperature
Temperature for response randomness (0.0-1.0). Lower values produce more
deterministic responses, higher values increase creativity.

.PARAMETER ImageDetail
Image detail level for image processing. Valid values are "low", "medium",
or "high".

.PARAMETER Functions
Array of function definitions that can be called by the AI model during
processing.

.PARAMETER ExposedCmdLets
Array of PowerShell command definitions to use as tools that the AI can
invoke.

.PARAMETER NoConfirmationToolFunctionNames
Array of command names that don't require confirmation before execution.

.PARAMETER LLMQueryType
The type of LLM query to perform. Valid values are "SimpleIntelligence",
"Knowledge", "Pictures", "TextTranslation", "Coding", or "ToolUse".

.PARAMETER Model
The model identifier or pattern to use for AI operations.

.PARAMETER ApiEndpoint
The API endpoint URL for AI operations.

.PARAMETER ApiKey
The API key for authenticated AI operations.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SetClipboard
When specified, copies the resulting string list back to the system clipboard
after processing.

.PARAMETER IncludeThoughts
Include model's thoughts in output.

.PARAMETER DontAddThoughtsToHistory
Don't add model's thoughts to conversation history.

.PARAMETER ContinueLast
Continue from last conversation.

.PARAMETER Speak
Enable text-to-speech for AI responses.

.PARAMETER SpeakThoughts
Enable text-to-speech for AI thought responses.

.PARAMETER NoSessionCaching
Don't store session in session cache.

.PARAMETER AllowDefaultTools
Enable default tools for the AI model.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")

.EXAMPLE
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

.EXAMPLE
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
###############################################################################>
function Invoke-LLMStringListEvaluation {

    [CmdletBinding()]
    [OutputType([string[]])]
    [Alias('getlist')]
    [Alias('getstring')]

    param (
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'The text to analyze and extract strings from'
        )]
        [string] $Text,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = ('Instructions for the AI model on how to generate ' +
                'the string list')
        )]
        [string] $Instructions = '',
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
        [GenXdev.Helpers.ExposedCmdletDefinition[]] $ExposedCmdLets = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Array of command names that don't require " +
                'confirmation')
        )]
        [Alias('NoConfirmationFor')]
        [string[]] $NoConfirmationToolFunctionNames = @(),
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
        [string] $LLMQueryType = 'Knowledge',
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
            HelpMessage = 'Copy the result to clipboard'
        )]
        [switch] $SetClipboard,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include model's thoughts in output"
        )]
        [switch] $IncludeThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't add model's thoughts to conversation history"
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
            HelpMessage = 'Enable default tools for the AI model'
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only markup blocks in the output.'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter for specific types of markup blocks.'
        )]
        [string[]] $MarkupBlocksTypeFilter,
        [Parameter(
            HelpMessage = 'Temperature for audio response randomness.'
        )]
        [double] $AudioTemperature,
        [Parameter(
            HelpMessage = 'Temperature for text response randomness.'
        )]
        [double] $TemperatureResponse,
        [Parameter(
            HelpMessage = 'Language code or identifier for the response.'
        )]
        [string] $Language,
        [Parameter(
            HelpMessage = 'Number of CPU threads to use.'
        )]
        [int] $CpuThreads,
        [Parameter(
            HelpMessage = 'Regular expression to suppress certain outputs.'
        )]
        [string] $SuppressRegex,
        [Parameter(
            HelpMessage = 'Audio context size for processing.'
        )]
        [int] $AudioContextSize,
        [Parameter(
            HelpMessage = 'Silence threshold for audio detection.'
        )]
        [double] $SilenceThreshold,
        [Parameter(
            HelpMessage = 'Length penalty for sequence generation.'
        )]
        [double] $LengthPenalty,
        [Parameter(
            HelpMessage = 'Entropy threshold for output filtering.'
        )]
        [double] $EntropyThreshold,
        [Parameter(
            HelpMessage = 'Log probability threshold for output filtering.'
        )]
        [double] $LogProbThreshold,
        [Parameter(
            HelpMessage = 'No speech threshold for audio detection.'
        )]
        [double] $NoSpeechThreshold,
        [Parameter(
            HelpMessage = 'Disable speech output.'
        )]
        [switch] $DontSpeak,
        [Parameter(
            HelpMessage = 'Disable speech output for thoughts.'
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            HelpMessage = 'Disable VOX (voice activation).'
        )]
        [switch] $NoVOX,
        [Parameter(
            HelpMessage = 'Use desktop audio capture.'
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            HelpMessage = 'Disable context usage.'
        )]
        [switch] $NoContext,
        [Parameter(
            HelpMessage = 'Use beam search sampling strategy.'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            HelpMessage = 'Return only responses.'
        )]
        [switch] $OnlyResponses,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum callback length for tool calls.'
        )]
        [int] $MaxToolcallBackLength
    )

    begin {

        # construct enhanced instructions for ai model to return structured data
        $instructions = @"
Analyze the users prompt and return a list of relevant strings.
Respond with a JSON object containing 'items' (array of strings).
The returned items should be concise and relevant to the input text.
$Instructions
"@

        # define response format schema for string list to ensure structured output
        $responseSchema = @{
            type        = 'json_schema'
            json_schema = @{
                name   = 'string_list_response'
                strict = 'true'
                schema = @{
                    type       = 'object'
                    properties = @{
                        items = @{
                            type        = 'array'
                            items       = @{
                                type = 'string'
                            }
                            description = 'Array of extracted or generated strings'
                        }
                    }
                    required   = @('items')
                }
            }
        } |
            Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10

        # log the start of string list evaluation process
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Starting string list evaluation with model: $Model"
        )

        # initialize script-scoped variables for storing results
        $script:result = @()

        $response = $null
    }

    process {

        # check if we should read from clipboard when no text parameter provided
        $isClipboardSource = [string]::IsNullOrWhiteSpace($Text)

        if ($isClipboardSource) {

            # log that we're reading from clipboard due to no direct text input
            Microsoft.PowerShell.Utility\Write-Verbose (
                'No direct text input, reading from clipboard'
            )

            # retrieve text content from system clipboard
            $Text = Microsoft.PowerShell.Management\Get-Clipboard

            # validate that clipboard contains text data
            if ([string]::IsNullOrWhiteSpace($Text)) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'No text found in the clipboard.'
                )

                return
            }
        }

        try {

            # log the start of text processing for string extraction
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Processing text for string list extraction'
            )

            # copy matching parameters from current function to target function
            $invocationParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Invoke-LLMQuery'

            # set specific parameters for the llm query invocation
            $invocationParams.Query = $Text

            $invocationParams.Instructions = $instructions

            $invocationParams.IncludeThoughts = $false

            $invocationParams.ResponseFormat = $responseSchema

            $invocationParams.Temperature = $Temperature

            # configure chat mode for tools when default tools are allowed
            if ($AllowDefaultTools) {

                $invocationParams.ChatMode = 'textprompt'

                $invocationParams.ChatOnce = $true
            }

            # invoke ai model to get evaluation result and parse json response
            $response = GenXdev\Invoke-LLMQuery @invocationParams |
                Microsoft.PowerShell.Utility\ConvertFrom-Json

            # store the extracted items array in script scope for return
            $script:result = $response.items

            # construct summary text for verbose logging
            $summary = ("`r`n`"$Text`"`r`n`r`nExtracted items:`r`n" +
                ($response.items -join "`r`n"))

            # log the processing summary with extracted items
            Microsoft.PowerShell.Utility\Write-Verbose $summary
        }
        catch {

            # log error when ai model fails to extract string list
            Microsoft.PowerShell.Utility\Write-Error (
                "Failed to extract string list with AI model: $_"
            )
        }
    }

    end {

        # check if we have a valid response before processing clipboard operations
        if ($null -ne $response) {

            # copy results to clipboard if requested by user
            if ($SetClipboard) {

                # log clipboard copy operation
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Copying result to clipboard'
                )

                # copy summary with thoughts or just results based on preference
                if ($IncludeThoughts) {

                    $null = $summary |
                        Microsoft.PowerShell.Management\Set-Clipboard
                }
                else {

                    $null = $script:result |
                        Microsoft.PowerShell.Management\Set-Clipboard
                }
            }
        }

        # return the extracted string array to the pipeline
        $script:result
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Invoke-LLMTextTransformation.ps1
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
Transforms text using AI-powered processing.

.DESCRIPTION
This function processes input text using AI models to perform various
transformations such as spell checking, adding emoticons, or any other text
enhancement specified through instructions. It can accept input directly
through parameters, from the pipeline, or from the system clipboard.

.PARAMETER Text
The input text to transform. If not provided, the function will read from the
system clipboard. Multiple lines of text are supported.

.PARAMETER Instructions
Instructions to guide the AI model in transforming the text. By default, it
will perform spell checking and grammar correction.

.PARAMETER Attachments
Array of file paths to attach to the AI processing request.

.PARAMETER SetClipboard
When specified, copies the transformed text back to the system clipboard after
processing is complete.

.PARAMETER Temperature
Temperature for response randomness, ranging from 0.0 to 1.0.

.PARAMETER ImageDetail
Image detail level for image processing operations.

.PARAMETER DontAddThoughtsToHistory
Include model's thoughts in output history.

.PARAMETER ContinueLast
Continue from last conversation in the AI session.

.PARAMETER Functions
Array of function definitions for AI tool usage.

.PARAMETER ExposedCmdLets
Array of PowerShell command definitions to use as tools.

.PARAMETER NoConfirmationToolFunctionNames
Array of command names that don't require confirmation.

.PARAMETER Speak
Enable text-to-speech for AI responses.

.PARAMETER SpeakThoughts
Enable text-to-speech for AI thought responses.

.PARAMETER NoSessionCaching
Don't store session in session cache.

.PARAMETER AllowDefaultTools
Allow the use of default AI tools during processing.

.PARAMETER LLMQueryType
The type of LLM query to perform.

.PARAMETER Model
The model identifier or pattern to use for AI operations.

.PARAMETER ApiEndpoint
The API endpoint URL for AI operations.

.PARAMETER ApiKey
The API key for authenticated AI operations.

.PARAMETER TimeoutSeconds
The timeout in seconds for AI operations.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Invoke-LLMTextTransformation -Text "Hello, hwo are you todey?" `
    -Instructions "Fix spelling errors" -SetClipboard

.EXAMPLE
"Time to celerbate!" | Invoke-LLMTextTransformation `
    -Instructions "Add celebratory emoticons"

.EXAMPLE
spellcheck "This is a sentance with erors"
#>
function Invoke-LLMTextTransformation {

    [CmdletBinding()]
    [OutputType([System.String])]
    [Alias('spellcheck')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'The text to transform'
        )]
        [string]$Text,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = ('Instructions for the AI model on how to transform ' +
                'the text')
        )]
        [string]$Instructions = ('Check and correct any spelling or grammar ' +
            'errors in the text. Return the corrected text without any ' +
            'additional comments or explanations.'),
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
        [string] $LLMQueryType = 'SimpleIntelligence',
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
            HelpMessage = 'Temperature for audio response randomness (passed to LLMQuery)'
        )]
        [double] $AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response generation (passed to LLMQuery)'
        )]
        [double] $TemperatureResponse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Language code or name for processing (passed to LLMQuery)'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use (passed to LLMQuery)'
        )]
        [int] $CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress output (passed to LLMQuery)'
        )]
        [string] $SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for processing (passed to LLMQuery)'
        )]
        [int] $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence threshold for audio detection (passed to LLMQuery)'
        )]
        [double] $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty for sequence generation (passed to LLMQuery)'
        )]
        [double] $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold for output filtering (passed to LLMQuery)'
        )]
        [double] $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for output filtering (passed to LLMQuery)'
        )]
        [double] $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold for audio detection (passed to LLMQuery)'
        )]
        [double] $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output (passed to LLMQuery)'
        )]
        [switch] $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable speech output for thoughts (passed to LLMQuery)'
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable VOX (voice activation) (passed to LLMQuery)'
        )]
        [switch] $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use desktop audio capture (passed to LLMQuery)'
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable context usage (passed to LLMQuery)'
        )]
        [switch] $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable beam search sampling strategy (passed to LLMQuery)'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return only responses (passed to LLMQuery)'
        )]
        [switch] $OnlyResponses,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Output only markup blocks (passed to LLMQuery)'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter for markup block types (passed to LLMQuery)'
        )]
        [string[]] $MarkupBlocksTypeFilter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum tool callback length (passed to LLMQuery)'
        )]
        [int] $MaxToolcallBackLength
    )

    begin {

        # create string builder for efficient text accumulation
        $resultBuilder = [System.Text.StringBuilder]::new()

        # define response format schema for structured AI output
        $responseSchema = @{
            type        = 'json_schema'
            json_schema = @{
                name   = 'text_transformation_response'
                strict = $true
                schema = @{
                    type       = 'object'
                    properties = @{
                        response = @{
                            type        = 'string'
                            description = 'The transformed text output'
                        }
                    }
                    required   = @('response')
                }
            }
        } | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10

        # log the start of transformation process with model information
        Microsoft.PowerShell.Utility\Write-Verbose `
            "Starting text transformation with model: $Model"
    }


    process {

        # check if we should read from clipboard when no text is provided
        $isClipboardSource = [string]::IsNullOrWhiteSpace($Text)

        if ($isClipboardSource) {

            # log that we are reading from clipboard
            Microsoft.PowerShell.Utility\Write-Verbose `
                'No direct text input, reading from clipboard'

            # read text content from system clipboard
            $Text = Microsoft.PowerShell.Management\Get-Clipboard

            if ([string]::IsNullOrWhiteSpace($Text)) {

                # warn user when clipboard is empty
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'No text found in the clipboard.'
                return
            }
        }

        try {

            # log start of text processing
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Processing text block for transformation'

            # copy matching parameters to invoke ai query function
            $invocationParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Invoke-LLMQuery'

            # set required parameters for ai query invocation
            $invocationParams.Query = $Text
            $invocationParams.Instructions = $Instructions
            $invocationParams.IncludeThoughts = $false
            $invocationParams.ResponseFormat = $responseSchema
            $invocationParams.Temperature = $Temperature

            if ($AllowDefaultTools) {

                # configure chat mode for tool usage
                $invocationParams.ChatMode = 'textprompt'
                $invocationParams.ChatOnce = $true
            }

            # invoke ai query and extract response from json
            $enhancedText = (GenXdev\Invoke-LLMQuery @invocationParams |
                    Microsoft.PowerShell.Utility\ConvertFrom-Json).response

            # append enhanced text to result builder with line break
            $null = $resultBuilder.Append("$enhancedText`r`n")
        }
        catch {

            # log error when ai processing fails
            Microsoft.PowerShell.Utility\Write-Error `
                "Failed to process text with AI model: $_"
        }
    }

    end {

        # get final combined result from string builder
        $finalResult = $resultBuilder.ToString()

        if ($SetClipboard) {

            # log clipboard operation
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Copying enhanced text to clipboard'

            # copy transformed text to system clipboard
            Microsoft.PowerShell.Management\Set-Clipboard -Value $finalResult
        }

        # return enhanced text to pipeline
        $finalResult
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Invoke-QueryImageContent.ps1
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
Analyzes image content using AI vision capabilities

.DESCRIPTION
Processes images using AI vision capabilities to analyze
content and answer queries about the image. The function supports various
analysis parameters including temperature control for response randomness and
token limits for output length.

.PARAMETER Query
Specifies the question or prompt to analyze the image content. This drives the
AI's analysis focus and determines what aspects of the image to examine.

.PARAMETER ImagePath
The path to the image file for analysis. Supports both relative and absolute
paths. The file must exist and be accessible.

.PARAMETER Instructions
System instructions for the model to follow during the analysis.

.PARAMETER ResponseFormat
A JSON schema that specifies the requested output format for the response.

.PARAMETER Temperature
Controls the randomness in the AI's response generation. Lower values (closer
to 0) produce more focused and deterministic responses, while higher values
increase creativity and variability. Valid range: 0.0 to 1.0.

.PARAMETER ImageDetail
Sets the detail level for image analysis.
Valid values are "low", "medium", or "high".

.PARAMETER LLMQueryType
The type of LLM query to perform. Defaults to "Pictures" for image analysis.

.PARAMETER Model
The model identifier or pattern to use for AI operations.

.PARAMETER ApiEndpoint
The API endpoint URL for AI operations.

.PARAMETER ApiKey
The API key for authenticated AI operations.

.PARAMETER TimeoutSeconds
The timeout in seconds for AI operations.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.PARAMETER IncludeThoughts
If specified, includes the model's thoughts in the output.

.PARAMETER ForceConsent
Force a consent prompt even if a preference is already set for ImageSharp
package installation, overriding any saved consent preferences.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation and set a persistent
preference flag for ImageSharp packages, bypassing interactive consent prompts.

.EXAMPLE
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01

Analyzes an image with specific temperature and token limits.

.EXAMPLE
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

.EXAMPLE
Query-Image "Describe this image" "C:\Images\photo.jpg"

Simple image analysis using alias and positional parameters.
#>
function Invoke-QueryImageContent {

    [CmdletBinding()]

    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'The query string for analyzing the image'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Query,
        [Parameter(
            Mandatory = $true,
            Position = 1,
            HelpMessage = 'Path to the image file for analysis'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImagePath,
        [Parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = 'System instructions for the model'
        )]
        [string] $Instructions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'A JSON schema for the requested output format'
        )]
        [string] $ResponseFormat = $null,
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
        [string] $ImageDetail = 'high',
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
        [string] $LLMQueryType = 'Pictures',
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
            HelpMessage = "Include model's thoughts in output"
        )]
        [switch] $IncludeThoughts,
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Specifies the functions to use for the AI operation.'
        )]
        [string[]] $Functions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Specifies the exposed cmdlets for the AI operation.'
        )]
        [string[]] $ExposedCmdLets,
        [Alias('NoConfirmationFor')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Specifies tool function names that do not require confirmation.'
        )]
        [string[]] $NoConfirmationToolFunctionNames,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for audio response generation.'
        )]
        [double] $AudioTemperature,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for the response generation.'
        )]
        [double] $TemperatureResponse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The language for generated descriptions and ' +
                'keywords')
        )]
        [PSDefaultValue(Value = 'English')]
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
            'Zulu')]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use.'
        )]
        [int] $CpuThreads,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Regular expression to suppress output.'
        )]
        [string] $SuppressRegex,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio context size for processing.'
        )]
        [int] $AudioContextSize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence threshold for audio processing.'
        )]
        [double] $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Length penalty for sequence generation.'
        )]
        [double] $LengthPenalty,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Entropy threshold for output filtering.'
        )]
        [double] $EntropyThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Log probability threshold for output filtering.'
        )]
        [double] $LogProbThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'No speech threshold for audio detection.'
        )]
        [double] $NoSpeechThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'If specified, do not speak the output.'
        )]
        [switch] $DontSpeak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "If specified, do not speak the model's thoughts."
        )]
        [switch] $DontSpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'If specified, disables VOX.'
        )]
        [switch] $NoVOX,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'If specified, use desktop audio capture.'
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'If specified, disables context usage.'
        )]
        [switch] $NoContext,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'If specified, use beam search sampling strategy.'
        )]
        [switch] $WithBeamSearchSamplingStrategy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'If specified, only return responses.'
        )]
        [switch] $OnlyResponses,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "If specified, don't add thoughts to the history."
        )]
        [switch] $DontAddThoughtsToHistory,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Continue the last conversation.'
        )]
        [switch] $ContinueLast,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Speak the output.'
        )]
        [switch] $Speak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Speak the model's thoughts."
        )]
        [switch] $SpeakThoughts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Output only markup blocks.'
        )]
        [switch] $OutputMarkdownBlocksOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter for markup block types.'
        )]
        [string[]] $MarkupBlocksTypeFilter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'If specified, only chat once.'
        )]
        [switch] $ChatOnce,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable session caching.'
        )]
        [switch] $NoSessionCaching,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum callback length for tool calls.'
        )]
        [int] $MaxToolcallBackLength,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force a consent prompt even if preference is set for ImageSharp package installation.'
        )]
        [switch] $ForceConsent,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software installation and set persistent flag for ImageSharp packages.'
        )]
        [switch] $ConsentToThirdPartySoftwareInstallation
    )
    begin {

        # log the initiation of the image analysis process
        Microsoft.PowerShell.Utility\Write-Verbose `
            "Starting image analysis with query: $Query"

        # convert any relative or partial path to a full, absolute path for
        # reliability
        $imagePath = GenXdev\Expand-Path $ImagePath

        # ensure the specified image file exists before proceeding with the
        # analysis
        if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $imagePath)) {

            # if the file doesn't exist, throw a terminating error
            throw "Image file not found: $imagePath"
        }

        $actualPath = $imagePath
    }

    process {

        # log the start of the actual image processing step
        Microsoft.PowerShell.Utility\Write-Verbose ('Processing image: ' +
            "$imagePath")


        if ([IO.Path]::GetExtension($imagePath).ToLowerInvariant() -eq '.webp') {

            $actualPath = [IO.Path]::GetTempPath() + ".png"

            # Load ImageSharp packages with embedded consent using Copy-IdenticalParamValues
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureNuGetAssembly' `
                -DefaultValues (
                Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                    -ErrorAction SilentlyContinue
            )

            # Set specific parameters for ImageSharp packages
            $ensureParams['Description'] = 'Required for WebP image format conversion and processing'
            $ensureParams['Publisher'] = 'SixLabors'

            # Load required ImageSharp packages
            $ensureParams['PackageKey'] = 'SixLabors.ImageSharp'
            GenXdev\EnsureNuGetAssembly @ensureParams

            $ensureParams['PackageKey'] = 'Shorthand.ImageSharp.WebP'
            GenXdev\EnsureNuGetAssembly @ensureParams

            $ensureParams['PackageKey'] = 'SixLabors.ImageSharp.Drawing'
            GenXdev\EnsureNuGetAssembly @ensureParams

            try {
                $webpImage = [SixLabors.ImageSharp.Image]::Load($ImagePath)
                try {
                    # Use Save method with PNG encoder
                    $pngEncoder = [SixLabors.ImageSharp.Formats.Png.PngEncoder]::new()
                    $fileStream = [System.IO.File]::Create($actualPath)
                    try {
                        $webpImage.Save($fileStream, $pngEncoder)
                    }
                    finally {
                        $fileStream.Close()
                    }
                }
                finally {
                    if ($webpImage -and ($webpImage -is [IDisposable])) {
                        $webpImage.Dispose()
                    }
                }
            }
            catch {
                $actualPath = $ImagePath
                Microsoft.PowerShell.Utility\Write-Warning "Error converting WebP to PNG: $($_.Exception.Message)"
            }
        }

        # construct a hashtable of parameters to be passed to the next function
        $parameters = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Invoke-LLMQuery' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope 'Local' `
                -ErrorAction SilentlyContinue)

        # add the image path to the attachments array for the llm query
        $parameters.Attachments = @($actualPath)

        # invoke the ai model with the constructed parameters and image analysis
        # configuration
        GenXdev\Invoke-LLMQuery @parameters
    }

    end {

        if ($actualPath -ne $imagePath) {

            Microsoft.PowerShell.Utility\Write-Verbose "Removing temporary image file: $actualPath"
            Microsoft.PowerShell.Management\Remove-Item -LiteralPath $actualPath -Force -ErrorAction SilentlyContinue
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Remove-ImageMetaData.ps1
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
Removes image metadata files from image directories.

.DESCRIPTION
The Remove-ImageMetaData function removes companion JSON metadata files that
are associated with images. It can selectively remove only keywords
(description.json), people data (people.json), objects data (objects.json),
or scenes data (scenes.json), or remove all metadata files if no specific
switch is provided. Language-specific metadata files can be removed by
specifying the Language parameter, and all language variants can be removed
using the AllLanguages switch.

.PARAMETER ImageDirectories
Array of directory paths to process for image metadata removal. If not
specified, uses default system directories including Downloads, OneDrive,
and Pictures folders.

.PARAMETER Recurse
When specified, searches for images in the specified directory and all
subdirectories.

.PARAMETER Language
Specifies the language for removing language-specific metadata files. When
specified, removes both the default English description.json and the
language-specific file. Defaults to English.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER OnlyKeywords
When specified, only removes the description.json files
(keywords/descriptions).

.PARAMETER OnlyPeople
When specified, only removes the people.json files (face recognition data).

.PARAMETER OnlyObjects
When specified, only removes the objects.json files (object detection data).

.PARAMETER OnlyScenes
When specified, only removes the scenes.json files (scene classification
data).

.PARAMETER AllLanguages
When specified, removes metadata files for all supported languages by
iterating through all languages from Get-WebLanguageDictionary.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER SkipSession
Dont use alternative settings stored in session for AI preferences like
Language, Image collections, etc.

.EXAMPLE
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

Removes all metadata files for images in multiple directories and all
subdirectories.

.EXAMPLE
Remove-ImageMetaData -Recurse -OnlyKeywords

Removes only description.json files from default system directories and
subdirectories.

.EXAMPLE
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

Removes only people.json files from the MyPhotos directory.

.EXAMPLE
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

Removes both English and Spanish description files recursively from default
directories.

.EXAMPLE
removeimagedata -AllLanguages -OnlyKeywords

Uses alias to remove keyword files for all supported languages.

.NOTES
If none of the -OnlyKeywords, -OnlyPeople, -OnlyObjects, or -OnlyScenes
switches are specified, all four types of metadata files will be removed.
When Language is specified, both the default English and language-specific
files are removed.
When AllLanguages is specified, metadata files for all supported languages
are removed.
#>
function Remove-ImageMetaData {

    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'Medium')]
    [Alias('removeimagedata')]

    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = ('Array of directory paths to process for image ' +
                'metadata removal. If not specified, uses default ' +
                'system directories.')
        )]
        [Alias('imagespath', 'directories', 'imgdirs', 'imagedirectory')]
        [string[]] $ImageDirectories = @(".\"),
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = ('The language for removing language-specific ' +
                'metadata files.')
        )]
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
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Recurse directories.'
        )]
        [switch] $Recurse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Only remove description.json files ' +
                '(keywords/descriptions).')
        )]
        [switch] $OnlyKeywords,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Only remove people.json files ' +
                '(face recognition data).')
        )]
        [switch] $OnlyPeople,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Only remove objects.json files ' +
                '(object detection data).')
        )]
        [switch] $OnlyObjects,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Only remove scenes.json files ' +
                '(scene classification data).')
        )]
        [switch] $OnlyScenes,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Remove metadata files for all supported ' +
                'languages.')
        )]
        [switch] $AllLanguages,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for ' +
                'AI preferences like Language, Image collections, ' +
                'etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'AI preferences like Language, Image collections, ' +
                'etc')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Dont use alternative settings stored in session ' +
                'for AI preferences like Language, Image ' +
                'collections, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {


        # copy identical parameter values for language retrieval
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-AIMetaLanguage' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # get configured language using ai preferences
        $Language = GenXdev\Get-AIMetaLanguage @params

        $directories = @($ImageDirectories | Microsoft.PowerShell.Core\ForEach-Object {

            GenXdev\Expand-Path $_
        });

        # output verbose information about directories to process
        Microsoft.PowerShell.Utility\Write-Verbose `
        ('Processing directories: {0} with language: {1}' -f `
            ($directories -join ', '), $Language)
    }

    process {

        # iterate through each specified directory path
        foreach ($path in $directories) {

            # verify directory exists before proceeding
            if (-not [System.IO.Directory]::Exists($path)) {

                Microsoft.PowerShell.Utility\Write-Host `
                    "The directory '$path' does not exist."

                continue
            }

            # output verbose information about current directory being processed
            Microsoft.PowerShell.Utility\Write-Verbose `
                "Processing directory: $path"

            # "$path\*.bmp", "$path\*.webp", "$path\*.tiff", "$path\*.tif"
            # get all supported image files from the specified directory
            (@(Microsoft.PowerShell.Management\Get-ChildItem `
                -LiteralPath $path `
                -Filter "*.bmp" `
                -Recurse:$Recurse `
                -File `
                -ErrorAction SilentlyContinue) +
                @(Microsoft.PowerShell.Management\Get-ChildItem `
                -LiteralPath $path `
                -Filter "*.webp" `
                -Recurse:$Recurse `
                -File `
                -ErrorAction SilentlyContinue) +
                @(Microsoft.PowerShell.Management\Get-ChildItem `
                -LiteralPath $path `
                -Filter "*.tif" `
                -Recurse:$Recurse `
                -File `
                -ErrorAction SilentlyContinue) +
                @(Microsoft.PowerShell.Management\Get-ChildItem `
                -LiteralPath $path `
                -Filter "*.tiff" `
                -Recurse:$Recurse `
                -File `
                -ErrorAction SilentlyContinue) +
                @(Microsoft.PowerShell.Management\Get-ChildItem `
                -LiteralPath $path `
                -Filter "*.jpg" `
                -Recurse:$Recurse `
                -File `
                -ErrorAction SilentlyContinue) +
                @(Microsoft.PowerShell.Management\Get-ChildItem `
                -LiteralPath $path `
                -Filter "*.jpeg" `
                -Recurse:$Recurse `
                -File `
                -ErrorAction SilentlyContinue) +
                @(Microsoft.PowerShell.Management\Get-ChildItem `
                -LiteralPath $path `
                -Filter "*.gif" `
                -Recurse:$Recurse `
                -File `
                -ErrorAction SilentlyContinue) +
                @(Microsoft.PowerShell.Management\Get-ChildItem `
                -LiteralPath $path `
                -Filter "*.png" `
                -Recurse:$Recurse `
                -File `
                -ErrorAction SilentlyContinue)) |
                Microsoft.PowerShell.Core\ForEach-Object {

                    # store the full path of the current image
                    $image = $PSItem.FullName

                    # initialize array to track successfully removed files
                    $removedFiles = @()

                    # determine which metadata files to remove based on switches
                    $filesToRemove = @()

                    # determine languages to process
                    $languagesToProcess = @()

                    if ($AllLanguages) {

                        # get all supported languages from the dictionary
                        $languageDict = GenXdev\Get-WebLanguageDictionary

                        # use all available language keys
                        $languagesToProcess = $languageDict.Keys
                    }
                    else {

                        # use only the specified language
                        $languagesToProcess = @($Language)
                    }

                    # iterate through each language to process
                    foreach ($currentLanguage in $languagesToProcess) {

                        if ($OnlyKeywords) {

                            # always add the default english description file
                            if ("$($image):description.json" -notin $filesToRemove) {

                                $filesToRemove += "$($image):description.json"
                            }

                            # add language-specific description file if not english
                            if ($currentLanguage -ne 'English') {

                                $filesToRemove += `
                                    "$($image):description.$currentLanguage.json"
                            }
                        }
                        elseif ($OnlyPeople) {

                            # people data is not language-specific, so only add once
                            if ("$($image):people.json" -notin $filesToRemove) {

                                $filesToRemove += "$($image):people.json"
                            }
                        }
                        elseif ($OnlyObjects) {

                            # objects data is not language-specific, so only add once
                            if ("$($image):objects.json" -notin $filesToRemove) {

                                $filesToRemove += "$($image):objects.json"
                            }
                        }
                        elseif ($OnlyScenes) {

                            # scenes data is not language-specific, so only add once
                            if ("$($image):scenes.json" -notin $filesToRemove) {

                                $filesToRemove += "$($image):scenes.json"
                            }
                        }
                        else {

                            # remove all metadata files for comprehensive cleanup

                            # always add the default english description file
                            if ("$($image):description.json" -notin $filesToRemove) {

                                $filesToRemove += "$($image):description.json"
                            }

                            # add language-specific description file if not english
                            if ($currentLanguage -ne 'English') {

                                $filesToRemove += `
                                    "$($image):description.$currentLanguage.json"
                            }

                            # add people and objects files only once
                            if ("$($image):people.json" -notin $filesToRemove) {

                                $filesToRemove += "$($image):people.json"
                            }

                            if ("$($image):objects.json" -notin $filesToRemove) {

                                $filesToRemove += "$($image):objects.json"
                            }

                            if ("$($image):scenes.json" -notin $filesToRemove) {

                                $filesToRemove += "$($image):scenes.json"
                            }
                        }
                    }

                    # remove the specified metadata files
                    foreach ($file in $filesToRemove) {

                        # check if the metadata file actually exists
                        if ([System.IO.File]::Exists($file)) {

                            # extract just the filename for display purposes
                            $fileName = [System.IO.Path]::GetFileName($file)

                            # use whatif processing to respect -whatif parameter
                            if ($PSCmdlet.ShouldProcess($file, `
                                        "Remove metadata file '$fileName'")) {

                                try {

                                    # delete the metadata file
                                    [System.IO.File]::Delete($file)

                                    # track the successfully removed file
                                    $removedFiles += $fileName

                                    # output verbose information about file removal
                                    Microsoft.PowerShell.Utility\Write-Verbose `
                                        "Removed: $file"
                                }
                                catch {

                                    # handle file deletion errors gracefully
                                    Microsoft.PowerShell.Utility\Write-Verbose `
                                    ('Failed to remove {0}: {1}' -f `
                                            $file, $_.Exception.Message)
                                }
                            }
                        }
                    }

                    # output information about what was removed
                    if ($removedFiles.Count -gt 0) {

                        # display successful removal summary
                        Microsoft.PowerShell.Utility\Write-Host `
                        ('Removed metadata for {0}: {1}' -f `
                                $PSItem.Name, ($removedFiles -join ', ')) `
                            -ForegroundColor Green
                    }
                    else {

                        # output verbose message when no files were found
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            "No metadata files found for $($PSItem.Name)"
                    }
                }
        }
    }

    end {
    }
}

<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Save-FoundImageFaces.ps1
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
Saves cropped face images from indexed image search results.

.DESCRIPTION
This function takes image search results and extracts/saves individual face
regions as separate image files. It can search for faces using various criteria
and save them to a specified output directory. The function supports searching
by description, keywords, people, objects, scenes, picture type, style type,
and overall mood. It can also filter by nudity and explicit content.

.PARAMETER Any
Will match any of all the possible meta data types.

.PARAMETER DescriptionSearch
The description text to look for, wildcards allowed.

.PARAMETER Keywords
The keywords to look for, wildcards allowed.

.PARAMETER People
People to look for, wildcards allowed.

.PARAMETER Objects
Objects to look for, wildcards allowed.

.PARAMETER Scenes
Scenes to look for, wildcards allowed.

.PARAMETER PictureType
Picture types to filter by, wildcards allowed.

.PARAMETER StyleType
Style types to filter by, wildcards allowed.

.PARAMETER OverallMood
Overall moods to filter by, wildcards allowed.

.PARAMETER HasNudity
Filter images that contain nudity.

.PARAMETER NoNudity
Filter images that do NOT contain nudity.

.PARAMETER HasExplicitContent
Filter images that contain explicit content.

.PARAMETER NoExplicitContent
Filter images that do NOT contain explicit content.

.PARAMETER DatabaseFilePath
Path to the SQLite database file.

.PARAMETER Language
Language for descriptions and keywords.

.PARAMETER ForceIndexRebuild
Force rebuild of the image index database.

.PARAMETER PathLike
Array of directory path-like search strings to filter images by path (SQL LIKE
patterns, e.g. '%\\2024\\%').

.PARAMETER InputObject
Accepts search results from a previous -PassThru call to regenerate the view.

.PARAMETER OutputDirectory
Directory to save cropped face images.

.PARAMETER GeoLocation
Geographic coordinates [latitude, longitude] to search near.

.PARAMETER GeoDistanceInMeters
Maximum distance in meters from GeoLocation to search for images.

.PARAMETER SaveUnknownPersons
Also save unknown persons detected as objects.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SkipSession
Dont use alternative settings stored in session for AI preferences like
Language, Image collections, etc.

.EXAMPLE
Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"

.EXAMPLE
saveimagefaces -Any "vacation" -SaveUnknownPersons
#>
function Save-FoundImageFaces {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [OutputType([Object[]], [System.Collections.Generic.List[Object]], [string])]
    [Alias('saveimagefaces')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'Will match any of all the possible meta data types.'
        )]
        [string[]] $Any = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The description text to look for, wildcards allowed.'
        )]
        [string[]] $DescriptionSearch = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The keywords to look for, wildcards allowed.'
        )]
        [string[]] $Keywords = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'People to look for, wildcards allowed.'
        )]
        [string[]] $People = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Objects to look for, wildcards allowed.'
        )]
        [string[]] $Objects = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Scenes to look for, wildcards allowed.'
        )]
        [string[]] $Scenes = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Picture types to filter by, wildcards allowed.'
        )]
        [string[]] $PictureType = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Style types to filter by, wildcards allowed.'
        )]
        [string[]] $StyleType = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Overall moods to filter by, wildcards allowed.'
        )]
        [string[]] $OverallMood = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Path to the SQLite database file.'
        )]
        [string] $DatabaseFilePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Language for descriptions and keywords.'
        )]
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
            'Zulu')]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                'Array of directory path-like search strings to filter images by ' +
                "path (SQL LIKE patterns, e.g. '%\\2024\\%')"
            )
        )]
        [string[]] $PathLike = @(),
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = ('Accepts search results from a previous -PassThru ' +
                'call to regenerate the view.')
        )]
        [System.Object[]] $InputObject,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Directory to save cropped face images.'
        )]
        [string] $OutputDirectory = '.\',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter images that contain nudity.'
        )]
        [switch] $HasNudity,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter images that do NOT contain nudity.'
        )]
        [switch] $NoNudity,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter images that contain explicit content.'
        )]
        [switch] $HasExplicitContent,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter images that do NOT contain explicit content.'
        )]
        [switch] $NoExplicitContent,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force rebuild of the image index database.'
        )]
        [switch] $ForceIndexRebuild,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Geographic coordinates [latitude, longitude] to search near.'
        )]
        [double[]] $GeoLocation,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum distance in meters from GeoLocation to search for images.'
        )]
        [double] $GeoDistanceInMeters = 1000,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Also save unknown persons detected as objects.'
        )]
        [switch] $SaveUnknownPersons,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Dont use alternative settings stored in session for ' +
                'AI preferences like Language, Image collections, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # copy identical parameter values for ai meta language function
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-AIMetaLanguage' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # get ai meta language with fallback to default web language
        $language = GenXdev\Get-AIMetaLanguage @params

        Microsoft.PowerShell.Utility\Write-Verbose ("Using language: $language")

        # initialize result counter for tracking processed images
        $info = @{
            resultCount = 0
        }

        # process any parameter if provided to expand search criteria
        if ($null -ne $Any -and $Any.Length -gt 0) {

            Microsoft.PowerShell.Utility\Write-Verbose ("Processing 'Any' parameter " +
                "with $($Any.Length) entries")

            # add wildcards to any entries without them for better matching
            $any = @($Any | Microsoft.PowerShell.Core\ForEach-Object {

                    # trim whitespace from entry to normalize input
                    $entry = $_.Trim()

                    # add wildcards if none exist to enable partial matching
                    if ($entry.IndexOfAny([char[]]@('*', '?')) -lt 0) {

                        "*$entry*"
                    }
                    else {
                        $_
                    }
                })

            # merge any parameter with all search parameters for comprehensive search
            $descriptionSearch = $null -ne $DescriptionSearch ?
                ($DescriptionSearch + $any) :
            $any

            $keywords = $null -ne $Keywords ?
                ($Keywords + $any) :
            $any

            $people = $null -ne $People ?
                ($People + $any) :
            $any

            $objects = $null -ne $Objects ?
                ($Objects + $any) :
            $any

            $scenes = $null -ne $Scenes ?
                ($Scenes + $any) :
            $any

            $pictureType = $null -ne $PictureType ?
                ($PictureType + $any) :
            $any

            $styleType = $null -ne $StyleType ?
                ($StyleType + $any) :
            $any

            $overallMood = $null -ne $OverallMood ?
                ($OverallMood + $any) :
            $any
        }
    }
    process {

        # ensure output directory exists and get expanded path
        $outputDirectory = GenXdev\Expand-Path $OutputDirectory `
            -CreateDirectory

        Microsoft.PowerShell.Utility\Write-Verbose ('Using output directory: ' +
            "$outputDirectory")

        # define internal function to save image faces from processed images
        function saveImage {

            param ($inputObject)

            # process each image object in the pipeline
            $inputObject | Microsoft.PowerShell.Core\ForEach-Object {

                # get current image object for processing
                $image = $_

                # skip if image is null or has no path for processing
                if ($null -eq $image -or -not $image.path) {

                    Microsoft.PowerShell.Utility\Write-Verbose ('Skipping image ' +
                        'with null or missing path')
                    return
                }

                # get image path for loading
                $imgPath = $image.path

                Microsoft.PowerShell.Utility\Write-Verbose ('Processing image: ' +
                    "$imgPath")

                # handle face/people recognition data from different sources
                $people = $null
                if ($image.people -and $image.people.predictions) {

                    $people = $image.people.predictions
                }
                elseif ($image.faces -and $image.faces.predictions) {

                    $people = $image.faces.predictions
                }

                # initialize saved face rectangles for overlap detection
                $savedFaceRects = @()

                # process people/faces if found in image
                if ($people) {

                    Microsoft.PowerShell.Utility\Write-Verbose ('Found ' +
                        "$($people.Count) faces/people in image")

                    try {
                        # load image from file for processing
                        $imgObj = [System.Drawing.Image]::FromFile($imgPath)

                        try {
                            # get base filename without extension for output naming
                            $imgBase = [System.IO.Path]::GetFileNameWithoutExtension(
                                $imgPath)

                            # initialize face index counter for unique naming
                            $faceIdx = 0

                            # process each detected face in the image
                            foreach ($face in $people) {

                                Microsoft.PowerShell.Utility\Write-Verbose (
                                    "Processing face $faceIdx")

                                # ensure coordinates are within image bounds to prevent errors
                                $x_min = [Math]::Max(0,
                                    [Math]::Min($face.x_min, $imgObj.Width - 1))
                                $y_min = [Math]::Max(0,
                                    [Math]::Min($face.y_min, $imgObj.Height - 1))
                                $x_max = [Math]::Max($x_min + 1,
                                    [Math]::Min($face.x_max, $imgObj.Width))
                                $y_max = [Math]::Max($y_min + 1,
                                    [Math]::Min($face.y_max, $imgObj.Height))

                                # calculate face dimensions for validation
                                $width = $x_max - $x_min
                                $height = $y_max - $y_min

                                # skip invalid dimensions to prevent errors
                                if ($width -le 0 -or $height -le 0) {

                                    Microsoft.PowerShell.Utility\Write-Verbose (
                                        'Skipping face with invalid dimensions')
                                    continue
                                }

                                # create rectangle for cropping the face region
                                $cropRect = [System.Drawing.Rectangle]::new(
                                    $x_min, $y_min, $width, $height)

                                # create bitmap for cropped face output
                                $croppedBitmap = [System.Drawing.Bitmap]::new(
                                    $width, $height)

                                # create graphics object for drawing operations
                                $croppedGraphics = [System.Drawing.Graphics]::FromImage(
                                    $croppedBitmap)

                                # define destination rectangle for drawing
                                $destRect = [System.Drawing.Rectangle]::new(
                                    0, 0, $width, $height)

                                # crop face from original image to new bitmap
                                $null = $croppedGraphics.DrawImage(
                                    $imgObj, $destRect, $cropRect,
                                    [System.Drawing.GraphicsUnit]::Pixel)

                                # dispose graphics object to free memory
                                $croppedGraphics.Dispose()

                                # create face label from userid or default naming
                                $faceLabel = if ($face.userid) {
                                    $face.userid
                                }
                                else {
                                    "face$faceIdx"
                                }

                                # sanitize face label for filename compatibility
                                $faceLabel = $faceLabel -replace '[^\w\-_]', '_'

                                # create output filename with descriptive naming
                                $outFile = Microsoft.PowerShell.Management\Join-Path `
                                    $outputDirectory `
                                ("${imgBase}_${faceLabel}_${faceIdx}.png")

                                # save cropped face as png file
                                $croppedBitmap.Save($outFile,
                                    [System.Drawing.Imaging.ImageFormat]::Png)

                                Microsoft.PowerShell.Utility\Write-Verbose (
                                    "Saved face to: $outFile")

                                # dispose cropped bitmap to free memory
                                $croppedBitmap.Dispose()

                                # store face rectangle for overlap detection
                                $savedFaceRects += @{
                                    x_min = $x_min
                                    y_min = $y_min
                                    x_max = $x_max
                                    y_max = $y_max
                                }

                                # increment face index for next iteration
                                $faceIdx++
                            }

                            # save unknown persons if requested and objects exist
                            if ($SaveUnknownPersons -and $image.objects -and
                                $image.objects.objects) {

                                Microsoft.PowerShell.Utility\Write-Verbose (
                                    'Processing unknown persons from objects')

                                # initialize object index counter for unique naming
                                $objIdx = 0

                                # process each detected object for person detection
                                foreach ($obj in $image.objects.objects) {

                                    # only process person objects for face extraction
                                    if ($obj.label -eq 'person') {

                                        try {
                                            # ensure coordinates are within bounds
                                            $x_min = [Math]::Max(0,
                                                [Math]::Min($obj.x_min, $imgObj.Width - 1))
                                            $y_min = [Math]::Max(0,
                                                [Math]::Min($obj.y_min, $imgObj.Height - 1))
                                            $x_max = [Math]::Max($x_min + 1,
                                                [Math]::Min($obj.x_max, $imgObj.Width))
                                            $y_max = [Math]::Max($y_min + 1,
                                                [Math]::Min($obj.y_max, $imgObj.Height))

                                            # calculate object dimensions
                                            $width = $x_max - $x_min
                                            $height = $y_max - $y_min

                                            # skip invalid dimensions
                                            if ($width -le 0 -or $height -le 0) {
                                                continue
                                            }

                                            # check for overlap with known faces to avoid duplicates
                                            $overlap = $false
                                            foreach ($rect in $savedFaceRects) {
                                                if ((($x_min -le $rect.x_max) -and
                                                    ($x_max -ge $rect.x_min)) -and
                                                    (($y_min -le $rect.y_max) -and
                                                    ($y_max -ge $rect.y_min))) {
                                                    $overlap = $true
                                                    break
                                                }
                                            }

                                            # skip if overlaps with known face
                                            if ($overlap) {
                                                continue
                                            }

                                            # create rectangle for cropping
                                            $cropRect = [System.Drawing.Rectangle]::new(
                                                $x_min, $y_min, $width, $height)

                                            # create bitmap for cropped person
                                            $croppedBitmap = [System.Drawing.Bitmap]::new(
                                                $width, $height)

                                            # create graphics object for drawing
                                            $croppedGraphics = [System.Drawing.Graphics]::FromImage(
                                                $croppedBitmap)

                                            # define destination rectangle
                                            $destRect = [System.Drawing.Rectangle]::new(
                                                0, 0, $width, $height)

                                            # crop person from original image
                                            $null = $croppedGraphics.DrawImage(
                                                $imgObj, $destRect, $cropRect,
                                                [System.Drawing.GraphicsUnit]::Pixel)

                                            # dispose graphics object
                                            $croppedGraphics.Dispose()

                                            # create output filename for unknown person
                                            $outFile = Microsoft.PowerShell.Management\Join-Path `
                                                $outputDirectory `
                                            ("${imgBase}_unknownperson_${objIdx}.png")

                                            # save cropped person as png
                                            $croppedBitmap.Save($outFile,
                                                [System.Drawing.Imaging.ImageFormat]::Png)

                                            Microsoft.PowerShell.Utility\Write-Verbose (
                                                "Saved unknown person to: $outFile")

                                            # dispose cropped bitmap
                                            $croppedBitmap.Dispose()

                                            # increment object index
                                            $objIdx++
                                        }
                                        catch {
                                            # warn about failed unknown person cropping
                                            Microsoft.PowerShell.Utility\Write-Verbose `
                                            ('Failed to crop/save unknown person ' +
                                                "for $($imgPath): $_")
                                        }
                                    }
                                }
                            }
                        }
                        finally {
                            # dispose image object if exists to free memory
                            if ($null -ne $imgObj) {
                                $imgObj.Dispose()
                            }
                        }
                    }
                    catch {
                        # warn about failed face cropping
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            "Failed to crop/save faces for $($imgPath): $_"
                    }
                }

                # increment result counter for statistics tracking
                $info.resultCount++

                # output processed image object to pipeline
                Microsoft.PowerShell.Utility\Write-Output $image
            }
        }

        # process input based on whether explicit input objects are provided
        if ($null -ne $InputObject) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Processing provided input objects')

            # process each input object through the save image function
            $InputObject | Microsoft.PowerShell.Core\ForEach-Object {
                saveImage $_
            }
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Searching for indexed images')

            # copy parameters for find indexed image function call
            $params = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Find-Image' `
                -DefaultValues (
                Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue
            )

            # find indexed images and process each through save image function
            GenXdev\Find-Image @params |
                Microsoft.PowerShell.Core\ForEach-Object {
                    saveImage $_
                }
        }
    }
    end {

        Microsoft.PowerShell.Utility\Write-Verbose ('Processed ' +
            "$($info.resultCount) images")
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Save-Transcriptions.ps1
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
Generates subtitle files for audio and video files using OpenAI Whisper.

.DESCRIPTION
Recursively searches for media files in the specified directory and uses a local
OpenAI Whisper model to generate subtitle files in SRT format. The function
supports multiple audio/video formats and can optionally translate subtitles to
a different language using a LLM Query. File naming follows a standardized pattern
with language codes (e.g., video.mp4.en.srt).

.PARAMETER DirectoryPath
The root directory to search for media files. Defaults to the current directory.
Will recursively process all supported media files in subfolders.

.PARAMETER LanguageIn
The expected source language of the audio content. Used to improve transcription
accuracy. Defaults to English. Supports 150+ languages.

.PARAMETER LanguageOut
Optional target language for translation. If specified, the generated subtitles
will be translated from LanguageIn to this language using a LLM Query.

.PARAMETER TokenTimestampsSumThreshold
Sum threshold for token timestamps, defaults to 0.5.

.PARAMETER MaxTokensPerSegment
Maximum number of tokens per segment.

.PARAMETER MaxDurationOfSilence
Maximum duration of silence before automatically stopping recording.

.PARAMETER SilenceThreshold
Silence detect threshold (0..32767 defaults to 30).

.PARAMETER CpuThreads
Number of CPU threads to use, defaults to 0 (auto).

.PARAMETER Temperature
Temperature for speech recognition.

.PARAMETER TemperatureInc
Temperature increment.

.PARAMETER Prompt
Prompt to use for the model.

.PARAMETER SuppressRegex
Regex to suppress tokens from the output.

.PARAMETER AudioContextSize
Size of the audio context.

.PARAMETER MaxDuration
Maximum duration of the audio.

.PARAMETER Offset
Offset for the audio.

.PARAMETER MaxLastTextTokens
Maximum number of last text tokens.

.PARAMETER MaxSegmentLength
Maximum segment length.

.PARAMETER MaxInitialTimestamp
Start timestamps at this moment.

.PARAMETER LengthPenalty
Length penalty.

.PARAMETER EntropyThreshold
Entropy threshold.

.PARAMETER LogProbThreshold
Log probability threshold.

.PARAMETER NoSpeechThreshold
No speech threshold.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER WithTokenTimestamps
Whether to include token timestamps in the output.

.PARAMETER SplitOnWord
Whether to split on word boundaries.

.PARAMETER IgnoreSilence
Whether to ignore silence (will mess up timestamps).

.PARAMETER WithProgress
Whether to show progress.

.PARAMETER DontSuppressBlank
Whether to NOT suppress blank lines.

.PARAMETER SingleSegmentOnly
Whether to use single segment only.

.PARAMETER PrintSpecialTokens
Whether to print special tokens.

.PARAMETER NoContext
Don't use context.

.PARAMETER WithBeamSearchSamplingStrategy
Use beam search sampling strategy.

.PARAMETER ModelType
Whisper model type to use, defaults to LargeV3Turbo.

.PARAMETER PassThru
Returns objects instead of strings.

.PARAMETER UseDesktopAudioCapture
Whether to use desktop audio capture instead of microphone input.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER SkipSession
Dont use alternative settings stored in session for AI preferences like
Language, Image collections, etc.

.EXAMPLE
Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"

.EXAMPLE
Save-Transcriptions "C:\Media" "Japanese" "English"
#>
function Save-Transcriptions {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'The directory path to search for media files'
        )]
        [string] $DirectoryPath = '.\',
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'The language to expect in the audio.'
        )]
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
            Position = 2,
            HelpMessage = 'Sets the language to translate to.'
        )]
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
        [string] $LanguageOut,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sum threshold for token timestamps, defaults to 0.5'
        )]
        [float] $TokenTimestampsSumThreshold = 0.5,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum number of tokens per segment'
        )]
        [int] $MaxTokensPerSegment = 20,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Maximum duration of silence before automatically ' +
                'stopping recording')
        )]
        [object] $MaxDurationOfSilence,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence detect threshold (0..32767 defaults to 30)'
        )]
        [ValidateRange(0, 32767)]
        [int] $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use, defaults to 0 (auto)'
        )]
        [int] $CpuThreads = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for speech recognition'
        )]
        [ValidateRange(0, 1)]
        [float] $Temperature = 0.5,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature increment'
        )]
        [ValidateRange(0, 1)]
        [float] $TemperatureInc,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prompt to use for the model'
        )]
        [string] $Prompt,
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
            HelpMessage = 'Maximum duration of the audio'
        )]
        [object] $MaxDuration,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Offset for the audio'
        )]
        [object] $Offset,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum number of last text tokens'
        )]
        [int] $MaxLastTextTokens,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum segment length'
        )]
        [int] $MaxSegmentLength,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Start timestamps at this moment'
        )]
        [object] $MaxInitialTimestamp,
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
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to include token timestamps in the output'
        )]
        [switch] $WithTokenTimestamps,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to split on word boundaries'
        )]
        [switch] $SplitOnWord,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to ignore silence (will mess up timestamps)'
        )]
        [switch] $IgnoreSilence,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to show progress'
        )]
        [switch] $WithProgress,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to NOT suppress blank lines'
        )]
        [switch] $DontSuppressBlank,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to use single segment only'
        )]
        [switch] $SingleSegmentOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to print special tokens'
        )]
        [switch] $PrintSpecialTokens,
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
            HelpMessage = 'Whisper model type to use, defaults to LargeV3Turbo'
        )]
        [ValidateSet('Tiny', 'TinyEn', 'Base', 'BaseEn', 'Small', 'SmallEn', 'Medium', 'MediumEn', 'LargeV1', 'LargeV2', 'LargeV3', 'LargeV3Turbo')]
        [string] $ModelType,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns objects instead of strings'
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Whether to use desktop audio capture instead of ' +
                'microphone input')
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'AI preferences like Language, Image collections, etc')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Dont use alternative settings stored in session ' +
                'for AI preferences like Language, Image ' +
                'collections, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # copy identical parameter values for meta language processing
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-AIMetaLanguage' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # get resolved language using meta language processing
        $params.Language = $LanguageIn
        if ([string]::IsNullOrWhiteSpace($LanguageIn)) {
            $null = $params.Remove('Language')
        }
        $languageIn = GenXdev\Get-AIMetaLanguage @params
        $params.Language = $LanguageOut
        if ([string]::IsNullOrWhiteSpace($LanguageOut)) {
            $null = $params.Remove('Language')
        }
        $languageOut = GenXdev\Get-AIMetaLanguage @params

        # define array of supported media file extensions for processing
        $extensions = @(
            '.3gp',
            '.a52',
            '.aac',
            '.ac3',
            '.amr',
            '.mp3',
            '.adp',
            '.aiff',
            '.amr',
            '.ape',
            '.asf',
            '.avi',
            '.avif',
            '.avs',
            '.bink',
            '.bmp',
            '.caf',
            '.cavs',
            '.cgm',
            '.clpi',
            '.cpx',
            '.dds',
            '.dcm',
            '.dcr',
            '.dpx',
            '.dsic',
            '.dts',
            '.dtshd',
            '.dv',
            '.dvh',
            '.dvr',
            '.dxa',
            '.eac3',
            '.exr',
            '.ffm',
            '.ffmetadata',
            '.flac',
            '.flv',
            '.fmp4',
            '.gif',
            '.gsm',
            '.h261',
            '.h263',
            '.h264',
            '.h265',
            '.hevc',
            '.hls',
            '.ico',
            '.iff',
            '.ilbc',
            '.image2',
            '.imgut',
            '.ircam',
            '.j2k',
            '.jpeg',
            '.jpg',
            '.jps',
            '.jp2',
            '.jxr',
            '.lcov',
            '.ljpg',
            '.m1v',
            '.m2v',
            '.m4a',
            '.m4v',
            '.matroska',
            '.mgm',
            '.mkv',
            '.mlp',
            '.mmf',
            '.mov',
            '.mp1',
            '.mp2',
            '.mp3',
            '.mp4',
            '.mpc',
            '.mpeg',
            '.mpg',
            '.mpp',
            '.mrs',
            '.msf',
            '.msr',
            '.mvi',
            '.mxf',
            '.nut',
            '.ogg',
            '.ogv',
            '.oma',
            '.opus',
            '.paf',
            '.pbm',
            '.pcx',
            '.pgm',
            '.png',
            '.ps',
            '.psd',
            '.pva',
            '.qcif',
            '.qdm2',
            '.rawvideo',
            '.rc',
            '.redspark',
            '.rl2',
            '.rm',
            '.rmvb',
            '.rso',
            '.rtp',
            '.s24be',
            '.s3m',
            '.sbg',
            '.sdp',
            '.sgi',
            '.smk',
            '.sox',
            '.spx',
            '.sub',
            '.swf',
            '.tak',
            '.tap',
            '.tga',
            '.thp',
            '.tif',
            '.tiff',
            '.trp',
            '.ts',
            '.tta',
            '.txd',
            '.u8',
            '.uyvy',
            '.vc1',
            '.vob',
            '.wav',
            '.webm',
            '.webp',
            '.wma',
            '.wmv',
            '.wtv',
            '.x-flv',
            '.x-matroska',
            '.x-mkv',
            '.x-wav',
            '.xvag',
            '.yuv4mpegpipe'
        )

        # store current location to restore at end of processing
        Microsoft.PowerShell.Management\Push-Location

        Microsoft.PowerShell.Utility\Write-Verbose ('Current working ' +
            'directory stored for later restoration')
    }

    process {

        # validate and expand the directory path
        $expandedPath = GenXdev\Expand-Path "$DirectoryPath\"

        # check if directory exists
        if (-not [System.IO.Directory]::Exists($expandedPath)) {

            Microsoft.PowerShell.Utility\Write-Warning ('Directory not found: ' +
                "'${DirectoryPath}'")

            return
        }

        # change to target directory for file processing
        Microsoft.PowerShell.Management\Set-Location -LiteralPath $expandedPath

        Microsoft.PowerShell.Utility\Write-Verbose ('Changed working ' +
            "directory to: $DirectoryPath")

        # recursively process each file in directory and subdirectories
        Microsoft.PowerShell.Management\Get-ChildItem -File -Recurse |
            Microsoft.PowerShell.Core\ForEach-Object {

                # skip files that don't have a supported media extension
                if ($extensions -notcontains $PSItem.Extension.ToLower()) {

                    Microsoft.PowerShell.Utility\Write-Verbose ('Skipping file ' +
                        "with unsupported extension: $($PSItem.Name)")

                    return
                }

                # verify file still exists and is accessible
                if (-not [System.IO.File]::Exists($PSItem.FullName)) {

                    Microsoft.PowerShell.Utility\Write-Warning ('File not found ' +
                        "or not accessible: '$($PSItem.FullName)'")

                    return
                }

                # display file being processed
                Microsoft.PowerShell.Utility\Write-Host ('Processing: ' +
                    "$($PSItem.FullName)") -ForegroundColor Cyan

                # construct paths for old and new subtitle file naming patterns
                $enPathOld = "$($PSItem.FullName).en.srt"

                $nlPathOld = "$($PSItem.FullName).nl.srt"

                $nlPath = [IO.Path]::ChangeExtension($PSItem.FullName, '.nl.srt')

                $enPath = [IO.Path]::ChangeExtension($PSItem.FullName, '.en.srt')

                # determine target language and output path for new subtitle file
                $targetLanguage = [string]::IsNullOrWhiteSpace($languageOut) ?
                $languageIn : $languageOut

                $langCode = (GenXdev\Get-WebLanguageDictionary)[$targetLanguage]

                if ($null -ne $langCode) {

                    $targetLanguage = $langCode
                }

                $newPath = [IO.Path]::ChangeExtension($PSItem.FullName,
                    ".$targetLanguage.srt")

                Microsoft.PowerShell.Utility\Write-Verbose "Target language: '$targetLanguage'"
                Microsoft.PowerShell.Utility\Write-Verbose "Target file path: '$newPath'"

                # handle legacy Dutch subtitle file naming convention
                if ([io.file]::Exists($nlPathOld)) {

                    if ([io.file]::Exists($nlPath)) {

                        $null = Microsoft.PowerShell.Management\Remove-Item `
                            -LiteralPath $nlPathOld `
                            -Force
                    }
                    else {

                        $null = Microsoft.PowerShell.Management\Move-Item `
                            -LiteralPath $nlPathOld `
                            -Destination $nlPath `
                            -Force
                    }
                }

                # handle legacy English subtitle file naming convention
                if ([io.file]::Exists($enPathOld)) {

                    if ([io.file]::Exists($enPath)) {

                        $null = Microsoft.PowerShell.Management\Remove-Item `
                            -LiteralPath $enPathOld `
                            -Force
                    }
                    else {

                        $null = Microsoft.PowerShell.Management\Move-Item `
                            -LiteralPath $enPathOld `
                            -Destination $enPath `
                            -Force
                    }
                }

                # skip if subtitle file already exists for target language
                if ([io.file]::Exists($newPath)) {

                    Microsoft.PowerShell.Utility\Write-Verbose ('Subtitle file ' +
                        "already exists: $newPath")

                    return
                }

                try {

                    # reduce CPU priority to minimize system impact during processing
                    [System.Diagnostics.Process]::GetCurrentProcess().PriorityClass =
                    [System.Diagnostics.ProcessPriorityClass]::Idle

                    try {

                        Microsoft.PowerShell.Utility\Write-Verbose ('Generating ' +
                            "transcription for: $($PSItem.FullName)")

                        # prepare parameters for transcription generation
                        $transcriptionParams = GenXdev\Copy-IdenticalParamValues `
                            -BoundParameters $PSBoundParameters `
                            -FunctionName 'GenXdev\Start-AudioTranscription'

                        # Add required parameters for SRT generation
                        $transcriptionParams.Input = $PSItem.FullName
                        $transcriptionParams.Srt = $true
                        $transcriptionParams.LanguageIn = $languageIn
                        $transcriptionParams.LanguageOut = $languageOut

                        Microsoft.PowerShell.Utility\Write-Host "  Starting transcription..." -ForegroundColor Yellow
                        Microsoft.PowerShell.Utility\Write-Verbose "Parameters: $($transcriptionParams.Keys -join ', ')"

                        # generate transcription using whisper model
                        $transcription = GenXdev\Start-AudioTranscription @transcriptionParams | Microsoft.PowerShell.Utility\Out-String

                        if ($null -eq $transcription -or [string]::IsNullOrWhiteSpace($transcription)) {
                            Microsoft.PowerShell.Utility\Write-Warning "No transcription generated for $($PSItem.Name)"
                            return
                        }

                        Microsoft.PowerShell.Utility\Write-Host "  Transcription completed successfully" -ForegroundColor Green
                        Microsoft.PowerShell.Utility\Write-Verbose "Transcription length: $($transcription.Length) characters"
                    }
                    finally {

                        # restore normal CPU priority after processing
                        [System.Diagnostics.Process]::GetCurrentProcess().PriorityClass =
                        [System.Diagnostics.ProcessPriorityClass]::Normal
                    }
                }
                catch {

                    Microsoft.PowerShell.Utility\Write-Error "Failed to process file: $($PSItem.FullName)"
                    Microsoft.PowerShell.Utility\Write-Error "Error details: $($_.Exception.Message)"
                    Microsoft.PowerShell.Utility\Write-Verbose "Full error: $_"

                    return
                }

                # save generated transcription to subtitle file
                try {
                    $null = $transcription |
                        Microsoft.PowerShell.Utility\Out-File $newPath -Force -Encoding UTF8

                        Microsoft.PowerShell.Utility\Write-Host "  Saved: $([System.IO.Path]::GetFileName($newPath))" -ForegroundColor Green
                        Microsoft.PowerShell.Utility\Write-Verbose ('Transcription saved ' +
                            "to: $newPath")
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Error "Failed to save transcription to: $newPath"
                        Microsoft.PowerShell.Utility\Write-Error "Save error: $($_.Exception.Message)"
                        return
                    }
                }
    }

    end {

        # restore original working directory
        Microsoft.PowerShell.Management\Pop-Location

        Microsoft.PowerShell.Utility\Write-Verbose ('Original working ' +
            'directory restored')
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Set-AIKnownFacesRootpath.ps1
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
Sets the directory for face image files used in GenXdev.AI operations.

.DESCRIPTION
This function configures the global face directory used by the GenXdev.AI
module for various face recognition and AI operations. Settings can be stored
persistently in preferences (default), only in the current session (using
-SessionOnly), or cleared from the session (using -ClearSession).

.PARAMETER FacesDirectory
A directory path where face image files are located. This directory
will be used by GenXdev.AI functions for face discovery and processing
operations.

.PARAMETER SessionOnly
When specified, stores the setting only in the current session (Global
variable) without persisting to preferences. Setting will be lost when the
session ends.

.PARAMETER ClearSession
When specified, clears only the session setting (Global variable) without
affecting persistent preferences.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SkipSession
Dont use alternative settings stored in session for AI preferences like
Language, Image collections, etc.

.EXAMPLE
Set-AIKnownFacesRootpath -FacesDirectory "C:\Faces"

Sets the faces directory persistently in preferences.

.EXAMPLE
Set-AIKnownFacesRootpath "C:\FacePictures"

Sets the faces directory persistently in preferences.

.EXAMPLE
Set-AIKnownFacesRootpath -FacesDirectory "C:\TempFaces" -SessionOnly

Sets the faces directory only for the current session (Global variable).

.EXAMPLE
Set-AIKnownFacesRootpath -ClearSession

Clears the session faces directory setting (Global variable) without affecting
persistent preferences.
#>
function Set-AIKnownFacesRootpath {

    [CmdletBinding(SupportsShouldProcess)]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]

    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'Directory path for face image files'
        )]
        [string] $FacesDirectory,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Dont use alternative settings stored in session for ' +
                'AI preferences like Language, Image collections, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )
    # fallback to default system directories
    $picturesPath = GenXdev\Expand-Path '~\Pictures'

    try {

        # attempt to get known folder path for pictures directory
        $picturesPath = GenXdev\Get-KnownFolderPath Pictures
    }
    catch {

        # fallback to default if known folder retrieval fails
        $picturesPath = GenXdev\Expand-Path '~\Pictures'
    }

    $params = GenXdev\Copy-IdenticalParamValues `
        -BoundParameters $PSBoundParameters `
        -FunctionName 'GenXdev\Set-GenXdevPreference'

    $null = GenXdev\Set-GenXdevPreference @params `
        -Name 'AIKnownFacesRootpath' `
        -Value "$((GenXdev\Expand-Path ([string]::IsNullOrWhiteSpace($FacesPath) ? "$picturesPath\Faces\" : $FacesPath) -CreateDirectory))"
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Set-AIMetaLanguage.ps1
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
Sets the default language and optionally the image directories for GenXdev.AI
image metadata operations.

.DESCRIPTION
This function configures the global default language for image metadata
operations in the GenXdev.AI module. Optionally, it can also set the global
image directories. Both settings are persisted in the module's preference
storage for use across sessions.

.PARAMETER Language
The default language to use for image metadata operations. This will be used
by Remove-ImageMetaData, Update-AllImageMetaData, and Find-Image functions
when no language is explicitly specified.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SessionOnly
When specified, stores the settings only in the current session (Global
variables) without persisting to preferences. Settings will be lost when the
session ends.

.PARAMETER ClearSession
When specified, clears only the session settings (Global variables) without
affecting persistent preferences.

.PARAMETER SkipSession
Dont use alternative settings stored in session for AI preferences like
Language, Image collections, etc.

.EXAMPLE
Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")

Sets the language and image directories persistently in preferences.

.EXAMPLE
Set-AIMetaLanguage "French"

Sets the language persistently in preferences.

.EXAMPLE
Set-AIMetaLanguage -Language "German" -SessionOnly

Sets the language only for the current session (Global variable).

.EXAMPLE
Set-AIMetaLanguage -ClearSession

Clears the session language setting (Global variable) without affecting
persistent preferences.
#>
function Set-AIMetaLanguage {

    [CmdletBinding(SupportsShouldProcess)]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
        'PSUseDeclaredVarsMoreThanAssignments',
        ''
    )]

    param(
        # specifies the default language for image metadata operations
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The default language for image metadata operations'
        )]
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
        [string] $Language,
        # specify database path for preference data files
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        # use alternative settings stored in session for AI preferences
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use alternative settings stored in session for AI preferences like Language, Image collections, etc'
        )]
        [switch] $SessionOnly,
        # clear alternative settings stored in session for AI preferences
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear alternative settings stored in session for AI preferences like Language, Image collections, etc'
        )]
        [switch] $ClearSession,
        # skip using alternative settings stored in session for AI preferences
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    $params = GenXdev\Copy-IdenticalParamValues `
        -BoundParameters $PSBoundParameters `
        -FunctionName 'GenXdev\Set-GenXdevPreference'

    $null = GenXdev\Set-GenXdevPreference @params `
        -Name 'AIMetaLanguage' `
        -Value "$(([string]::IsNullOrWhiteSpace($Language) ? (GenXdev\Get-DefaultWebLanguage) : $Language))"
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Show-FoundImagesInBrowser.ps1
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
Displays image search results in a masonry layout web gallery.

.DESCRIPTION
Takes image search results and displays them in a browser-based masonry layout.
Can operate in interactive mode with edit and delete capabilities, or in simple
display mode. Accepts image data objects typically from Find-Image and renders
them with hover tooltips showing metadata like face recognition, object
detection, and scene classification data.

.PARAMETER InputObject
Array of image data objects containing path, keywords, description, people,
objects, and scenes metadata.

.PARAMETER Interactive
When specified, connects to browser and adds additional buttons like Edit and
Delete for image management.

.PARAMETER Title
The title to display at the top of the image gallery.

.PARAMETER Description
The description text to display in the image gallery.

.PARAMETER Private
Opens in incognito/private browsing mode.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

.PARAMETER Edge
Opens in Microsoft Edge.

.PARAMETER Chrome
Opens in Google Chrome.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default
browser is.

.PARAMETER Firefox
Opens in Firefox.

.PARAMETER All
Opens in all registered modern browsers.

.PARAMETER Monitor
The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary
monitor, defaults to Global:DefaultSecondaryMonitor or 2 if not found.

.PARAMETER FullScreen
Opens in fullscreen mode.

.PARAMETER Width
The initial width of the webbrowser window.

.PARAMETER Height
The initial height of the webbrowser window.

.PARAMETER X
The initial X position of the webbrowser window.

.PARAMETER Y
The initial Y position of the webbrowser window.

.PARAMETER Left
Place browser window on the left side of the screen.

.PARAMETER Right
Place browser window on the right side of the screen.

.PARAMETER Top
Place browser window on the top side of the screen.

.PARAMETER Bottom
Place browser window on the bottom side of the screen.

.PARAMETER Centered
Place browser window in the center of the screen.

.PARAMETER ApplicationMode
Hide the browser controls.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions.

.PARAMETER DisablePopupBlocker
Disable the popup blocker.

.PARAMETER AcceptLang
Set the browser accept-lang http header.

.PARAMETER KeysToSend
Send specified keys to the browser window after opening.

.PARAMETER FocusWindow
Focus the browser window after opening.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus.

.PARAMETER NewWindow
Create a new browser window instead of reusing existing one.

.PARAMETER OnlyReturnHtml
Only return the generated HTML instead of displaying it in a browser.

.PARAMETER EmbedImages
Embed images as base64 data URLs instead of file:// URLs for better
portability.

.PARAMETER ShowOnlyPictures
Show only pictures in a rounded rectangle, no text below.

.PARAMETER SendKeyEscape
Escape control characters and modifiers when sending keys.

.PARAMETER SendKeyHoldKeyboardFocus
Prevents returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Use Shift+Enter instead of Enter when sending keys.

.PARAMETER SendKeyDelayMilliSeconds
Delay between different input strings in milliseconds when sending keys.

.PARAMETER NoBorders
Remove window borders and title bar for a cleaner appearance.

.PARAMETER PassThru
Return the browser window helper object for further manipulation.

.PARAMETER SideBySide
Place browser window side by side with PowerShell on the same monitor.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Show-FoundImagesInBrowser -InputObject $images
Displays the image results in a simple web gallery.

.EXAMPLE
Show-FoundImagesInBrowser -InputObject $images -Interactive -Title "My Photos"
Displays images in interactive mode with edit/delete buttons.

.EXAMPLE
showfoundimages $images -Private -FullScreen
Opens the gallery in private browsing mode in fullscreen.
#>
function Show-FoundImagesInBrowser {

    [CmdletBinding()]
    # PSScriptAnalyzer rule exception: allow use of $Global:chromeSession for browser session detection
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Alias('showfoundimages')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'Image data objects to display in the gallery.'
        )]
        [System.Object[]] $InputObject = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will connect to browser and adds additional buttons ' +
                'like Edit and Delete')
        )]
        [Alias('i', 'editimages')]
        [switch] $Interactive,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Title for the gallery'
        )]
        [string] $Title = 'Photo Gallery',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Hover over images to see face recognition and ' +
                'object detection data')
        )]
        [string] $Description = ('Hover over images to see face recognition ' +
            'and object detection data'),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force enable debugging port, stopping existing ' +
                'browsers if needed')
        )]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Microsoft Edge'
        )]
        [Alias('e')]
        [switch] $Edge,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Google Chrome'
        )]
        [Alias('ch')]
        [switch] $Chrome,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens in Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [Alias('c')]
        [switch] $Chromium,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Firefox'
        )]
        [Alias('ff')]
        [switch] $Firefox,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Uses the Playwright-managed WebKit browser'
        )]
        [switch] $Webkit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in all registered modern browsers'
        )]
        [switch] $All,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to ' +
                'Global:DefaultSecondaryMonitor or 2 if not found')
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -2,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [Alias('fs', 'f')]
        [switch] $FullScreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the webbrowser window'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the webbrowser window'
        )]
        [int] $Height = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial X position of the webbrowser window'
        )]
        [int] $X = -999999,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial Y position of the webbrowser window'
        )]
        [int] $Y = -999999,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the left side of the screen'
        )]
        [switch] $Left,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the right side of the screen'
        )]
        [switch] $Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the top side of the screen'
        )]
        [switch] $Top,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the bottom side of the screen'
        )]
        [switch] $Bottom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window in the center of the screen'
        )]
        [switch] $Centered,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hide the browser controls'
        )]
        [Alias('a', 'app', 'appmode')]
        [switch] $ApplicationMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent loading of browser extensions'
        )]
        [Alias('de', 'ne', 'NoExtensions')]
        [switch] $NoBrowserExtensions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable the popup blocker'
        )]
        [Alias('allowpopups')]
        [switch] $DisablePopupBlocker,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser accept-lang http header'
        )]
        [Alias('lang', 'locale')]
        [string] $AcceptLang = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [Alias('fw','focus')]
        [switch] $FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
        [Alias('fg')]
        [switch] $SetForeground,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximize the window after positioning'
        )]
        [switch] $Maximize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore the window to normal state after positioning'
        )]
        [switch] $SetRestored,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Create a new browser window instead of reusing ' +
                'existing one')
        )]
        [Alias('nw', 'new')]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Only return the generated HTML instead of ' +
                'displaying it in a browser.')
        )]
        [switch] $OnlyReturnHtml,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Embed images as base64 data URLs instead of ' +
                'file:// URLs for better portability.')
        )]
        [switch] $EmbedImages,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show only pictures in a rounded rectangle, no text below.'
        )]
        [Alias('NoMetadata', 'OnlyPictures')]
        [switch] $ShowOnlyPictures,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters and modifiers when sending keys'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus on target window when sending keys'
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter instead of Enter when sending keys'
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay between different input strings in milliseconds when sending keys'
        )]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Remove window borders and title bar for a cleaner appearance'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Return the browser window helper object for further manipulation'
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window side by side with PowerShell on the same monitor'
        )]
        [Alias('sbs')]
        [switch]$SideBySide,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use alternative settings stored in session for AI preferences'
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear alternative settings stored in session for AI preferences'
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Store settings only in persistent preferences without affecting session'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Auto-scroll the page by this many pixels per second (null to disable)'
        )]
        [int]$AutoScrollPixelsPerSecond = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Animate rectangles (objects/faces) in visible range, cycling every 300ms'
        )]
        [switch]$AutoAnimateRectangles,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force single column layout (centered, 1/3 screen width)'
        )]
        [switch]$SingleColumnMode = $false,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prefix to prepend to each image path (e.g. for remote URLs)'
        )]
        [string]$ImageUrlPrefix = ''
    )

    begin {

        # initialize collection to accumulate all input objects
        [System.Collections.Generic.List[[GenXdev.Helpers.ImageSearchResult]]] $results = @()
    }

    process {
        # iterate through each input object for processing
        $InputObject |
            Microsoft.PowerShell.Core\ForEach-Object `
                -ErrorAction SilentlyContinue {

                # handle enumerable objects without path property
                if ($_ -is [System.Collections.IEnumerable] -and
                (-not $_.PSObject.Properties['Path'])) {

                    # process each item in the enumerable collection
                    $_ |
                        Microsoft.PowerShell.Core\ForEach-Object {

                            # convert object to hashtable for processing
                            $hashTable = $_ |
                                GenXdev\ConvertTo-HashTable

                                # add object to results if it contains a path property
                                if ($hashTable.ContainsKey('Path')) {

                                    $null = $results.Add($_)
                                }
                            }
                            return
                        }

                        # add unique input objects to the results collection
                        $null = $results.Add($_)
                    }
    }

    end {

        # verify that we have images to display before proceeding
        if ((-not $results) -or ($null -eq $results) -or
            ($results.Count -eq 0)) {

            Microsoft.PowerShell.Utility\Write-Host (
                'No images to display in gallery.')
            return
        }

        # log the number of images being processed
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Processing $($results.Count) images for gallery display")

        # generate unique temp file path for masonry layout html
        $filePath = GenXdev\Expand-Path (
            "$env:TEMP\$([DateTime]::Now.Ticks)_images-masonry.html")

        # log the temporary file path being used
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Creating temporary HTML file at: $filePath")

        # set file attributes to temporary and hidden for cleanup
        try {

            $null = Microsoft.PowerShell.Management\Set-ItemProperty `
                -LiteralPath $filePath `
                -Name Attributes `
                -Value ([System.IO.FileAttributes]::Temporary -bor `
                    [System.IO.FileAttributes]::Hidden) `
                -ErrorAction SilentlyContinue
        }
        catch {

            # silently ignore errors when setting file attributes
        }

        # ensure title has a default value if empty
        if ([String]::IsNullOrWhiteSpace($Title)) {

            $Title = 'Image Gallery'
        }

        # ensure description has a default value if empty
        if ([String]::IsNullOrWhiteSpace($Description)) {

            $Description = 'Image gallery results'
        }

        # copy parameter values for masonry layout html generation
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\GenerateMasonryLayoutHtml' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # configure interactive mode capabilities for editing
        $params.CanEdit = $Interactive

        # configure interactive mode capabilities for deletion
        $params.CanDelete = $Interactive

        # generate masonry layout html with specified parameters
        $null = GenXdev\GenerateMasonryLayoutHtml @params `
            -Images $results -FilePath $filePath

        # log successful html generation
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Generated masonry layout HTML successfully')

        # return html content if only html is requested
        if ($OnlyReturnHtml) {

            # read the generated html file content
            $html = Microsoft.PowerShell.Management\Get-Content `
                -LiteralPath $filePath `
                -Raw

            # delete the temporary file
            $null = [io.file]::Delete($filePath)

            # return the html content to caller
            return $html
        }

        # handle interactive mode with browser connection
        if ($Interactive) {

            # log that interactive mode is starting
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Starting interactive mode with browser connection')

            # construct file url for browser navigation
            $filePathUrl = "file:///$($filePath -replace '\\', '/')"

            # log the file url being used
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Using file URL: $filePathUrl")

            # attempt to select existing webbrowser tab
            try {

                $null = GenXdev\Select-WebbrowserTab `
                    -Chrome:$Chrome `
                    -Edge:$Edge

                # check if chrome session is available
                if ($null -eq $Global:chromeSession) {

                    throw 'No active web browser session found.'
                }
            }
            catch {

                # close browser if selection fails
                $null = GenXdev\Close-Webbrowser `
                    -Force `
                    -Chromium `
                    -Chrome:$Chrome `
                    -Edge:$Edge
            }

            # copy parameter values for open-webbrowser function
            $params = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Open-Webbrowser' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # configure new window behavior based on parameter
            $params.NewWindow = $NewWindow

            # open generated html file in browser window
            $null = GenXdev\Open-Webbrowser `
                @params `
                -Url $filePathUrl

            # create tab name pattern for selection
            $name = "*$([IO.Path]::GetFileNameWithoutExtension($filePath))*"

            # select the specific tab containing our gallery
            $null = GenXdev\Select-WebbrowserTab -Name $name

            # clear the console for interactive mode display
            $null = Clear-Host

            # display interactive mode header
            Microsoft.PowerShell.Utility\Write-Host (
                '===================================================================') `
                -ForegroundColor Cyan

            Microsoft.PowerShell.Utility\Write-Host (
                '  PowerShell is waiting for instructions from the webpage') `
                -ForegroundColor Yellow

            Microsoft.PowerShell.Utility\Write-Host (
                '      (e.g., delete or edit image actions) ENTER to QUIT') `
                -ForegroundColor Yellow

            Microsoft.PowerShell.Utility\Write-Host (
                '===================================================================') `
                -ForegroundColor Cyan

            # display exit instruction
            Microsoft.PowerShell.Utility\Write-Host 'Press any key to quit...'

            # main interactive loop waiting for user actions
            while (-not [Console]::KeyAvailable) {

                try {

                    # get actions from browser javascript
                    $actions = @(GenXdev\Invoke-WebbrowserEvaluation (
                            'return window.getActions()') `
                            -ErrorAction SilentlyContinue)

                    # log found actions for debugging
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Found $($actions |
                            Microsoft.PowerShell.Utility\ConvertTo-Json)")

                    # process each action received from the browser
                    foreach ($action in $actions) {

                        try {

                            # handle different action types
                            switch ($action.action) {

                                'edit' {

                                    # display edit action message
                                    Microsoft.PowerShell.Utility\Write-Host (
                                        'Editing image metadata for ' +
                                        "$($action.path)")

                                    # convert file uri to local path if needed
                                    $imagePath = $action.path

                                    # handle file uri conversion
                                    if ($imagePath -like 'file:///*') {

                                        # convert file:/// uri to local path
                                        $imagePath = $imagePath -replace (
                                            '^file:///', '')

                                        # replace forward slashes with backslashes
                                        $imagePath = $imagePath -replace '/', '\'

                                        # handle windows drive letters
                                        if ($imagePath -match '^[A-Za-z]:') {
                                            # path already has drive letter,
                                            # no changes needed
                                        }
                                    }

                                    # ensure paint.net is available for editing
                                    $null = GenXdev\EnsurePaintNet

                                    # inform user about paint.net requirement
                                    Microsoft.PowerShell.Utility\Write-Verbose (
                                        ('Paint.NET is not installed or not ' +
                                        'found in PATH. Please install it to ' +
                                        'use the edit feature.'))

                                    # handle cropping if bounding box is provided
                                    if ($null -ne $action.boundingBox) {

                                        # initialize variables for image processing
                                        $tempFilePath = $null

                                        $image = $null

                                        try {

                                            # use .net to crop the image using the
                                            # bounding box
                                            $image = [System.Drawing.Image]::FromFile(
                                                $imagePath)

                                            # validate and clamp bounding box
                                            # coordinates
                                            $box = $action.boundingBox

                                            $x_min = [Math]::Max(0, [Math]::Min(
                                                    $box.x_min, $image.Width - 1))

                                            $y_min = [Math]::Max(0, [Math]::Min(
                                                    $box.y_min, $image.Height - 1))

                                            $x_max = [Math]::Max($x_min + 1,
                                                [Math]::Min($box.x_max,
                                                    $image.Width))

                                            $y_max = [Math]::Max($y_min + 1,
                                                [Math]::Min($box.y_max,
                                                    $image.Height))

                                            # calculate validated width and height
                                            $width = $x_max - $x_min

                                            $height = $y_max - $y_min

                                            # log original bounding box information
                                            Microsoft.PowerShell.Utility\Write-Verbose (
                                                ("Original box: x_min=$($box.x_min), " +
                                                "y_min=$($box.y_min), " +
                                                "x_max=$($box.x_max), " +
                                                "y_max=$($box.y_max), " +
                                                "width=$($box.width), " +
                                                "height=$($box.height)"))

                                            # log image dimensions
                                            Microsoft.PowerShell.Utility\Write-Verbose (
                                                ('Image dimensions: ' +
                                                "$($image.Width) x $($image.Height)"))

                                            # log validated bounding box information
                                            Microsoft.PowerShell.Utility\Write-Verbose (
                                                ("Validated box: x_min=$x_min, " +
                                                "y_min=$y_min, x_max=$x_max, " +
                                                "y_max=$y_max, width=$width, " +
                                                "height=$height"))

                                            # ensure minimum dimensions
                                            if ($width -le 0 -or $height -le 0) {

                                                # warn about invalid dimensions
                                                Microsoft.PowerShell.Utility\Write-Verbose (
                                                    ('Invalid bounding box ' +
                                                    "dimensions: width=$width, " +
                                                    "height=$height"))
                                                continue
                                            }

                                            # create a rectangle for the bounding box
                                            $cropRect = [System.Drawing.Rectangle]::new(
                                                $x_min, $y_min, $width, $height)

                                            # create a new bitmap for the cropped region
                                            $croppedBitmap = [System.Drawing.Bitmap]::new(
                                                $width, $height)

                                            $croppedGraphics = [System.Drawing.Graphics]::FromImage(
                                                $croppedBitmap)

                                            # draw the cropped portion of the original
                                            # image
                                            $destRect = [System.Drawing.Rectangle]::new(
                                                0, 0, $width, $height)

                                            # perform the image cropping operation
                                            $null = $croppedGraphics.DrawImage(
                                                $image, $destRect, $cropRect,
                                                [System.Drawing.GraphicsUnit]::Pixel)

                                            # determine a safe title for the file
                                            $title = 'crop'

                                            # use face name if available
                                            if (-not [String]::IsNullOrWhiteSpace(
                                                    $action.faceName)) {

                                                $title = $action.faceName
                                            }
                                            # use object name if available
                                            elseif (-not [String]::IsNullOrWhiteSpace(
                                                    $action.objectName)) {

                                                $title = $action.objectName
                                            }

                                            # sanitize the title for use in filename
                                            $title = $title -replace '[^\w\-_]', '_'

                                            # get a windows temp file path for the
                                            # cropped image
                                            $tempFilePath = GenXdev\Expand-Path (
                                                ("$env:TEMP\" +
                                                "$([DateTime]::Now.Ticks)_$title." +
                                                "$([IO.Path]::GetExtension($imagePath).TrimStart('.'))"))

                                            # save the cropped image
                                            $null = $croppedBitmap.Save($tempFilePath,
                                                [System.Drawing.Imaging.ImageFormat]::Png)

                                            # clean up graphics object
                                            $null = $croppedGraphics.Dispose()

                                            $null = $croppedBitmap.Dispose()
                                        }
                                        finally {

                                            # ensure image object is disposed
                                            if ($image) {

                                                $null = $image.Dispose()
                                            }
                                        }

                                        # open the cropped image in paint.net
                                        if ($tempFilePath) {

                                            # check if paint.net is already running
                                            [bool] $wasRunning = Microsoft.PowerShell.Management\Get-Process paintdotnet `
                                                -ErrorAction SilentlyContinue

                                            # launch paint.net with the cropped image
                                            $null = paintdotnet.exe $tempFilePath

                                            # wait for paint.net to initialize
                                            Microsoft.PowerShell.Utility\Start-Sleep 2

                                            # get paint.net window handle
                                            $w = GenXdev\Get-Window `
                                                -ProcessName paintdotnet `
                                                -ErrorAction silentlyContinue

                                            # position and maximize paint.net window
                                            if ($w) {

                                                $null = GenXdev\Set-WindowPosition `
                                                    -WindowHelper $w `
                                                    -Monitor 0 `
                                                    -Maximize `
                                                    -SetForeground `
                                                    -FocusWindow
                                            }
                                        }
                                    }
                                    else {

                                        # open the original image in paint.net if no
                                        # bounding boxes provided
                                        [bool] $wasRunning = Microsoft.PowerShell.Management\Get-Process paintdotnet `
                                            -ErrorAction SilentlyContinue

                                        # launch paint.net with the original image
                                        $null = paintdotnet.exe $imagePath

                                        # wait for paint.net to initialize
                                        Microsoft.PowerShell.Utility\Start-Sleep 2

                                        # get paint.net window handle
                                        $w = GenXdev\Get-Window `
                                            -ProcessName paintdotnet `
                                            -ErrorAction silentlyContinue

                                        # position and maximize paint.net window
                                        if ($w) {

                                            $null = GenXdev\Set-WindowPosition `
                                                -WindowHelper $w `
                                                -Monitor 0 `
                                                -Maximize `
                                                -SetForeground `
                                                -FocusWindow
                                        }
                                    }
                                }

                                'delete' {

                                    # display delete action message
                                    Microsoft.PowerShell.Utility\Write-Host (
                                        "Deleting image $($action.path)")

                                    # convert file uri to local path if needed
                                    $imagePath = $action.path

                                    # handle file uri conversion
                                    if ($imagePath -like 'file:///*') {

                                        # convert file:/// uri to local path
                                        $imagePath = $imagePath -replace (
                                            '^file:///', '')

                                        # replace forward slashes with backslashes
                                        $imagePath = $imagePath -replace '/', '\'

                                        # handle windows drive letters
                                        if ($imagePath -match '^[A-Za-z]:') {
                                            # path already has drive letter,
                                            # no changes needed
                                        }
                                    }

                                    # handle delete action by moving to recycle bin
                                    $null = GenXdev\Move-ToRecycleBin `
                                       -Path $imagePath
                                }
                            }
                        }
                        catch {

                            # warn about failed action processing
                            Microsoft.PowerShell.Utility\Write-Verbose (
                                ("Failed to process action $($action.action) " +
                                "for $($action.path): $_"))
                        }
                    }
                }
                catch {

                    # sleep and continue on general errors
                    Microsoft.PowerShell.Utility\Start-Sleep 1
                    continue
                }

                # sleep to prevent excessive polling
                Microsoft.PowerShell.Utility\Start-Sleep 1
            }

            # exit interactive mode
            return
        }

        # copy identical parameter values for open-webbrowser
        $parameters = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # open generated html file in browser window and let it return naturally
        GenXdev\Open-Webbrowser `
            @parameters -Url $filePath
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Start-AudioTranscription.ps1
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
Transcribes an audio file, video file, or a recording device to text

.DESCRIPTION
Transcribes an audio file, video file, or a recording device to text using
the Whisper AI model. The function can handle various audio and video formats,
convert them to the appropriate format for transcription, and optionally
translate the output to a different language. Supports SRT subtitle format
output and various audio processing parameters for fine-tuning the
transcription quality.

.PARAMETER Input
The file path of the audio or video file to transcribe. Accepts FileInfo
objects or file paths from pipeline. If not provided, records from microphone.

.PARAMETER AudioDevice
Audio device name or GUID (supports wildcards, picks first match).

.PARAMETER LanguageIn
The language to expect in the audio. E.g. "English", "French", "German",
"Dutch"

.PARAMETER LanguageOut
The language to translate to. E.g. "french", "german", "dutch"

.PARAMETER WithTokenTimestamps
Whether to include token timestamps in the output.

.PARAMETER TokenTimestampsSumThreshold
Sum threshold for token timestamps, defaults to 0.5.

.PARAMETER SplitOnWord
Whether to split on word boundaries.

.PARAMETER MaxTokensPerSegment
Maximum number of tokens per segment.

.PARAMETER IgnoreSilence
Whether to ignore silence (will mess up timestamps).

.PARAMETER MaxDurationOfSilence
Maximum duration of silence before automatically stopping recording.

.PARAMETER SilenceThreshold
Silence detect threshold (0..32767 defaults to 30)

.PARAMETER CpuThreads
Number of CPU threads to use, defaults to 0 (auto).

.PARAMETER Temperature
Temperature for speech recognition.

.PARAMETER TemperatureInc
Temperature increment.

.PARAMETER Prompt
Prompt to use for the model.

.PARAMETER SuppressRegex
Regex to suppress tokens from the output.

.PARAMETER WithProgress
Whether to show progress.

.PARAMETER AudioContextSize
Size of the audio context.

.PARAMETER DontSuppressBlank
Whether to NOT suppress blank lines.

.PARAMETER MaxDuration
Maximum duration of the audio.

.PARAMETER Offset
Offset for the audio.

.PARAMETER MaxLastTextTokens
Maximum number of last text tokens.

.PARAMETER SingleSegmentOnly
Whether to use single segment only.

.PARAMETER PrintSpecialTokens
Whether to print special tokens.

.PARAMETER MaxSegmentLength
Maximum segment length.

.PARAMETER MaxInitialTimestamp
Start timestamps at this moment.

.PARAMETER LengthPenalty
Length penalty.

.PARAMETER EntropyThreshold
Entropy threshold.

.PARAMETER LogProbThreshold
Log probability threshold.

.PARAMETER NoSpeechThreshold
No speech threshold.

.PARAMETER NoContext
Don't use context.

.PARAMETER WithBeamSearchSamplingStrategy
Use beam search sampling strategy.

.PARAMETER ModelType
Whisper model type to use, defaults to LargeV3Turbo.

.PARAMETER SRT
Output in SRT format.

.PARAMETER PassThru
Returns objects instead of strings.

.PARAMETER UseDesktopAudioCapture
Whether to use desktop audio capture instead of microphone input

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SkipSession
Dont use alternative settings stored in session for AI preferences like
Language, Image collections, etc.

.PARAMETER VOX
Use silence detection to automatically stop recording

.EXAMPLE
Start-AudioTranscription -Input "C:\path\to\audio.wav" `
    -LanguageIn "English" -LanguageOut "French" -SRT

.EXAMPLE
transcribefile "C:\video.mp4" "English"

.EXAMPLE
Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"

.EXAMPLE
Start-AudioTranscription  # Records from microphone when no file specified
###############################################################################>
function Start-AudioTranscription {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('transcribefile', 'transcribe')]

    param(
        [Alias("WaveFile", "FilePath", "MediaFile")]
        [Parameter(
            Mandatory = $false,
            Position = 0,
            ValueFromPipeline = $true,
            HelpMessage = 'The file path of the audio or video file to transcribe. If not provided, records from microphone.'
        )]
        [object] $Input,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio device name or GUID (supports wildcards, picks first match)'
        )]
        [string] $AudioDevice,
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'The language to expect in the audio.'
        )]
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
            Position = 2,
            HelpMessage = 'Sets the language to translate to.'
        )]
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
        [string] $LanguageOut = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sum threshold for token timestamps, defaults to 0.5'
        )]
        [float] $TokenTimestampsSumThreshold = 0.5,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum number of tokens per segment'
        )]
        [int] $MaxTokensPerSegment,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Maximum duration of silence before automatically ' +
                'stopping recording')
        )]
        [object] $MaxDurationOfSilence,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Silence detect threshold (0..32767 defaults to 30)'
        )]
        [ValidateRange(0, 32767)]
        [int] $SilenceThreshold,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of CPU threads to use, defaults to 0 (auto)'
        )]
        [int] $CpuThreads = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for speech recognition'
        )]
        [ValidateRange(0, 1)]
        [float] $Temperature = 0.5,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature increment'
        )]
        [ValidateRange(0, 1)]
        [float] $TemperatureInc,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prompt to use for the model'
        )]
        [string] $Prompt,
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
            HelpMessage = 'Maximum duration of the audio'
        )]
        [object] $MaxDuration,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Offset for the audio'
        )]
        [object] $Offset,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum number of last text tokens'
        )]
        [int] $MaxLastTextTokens,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum segment length'
        )]
        [int] $MaxSegmentLength,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Start timestamps at this moment'
        )]
        [object] $MaxInitialTimestamp,
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
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to include token timestamps in the output'
        )]
        [switch] $WithTokenTimestamps,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to split on word boundaries'
        )]
        [switch] $SplitOnWord,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to ignore silence (will mess up timestamps)'
        )]
        [switch] $IgnoreSilence,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to show progress'
        )]
        [switch] $WithProgress,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to NOT suppress blank lines'
        )]
        [switch] $DontSuppressBlank,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to use single segment only'
        )]
        [switch] $SingleSegmentOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether to print special tokens'
        )]
        [switch] $PrintSpecialTokens,
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
            HelpMessage = 'Whisper model type to use, defaults to LargeV3Turbo'
        )]
        [ValidateSet('Tiny', 'TinyEn', 'Base', 'BaseEn', 'Small', 'SmallEn', 'Medium', 'MediumEn', 'LargeV1', 'LargeV2', 'LargeV3', 'LargeV3Turbo')]
        [string] $ModelType,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Output in SRT format.'
        )]
        [switch] $SRT,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns objects instead of strings'
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Whether to use desktop audio capture instead of ' +
                'microphone input')
        )]
        [switch] $UseDesktopAudioCapture,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Use both desktop and recording device"
        )]
        [switch] $UseDesktopAndRecordingDevice,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'AI preferences like Language, Image collections, etc')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Dont use alternative settings stored in session ' +
                'for AI preferences like Language, Image ' +
                'collections, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use silence detection to automatically stop recording'
        )]
        [switch] $VOX
    )

    begin {

        # store PSBoundParameters in a variable to avoid nested function issues
        $myPSBoundParameters = $PSBoundParameters

        # configure voice activation detection (VOX) settings
        if ($VOX -eq $true) {

            # output vox configuration message for verbose logging
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Configuring VOX settings'
            )

            # set default max duration of silence for vox
            if (-not $myPSBoundParameters.ContainsKey('MaxDurationOfSilence')) {

                $null = $myPSBoundParameters.Add(
                    'MaxDurationOfSilence',
                    [System.TimeSpan]::FromSeconds(4)
                )
            }
            else {
                $myPSBoundParameters['MaxDurationOfSilence'] = (
                    [System.TimeSpan]::FromSeconds(4)
                )
            }

            # # enable ignore silence for vox mode
            # if (-not $myPSBoundParameters.ContainsKey('IgnoreSilence')) {

            #     $null = $myPSBoundParameters.Add('IgnoreSilence', $true)
            # }
            # else {
            #     $myPSBoundParameters['IgnoreSilence'] = $true
            # }

            # remove vox parameter as it's processed
            if ($myPSBoundParameters.ContainsKey('VOX')) {

                $null = $myPSBoundParameters.Remove('VOX')
            }
        }

        # determine if translation should be performed based on user intent
        # only translate when languageout parameter is explicitly provided by user
        # and it's different from languagein
        if ($PSBoundParameters.ContainsKey('LanguageOut') -and `
            ($LanguageIn -ne $LanguageOut)) {

            $skipTranslation = $false
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Translation enabled: LanguageOut parameter provided and ' +
                'differs from LanguageIn'
            )
        }
        else {

            $skipTranslation = $true
            if ($PSBoundParameters.ContainsKey('LanguageOut')) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Translation skipped: LanguageIn and LanguageOut are " +
                    "identical ('${LanguageIn}')"
                )
            }
            else {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Translation skipped: LanguageOut parameter not provided'
                )
            }
        }

        # copy identical parameter values for ai meta language helper function
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $myPSBoundParameters `
            -FunctionName 'GenXdev\Get-AIMetaLanguage' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local -ErrorAction SilentlyContinue)

        # resolve the input language to a standard format
        if (-not [string]::IsNullOrWhiteSpace($LanguageIn)) {

            $LanguageIn = GenXdev\Get-AIMetaLanguage @params `
                -Language $LanguageIn
        }
        else {

            $LanguageIn = GenXdev\Get-AIMetaLanguage @params
        }

        # resolve the output language to a standard format (only if translation is needed)
        if (-not $skipTranslation) {

            if (-not [string]::IsNullOrWhiteSpace($LanguageOut)) {

                try {

                    $LanguageOut = GenXdev\Get-AIMetaLanguage @params `
                        -Language $LanguageOut
                }
                catch {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Failed to resolve LanguageOut '$LanguageOut': $PSItem"
                    )
                    $skipTranslation = $true
                }
            }
        }

        # convert maxdurationofsilence to timespan if it's not already
        if ($myPSBoundParameters.ContainsKey('MaxDurationOfSilence') -and `
            (-not ($MaxDurationOfSilence -is [System.TimeSpan]))) {

            $MaxDurationOfSilence = [System.TimeSpan]::FromSeconds(
                $MaxDurationOfSilence
            )
            $myPSBoundParameters['MaxDurationOfSilence'] = $MaxDurationOfSilence
        }

        # convert maxduration to timespan if it's not already
        if ($myPSBoundParameters.ContainsKey('MaxDuration') -and `
            (-not ($MaxDuration -is [System.TimeSpan]))) {

            $MaxDuration = [System.TimeSpan]::FromSeconds($MaxDuration)
            $myPSBoundParameters['MaxDuration'] = $MaxDuration
        }

        # convert offset to timespan if it's not already
        if ($myPSBoundParameters.ContainsKey('Offset') -and `
            (-not ($Offset -is [System.TimeSpan]))) {

            $Offset = [System.TimeSpan]::FromSeconds($Offset)
            $myPSBoundParameters['Offset'] = $Offset
        }

        # convert maxinitialtimestamp to timespan if it's not already
        if ($myPSBoundParameters.ContainsKey('MaxInitialTimestamp') -and `
            (-not ($MaxInitialTimestamp -is [System.TimeSpan]))) {

            $MaxInitialTimestamp = [System.TimeSpan]::FromSeconds(
                $MaxInitialTimestamp
            )
            $myPSBoundParameters['MaxInitialTimestamp'] = $MaxInitialTimestamp
        }

        # locate the ffmpeg executable path in winget installation directory
        # try multiple possible locations for ffmpeg
        $ffmpegPath = $null

        # first try the symlink location (fastest approach)
        $symlinkPath = "${env:LOCALAPPDATA}\Microsoft\WinGet\Links\ffmpeg.exe"
        if ([System.IO.File]::Exists($symlinkPath)) {

            $ffmpegPath = $symlinkPath
        }

        # fallback to recursive search in winget directory
        if ([string]::IsNullOrEmpty($ffmpegPath)) {

            $ffmpegPath = (Microsoft.PowerShell.Management\Get-ChildItem `
                    -LiteralPath "${env:LOCALAPPDATA}\Microsoft\WinGet" `
                    -Filter "ffmpeg.exe" `
                    -Recurse -ErrorAction SilentlyContinue |
                    Microsoft.PowerShell.Utility\Select-Object -First 1 |
                    Microsoft.PowerShell.Core\ForEach-Object FullName)
        }

        # initialize script-scope variables for input tracking
        $script:InputProvided = $false

        # add language parameter if languagein was specified
        if ($myPSBoundParameters.ContainsKey('LanguageIn')) {

            $null = $myPSBoundParameters.Add('Language', $LanguageIn)
        }

        # remove withtranslate parameter if it exists (legacy cleanup)
        if ($myPSBoundParameters.ContainsKey('WithTranslate')) {

            $null = $myPSBoundParameters.Remove('WithTranslate', $true)
        }

        # handle srt format parameter dependencies
        if (($SRT -eq $true) -and `
            (-not $myPSBoundParameters.ContainsKey('PassThru'))) {

            $null = $myPSBoundParameters.Add('PassThru', $true)
        }
        else {

            if ((-not $SRT) -and $myPSBoundParameters.ContainsKey('PassThru')) {

                $null = $myPSBoundParameters.Remove('PassThru')
            }
        }

        # ensure error action is set to stop for proper error handling
        # if (-not $myPSBoundParameters.ContainsKey('ErrorAction')) {

        #     $null = $myPSBoundParameters.Add('ErrorAction', 'Stop')
        # }

        # set cpu threads if not specified by user
        if (-not $myPSBoundParameters.ContainsKey('CpuThreads')) {

            $null = $myPSBoundParameters.Add('CpuThreads', `
                (GenXdev\Get-NumberOfCpuCores))
        }
    }

    process {

        # collect input items from both parameter and pipeline
        $inputItems = @()

        # first, check if input parameter was provided
        if ($myPSBoundParameters.ContainsKey('Input')) {

            $inputItems += $myPSBoundParameters['Input']
        }

        # then, collect any pipeline input
        $Input |
            Microsoft.PowerShell.Core\ForEach-Object {

                $inputItems += $PSItem
            }

        # process each input item
        $inputItems |
            Microsoft.PowerShell.Core\ForEach-Object {

                $currentInput = $PSItem

                # convert input to file path based on object type
                $filePathString = if ($currentInput -is [string] -and `
                        -not [string]::IsNullOrWhiteSpace($currentInput)) {

                    GenXdev\Expand-Path $currentInput
                }
                elseif ($currentInput -is [System.IO.FileInfo]) {

                    $currentInput.FullName
                }
                elseif ($currentInput -and `
                        $currentInput.PSObject.Properties['FullName']) {

                    $currentInput.FullName
                }
                elseif ($currentInput -and `
                        $currentInput.PSObject.Properties['Path']) {

                    GenXdev\Expand-Path $currentInput.Path
                }
                else {

                    $null
                }

                # skip if no valid file path
                if ([string]::IsNullOrWhiteSpace($filePathString)) {

                    return
                }

                # mark that we have input, user does not want to record
                $script:InputProvided = $true

                # check if file exists
                if (-not [System.IO.File]::Exists($filePathString)) {

                    Microsoft.PowerShell.Utility\Write-Warning (
                        "File not found: '${filePathString}'"
                    )
                    return
                }

                # define helper function to check if winget powershell client is installed
                function IsWinGetInstalled {

                    # try to import the winget client module
                    Microsoft.PowerShell.Core\Import-Module `
                        'Microsoft.WinGet.Client' `
                        -ErrorAction SilentlyContinue

                    # check if the module was successfully loaded
                    $moduleObj = Microsoft.PowerShell.Core\Get-Module `
                        'Microsoft.WinGet.Client' -ErrorAction SilentlyContinue

                    if ($null -eq $moduleObj) {

                        return $false
                    }

                    return $true
                }

                # define helper function to install winget powershell client
                function InstallWinGet {

                    Microsoft.PowerShell.Utility\Write-Verbose `
                        'Installing WinGet PowerShell client..'

                    # check for installation consent before proceeding
                    $consent = GenXdev\Confirm-InstallationConsent `
                        -ApplicationName 'Microsoft.WinGet.Client' `
                        -Source 'PowerShell Gallery' `
                        -Description 'PowerShell module for WinGet package management, required for automated FFmpeg installation' `
                        -Publisher 'Microsoft'

                    if (-not $consent) {
                        throw 'Installation consent denied for Microsoft.WinGet.Client module. Cannot proceed with automatic package installation.'
                    }

                    # install the winget client module
                    PowerShellGet\Install-Module 'Microsoft.WinGet.Client' `
                        -Force -AllowClobber

                    # import the newly installed module
                    Microsoft.PowerShell.Core\Import-Module `
                        'Microsoft.WinGet.Client'
                }

                # define helper function to install ffmpeg using winget
                function InstallFFmpeg {

                    # check if ffmpeg is already installed
                    if ([System.IO.File]::Exists($ffmpegPath)) {

                        return
                    }

                    # ensure winget is installed before proceeding
                    if (-not (IsWinGetInstalled)) {

                        InstallWinGet
                    }

                    # define the ffmpeg package identifier
                    $ffmpeg = 'Gyan.FFmpeg'

                    # check if ffmpeg package is available
                    $ffmpegPackage = Microsoft.WinGet.Client\Get-WinGetPackage `
                        -Id $ffmpeg

                    # install ffmpeg if not found
                    if ($null -eq $ffmpegPackage) {

                        Microsoft.PowerShell.Utility\Write-Verbose `
                            'Installing ffmpeg..'

                        # check for installation consent before proceeding
                        $consent = GenXdev\Confirm-InstallationConsent `
                            -ApplicationName 'FFmpeg' `
                            -Source 'WinGet' `
                            -Description 'Audio/video processing library required for converting media files to formats compatible with speech recognition' `
                            -Publisher 'Gyan'

                        if (-not $consent) {
                            throw 'Installation consent denied for FFmpeg. Cannot proceed with media file conversion for transcription.'
                        }

                        try {

                            # attempt to install using winget client module
                            Microsoft.WinGet.Client\Install-WinGetPackage `
                                -Id $ffmpeg `
                                -Force
                        }
                        catch {

                            # fallback to winget command line tool
                            winget install $ffmpeg
                        }

                        # update the ffmpeg path after installation
                        # try multiple possible locations for ffmpeg
                        $ffmpegPath = $null

                        # first try the symlink location (fastest)
                        $symlinkPath = (
                            "${env:LOCALAPPDATA}\Microsoft\WinGet\Links\ffmpeg.exe"
                        )
                        if ([System.IO.File]::Exists($symlinkPath)) {

                            $ffmpegPath = $symlinkPath
                        }

                        # fallback to recursive search in winget directory
                        if ([string]::IsNullOrEmpty($ffmpegPath)) {

                            $ffmpegPath = (
                                Microsoft.PowerShell.Management\Get-ChildItem `
                                    -Path "${env:LOCALAPPDATA}\Microsoft\WinGet" `
                                    -Filter "ffmpeg.exe" `
                                    -Recurse -ErrorAction SilentlyContinue |
                                    Microsoft.PowerShell.Utility\Select-Object `
                                        -First 1 |
                                    Microsoft.PowerShell.Core\ForEach-Object `
                                        FullName
                                )
                            }
                        }
                    }

                    # ensure ffmpeg is installed before proceeding
                    $null = InstallFFmpeg

                    # expand the input file path to absolute path
                    $inputFile = GenXdev\Expand-Path $filePathString

                    # create a temporary wav file for conversion
                    $outputFile = [System.IO.Path]::GetTempFileName() + '.wav'

                    # inform user about the conversion process
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Converting the file '$inputFile' to WAV format.."
                    )

                    # locate ffmpeg path in case it's not passed correctly
                    # try multiple possible locations for ffmpeg
                    if ([string]::IsNullOrEmpty($ffmpegPath)) {

                        # first try the symlink location (fastest)
                        $symlinkPath = (
                            "${env:LOCALAPPDATA}\Microsoft\WinGet\Links\ffmpeg.exe"
                        )
                        if ([System.IO.File]::Exists($symlinkPath)) {

                            $ffmpegPath = $symlinkPath
                        }

                        # fallback to recursive search in winget directory
                        if ([string]::IsNullOrEmpty($ffmpegPath)) {

                            $ffmpegPath = (
                                Microsoft.PowerShell.Management\Get-ChildItem `
                                    -Path "${env:LOCALAPPDATA}\Microsoft\WinGet" `
                                    -Filter "ffmpeg.exe" `
                                    -Recurse -ErrorAction SilentlyContinue |
                                    Microsoft.PowerShell.Utility\Select-Object `
                                        -First 1 |
                                    Microsoft.PowerShell.Core\ForEach-Object `
                                        FullName
                                )
                            }
                        }

                        # convert file to wav with specific audio parameters for whisper
                        & $ffmpegPath -i "$inputFile" -ac 1 -ar 16000 `
                            -sample_fmt s16 "$outputFile" -loglevel quiet -y

                        # check if the conversion was successful
                        $success = $LASTEXITCODE -eq 0

                        # handle conversion failure
                        if (-not $success) {

                            Microsoft.PowerShell.Utility\Write-Verbose (
                                "Failed to convert the file '$inputFile' to WAV format."
                            )

                            # clean up the temporary file if it exists
                            if ([System.IO.File]::Exists($outputFile)) {

                                $null = Microsoft.PowerShell.Management\Remove-Item `
                                    -LiteralPath $outputFile -Force
                            }

                            return
                        }

                        # inform user about the transcription process
                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Processing audio file: " +
                            "$(GenXdev\Find-Item $inputFile -NoRecurse)"
                        )

                        # check if modeltype was not explicitly set by user
                        if (-not $myPSBoundParameters.ContainsKey("ModelType")) {

                            # use most accurate model for batch processing
                            $ModelType = 'LargeV3Turbo'

                            # add modeltype to bound parameters for downstream functions
                            $null = $myPSBoundParameters.Add('ModelType', $ModelType)
                        }

                        # set the input file for the transcription engine
                        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
                            -BoundParameters $myPSBoundParameters `
                            -FunctionName 'GenXdev\Get-SpeechToText'

                        # set language using the resolved language format
                        if ($PSBoundParameters.ContainsKey("LanguageIn")) {
                            $invocationArguments.LanguageIn = (
                                GenXdev\Get-WebLanguageDictionary
                            )[$LanguageIn]
                        }
                        else {
                            if ($invocationArguments.ContainsKey("LanguageIn")) {
                                $null = $invocationArguments.Remove("LanguageIn")
                            }
                        }

                        if ($LanguageOut -eq "English") {

                            $invocationArguments.WithTranslate = $true;
                            $skipTranslation = $true;
                        }

                        $invocationArguments.Input = $outputFile

                        try {
                            # add shouldprocess check before executing the operation
                            if (-not $PSCmdlet.ShouldProcess(
                                    "Start processing file '$outputFile'", 'Start'
                                )) {

                                continue
                            }

                            # check if output should be in srt subtitle format
                            if ($SRT) {

                                # initialize subtitle counter for srt format
                                $i = 1

                                GenXdev\Get-SpeechToText `
                                    @invocationArguments |
                                    Microsoft.PowerShell.Core\ForEach-Object {

                                        $result = $PSItem

                                        # check if translation to output language is required
                                        if (-not [string]::IsNullOrWhiteSpace($LanguageOut) `
                                                -and -not $skipTranslation) {

                                            Microsoft.PowerShell.Utility\Write-Verbose (
                                                "Translating text to $LanguageOut for: " +
                                                "`"$($result.Text)`".."
                                            )

                                            try {

                                                # prepare parameters for text translation
                                                $translateParams = `
                                                    GenXdev\Copy-IdenticalParamValues `
                                                    -BoundParameters $myPSBoundParameters `
                                                    -FunctionName `
                                                    'GenXdev\Get-TextTranslation'

                                                if ($translateParams.ContainsKey('Prompt')) {
                                                    $null = $translateParams.Remove('Prompt')
                                                }
                                                if ($translateParams.ContainsKey('Instructions')) {
                                                    $null = $translateParams.Remove('Instructions')
                                                }

                                                # create new result with translated text
                                                $result = @{
                                                    Text  = (GenXdev\Get-TextTranslation `
                                                            @translateParams `
                                                            -Text:($result.Text) `
                                                            -Language:$LanguageOut
                                                    )
                                                    Start = $result.Start
                                                    End   = $result.End
                                                }

                                                Microsoft.PowerShell.Utility\Write-Verbose (
                                                    "Text translated to: " +
                                                    "`"$($result.Text)`".."
                                                )
                                            }
                                            catch {

                                                Microsoft.PowerShell.Utility\Write-Verbose (
                                                    "Translating text to $LanguageOut, " +
                                                    "failed: $PSItem"
                                                )
                                            }
                                        }

                                        # format timestamps for srt output
                                        $start = $result.Start.ToString(
                                            'hh\:mm\:ss\,fff',
                                            [System.Globalization.CultureInfo]::InvariantCulture
                                        )
                                        $end = $result.end.ToString(
                                            'hh\:mm\:ss\,fff',
                                            [System.Globalization.CultureInfo]::InvariantCulture
                                        )

                                        # return srt formatted subtitle entry to pipeline
                                        Microsoft.PowerShell.Utility\Write-Output "$i`r`n$start --> $end`r`n$($result.Text)`r`n`r`n"

                                        # increment subtitle counter
                                        $i++
                                    }

                                    # exit early for srt format processing
                                    return
                                }

                                # check if translation is needed for non-srt output
                                if (-not [string]::IsNullOrWhiteSpace($LanguageOut) `
                                        -and -not $skipTranslation) {

                                    # transcribe the audio file to get raw text
                                    $results = GenXdev\Get-SpeechToText @invocationArguments

                                    # prepare parameters for text translation
                                    $translateParams = `
                                        GenXdev\Copy-IdenticalParamValues `
                                        -BoundParameters $myPSBoundParameters `
                                        -FunctionName 'GenXdev\Get-TextTranslation'

                                    if ($translateParams.ContainsKey('Prompt')) {
                                        $null = $translateParams.Remove('Prompt')
                                    }
                                    if ($translateParams.ContainsKey('Instructions')) {
                                        $null = $translateParams.Remove('Instructions')
                                    }

                                    # translate the complete transcribed text and return result
                                    $translationResult = GenXdev\Get-TextTranslation `
                                        @translateParams `
                                        -Text "$results" -Language $LanguageOut

                                    # return the translation result
                                    return $translationResult
                                }

                                GenXdev\Get-SpeechToText @invocationArguments
                            }
                            catch {

                                # only show error if it's not a user abort
                                if ($PSItem.Exception.Message -notlike '*aborted*') {

                                    Microsoft.PowerShell.Utility\Write-Error $PSItem
                                }
                            }
                            finally {

                                # always clean up temporary files
                                if ([System.IO.File]::Exists($outputFile)) {

                                    $null = Microsoft.PowerShell.Management\Remove-Item `
                                        -LiteralPath $outputFile -Force -ErrorAction SilentlyContinue
                                }
                            }
                        }
    }

    end {

        # if no input was provided, start recording from microphone
        if (-not $script:InputProvided) {

            # add shouldprocess check before executing the operation
            if (-not $PSCmdlet.ShouldProcess(
                    "Start recording", 'Start'
                )) {

                continue
            }

            if (-not $myPSBoundParameters.ContainsKey("ModelType")) {

                # use most accurate model for batch processing
                $ModelType = 'tiny'

                # add modeltype to bound parameters for downstream functions
                $null = $myPSBoundParameters.Add('ModelType', $ModelType)
            }

            $invocationArguments = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $myPSBoundParameters `
                -FunctionName 'GenXdev\Receive-RealTimeSpeechToText'

            # set language using the resolved language format
            if ($PSBoundParameters.ContainsKey("LanguageIn")) {
                $invocationArguments.LanguageIn = (
                    GenXdev\Get-WebLanguageDictionary
                )[$LanguageIn]
            }
            else {
                if ($invocationArguments.ContainsKey("LanguageIn")) {
                    $null = $invocationArguments.Remove("LanguageIn")
                }
            }

            if ($LanguageOut -eq "English") {

                $invocationArguments.WithTranslate = $true;
                $skipTranslation = $true;
            }

            # check if output should be in srt subtitle format
            if ($SRT) {

                # initialize subtitle counter for srt format
                $i = 1

                GenXdev\Receive-RealTimeSpeechToText `
                    @invocationArguments |
                    Microsoft.PowerShell.Core\ForEach-Object {

                        $result = $PSItem

                        # check if translation to output language is required
                        if (-not [string]::IsNullOrWhiteSpace($LanguageOut) `
                                -and -not $skipTranslation) {

                            Microsoft.PowerShell.Utility\Write-Verbose (
                                "Translating text to $LanguageOut for: " +
                                "`"$($result.Text)`".."
                            )

                            try {

                                # prepare parameters for text translation
                                $translateParams = `
                                    GenXdev\Copy-IdenticalParamValues `
                                    -BoundParameters $myPSBoundParameters `
                                    -FunctionName `
                                    'GenXdev\Get-TextTranslation'

                                if ($translateParams.ContainsKey('Prompt')) {
                                    $null = $translateParams.Remove('Prompt')
                                }
                                if ($translateParams.ContainsKey('Instructions')) {
                                    $null = $translateParams.Remove('Instructions')
                                }

                                # create new result with translated text
                                $result = @{
                                    Text  = (GenXdev\Get-TextTranslation `
                                            @translateParams `
                                            -Text:($result.Text) `
                                            -Language:$LanguageOut
                                    )
                                    Start = $result.Start
                                    End   = $result.End
                                }

                                Microsoft.PowerShell.Utility\Write-Verbose (
                                    "Text translated to: " +
                                    "`"$($result.Text)`".."
                                )
                            }
                            catch {

                                Microsoft.PowerShell.Utility\Write-Verbose (
                                    "Translating text to $LanguageOut, " +
                                    "failed: $PSItem"
                                )
                            }
                        }

                        # format timestamps for srt output
                        $start = $result.Start.ToString(
                            'hh\:mm\:ss\,fff',
                            [System.Globalization.CultureInfo]::InvariantCulture
                        )
                        $end = $result.end.ToString(
                            'hh\:mm\:ss\,fff',
                            [System.Globalization.CultureInfo]::InvariantCulture
                        )

                        # return srt formatted subtitle entry to pipeline
                        Microsoft.PowerShell.Utility\Write-Output "$i`r`n$start --> $end`r`n$($result.Text)`r`n`r`n"

                        # increment subtitle counter
                        $i++
                    }

                # exit early for srt format processing
                return
            }

            # check if translation is needed for microphone recording output
            if (-not [string]::IsNullOrWhiteSpace($LanguageOut) `
                    -and -not $skipTranslation) {

                # prepare parameters for text translation
                $translateParams = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $myPSBoundParameters `
                    -FunctionName 'GenXdev\Get-TextTranslation'

                if ($translateParams.ContainsKey('Prompt')) {
                    $null = $translateParams.Remove('Prompt')
                }
                if ($translateParams.ContainsKey('Instructions')) {
                    $null = $translateParams.Remove('Instructions')
                }

                # transcribe the microphone recording to get raw text
                GenXdev\Receive-RealTimeSpeechToText @invocationArguments | Microsoft.PowerShell.Core\ForEach-Object {

                    # translate the complete transcribed text and return result
                    GenXdev\Get-TextTranslation `
                        @translateParams `
                        -Text "$PSItem" -Language $LanguageOut
                }
                return
            }

            GenXdev\Receive-RealTimeSpeechToText @invocationArguments
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.Queries
Original cmdlet filename  : Update-AllImageMetaData.ps1
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
Batch updates image keywords, faces, objects, and scenes across multiple system
directories.

.DESCRIPTION
This function systematically processes images across various system directories
to update their keywords, face recognition data, object detection data, and
scene classification data using AI services. It covers media storage, system
files, downloads, OneDrive, and personal pictures folders.

The function processes images by going through each directory and processing files
individually. DeepStack functions (faces, objects, scenes) are performed first,
followed by keyword and description generation.

This allows for structured data output for pipeline operations like:
Update-AllImageMetaData | Export-ImageIndex

.PARAMETER ImageDirectories
Array of directory paths to process for image keyword and face recognition
updates. If not specified, uses default system directories.

.PARAMETER ContainerName
The name for the Docker container used for face recognition processing.

.PARAMETER VolumeName
The name for the Docker volume for persistent storage of face recognition data.

.PARAMETER ServicePort
The port number for the DeepStack face recognition service.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check during startup.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts during service startup.

.PARAMETER ImageName
Custom Docker image name to use for face recognition processing.

.PARAMETER ConfidenceThreshold
Minimum confidence threshold (0.0-1.0) for object detection. Objects with
confidence below this threshold will be filtered out. Default is 0.5.

.PARAMETER Language
Specifies the language for generated descriptions and keywords. Defaults to
English.

.PARAMETER Model
Name or partial path of the model to initialize.

.PARAMETER ApiEndpoint
Api endpoint url, defaults to http://localhost:1234/v1/chat/completions.

.PARAMETER ApiKey
The API key to use for the request.

.PARAMETER TimeoutSeconds
Timeout in seconds for the request, defaults to 24 hours.

.PARAMETER FacesDirectory
The directory containing face images organized by person folders. If not
specified, uses the configured faces directory preference.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER RetryFailed
Specifies whether to retry previously failed image keyword updates. When
enabled, the function will attempt to process images that failed in previous
runs.

.PARAMETER NoRecurse
Dont't recurse into subdirectories when processing images.

.PARAMETER RedoAll
Forces reprocessing of all images regardless of previous processing status.

.PARAMETER NoDockerInitialize
Skip Docker initialization when already called by parent function to avoid
duplicate container setup.

.PARAMETER UseGPU
Use GPU-accelerated version for faster processing (requires NVIDIA GPU).

.PARAMETER ShowWindow
Show Docker  window during initialization.

.PARAMETER PassThru
PassThru to return structured objects instead of outputting to console.

.PARAMETER AutoUpdateFaces
Detects changes in the faces directory and re-registers faces if needed.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER SkipSession
Dont use alternative settings stored in session for AI preferences like
Language, Image collections, etc.

.PARAMETER Monitor
Monitor selection for window positioning: 0=primary, 1+=specific monitor,
-1=current, -2=secondary.

.PARAMETER NoBorders
Removes window borders and title bar for a cleaner appearance.

.PARAMETER Width
Window width in pixels for positioning applications.

.PARAMETER Height
Window height in pixels for positioning applications.

.PARAMETER X
Window horizontal position for positioning applications.

.PARAMETER Y
Window vertical position for positioning applications.

.PARAMETER Left
Places window on left half of screen.

.PARAMETER Right
Places window on right half of screen.

.PARAMETER Top
Places window on top half of screen.

.PARAMETER Bottom
Places window on bottom half of screen.

.PARAMETER Centered
Centers window on screen.

.PARAMETER Fullscreen
Maximizes window to fill entire screen.

.PARAMETER RestoreFocus
Returns focus to PowerShell window after positioning.

.PARAMETER SideBySide
Places windows side by side with PowerShell on the same monitor.

.PARAMETER FocusWindow
Focus the window after positioning.

.PARAMETER SetForeground
Set the window to foreground after positioning.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER KeysToSend
Keystrokes to send to the window after positioning.

.EXAMPLE
Update-AllImageMetaData -ImageDirectories @("C:\Pictures", "D:\Photos") `
    -ServicePort 5000

.EXAMPLE
Update-AllImageMetaData -RetryFailed -Force -Language "Spanish"

.EXAMPLE
updateallimages @("C:\MyImages") -ContainerName "custom_face_recognition"
###############################################################################>
function Update-AllImageMetaData {

    [CmdletBinding(SupportsShouldProcess)]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Alias('updateallimages')]

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'Array of directory paths to process for image updates'
        )]
        [Alias('imagespath', 'directories', 'imgdirs', 'imagedirectory')]
        [string[]] $ImageDirectories,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker volume for persistent storage'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Interval in seconds between health check ' +
                'attempts')
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Minimum confidence threshold (0.0-1.0) for ' +
                'object detection')
        )]
        [ValidateRange(0.0, 1.0)]
        [double] $ConfidenceThreshold = 0.7,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The language for generated descriptions and ' +
                'keywords')
        )]
        [PSDefaultValue(Value = 'English')]
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
            'Zulu')]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $true,
            HelpMessage = 'Name or partial path of the model to initialize'
        )]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [string]$Model,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Api endpoint url, defaults to ' +
                'http://localhost:1234/v1/chat/completions')
        )]
        [string] $ApiEndpoint = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API key to use for the request'
        )]
        [string] $ApiKey = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indicates that LLM has no support for JSON schemas'
        )]
        [string] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Timeout in seconds for the request, defaults to ' +
                '24 hours')
        )]
        [int] $TimeoutSeconds,
        [parameter(
            Mandatory = $false,
            HelpMessage = ('The directory containing face images organized ' +
                'by person folders. If not specified, uses the configured ' +
                'faces directory preference.')
        )]
        [string] $FacesDirectory,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will retry previously failed image keyword ' +
                'updates')
        )]
        [switch] $RetryFailed,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Dont't recurse into subdirectories when processing images")
        ]
        [switch] $NoRecurse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Redo all images regardless of previous ' +
                'processing')
        )]
        [switch] $RedoAll,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip Docker initialization (used when already ' +
                'called by parent function)')
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force rebuild of Docker container and remove ' +
                'existing data')
        )]
        [Alias('ForceRebuild')]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use GPU-accelerated version (requires NVIDIA ' +
                'GPU)')
        )]
        [switch] $UseGPU,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('PassThru to return structured objects instead ' +
                'of outputting to console')
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Detects changes in the faces directory and ' +
                're-registers faces if needed')
        )]
        [switch] $AutoUpdateFaces,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for ' +
                'AI preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session ' +
                'for AI preferences like Language, Image collections, etc')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Dont use alternative settings stored in ' +
                'session for AI preferences like Language, Image ' +
                'collections, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # prepare processing variables to track current state
        $onlyNew = -not $RedoAll

        $recurse = -not $NoRecurse

        # initialize docker services if not skipped
        if (-not $NoDockerInitialize) {

            # copy identical parameter values from bound parameters for deepstack
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureDeepStack' `
                -DefaultValues (
                Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue
            )

            # check if force rebuild is requested and set appropriate flag
            if ($ForceRebuild) {

                $ensureParams.Force = $true
            }
            else {

                $ensureParams.Force = $PSBoundParameters.ContainsKey(
                    'ForceRebuild') ? $false : $null
            }

            # ensure deepstack service is running for face recognition
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Initializing DeepStack service for face recognition'
            )

            $null = GenXdev\EnsureDeepStack @ensureParams

            # position docker windows appropriately if show window is requested
            if ($ShowWindow) {

                if (-not $PSBoundParameters.ContainsKey('Monitor')) {
                    $ensureParams['Monitor'] = -2
                }

                try {

                    # find docker processes with main windows
                    Microsoft.PowerShell.Management\Get-Process *docker* |
                        Microsoft.PowerShell.Core\Where-Object `
                            -Property MainWindowHandle `
                            -NE 0 |
                        Microsoft.PowerShell.Core\ForEach-Object {

                            # set window position for docker ui
                            $null = GenXdev\Set-WindowPosition `
                                -Process $_ `
                                -Right `
                                -Bottom `
                                -mon 0
                        }

                    # position current window to left side
                    $null = GenXdev\Set-WindowPosition -Left -mon 0
                }
                catch {

                    # fallback positioning if docker window positioning fails
                    $null = GenXdev\Set-WindowPosition -Left -mon 0
                }
            }
        }

        # copy parameter values for faces directory retrieval
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-AIKnownFacesRootpath' `
            -DefaultValues (
            Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue
        )

        # get the configured faces directory path
        $facesDirectory = GenXdev\Get-AIKnownFacesRootpath @params

        # count total files in faces directory including subdirectories
        $filecount = $AutoUpdateFaces ?(
            @(GenXdev\Find-Item "${facesDirectory}\*\" -PassThru) +
            @(GenXdev\Find-Item "${facesDirectory}\*\*.jpeg" `
                    -PassThru) +
            @(GenXdev\Find-Item "${facesDirectory}\*\*.png" `
                    -PassThru) +
            @(GenXdev\Find-Item "${facesDirectory}\*\*.gif" `
                    -PassThru)
        ).Count : 0

        # count directories that contain image files for face recognition
        $dirCount = $AutoUpdateFaces ? (
            @(GenXdev\Find-Item "${facesDirectory}\*" `
                    -Directory `
                    -PassThru |
                    Microsoft.PowerShell.Core\Where-Object {

                        (
                            @(GenXdev\Find-Item "$_\*.jpg" -PassThru) +
                            @(GenXdev\Find-Item "$_\*.jpeg" -PassThru) +
                            @(GenXdev\Find-Item "$_\*.png" -PassThru) +
                            @(GenXdev\Find-Item "$_\*.gif" -PassThru)
                        ).Count -gt 0
                    }
            ).Count
        ) : 0

        # initialize registered faces count
        $registeredFacesCount = 0

        try {

            # count total number of registered faces in the system
            $registeredFacesCount = $AutoUpdateFaces  ? @(GenXdev\Get-RegisteredFaces).Count : 0

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Found ${registeredFacesCount} registered faces"
            )
        }
        catch {

            # if counting fails, default to 0
            $registeredFacesCount = 0

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Unable to count registered faces, defaulting to 0'
            )
        }

        # determine if face registrations need to be forced
        $forceFaceRegistrations = $forceFaceRegistrations -or (
            $AutoUpdateFaces -and
            ($registeredFacesCount -ne $dirCount)
        )

        # register faces if needed and files exist
        if ($forceFaceRegistrations) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Face registration mismatch detected, re-registering all faces'
            )

            try {

                # copy parameter values for face unregistration
                $params = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\UnRegister-AllFaces' `
                    -DefaultValues (
                    Microsoft.PowerShell.Utility\Get-Variable `
                        -Scope Local `
                        -ErrorAction SilentlyContinue
                )

                # unregister all existing faces before re-registration
                $null = GenXdev\Unregister-AllFaces @params -Confirm:$false

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Successfully unregistered all existing faces'
                )
            }
            catch {
                # ignore unregistration errors but log them
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Face unregistration failed, continuing with registration'
                )
            }

            try {

                # copy parameter values for face registration
                $params = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\Register-AllFaces' `
                    -DefaultValues (
                    Microsoft.PowerShell.Utility\Get-Variable `
                        -Scope Local `
                        -ErrorAction SilentlyContinue
                )

                # register all faces from the faces directory
                $null = GenXdev\Register-AllFaces @params -Confirm:$false

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Successfully registered all faces from directory'
                )
            }
            catch {
                # ignore registration errors but log them
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Face registration failed, continuing without face recognition'
                )
            }
        }

        # log start of processing
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Starting systematic image keyword, faces, and objects update ' +
            'across directories'
        )

        # copy parameter values for language preference retrieval
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-AIMetaLanguage' `
            -DefaultValues (
            Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue
        )

        # get the configured language for ai processing
        $language = GenXdev\Get-AIMetaLanguage @params

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Using language '${language}' for AI processing"
        )

        # prevent duplicate service initialization in child processes
        $noDockerInitialize = $true
    }

    process {

        # retrieve image directories from configuration
        $directories = $ImageDirectories

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Processing ${directories.Count} directories for image metadata updates"
        )

        # process each directory and file individually for structured output
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Processing files individually for structured output'
        )

        # process each directory and stream results immediately
        $directories | Microsoft.PowerShell.Core\ForEach-Object {

            $currentDirectory = $_

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Starting processing of directory: ${currentDirectory}"
            )

            # copy parameter values for metadata update processing
            $metadataParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName (
                'GenXdev\Invoke-ImageMetadataUpdate'
            ) `
                -DefaultValues (
                Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue
            )

            # update exif metadata for images in current directory
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Updating EXIF metadata for directory: ${currentDirectory}"
            )

            $null = GenXdev\Invoke-ImageMetadataUpdate @metadataParams `
                -ImageDirectories $currentDirectory

            # copy parameter values for face update processing
            $faceParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName (
                'GenXdev\Invoke-ImageFacesUpdate'
            ) `
                -DefaultValues (
                Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue
            )

            # update face recognition data for images in current directory
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Updating face recognition data for directory: ${currentDirectory}"
            )

            $null = GenXdev\Invoke-ImageFacesUpdate @faceParams `
                -ImageDirectories $currentDirectory `
                -NoDockerInitialize

            # copy parameter values for object detection processing
            $objectParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName (
                'GenXdev\Invoke-ImageObjectsUpdate'
            ) `
                -DefaultValues (
                Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue
            )

            # update object detection data for images in current directory
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Updating object detection data for directory: ${currentDirectory}"
            )

            $null = GenXdev\Invoke-ImageObjectsUpdate @objectParams `
                -ImageDirectories $currentDirectory

            # copy parameter values for scene classification processing
            $sceneParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName (
                'GenXdev\Invoke-ImageScenesUpdate'
            ) `
                -DefaultValues (
                Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue
            )

            # update scene classification data for images in current directory
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Updating scene classification data for directory: ${currentDirectory}"
            )

            $null = GenXdev\Invoke-ImageScenesUpdate @sceneParams `
                -ImageDirectories $currentDirectory `
                -NoDockerInitialize

            # copy parameter values for keyword generation processing
            $keywordParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName (
                'GenXdev\Invoke-ImageKeywordUpdate'
            ) `
                -DefaultValues (
                Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue
            )

            # update keyword and description data for images in current directory
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Updating keywords and descriptions for directory: ${currentDirectory}"
            )

            $null = GenXdev\Invoke-ImageKeywordUpdate @keywordParams `
                -ImageDirectories $currentDirectory

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Completed processing of directory: ${currentDirectory}"
            )
        }
    }

    end {

        # log completion of all directory processing
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Completed image processing with DeepStack functions first, ' +
            'then keywords across all directories'
        )
    }
}

