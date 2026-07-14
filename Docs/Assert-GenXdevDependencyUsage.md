---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Assert-GenXdevDependencyUsage

## SYNOPSIS
Validates dependency usage across GenXdev modules to ensure proper module
hierarchy is maintained.

## SYNTAX

```
Assert-GenXdevDependencyUsage [[-ModuleName] <String[]>] [-FromScripts] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
This function analyzes GenXdev modules to ensure they follow the correct
dependency hierarchy.
It checks that modules only reference dependencies
that are listed in their RequiredModules manifest, and prevents circular
dependencies by validating that modules don't reference modules that come
later in the dependency chain.

## EXAMPLES

### EXAMPLE 1
```
Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"
```

### EXAMPLE 2
```
checkgenxdevdependencies "GenXdev*" -FromScripts
```

## PARAMETERS

### -ModuleName
Filter to apply to module names.
Must match GenXdev naming pattern.
Defaults
to checking all GenXdev modules.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: @('GenXdev*')
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: True
```

### -FromScripts
Search in script files instead of module files.

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
