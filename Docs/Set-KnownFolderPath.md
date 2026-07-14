---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Set-KnownFolderPath

## SYNOPSIS
Modifies the physical path of a Windows known folder.

## SYNTAX

```
Set-KnownFolderPath [-KnownFolder] <String> [-Path] <String> [-ProgressAction <ActionPreference>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Uses the Windows Shell32 API to relocate system folders like Documents,
Downloads, Desktop, or other known Windows folders to a new location.
The
function validates the target path exists, looks up the folder's unique GUID
from the comprehensive known folders registry, and uses the SHSetKnownFolderPath
API to perform the relocation.
Common use cases include moving user folders to
a different drive for space management or organization.
Exercise caution when
moving system-critical folders as this may affect system stability.

## EXAMPLES

### EXAMPLE 1
```
Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'
```

### EXAMPLE 2
```
Set-KnownFolderPath Downloads 'E:\Downloads'
```

## PARAMETERS

### -KnownFolder
The name of the known folder to relocate.
Supports all Windows known folders
including user folders (Documents, Downloads, Desktop, Pictures, Videos,
Music), system folders (Windows, System, ProgramFiles), and special folders
(Recent, Favorites, SendTo, etc.).
Use with caution as moving certain system
folders may cause instability.

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

### -Path
The new physical file system path where the known folder should be located.
The path must exist before attempting the move operation.
The function will
throw an error if the path is invalid or inaccessible.

```yaml
Type: String
Parameter Sets: (All)
Aliases: FullName

Required: True
Position: 2
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
