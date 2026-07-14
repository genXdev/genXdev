---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Get-AIMetaLanguage

## SYNOPSIS


## SYNTAX

```
Get-AIMetaLanguage [[-Language] <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-ClearSession]
 [-SkipSession] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -Language
The default language for image metadata operations

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -PreferencesDatabasePath
Database path for preference data files

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: DatabasePath

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -SessionOnly
Use alternative settings stored in session for AI preferences like Language, Image collections, etc

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -ClearSession
Clear the session setting (Global variable) before retrieving

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -SkipSession
Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: FromPreferences

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`

