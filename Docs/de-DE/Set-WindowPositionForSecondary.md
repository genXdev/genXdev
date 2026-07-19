# Set-WindowPositionForSecondary

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wps

## Synopsis

> Positioniert ein Fenster auf dem sekundären Monitor mit den angegebenen Layout-Optionen.

## Description

Diese Funktion ermöglicht die Positionierung von Fenstern auf einem konfigurierten sekundären Monitor mithilfe von
Set-WindowPosition mit verschiedenen Layout-Optionen einschließlich Ausrichtung, Größe und
Rand-Einstellungen. Sie übernimmt die Monitorauswahl basierend auf der globalen Konfiguration und
bietet einen bequemen Wrapper für die Fensterpositionierung auf dem sekundären Monitor.

## Syntax

```powershell
Set-WindowPositionForSecondary [[-Process] <Diagnostics.Process[]>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NoBorders] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Process` | Diagnostics.Process[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Der Vorgang des Fensters zur Position |
| `-Monitor` | Int32 | — | — | Named | `-2` | Der zu verwendende Monitor: 0=Standard, -1=Verwerfen, -2=Konfiguriert |
| `-Width` | Int32 | — | — | Named | `-1` | Die anfängliche Breite des Fensters |
| `-Height` | Int32 | — | — | Named | `-1` | Die Anfangshöhe des Fensters |
| `-X` | Int32 | — | — | Named | `-999999` | Die anfängliche X-Position des Fensters |
| `-Y` | Int32 | — | — | Named | `-999999` | Die anfängliche Y-Position des Fensters |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Platzieren Sie das Fenster auf der rechten Seite des Bildschirms. |
| `-Top` | SwitchParameter | — | — | Named | — | Place window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Fenster in der Mitte des Bildschirms platzieren |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Sends F11 to the window |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernt die Rahmen des Fensters |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fenster nach dem Positionieren fokussieren |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Fenster nach der Positionierung in den Vordergrund bringen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Fenster nach der Positionierung |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-KeysToSend` | String[] | — | — | Named | — | Tastatureingaben, die nach dem Positionieren an das Fenster gesendet werden sollen |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behält den Tastaturfokus auf dem Zielfenster beim Senden von Tastenanschlägen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen verschiedenen Eingabezeichenfolgen in Millisekunden beim Senden von Tasten |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt das Prozessobjekt nach dem Positionieren zurück |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Place window side by side with PowerShell on the same monitor |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |

## Examples

### Set-WindowPositionForSecondary -Process "notepad" -Width 800 -Height 600 `     -Centered -NoBorders

```powershell
Set-WindowPositionForSecondary -Process "notepad" -Width 800 -Height 600 `
    -Centered -NoBorders
```

### wps notepad -w 800 -h 600 -c -nb

```powershell
wps notepad -w 800 -h 600 -c -nb
```

## Related Links

- [Set-WindowPositionForSecondary on GitHub](https://github.com/genXdev/genXdev)
