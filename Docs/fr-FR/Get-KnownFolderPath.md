# Get-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `folder

## Synopsis

> Obtient le chemin d'un dossier connu de Windows à l'aide de l'API Windows Shell32.

## Description

Récupère le chemin d'un dossier connu de Windows spécifié en utilisant la fonction SHGetKnownFolderPath de l'API Shell32. Cette méthode est plus fiable que l'utilisation de variables d'environnement car elle fonctionne de manière cohérente sur différentes versions de Windows et paramètres linguistiques. Prend en charge tous les dossiers connus standard de Windows tels que Documents, Téléchargements, AppData, etc.

## Syntax

```powershell
Get-KnownFolderPath -KnownFolder <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | Le nom de dossier connu de Windows pour obtenir le chemin |

## Examples

### Get-KnownFolderPath -KnownFolder 'Documents' Returns: C:\Users\Username\Documents

```powershell
Get-KnownFolderPath -KnownFolder 'Documents'
Returns: C:\Users\Username\Documents
```

### folder Downloads Returns: C:\Users\Username\Downloads using the alias

```powershell
folder Downloads
Returns: C:\Users\Username\Downloads using the alias
```

### cd (folder Desktop) Changes to the Desktop folder using the alias

```powershell
cd (folder Desktop)
Changes to the Desktop folder using the alias
```

## Related Links

- [Get-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)
