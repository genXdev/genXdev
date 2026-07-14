---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Import-GenXdevModules

## SYNOPSIS
Imports all GenXdev PowerShell modules into the global scope.

## SYNTAX

```
Import-GenXdevModules [-DebugFailedModuleDefinitions] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Scans the parent directory for GenXdev modules and imports each one into the
global scope.
Uses location stack management to preserve the working directory
and provides visual feedback for successful and failed imports.
Tracks function
count changes during the import process.

## EXAMPLES

### EXAMPLE 1
```
Import-GenXdevModules -DebugFailedModuleDefinitions
Imports modules with debug output for failures
```

### EXAMPLE 2
```
reloadgenxdev
Imports all modules using the alias
```

## PARAMETERS

### -DebugFailedModuleDefinitions
When enabled, provides detailed debug output for modules that fail to import.

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
