# VSCode

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Öffnet eine oder mehrere Dateien in Visual Studio Code.

## Description

Diese Funktion nimmt Dateipfade entgegen und öffnet sie in Visual Studio Code. Sie erweitert Pfade und überprüft die Dateiexistenz, bevor sie versucht, die Dateien zu öffnen. Die Funktion unterstützt sowohl direkte Dateipfade als auch Pipeline-Eingaben, was sie ideal zum schnellen Öffnen mehrerer Dateien aus Terminalsuchen macht.

## Syntax

```powershell
VSCode -FilePath <String[]> [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue) | 0 | — | Der Pfad zur Datei, die in VSCode geöffnet werden soll |
| `-Copilot` | SwitchParameter | — | — | Named | — | Quelldatei zur Copilot-Bearbeitungssitzung hinzufügen |

## Examples

### VSCode -FilePath "C:\path\to\file.txt" -Copilot

```powershell
VSCode -FilePath "C:\path\to\file.txt" -Copilot
```

### Get-ChildItem *.js -Recurse | VSCode

```powershell
Get-ChildItem *.js -Recurse | VSCode
```

## Related Links

- [VSCode on GitHub](https://github.com/genXdev/genXdev)
