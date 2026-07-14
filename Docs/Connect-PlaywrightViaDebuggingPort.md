---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Connect-PlaywrightViaDebuggingPort

## SYNOPSIS
Connects to an existing browser instance via debugging port.

## SYNTAX

```
Connect-PlaywrightViaDebuggingPort [-WsEndpoint] <String> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
Establishes a connection to a running Chromium-based browser instance using the
WebSocket debugger URL.
Creates a Playwright instance and connects over CDP
(Chrome DevTools Protocol).
The connected browser instance is stored in a global
dictionary for later reference.

## EXAMPLES

### EXAMPLE 1
```
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## PARAMETERS

### -WsEndpoint
The WebSocket URL for connecting to the browser's debugging port.
This URL
typically follows the format 'ws://hostname:port/devtools/browser/\<id\>'.

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
