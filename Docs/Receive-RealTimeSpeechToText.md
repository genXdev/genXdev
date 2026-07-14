---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Receive-RealTimeSpeechToText

## SYNOPSIS


## SYNTAX

```
Receive-RealTimeSpeechToText [-ModelFileDirectoryPath <String>] [-UseDesktopAudioCapture]
 [-UseDesktopAndRecordingDevice] [-AudioDevice <String>] [-Passthru] [-WithTokenTimestamps]
 [-TokenTimestampsSumThreshold <Single>] [-SplitOnWord] [-MaxTokensPerSegment <Int32>] [-IgnoreSilence]
 [-MaxDurationOfSilence <TimeSpan>] [-SilenceThreshold <Int32>] [-LanguageIn <String>] [-CpuThreads <Int32>]
 [-Temperature <Single>] [-TemperatureInc <Single>] [-WithTranslate] [-Prompt <String>]
 [-SuppressRegex <String>] [-WithProgress] [-AudioContextSize <Int32>] [-DontSuppressBlank]
 [-MaxDuration <TimeSpan>] [-Offset <TimeSpan>] [-MaxLastTextTokens <Int32>] [-SingleSegmentOnly]
 [-PrintSpecialTokens] [-MaxSegmentLength <Int32>] [-MaxInitialTimestamp <TimeSpan>] [-LengthPenalty <Single>]
 [-EntropyThreshold <Single>] [-LogProbThreshold <Single>] [-NoSpeechThreshold <Single>] [-NoContext]
 [-WithBeamSearchSamplingStrategy] [-ModelType <GgmlType>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -ModelFileDirectoryPath
Path to the model file

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -UseDesktopAudioCapture
Whether to use desktop audio capture instead of microphone

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -UseDesktopAndRecordingDevice
Whether to use both desktop audio capture and recording device simultaneously

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -AudioDevice
Use both desktop and recording device

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Passthru
Returns objects instead of strings

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -WithTokenTimestamps
Whether to include token timestamps

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -TokenTimestampsSumThreshold
Sum threshold for token timestamps, defaults to 0.5

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -SplitOnWord
Whether to split on word boundaries

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -MaxTokensPerSegment
Maximum number of tokens per segment

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -IgnoreSilence
Whether to ignore silence (will mess up timestamps)

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -MaxDurationOfSilence
Maximum duration of silence before automatically stopping recording

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -SilenceThreshold
Silence detect threshold (0..32767 defaults to 30)

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -LanguageIn
Sets the input language to detect, defaults to 'en'

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -CpuThreads
Sets the output language

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Temperature
Temperature for speech detection

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -TemperatureInc
Temperature increment

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -WithTranslate
Whether to translate the output

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Prompt
Prompt to use for the model

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -SuppressRegex
Regex to suppress tokens from the output

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -WithProgress
Whether to show progress

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -AudioContextSize
Size of the audio context

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -DontSuppressBlank
Whether to NOT suppress blank lines

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -MaxDuration
Maximum duration of the audio

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Offset
Offset for the audio

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -MaxLastTextTokens
Maximum number of last text tokens

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -SingleSegmentOnly
Whether to use single segment only

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -PrintSpecialTokens
Whether to print special tokens

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -MaxSegmentLength
Maximum segment length

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -MaxInitialTimestamp
Start timestamps at this moment

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -LengthPenalty
Length penalty

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -EntropyThreshold
Entropy threshold

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -LogProbThreshold
Log probability threshold

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -NoSpeechThreshold
No speech threshold

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -NoContext
Don't use context

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -WithBeamSearchSamplingStrategy
Use beam search sampling strategy

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -ModelType
Whisper model type to use, defaults to Small

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`

