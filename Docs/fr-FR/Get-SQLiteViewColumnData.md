# Get-SQLiteViewColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère les données d'une colonne d'une vue SQLite avec une limitation facultative des enregistrements.

## Description

Exécute une requête SELECT sur une vue SQLite spécifiée pour récupérer les données d'une seule colonne. Prend en charge la connexion via une chaîne de connexion ou un chemin de fichier de base de données. Permet de limiter le nombre d'enregistrements renvoyés ou de récupérer tous les enregistrements.

## Syntax

```powershell
Get-SQLiteViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier de base de données SQLite. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | Le nom de la vue. |
| `-ColumnName` | String | ✅ | — | 2 | — | Le nom de la colonne. |
| `-Count` | Int32 | — | — | 3 | `100` | Le nombre d'enregistrements à retourner. La valeur par défaut est 100. -1 pour tous. |

## Examples

### Get-SQLiteViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `     -ViewName "CustomersView" `     -ColumnName "Email" `     -Count 50

```powershell
Get-SQLiteViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `
    -ViewName "CustomersView" `
    -ColumnName "Email" `
    -Count 50
```

### Get-SQLiteViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"

```powershell
Get-SQLiteViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"
```

## Related Links

- [Get-SQLiteViewColumnData on GitHub](https://github.com/genXdev/genXdev)
