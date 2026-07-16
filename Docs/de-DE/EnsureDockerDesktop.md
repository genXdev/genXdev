# EnsureDockerDesktop

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureDockerDesktop [[-Monitor] <Int32>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [[-KeysToSend] <String[]>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Left] [-NoBorders] [-NoDockerInitialization] [-RestoreFocus] [-Right] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Docker Desktop-Fenster während der Initialisierung anzeigen |
| `-Monitor` | Int32 | — | — | 0 | `-1` | Der zu verwendende Monitor, 0 = Standard, -1 = verwerfen |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernt die Rahmen des Fensters |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwingt einen Neustart von Docker Desktop |
| `-Width` | Int32 | — | — | 1 | — | Die anfängliche Breite des Fensters |
| `-Height` | Int32 | — | — | 2 | — | Die Anfangshöhe des Fensters |
| `-X` | Int32 | — | — | 3 | — | Die anfängliche X-Position des Fensters |
| `-Y` | Int32 | — | — | 4 | — | Die anfängliche Y-Position des Fensters |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Platzieren Sie das Fenster auf der rechten Seite des Bildschirms. |
| `-Top` | SwitchParameter | — | — | Named | — | Place window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Fenster in der Mitte des Bildschirms platzieren |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Das Fenster maximieren |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Wird entweder das Fenster auf einem anderen Monitor als PowerShell im Vollbildmodus anzeigen oder auf demselben Monitor nebeneinander mit PowerShell platzieren. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fenster nach dem Öffnen fokussieren |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the window to foreground after opening |
| `-KeysToSend` | String[] | — | — | 5 | — | Tastendrücke, die an das Fenster gesendet werden sollen (siehe Dokumentation für das Cmdlet GenXdev\Send-Key) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behält den Tastaturfokus auf dem Zielfenster beim Senden von Tastenanschlägen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 6 | — | Verzögerung zwischen verschiedenen Eingabezeichenfolgen in Millisekunden beim Senden von Tasten |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-NoDockerInitialization` | SwitchParameter | — | — | Named | — | Docker-Initialisierung überspringen und sofort zurückkehren |

## Related Links

- [EnsureDockerDesktop on GitHub](https://github.com/genXdev/genXdev)
