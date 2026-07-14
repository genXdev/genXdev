---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Open-AllGoogleLinks

## SYNOPSIS
Performs an infinite auto opening google search .

## SYNTAX

```
Open-AllGoogleLinks [-Queries] <String[]> [-Language <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
Performs a google search .
Opens 10 tabs each times, pauses until initial tab is revisited
Close initial tab to stop

## EXAMPLES

### EXAMPLE 1
```

```

Open-AllGoogleLinks "site:github.com PowerShell module"

## PARAMETERS

### -Queries
The query to perform

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

### -Language
The language of the returned search results

```yaml
Type: String
Parameter Sets: (All)
Aliases:

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
Requires the Windows 10+ Operating System

## RELATED LINKS
