# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Marque les fichiers ou répertoires pour suppression lors du prochain démarrage du système.

## Description

* Utilise l'API Windows pour marquer les fichiers à supprimer au prochain démarrage.
* Gère les fichiers verrouillés en tentant d'abord de les renommer avec des noms temporaires et suit tous les déplacements pour préserver l'intégrité du système de fichiers.
* Si le renommage échoue, le paramètre -MarkInPlace peut être utilisé pour marquer les fichiers à leur emplacement d'origine.

## Syntax

```powershell
Remove-OnReboot [-Path] <string[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | Chemin(s) vers les fichiers/répertoires à marquer pour suppression |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | Marque les fichiers à supprimer sans les renommer |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

Marque un fichier verrouillé pour suppression lors du prochain démarrage du système.

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

Marque plusieurs fichiers pour suppression, en utilisant MarkInPlace pour ceux qui ne peuvent pas être renommés.

## Related Links

- [Remove-OnReboot on GitHub](https://github.com/genXdev/genXdev)
