---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Invoke-AIPowershellCommand

## SYNOPSIS
Generates and executes PowerShell commands using AI assistance.

## SYNTAX

```
Invoke-AIPowershellCommand [-Query] <String> [[-Attachments] <String[]>] [-Temperature <Double>]
 [-ImageDetail <String>] [-Functions <Hashtable[]>] [-ExposedCmdLets <ExposedCmdletDefinition[]>]
 [-NoConfirmationToolFunctionNames <String[]>] [-LLMQueryType <String>] [-Model <String>]
 [-ApiEndpoint <String>] [-ApiKey <String>] [-TimeoutSeconds <Int32>] [-PreferencesDatabasePath <String>]
 [-SetClipboard] [-DontAddThoughtsToHistory] [-ContinueLast] [-Speak] [-SpeakThoughts] [-NoSessionCaching]
 [-AllowDefaultTools] [-SessionOnly] [-ClearSession] [-SkipSession] [-AudioTemperature <Double>]
 [-TemperatureResponse <Double>] [-Language <String>] [-CpuThreads <Int32>] [-SuppressRegex <String>]
 [-AudioContextSize <Int32>] [-SilenceThreshold <Double>] [-LengthPenalty <Double>]
 [-EntropyThreshold <Double>] [-LogProbThreshold <Double>] [-NoSpeechThreshold <Double>] [-DontSpeak]
 [-DontSpeakThoughts] [-NoVOX] [-UseDesktopAudioCapture] [-NoContext] [-WithBeamSearchSamplingStrategy]
 [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-MarkupBlocksTypeFilter <String[]>]
 [-MaxToolcallBackLength <Int32>] [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Uses AI models to generate PowerShell commands based on
natural language queries.
The function can either send commands directly to
the PowerShell window or copy them to the clipboard.
It leverages AI models
to interpret natural language and convert it into executable PowerShell
commands with comprehensive parameter support for various AI backends.

## EXAMPLES

### EXAMPLE 1
```
Invoke-AIPowershellCommand -Query "list all running processes"
```

Generates a PowerShell command to list running processes

### EXAMPLE 2
```
hint "list files modified today"
```

Uses the alias to generate a command for finding files modified today.

### EXAMPLE 3
```
Invoke-AIPowershellCommand -Query "stop service" -Clipboard
```

Generates a command to stop a service and copies it to clipboard.

## PARAMETERS

### -Query
The natural language description of what you want to accomplish.
The AI will
convert this into an appropriate PowerShell command.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Attachments
Array of file paths to attach

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: @()
Accept pipeline input: False
Accept wildcard characters: False
```

### -Temperature
Controls the randomness in the AI's response generation.
Values range from
0.0 (more focused/deterministic) to 1.0 (more creative/random).

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: -1
Accept pipeline input: False
Accept wildcard characters: False
```

### -ImageDetail
Image detail level

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: Low
Accept pipeline input: False
Accept wildcard characters: False
```

### -Functions
Array of function definitions

```yaml
Type: Hashtable[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: @()
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExposedCmdLets
Array of PowerShell command definitions to use as tools

```yaml
Type: ExposedCmdletDefinition[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: @()
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoConfirmationToolFunctionNames
Array of command names that don't require confirmation

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: NoConfirmationFor

Required: False
Position: Named
Default value: @()
Accept pipeline input: False
Accept wildcard characters: False
```

### -LLMQueryType
The type of LLM query to perform.
Determines the AI model's behavior and
response style for different use cases.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: SimpleIntelligence
Accept pipeline input: False
Accept wildcard characters: False
```

### -Model
The model identifier or pattern to use for AI operations.
Can be a name or
partial path with support for pattern matching.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApiEndpoint
The API endpoint URL for AI operations when using external AI services.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApiKey
The API key for authenticated AI operations with external services.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeoutSeconds
The timeout in seconds for AI operations to prevent hanging requests.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PreferencesDatabasePath
Database path for preference data files to store AI configuration settings.

```yaml
Type: String
Parameter Sets: (All)
Aliases: DatabasePath

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SetClipboard
Copy the enhanced text to clipboard

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DontAddThoughtsToHistory
Include model's thoughts in output

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContinueLast
Continue from last conversation

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Speak
Enable text-to-speech for AI responses

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SpeakThoughts
Enable text-to-speech for AI thought responses

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoSessionCaching
Don't store session in session cache

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowDefaultTools
Allow the use of default AI tools during processing

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionOnly
Use alternative settings stored in session for AI preferences instead of
persistent configuration.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClearSession
Clear alternative settings stored in session for AI preferences and reset
to defaults.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipSession
Store settings only in persistent preferences without affecting session
state.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: FromPreferences

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AudioTemperature
Temperature for audio response randomness (passed to LLMQuery)

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemperatureResponse
Temperature for response generation (passed to LLMQuery)

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Language
Language code or name for processing (passed to LLMQuery)

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CpuThreads
Number of CPU threads to use (passed to LLMQuery)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SuppressRegex
Regular expression to suppress output (passed to LLMQuery)

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AudioContextSize
Audio context size for processing (passed to LLMQuery)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SilenceThreshold
Silence threshold for audio detection (passed to LLMQuery)

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -LengthPenalty
Length penalty for sequence generation (passed to LLMQuery)

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -EntropyThreshold
Entropy threshold for output filtering (passed to LLMQuery)

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogProbThreshold
Log probability threshold for output filtering (passed to LLMQuery)

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoSpeechThreshold
No speech threshold for audio detection (passed to LLMQuery)

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -DontSpeak
Disable speech output (passed to LLMQuery)

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DontSpeakThoughts
Disable speech output for thoughts (passed to LLMQuery)

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoVOX
Disable VOX (voice activation) (passed to LLMQuery)

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseDesktopAudioCapture
Use desktop audio capture (passed to LLMQuery)

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoContext
Disable context usage (passed to LLMQuery)

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WithBeamSearchSamplingStrategy
Enable beam search sampling strategy (passed to LLMQuery)

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyResponses
Return only responses (passed to LLMQuery)

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputMarkdownBlocksOnly
Output only markup blocks (passed to LLMQuery)

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MarkupBlocksTypeFilter
Filter for markup block types (passed to LLMQuery)

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxToolcallBackLength
Maximum tool callback length (passed to LLMQuery)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Void
## NOTES

## RELATED LINKS
