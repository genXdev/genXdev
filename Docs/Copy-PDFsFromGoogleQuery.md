---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Copy-PDFsFromGoogleQuery

## SYNOPSIS
Downloads PDF files found through Google search results.

## SYNTAX

```
Copy-PDFsFromGoogleQuery [-Queries] <String[]> [[-Max] <Int32>] [[-Language] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Performs a Google query in the previously selected webbrowser tab and downloads
all found PDF files into the current directory.
Supports multiple queries and
language filtering.

## EXAMPLES

### EXAMPLE 1
```
Open-Webbrowser
Select-WebbrowserTab
$null = New-Item -ItemType Directory -Name pdfs
Set-Location pdfs
Copy-PDFsFromGoogleQuery "scientific paper co2" -Max 50 -Language "English"
```

## PARAMETERS

### -Queries
The search terms to query Google for PDF files.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: q, Name, Text, Query

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Max
Maximum number of results to retrieve (default: 200).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 200
Accept pipeline input: False
Accept wildcard characters: False
```

### -Language
Optional language filter for search results.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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
