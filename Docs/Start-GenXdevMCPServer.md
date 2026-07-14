---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Start-GenXdevMCPServer

## SYNOPSIS
Starts the GenXdev MCP server that exposes PowerShell cmdlets as tools.

## SYNTAX

```
Start-GenXdevMCPServer [[-Port] <Int32>] [[-ExposedCmdLets] <ExposedCmdletDefinition[]>]
 [[-NoConfirmationToolFunctionNames] <String[]>] [-StopExisting] [[-MaxOutputLength] <Int32>]
 [[-Token] <String>] [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
This function starts an HTTP server that implements the Model Context Protocol (MCP)
server pattern, exposing PowerShell cmdlets as callable tools.
The server provides
endpoints for listing available tools and executing them, similar to the TypeScript
example but using PowerShell's ExposedCmdLets functionality.

## EXAMPLES

### EXAMPLE 1
```
Start-GenXdevMCPServer -Port 2175
```

### EXAMPLE 2
```
$exposedCmdlets = @(
    [GenXdev.Helpers.ExposedCmdletDefinition]@{
        Name = "Get-Process"
        Description = "Get running processes"
        AllowedParams = @("Name", "Id")
        Confirm = $false
    }
)
Start-GenXdevMCPServer -Port 2175 -ExposedCmdLets $exposedCmdlets
```

## PARAMETERS

### -Port
The port on which the server will listen.
Default is 2175.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 2175
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExposedCmdLets
Array of PowerShell command definitions to expose as tools.

```yaml
Type: ExposedCmdletDefinition[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: @()
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoConfirmationToolFunctionNames
Array of command names that can execute without user confirmation.

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

### -StopExisting
Stop any existing server running on the specified port.

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

### -MaxOutputLength
Maximum length of tool output in characters.
Output exceeding this length will be trimmed with a warning message.
Default is 75000 characters (100KB).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 75000
Accept pipeline input: False
Accept wildcard characters: False
```

### -Token
{{ Fill Token Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
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

## NOTES

## RELATED LINKS
