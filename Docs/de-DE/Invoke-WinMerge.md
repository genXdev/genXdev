# Invoke-WinMerge

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Startet WinMerge, um zwei Dateien nebeneinander zu vergleichen.

## Description

Startet die WinMerge-Anwendung, um Quell- und Zieldateien in einer Side-by-Side-Diff-Ansicht zu vergleichen. Die Funktion überprüft die Existenz beider Eingabedateien und stellt sicher, dass WinMerge ordnungsgemäß installiert ist, bevor sie gestartet wird. Bietet eine optionale Warte-Funktion, um die Ausführung bis zum Schließen von WinMerge anzuhalten.

## Syntax

```powershell
Invoke-WinMerge -SourcecodeFilePath <String> -TargetcodeFilePath <String> [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SourcecodeFilePath` | String | ✅ | — | 0 | — | Pfad zur Quelldatei zum Vergleichen |
| `-TargetcodeFilePath` | String | ✅ | — | 1 | — | Pfad zur zu vergleichenden Zieldatei |
| `-Wait` | SwitchParameter | — | — | Named | — | Warten Sie, bis WinMerge geschlossen ist, bevor Sie fortfahren. |

## Examples

### Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `                 -TargetcodeFilePath "C:\target\file2.txt" `                 -Wait

```powershell
Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `
                -TargetcodeFilePath "C:\target\file2.txt" `
                -Wait
```

### merge "C:\source\file1.txt" "C:\target\file2.txt"

```powershell
merge "C:\source\file1.txt" "C:\target\file2.txt"
```

## Related Links

- [Invoke-WinMerge on GitHub](https://github.com/genXdev/genXdev)
