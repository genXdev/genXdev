---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Import-BrowserBookmarks

## SYNOPSIS
Imports bookmarks from a file or collection into a web browser.

## SYNTAX

### Default (Default)
```
Import-BrowserBookmarks [-Chrome] [-Edge] [-Firefox] [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### FromFile
```
Import-BrowserBookmarks [[-InputFile] <String>] [-Chrome] [-Edge] [-Firefox]
 [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### FromCollection
```
Import-BrowserBookmarks [[-Bookmarks] <Array>] [-Chrome] [-Edge] [-Firefox]
 [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Imports bookmarks into Microsoft Edge or Google Chrome from either a CSV file or
a collection of bookmark objects.
The bookmarks are added to the browser's
bookmark bar or specified folders.
Firefox import is not currently supported.

## EXAMPLES

### EXAMPLE 1
```
Import-BrowserBookmarks -InputFile "C:\MyBookmarks.csv" -Edge
Imports bookmarks from the CSV file into Microsoft Edge.
```

### EXAMPLE 2
```
$bookmarks = @(
    @{
        Name = "Microsoft";
        URL = "https://microsoft.com";
        Folder = "Tech"
    }
)
Import-BrowserBookmarks -Bookmarks $bookmarks -Chrome
Imports a collection of bookmarks into Google Chrome.
```

## PARAMETERS

### -InputFile
The path to a CSV file containing bookmarks to import.
The CSV should have
columns for Name, URL, Folder, DateAdded, and DateModified.

```yaml
Type: String
Parameter Sets: FromFile
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Bookmarks
An array of bookmark objects to import.
Each object should have properties for
Name, URL, Folder, DateAdded, and DateModified.

```yaml
Type: Array
Parameter Sets: FromCollection
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Chrome
Switch to import bookmarks into Google Chrome.

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

### -Edge
Switch to import bookmarks into Microsoft Edge.

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

### -Firefox
Switch to indicate Firefox as target (currently not supported).

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

## NOTES

## RELATED LINKS
