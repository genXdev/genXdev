---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# ReadJsonWithRetry

## SYNOPSIS
Reads JSON file with retry logic and automatic lock cleanup.

## SYNTAX

```
ReadJsonWithRetry [-FilePath] <String> [[-MaxRetries] <Int32>] [[-RetryDelayMs] <Int32>] [-AsHashtable]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Attempts to read a JSON file with retry logic to handle concurrent access.
Implements automatic cleanup of stale lock files.
Returns empty hashtable if
file doesn't exist.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -FilePath
The path to the JSON file to read.

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

### -MaxRetries
Maximum number of retry attempts.
Defaults to 10.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -RetryDelayMs
Delay in milliseconds between retries.
Defaults to 200.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 200
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsHashtable
Return the parsed JSON as a hashtable instead of PSCustomObject.
Defaults to true.

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

## NOTES

## RELATED LINKS
