---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Get-ValueByKeyFromStore

## SYNOPSIS


## SYNTAX

```
Get-ValueByKeyFromStore [-StoreName] <String> [-KeyName] <String> [[-DefaultValue] <String>]
 [[-SynchronizationKey] <String>] [-DatabasePath <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -StoreName
Name of the store to retrieve the key from

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -KeyName
Key to retrieve from the specified store

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -DefaultValue
A optional default value

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -SynchronizationKey
Key to identify synchronization scope

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -DatabasePath
Database path for key-value store data files

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

