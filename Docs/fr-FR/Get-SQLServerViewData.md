# Get-SQLServerViewData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère les données d'une vue de base de données SQL avec limitation facultative des enregistrements.

## Description

Interroge une vue de base de données SQL en utilisant soit une chaîne de connexion, soit un chemin de fichier de base de données. La fonction prend en charge la limitation du nombre d'enregistrements retournés et fournit une sortie détaillée pour suivre l'exécution de la requête.

## Syntax

```powershell
Get-SQLServerViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Chaîne de connexion à la base de données SQL Server. *(Parameter set: )* |
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

## Parameter Details

### `-ConnectionString <String>`

> Chaîne de connexion à la base de données SQL Server.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ConnectionString |

<hr/>
### `-DatabaseName <String>`

> Le nom de la base de données SQL Server.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-Server <String>`

> Le nom de l'instance SQL Server.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'localhost'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-ViewName <String>`

> Le nom de la vue à interroger.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Count <Int32>`

> Nombre d'enregistrements à retourner. -1 pour tous les enregistrements.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `100` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-SQLServerSchema.md)
- [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-SQLServerTableColumnData.md)
- [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-SQLServerTableData.md)
- [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-SQLServerTables.md)
- [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-SQLServerTableSchema.md)
- [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-SQLServerTransaction.md)
- [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-SQLServerViewColumnData.md)
- [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-SQLServerViews.md)
- [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-SQLServerViewSchema.md)
- [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-SQLServerQuery.md)
- [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-SSMS.md)
- [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-SQLServerDatabase.md)
