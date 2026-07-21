# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Marque les fichiers ou répertoires pour suppression lors du prochain démarrage du système.

## Description

* Utilise l'API Windows pour marquer les fichiers en vue de leur suppression au prochain démarrage.
* Gère les fichiers verrouillés en tentant d'abord de les renommer avec des noms temporaires et suit tous les déplacements pour maintenir l'intégrité du système de fichiers.
* Si le renommage échoue, le paramètre -MarkInPlace peut être utilisé pour marquer les fichiers à leur emplacement d'origine.

## Syntax

```powershell
Remove-OnReboot -Path <String[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | Chemin(s) vers les fichiers/répertoires à marquer pour suppression |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | Marque les fichiers pour suppression sans les renommer |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

Marque un fichier verrouillé pour suppression lors du prochain redémarrage du système.

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

Marque plusieurs fichiers pour suppression, en utilisant MarkInPlace pour ceux qui ne peuvent pas être renommés.

## Parameter Details

### `-Path <String[]>`

> Chemin(s) vers les fichiers/répertoires à marquer pour suppression

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkInPlace`

> Marque les fichiers pour suppression sans les renommer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRCopy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRExpand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRFind-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRFind-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRMove-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRMove-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRMove-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-ItemWithFallback.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRWrite-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRWrite-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRWrite-TextFileAtomic.md)
