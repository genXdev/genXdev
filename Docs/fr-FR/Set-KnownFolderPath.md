# Set-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Modifie le chemin physique d'un dossier connu de Windows.

## Description

Utilise l'API Windows Shell32 pour déplacer les dossiers système comme Documents, Téléchargements, Bureau ou d'autres dossiers Windows connus vers un nouvel emplacement. La fonction valide que le chemin cible existe, recherche le GUID unique du dossier dans le registre complet des dossiers connus et utilise l'API SHSetKnownFolderPath pour effectuer le déplacement. Les cas d'utilisation courants incluent le déplacement des dossiers utilisateur vers un autre disque pour la gestion de l'espace ou l'organisation. Faites preuve de prudence lors du déplacement de dossiers critiques pour le système, car cela peut affecter la stabilité du système.

## Syntax

```powershell
Set-KnownFolderPath -KnownFolder <String> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | Dossier connu à modifier |
| `-Path` | String | ✅ | — | 1 | — | Nouveau chemin pour le dossier connu |

## Examples

### Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'

```powershell
Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'
```

### Set-KnownFolderPath Downloads 'E:\Downloads'

```powershell
Set-KnownFolderPath Downloads 'E:\Downloads'
```

## Related Links

- [Set-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)
