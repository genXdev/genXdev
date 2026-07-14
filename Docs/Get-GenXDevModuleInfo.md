---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Get-GenXDevModuleInfo

## SYNOPSIS
Retrieves detailed information about GenXdev PowerShell modules.

## SYNTAX

```
Get-GenXDevModuleInfo [[-ModuleName] <String[]>] [-IncludeLocal] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
This function examines GenXdev PowerShell modules and returns information about
their configuration, versions, and presence of key files.
It can process either
specified modules or all available modules.

## EXAMPLES

### EXAMPLE 1
```
Get-GenXDevModuleInfo -ModuleName "GenXdev.Console"
```

### EXAMPLE 2
```
"GenXdev.Console" | Get-GenXDevModuleInfo
```

## PARAMETERS

### -ModuleName
Array of module names to analyze.
If empty, processes all available modules.
GenXdev.Local module is explicitly blocked from processing.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: Name, Module

Required: False
Position: 1
Default value: @()
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -IncludeLocal
{{ Fill IncludeLocal Description }}

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
