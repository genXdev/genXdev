---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Set-ClipboardFiles

## SYNOPSIS
Sets files to the Windows clipboard for file operations like copy/paste.

## SYNTAX

```
Set-ClipboardFiles [-InputObject] <String[]> [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
This function copies one or more file paths to the Windows clipboard,
enabling file operations like paste in Windows Explorer.
It handles both
STA and MTA threading modes automatically, ensuring compatibility across
different PowerShell execution contexts.
The function validates file
existence before adding paths to the clipboard.

## EXAMPLES

### EXAMPLE 1
```
Set-ClipboardFiles -InputObject "C:\temp\file1.txt", "C:\temp\file2.txt"
Sets two files to the clipboard using full parameter names.
```

### EXAMPLE 2
```
"C:\temp\file1.txt", "C:\temp\file2.txt" | Set-ClipboardFiles
Sets files to clipboard using pipeline input.
```

### EXAMPLE 3
```
ls * -file | select -first 5 | Set-ClipboardFiles
Sets files to clipboard using pipeline input, selecting the first 5 files
```

## PARAMETERS

### -InputObject
Array of file paths to add to the clipboard.
Accepts pipeline input and
supports various aliases for compatibility with different object properties.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: Path, FullName, ImageFileName, FileName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
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
