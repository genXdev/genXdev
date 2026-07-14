---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Invoke-WebbrowserTabPollingScript

## SYNOPSIS
Executes a background polling script in a previously selected webbrowser tab.

## SYNTAX

```
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Continuously executes JavaScript in a browser tab and processes results through
an optional callback.
The script runs in a separate thread to prevent blocking.

## EXAMPLES

### EXAMPLE 1
```
Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `
    -InitialUrl "https://example.com" `
    -Callback { Write-Host "Polled" }
```

## PARAMETERS

### -Scripts
JavaScript code, URLs, or file paths to execute in the browser tab.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases: FullName

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -InitialUrl
Optional URL to navigate to before starting the polling process.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Callback
Optional scriptblock that processes results after each poll iteration.

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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

## NOTES
Requires Windows 10 or later.

## RELATED LINKS
