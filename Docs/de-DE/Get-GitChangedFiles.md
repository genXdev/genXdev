# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged

## Synopsis

> Rufen Sie die Liste der geänderten Dateien in einem Git-Repository ab.

## Description

Diese Funktion ruft die Liste der Dateien ab, die im aktuellen Git-Repository geändert wurden. Sie kann verwendet werden, um zu identifizieren, welche Dateien geändert, hinzugefügt oder gelöscht wurden. Standardmäßig werden relative Pfade mit .\-Präfix zurückgegeben. Verwenden Sie -PassThru, um FileInfo-Objekte zu erhalten.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Returns FileInfo objects (like Get-ChildItem) instead of path strings. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Gibt relative Pfade wie ".\Modules\GenXdev.AI\3.26.2026\README.md" zurück.

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Gibt FileInfo-Objekte für jede geänderte Datei zurück.

## Outputs


## Related Links

- [Get-GitChangedFiles on GitHub](https://github.com/genXdev/genXdev)
