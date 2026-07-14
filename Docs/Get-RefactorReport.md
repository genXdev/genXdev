---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Get-RefactorReport

## SYNOPSIS


## SYNTAX

```
Get-RefactorReport [[-Name] <String[]>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-ClearSession]
 [-SkipSession] [-AsText] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -Name
The name of the refactor, accepts wildcards

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: 
Accept pipeline input: True
Accept wildcard characters: True
`
### -PreferencesDatabasePath
Specifies the path to the preferences database file.

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
If set, only use the session cache for refactor data.

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
If set, clear the session cache before running.

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
If set, skip loading session cache.

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
### -AsText
Output report in text format instead of Hashtable

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

