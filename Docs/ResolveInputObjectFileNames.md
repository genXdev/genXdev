---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# ResolveInputObjectFileNames

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### Default (Default)
```
ResolveInputObjectFileNames [[-InputObject] <Object>] [-File] [[-RelativeBasePath] <String>] [-AllDrives]
 [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

### WithPattern
```
ResolveInputObjectFileNames [[-InputObject] <Object>] [-File] [[-Pattern] <String>]
 [[-RelativeBasePath] <String>] [-AllDrives] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### DirectoriesOnly
```
ResolveInputObjectFileNames [[-InputObject] <Object>] [-File] [[-RelativeBasePath] <String>] [-AllDrives]
 [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AllDrives
Search across all available drives

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Directory
Search for directories only

```yaml
Type: SwitchParameter
Parameter Sets: DirectoriesOnly
Aliases: dir

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -File
Return only files

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FilesAndDirectories
Include both files and directories

```yaml
Type: SwitchParameter
Parameter Sets: DirectoriesOnly
Aliases: both

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeAlternateFileStreams
Include alternate data streams in search results

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ads

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Input object containing file names or directories

```yaml
Type: Object
Parameter Sets: (All)
Aliases: Path, FilePath, Input

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -NoRecurse
Do not recurse into subdirectories

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Output matched items as objects

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: pt

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Pattern
Regular expression pattern to search within content

```yaml
Type: String
Parameter Sets: WithPattern
Aliases: mc, matchcontent

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: True
```

### -RelativeBasePath
Base path for resolving relative paths in output

```yaml
Type: String
Parameter Sets: (All)
Aliases: base

Required: False
Position: 2
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

### System.Object

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
