# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Markiert Dateien oder Verzeichnisse zur Löschung beim nächsten Systemstart.

## Description

* Verwendet die Windows-API, um Dateien für die Löschung beim nächsten Start zu markieren.
* Behandelt gesperrte Dateien, indem zunächst versucht wird, sie in temporäre Namen umzubenennen, und verfolgt alle Verschiebungen, um die Integrität des Dateisystems zu wahren.
* Wenn die Umbenennung fehlschlägt, kann der Parameter -MarkInPlace verwendet werden, um Dateien an ihrem ursprünglichen Ort zu markieren.

## Syntax

```powershell
Remove-OnReboot -Path <String[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | Pfad(e) zu Dateien/Verzeichnissen, die zum Löschen markiert werden sollen |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | Markiert Dateien zur Löschung ohne Umbenennung |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

Markiert eine gesperrte Datei zum Löschen beim nächsten Systemstart.

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

Markiert mehrere Dateien zum Löschen und verwendet MarkInPlace für alle, die nicht umbenannt werden können.

## Parameter Details

### `-Path <String[]>`

> Pfad(e) zu Dateien/Verzeichnissen, die zum Löschen markiert werden sollen

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

> Markiert Dateien zur Löschung ohne Umbenennung

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/de-DE/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/de-DE/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/de-DE/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-ItemWithFallback.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/de-DE/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-TextFileAtomic.md)
