---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Remove-ItemWithFallback

## SYNOPSIS
Removes files or directories with multiple fallback mechanisms for reliable deletion.

## SYNTAX

```
Remove-ItemWithFallback [-Path] <String> [-CountRebootDeletionAsSuccess] [-ProgressAction <ActionPreference>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
This function provides a robust way to delete files and directories by attempting
multiple deletion methods in sequence:
1.
Direct deletion via System.IO methods for best performance
2.
PowerShell provider-aware Remove-Item cmdlet as fallback
3.
Mark for deletion on next system reboot if other methods fail
This ensures maximum reliability when removing items across different providers.

## EXAMPLES

### EXAMPLE 1
```
Remove-ItemWithFallback -Path "C:\temp\myfile.txt"
Attempts to remove the file using all available methods.
```

### EXAMPLE 2
```
"C:\temp\mydir" | rif
Uses the alias 'rif' to remove a directory through the pipeline.
```

## PARAMETERS

### -Path
The file or directory path to remove.
Can be a filesystem path or provider path.
Accepts pipeline input and wildcards.
Must be a valid, non-empty path.

```yaml
Type: String
Parameter Sets: (All)
Aliases: FullName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -CountRebootDeletionAsSuccess
If specified, the function returns $true when a file is successfully marked for deletion on reboot.
By default ($false), the function returns $false in this scenario.

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

### System.Boolean
## NOTES

## RELATED LINKS
