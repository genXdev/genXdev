# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Verschiebt Dateien und Verzeichnisse unter Beibehaltung von Dateisystem-Links und -Referenzen.

## Description

* Verwendet die Windows MoveFileEx-API, um Dateien und Verzeichnisse mit aktivierter Linkverfolgung zu verschieben, sodass Dateisystemreferenzen erhalten bleiben.
* Wenn sich der Quellpfad unter Git-Kontrolle befindet, wird versucht, git mv zu verwenden, um die Umbenennung in Git nachzuverfolgen.
* Fällt auf MoveFileEx zurück, wenn Git nicht verfügbar ist oder git mv fehlschlägt.

## Syntax

```powershell
Move-ItemWithTracking [-Path] <string> [-Destination] <string> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Quellpfad der zu verschiebenden Datei/des zu verschiebenden Verzeichnisses |
| `-Destination` | String | ✅ | — | 1 | — | Zielpfad zum Verschieben |
| `-Force` | SwitchParameter | — | — | Named | `False` | Ziel überschreiben, falls vorhanden |

## Examples

### Example 1

```powershell
Move-ItemWithTracking -Path "C:\temp\oldfile.txt" -Destination "D:\newfile.txt"
```

Verschiebt eine Datei unter Beibehaltung von Dateisystem-Links und Git-Nachverfolgung.

### Example 2

```powershell
"C:\temp\olddir" | Move-ItemWithTracking -Destination "D:\newdir" -Force
```

Verschiebt ein Verzeichnis und überschreibt das Ziel, falls es existiert.

## Related Links

- [Move-ItemWithTracking on GitHub](https://github.com/genXdev/genXdev)
