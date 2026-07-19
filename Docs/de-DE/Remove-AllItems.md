# Remove-AllItems

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `sdel

## Synopsis

> Entfernt rekursiv alle Inhalte eines Verzeichnisses mit erweiterter Fehlerbehandlung.

## Description

Entfernt sicher alle Dateien und Unterverzeichnisse innerhalb eines angegebenen Verzeichnisses unter Verwendung einer Reverse-Order-Löschstrategie, um tiefe Pfade zu handhaben. Enthält WhatIf-Unterstützung, ausführliche Protokollierung und alternative Löschmethoden für gesperrte Dateien.

## Syntax

```powershell
Remove-AllItems -Path <String> [-DeleteFolder] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der zu leerende Verzeichnispfad |
| `-DeleteFolder` | SwitchParameter | — | — | Named | — | Löschen Sie auch das Stammverzeichnis, das mit dem Path-Parameter angegeben wurde |

## Examples

### Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose

```powershell
Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose
```

### sdel ".\temp" -DeleteFolder

```powershell
sdel ".\temp" -DeleteFolder
```

## Related Links

- [Remove-AllItems on GitHub](https://github.com/genXdev/genXdev)
