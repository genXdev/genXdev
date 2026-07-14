---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Invoke-Fasti

## SYNOPSIS
Extracts archive files in the current directory to their own folders and deletes
them afterwards.

## SYNTAX

```
Invoke-Fasti [[-Password] <String>] [-ExtractOutputToo] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
Automatically extracts common archive formats (zip, 7z, tar, etc.) found in the
current directory into individual folders named after each archive.
After
successful extraction, the original archive files are deleted.
Requires 7-Zip
to be installed on the system.

## EXAMPLES

### EXAMPLE 1
```
Invoke-Fasti
```

### EXAMPLE 2
```
fasti
```

## PARAMETERS

### -Password
Enter the password for the encrypted archive(s)

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtractOutputToo
Recursively extract archives found within extracted folders

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
Supported formats: 7z, zip, rar, tar, iso and many others.
Requires 7-Zip installation (will attempt auto-install via winget if missing).

## RELATED LINKS
