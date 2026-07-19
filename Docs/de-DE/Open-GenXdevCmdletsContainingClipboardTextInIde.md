# Open-GenXdevCmdletsContainingClipboardTextInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `vscodesearch

## Synopsis

> Öffnet Dateien in der IDE, die Zwischenablagetext enthalten

## Description

Der Text in der Zwischenablage wird verwendet, um in allen GenXdev-Skripten zu suchen, und wenn er gefunden wird, wird die Datei in Code oder Visual Studio geöffnet.

## Syntax

```powershell
Open-GenXdevCmdletsContainingClipboardTextInIde [[-InputObject] <String>] [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String | — | ✅ (ByValue) | 0 | — | Search for clipboard text in all GenXdev scripts |
| `-Copilot` | SwitchParameter | — | — | Named | — | Quelldatei zur Copilot-Bearbeitungssitzung hinzufügen |

## Related Links

- [Open-GenXdevCmdletsContainingClipboardTextInIde on GitHub](https://github.com/genXdev/genXdev)
