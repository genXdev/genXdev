---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Set-GenXdevPreferencesDatabasePath

## SYNOPSIS


## SYNTAX

```
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-SkipSession] [-SessionOnly]
 [-ClearSession] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -PreferencesDatabasePath
A database path where preference data files are located

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: DatabasePath

Required: False
Position: 0
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -SkipSession
Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc

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
### -SessionOnly
When specified, stores the setting only in the current session (Global variable) without persisting to preferences

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
When specified, clears only the session setting (Global variable) without affecting persistent preferences

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

