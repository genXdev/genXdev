# Get-SQLServerViewData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère les données d'une vue de base de données SQL avec limitation facultative des enregistrements.

## Description

Interroge une vue de base de données SQL en utilisant soit une chaîne de connexion, soit un chemin de fichier de base de données. La fonction prend en charge la limitation du nombre d'enregistrements retournés et fournit une sortie détaillée pour le suivi de l'exécution de la requête.

## Syntax

```powershell
Get-SQLServerViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Le nom de la base de données SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Le nom de l'instance SQL Server. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | Le nom de la vue à interroger. |
| `-Count` | Int32 | — | — | 3 | `100` | Nombre d'enregistrements à retourner. -1 pour tous les enregistrements. |

## Examples

### Get-SQLServerViewData -DatabaseFilePath "C:\MyDb.sqlite" `     -ViewName "CustomerView" `     -Count 50

```powershell
Get-SQLServerViewData -DatabaseFilePath "C:\MyDb.sqlite" `
    -ViewName "CustomerView" `
    -Count 50
```

### Get-SQLServerViewData "C:\MyDb.sqlite" "CustomerView"

```powershell
Get-SQLServerViewData "C:\MyDb.sqlite" "CustomerView"
```

## Related Links

- [Get-SQLServerViewData on GitHub](https://github.com/genXdev/genXdev)
