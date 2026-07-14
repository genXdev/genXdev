---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Invoke-SQLServerQuery

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Invoke-SQLServerQuery [[-Queries] <String[]>] [[-DatabaseName] <String>] [[-Server] <String>]
 [[-Transaction] <Object>] [[-ConnectionString] <String>] [[-SqlParameters] <Hashtable[]>]
 [-IsolationLevel <String>] [-ForceConsent] [-ConsentToThirdPartySoftwareInstallation]
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

### -ConnectionString
The connection string to the SQL database.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation and set persistent flag for SQL Server package.

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

### -DatabaseName
The name of the SQL Server database.

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

### -ForceConsent
Force a consent prompt even if preference is set for SQL Server package installation.

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

### -IsolationLevel
The isolation level to use.
default is ReadCommitted.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ReadCommitted, ReadUncommitted, RepeatableRead, Serializable, Snapshot, Chaos

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Queries
The query or queries to execute.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: q, Value, Name, Text, Query

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Server
The SQL Server instance name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SqlParameters
Query parameters as hashtables.

```yaml
Type: Hashtable[]
Parameter Sets: (All)
Aliases: data, parameters, args

Required: False
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Transaction
An existing SQL Server transaction to use for the queries.

```yaml
Type: Object
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

### System.String[]

### System.Collections.Hashtable[]

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
