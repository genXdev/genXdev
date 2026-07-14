---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Get-Refactor

## SYNOPSIS
Retrieves refactor definitions from GenXdev preferences based on name patterns.

## SYNTAX

```
Get-Refactor [[-Name] <String[]>] [-PreferencesDatabasePath <String>] [-DefaultValue <String>] [-SessionOnly]
 [-ClearSession] [-SkipSession] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Searches for and loads refactor definition sets stored in GenXdev preferences.
Each refactor set is stored as a JSON string in a preference with name starting
with 'refactor_set_'.
The function deserializes matching sets into objects.

## EXAMPLES

### EXAMPLE 1
```
Get-Refactor -Name "CodeStyle*"
Returns refactor definitions matching pattern "CodeStyle*"
```

### EXAMPLE 2
```
refactor "UnitTest"
Uses alias to find refactor definitions containing "UnitTest"
```

## PARAMETERS

### -Name
One or more name patterns to match against refactor set names.
Patterns are
matched against the portion of the preference name after 'refactor_set_' prefix.
Supports wildcards.
If omitted, returns all refactor sets.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: PreferenceName

Required: False
Position: 1
Default value: @('*')
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: True
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

### -DefaultValue
The default value if preference is not found

```yaml
Type: String
Parameter Sets: (All)
Aliases: DefaultPreference

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionOnly
Use alternative settings stored in session for Data preferences like Language, Database paths, etc

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

### -ClearSession
Clear the session setting (Global variable) before retrieving

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

### -SkipSession
Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: FromPreferences

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

### GenXdev.Helpers.RefactorDefinition[]
## NOTES

## RELATED LINKS
