---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Get-SQLServerTransaction

## SYNOPSIS
Creates and returns a SQL Server transaction object for batch operations.

## SYNTAX

### DatabaseName (Default)
```
Get-SQLServerTransaction [-DatabaseName] <String> [[-Server] <String>] [-IsolationLevel <String>]
 [-ForceConsent] [-ConsentToThirdPartySoftwareInstallation] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

### ConnectionString
```
Get-SQLServerTransaction [-ConnectionString] <String> [-IsolationLevel <String>] [-ForceConsent]
 [-ConsentToThirdPartySoftwareInstallation] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Creates a SQL Server database connection and transaction object that can be used
for batch operations.
The caller is responsible for committing or rolling back
the transaction.
Requires an existing SQL Server database and connection.

## EXAMPLES

### EXAMPLE 1
```
$transaction = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDatabase"
try {
    Invoke-SQLServerQuery -Transaction $transaction -Queries "INSERT INTO Users..."
    Invoke-SQLServerQuery -Transaction $transaction -Queries "UPDATE Users..."
    $transaction.Commit()
} catch {
    $transaction.Rollback()
    throw
} finally {
    $transaction.Connection.Close()
}
```

### EXAMPLE 2
```
$transaction = Get-SQLServerTransaction -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true"
```

### EXAMPLE 3
```
$transaction = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDatabase" -ConsentToThirdPartySoftwareInstallation
```

## PARAMETERS

### -ConnectionString
The SQL Server connection string for database access.

```yaml
Type: String
Parameter Sets: ConnectionString
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatabaseName
The name of the SQL Server database.
Used with Server parameter to create connection string.

```yaml
Type: String
Parameter Sets: DatabaseName
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Server
The SQL Server instance name.
Defaults to 'localhost'.

```yaml
Type: String
Parameter Sets: DatabaseName
Aliases:

Required: False
Position: 2
Default value: .
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsolationLevel
Transaction isolation level.
Defaults to ReadCommitted.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: ReadCommitted
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForceConsent
Force a consent prompt even if a preference is already set for SQL Server package
installation, overriding any saved consent preferences.

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

### -ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation and set a persistent
preference flag for SQL Server package, bypassing interactive consent prompts.

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
