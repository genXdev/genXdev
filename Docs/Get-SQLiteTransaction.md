---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Get-SQLiteTransaction

## SYNOPSIS
Creates and returns a SQLite transaction object for batch operations.

## SYNTAX

### DatabaseFilePath (Default)
```
Get-SQLiteTransaction [-DatabaseFilePath] <String> [-IsolationLevel <String>]
 [-CreateDatabaseIfNotExists <Boolean>] [-ForceConsent] [-ConsentToThirdPartySoftwareInstallation]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### ConnectionString
```
Get-SQLiteTransaction [-ConnectionString] <String> [-IsolationLevel <String>]
 [-CreateDatabaseIfNotExists <Boolean>] [-ForceConsent] [-ConsentToThirdPartySoftwareInstallation]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Creates a SQLite database connection and transaction object that can be used
for batch operations.
The caller is responsible for committing or rolling back
the transaction.
The connection will be automatically created if the database
file doesn't exist.

## EXAMPLES

### EXAMPLE 1
```
$transaction = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db"
try {
    Invoke-SQLiteQuery -Transaction $transaction -Queries "INSERT INTO Users..."
    Invoke-SQLiteQuery -Transaction $transaction -Queries "UPDATE Users..."
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
$transaction = Get-SQLiteTransaction -ConnectionString "Data Source=C:\data.db"
```

### EXAMPLE 3
```
$transaction = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db" -ConsentToThirdPartySoftwareInstallation
```

## PARAMETERS

### -ConnectionString
The SQLite connection string for database access.

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

### -DatabaseFilePath
The file path to the SQLite database.
Will be converted to a connection string.

```yaml
Type: String
Parameter Sets: DatabaseFilePath
Aliases: dbpath, indexpath

Required: True
Position: 1
Default value: None
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

### -CreateDatabaseIfNotExists
Whether to create the database file if it doesn't exist.
Defaults to true.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: True
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForceConsent
Force a consent prompt even if a preference is already set for SQLite package
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
preference flag for SQLite package, bypassing interactive consent prompts.

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
