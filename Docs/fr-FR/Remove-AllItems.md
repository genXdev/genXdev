# Remove-AllItems

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `sdel

## Synopsis

> Supprime récursivement tout le contenu d'un répertoire avec une gestion avancée des erreurs.

## Description

Supprime en toute sécurité tous les fichiers et sous-répertoires dans un répertoire spécifié en utilisant une stratégie de suppression en ordre inverse pour gérer les chemins profonds. Inclut la prise en charge de WhatIf, la journalisation détaillée et des méthodes de suppression de secours pour les fichiers verrouillés.

## Syntax

```powershell
Remove-AllItems -Path <String> [-DeleteFolder] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le chemin du répertoire à effacer |
| `-DeleteFolder` | SwitchParameter | — | — | Named | — | Supprimez également le dossier racine fourni avec le paramètre Path |

## Examples

### Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose

```powershell
Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose
```

### sdel ".\temp" -DeleteFolder

```powershell
sdel ".\temp" -DeleteFolder
```

## Related Links

- [Remove-AllItems on GitHub](https://github.com/genXdev/genXdev)
