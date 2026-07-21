# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> Ruft die Liste der geänderten Dateien in einem Git-Repository ab.

## Description

Diese Funktion ruft die Liste der Dateien ab, die im aktuellen Git-Repository geändert wurden. Sie kann verwendet werden, um zu identifizieren, welche Dateien geändert, hinzugefügt oder gelöscht wurden. Standardmäßig werden relative Pfade mit dem Präfix .\ zurückgegeben. Verwenden Sie -PassThru, um FileInfo-Objekte zu erhalten.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Gibt FileInfo-Objekte (wie Get-ChildItem) anstelle von Pfadzeichenfolgen zurück. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Gibt relative Pfade zurück wie ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Gibt FileInfo-Objekte für jede geänderte Datei zurück.

## Parameter Details

### `-PassThru`

> Gibt FileInfo-Objekte (wie Get-ChildItem) anstelle von Pfadzeichenfolgen zurück.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/de-DE/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/de-DE/PermanentlyDeleteGitFolders.md)
