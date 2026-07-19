# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Markiert Dateien oder Verzeichnisse zur Löschung beim nächsten Systemneustart.

## Description

* Verwendet die Windows-API, um Dateien für die Löschung beim nächsten Systemstart zu markieren.
* Behandelt gesperrte Dateien, indem zunächst versucht wird, sie in temporäre Namen umzubenennen, und alle Verschiebungen werden nachverfolgt, um die Dateisystemintegrität zu wahren.
* Wenn das Umbenennen fehlschlägt, kann der Parameter -MarkInPlace verwendet werden, um Dateien an ihrem ursprünglichen Speicherort zu markieren.

## Syntax

```powershell
Remove-OnReboot [-Path] <string[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | Pfad(e) zu Dateien/Verzeichnissen, die zur Löschung markiert werden sollen |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | Markiert Dateien zum Löschen, ohne sie umzubenennen |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

Markiert eine gesperrte Datei zum Löschen beim nächsten Systemneustart.

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

Markiert mehrere Dateien zur Löschung und verwendet MarkInPlace für alle, die nicht umbenannt werden können.

## Related Links

- [Remove-OnReboot on GitHub](https://github.com/genXdev/genXdev)
