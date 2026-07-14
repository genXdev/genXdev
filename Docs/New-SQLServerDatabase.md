---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# New-SQLServerDatabase

## SYNOPSIS
Creates a new SQL Server database.

## SYNTAX

### DatabaseName
```
New-SQLServerDatabase [-DatabaseName] <String> [[-Server] <String>] [-ForceConsent]
 [-ConsentToThirdPartySoftwareInstallation] [-DataFilePath <String>] [-LogFilePath <String>]
 [-DetachAfterCreation] [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ConnectionString
```
New-SQLServerDatabase [-ConnectionString] <String> [-ForceConsent] [-ConsentToThirdPartySoftwareInstallation]
 [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates a new SQL Server database with the specified name on the specified
server.
Requires appropriate permissions to create databases on the target SQL
Server instance.
If the database already exists, the operation will be skipped.
Supports file-based database creation with explicit .mdf/.ldf paths.

## EXAMPLES

### EXAMPLE 1
```
New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"
```

### EXAMPLE 2
```
New-SQLServerDatabase "MyNewDatabase"
```

### EXAMPLE 3
```
New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."
```

### EXAMPLE 4
```
New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation
```

### EXAMPLE 5
```
New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation
```

## PARAMETERS

### -DatabaseName
The name of the SQL Server database to create.
Must be a valid SQL Server
database name.

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
The SQL Server instance name where the database should be created.
Defaults to
'.' (local instance).

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

### -ConnectionString
Alternative connection string to use instead of Server parameter.
Should
connect to master database or have appropriate permissions.

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

### -ForceConsent
Force a consent prompt even if a preference is already set for SQL Server
package installation, overriding any saved consent preferences.

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

### -DataFilePath
Optional path for the database data file (.mdf).
When specified, creates a
file-based database at this location instead of using default SQL Server paths.

```yaml
Type: String
Parameter Sets: DatabaseName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogFilePath
Optional path for the database log file (.ldf).
If not specified but
DataFilePath is provided, defaults to same directory with _log.ldf suffix.

```yaml
Type: String
Parameter Sets: DatabaseName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DetachAfterCreation
Detach the database after creation.
Typically used with DataFilePath to create
a portable database file that can be attached via connection string.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

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

## OUTPUTS

## NOTES

## RELATED LINKS
