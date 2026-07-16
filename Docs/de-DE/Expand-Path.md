# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Expand-Path -FilePath <String> [-CreateDirectory] [-CreateFile] [-DeleteExistingFile] [-DirectoryMustExist] [-FileMustExist] [-ForceDrive <Char>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Pfad zum Erweitern |
| `-CreateDirectory` | SwitchParameter | — | — | Named | — | Erstellt Verzeichnis, falls es nicht existiert |
| `-CreateFile` | SwitchParameter | — | — | Named | — | Erstellt eine leere Datei, falls sie nicht existiert |
| `-DeleteExistingFile` | SwitchParameter | — | — | Named | — | Löscht die Datei, falls sie bereits existiert |
| `-ForceDrive` | Char | — | — | Named | `'*'` | Erzwingt die Verwendung eines bestimmten Laufwerks |
| `-FileMustExist` | SwitchParameter | — | — | Named | — | Wirft einen Fehler, wenn die Datei nicht existiert |
| `-DirectoryMustExist` | SwitchParameter | — | — | Named | — | Wirft einen Fehler, wenn das Verzeichnis nicht existiert |

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)
