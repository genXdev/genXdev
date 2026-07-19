# Invoke-Fasti

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fasti

## Synopsis

> Extrait les fichiers d'archive dans le répertoire actuel vers leurs propres dossiers et les supprime ensuite.

## Description

Extrait automatiquement les formats d'archive courants (zip, 7z, tar, etc.) trouvés dans le répertoire actuel dans des dossiers individuels nommés d'après chaque archive. Après une extraction réussie, les fichiers d'archive originaux sont supprimés. Nécessite que 7-Zip soit installé sur le système.

## Syntax

```powershell
Invoke-Fasti [[-Password] <String>] [-ExtractOutputToo] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Password` | String | — | — | 0 | — | Enter the password for the encrypted archive(s) |
| `-ExtractOutputToo` | SwitchParameter | — | — | Named | — | Extraire récursivement les archives trouvées dans les dossiers extraits |

## Examples

### PS C:\Downloads> Invoke-Fasti

```powershell
PS C:\Downloads> Invoke-Fasti
```

### PS C:\Downloads> fasti

```powershell
PS C:\Downloads> fasti
```

## Related Links

- [Invoke-Fasti on GitHub](https://github.com/genXdev/genXdev)
