---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Set-GenXdevDefaultPreference

## SYNOPSIS


## SYNTAX

```
Set-GenXdevDefaultPreference [-Name] <String> [[-Value] <String>] [[-PreferencesDatabasePath] <String>]
 [-SessionOnly] [-ClearSession] [-SkipSession] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -Name
The name of the preference to set in defaults

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: PreferenceName

Required: True
Position: 0
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Value
The value to store for the preference

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: PreferenceValue

Required: False
Position: 1
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
Position: 2
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -SessionOnly
Use alternative settings stored in session for Data preferences like Language, Database paths, etc

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

