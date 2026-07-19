# Move-ToRecycleBin

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Verschiebt Dateien und Verzeichnisse sicher in den Windows-Papierkorb.

## Description

* Verschiebt Dateien oder Ordner sicher in den Papierkorb, indem die Windows-Shell-API verwendet wird, selbst wenn sie gerade verwendet werden.
* Die Funktion verwendet das Shell.Application-COM-Objekt, um den Vorgang auszuführen, und gewährleistet so ein ordnungsgemäßes Recycling-Verhalten und die Möglichkeit zum Rückgängigmachen.

## Syntax

```powershell
Move-ToRecycleBin [-Path] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Specify the path(s) to move to the recycle bin |

## Examples

### Example 1

```powershell
Move-ToRecycleBin -Path "C:\temp\old-report.txt"
```

Verschiebe eine einzelne Datei in den Papierkorb.

### Example 2

```powershell
"file1.txt","file2.txt" | recycle
```

Verschieben Sie mehrere Dateien mithilfe von Pipeline und Alias in den Papierkorb.

## Related Links

- [Move-ToRecycleBin on GitHub](https://github.com/genXdev/genXdev)
