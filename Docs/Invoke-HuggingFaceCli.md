---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Invoke-HuggingFaceCli

## SYNOPSIS
Invokes the Hugging Face CLI with the specified arguments.

## SYNTAX

```
Invoke-HuggingFaceCli [-Arguments] <String[]> [[-Timeout] <Int32>] [-Force]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Calls EnsureHuggingFace to ensure the CLI is installed, then executes the
Hugging Face CLI with the provided arguments.
Reads the CLI path from
$ENV:LOCALAPPDATA\GenXdev.PowerShell\hfclilocation.json.
Returns the command
output as a string; throws Write-Error on failure.

## EXAMPLES

### EXAMPLE 1
```
Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force
```

Invokes the CLI with the "login" command, forcing reinstallation.

### EXAMPLE 2
```
Invoke-HuggingFaceCli @("whoami") 300
```

Invokes the CLI with the "whoami" command and a 300-second timeout.

## PARAMETERS

### -Arguments
The arguments to pass to the Hugging Face CLI.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Timeout
Timeout in seconds for CLI execution and dependency installation.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 36000
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Forces reinstallation of the Hugging Face CLI.

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
