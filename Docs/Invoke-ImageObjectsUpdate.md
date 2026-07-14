---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Invoke-ImageObjectsUpdate

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Invoke-ImageObjectsUpdate [[-ImageDirectories] <String[]>] [-Recurse] [-OnlyNew] [-RetryFailed]
 [-Language <String>] [-LLMQueryType <String>] [-Model <String>] [-TimeoutSeconds <Int32>]
 [-PreferencesDatabasePath <String>] [-SessionOnly] [-ClearSession] [-SkipSession]
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

### -ClearSession
Clear alternative settings stored in session for AI preferences

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

### -ImageDirectories
The directory paths containing images to process

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LLMQueryType
The type of LLM query

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: SimpleIntelligence, Knowledge, Pictures, TextTranslation, Coding, ToolUse

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Language
The language for generated descriptions and keywords

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Afrikaans, Akan, Albanian, Amharic, Arabic, Armenian, Azerbaijani, Basque, Belarusian, Bemba, Bengali, Bihari, Bosnian, Breton, Bulgarian, Cambodian, Catalan, Cherokee, Chichewa, Chinese (Simplified), Chinese (Traditional), Corsican, Croatian, Czech, Danish, Dutch, English, Esperanto, Estonian, Ewe, Faroese, Filipino, Finnish, French, Frisian, Ga, Galician, Georgian, German, Greek, Guarani, Gujarati, Haitian Creole, Hausa, Hawaiian, Hebrew, Hindi, Hungarian, Icelandic, Igbo, Indonesian, Interlingua, Irish, Italian, Japanese, Javanese, Kannada, Kazakh, Kinyarwanda, Kirundi, Kongo, Korean, Krio (Sierra Leone), Kurdish, Kurdish (Soranî), Kyrgyz, Laothian, Latin, Latvian, Lingala, Lithuanian, Lozi, Luganda, Luo, Macedonian, Malagasy, Malay, Malayalam, Maltese, Maori, Marathi, Mauritian Creole, Moldavian, Mongolian, Montenegrin, Nepali, Nigerian Pidgin, Northern Sotho, Norwegian, Norwegian (Nynorsk), Occitan, Oriya, Oromo, Pashto, Persian, Polish, Portuguese (Brazil), Portuguese (Portugal), Punjabi, Quechua, Romanian, Romansh, Runyakitara, Russian, Scots Gaelic, Serbian, Serbo-Croatian, Sesotho, Setswana, Seychellois Creole, Shona, Sindhi, Sinhalese, Slovak, Slovenian, Somali, Spanish, Spanish (Latin American), Sundanese, Swahili, Swedish, Tajik, Tamil, Tatar, Telugu, Thai, Tigrinya, Tonga, Tshiluba, Tumbuka, Turkish, Turkmen, Twi, Uighur, Ukrainian, Urdu, Uzbek, Vietnamese, Welsh, Wolof, Xhosa, Yiddish, Yoruba, Zulu

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Model
The model identifier or pattern to use for AI operations

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

### -OnlyNew
Only process images that don't already have face metadata files

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

### -PreferencesDatabasePath
Database path for preference data files

```yaml
Type: String
Parameter Sets: (All)
Aliases: DatabasePath

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Recurse
Process images in specified directory and all subdirectories

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

### -RetryFailed
Will retry previously failed image keyword updates

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

### -SessionOnly
Use alternative settings stored in session for AI preferences

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

### -SkipSession
Store settings only in persistent preferences without affecting session

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: FromPreferences

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeoutSeconds
The timeout in seconds for AI operations

```yaml
Type: Int32
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

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
