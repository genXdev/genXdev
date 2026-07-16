# EnsureDeepStack

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureDeepStack [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-Monitor <Int32>] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-UseGPU] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | Der Name für das Docker-Volume für persistenten Speicher |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Der Port für den DeepStack-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale Zeit in Sekunden für die Überprüfung des Dienststatus |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervall in Sekunden zwischen den Gesundheitsüberprüfungen |
| `-ImageName` | String | — | — | 5 | — | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwungener Neubau des Docker-Containers und Entfernung vorhandener Daten |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Nutzung der GPU-beschleunigten Version (erfordert NVIDIA-GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Docker Desktop-Fenster während der Initialisierung anzeigen |
| `-Monitor` | Int32 | — | — | Named | `-2` | Der zu verwendende Monitor, 0 = Standard, -1 = verwerfen |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernt die Rahmen des Fensters |
| `-Width` | Int32 | — | — | Named | — | Die anfängliche Breite des Fensters |
| `-Height` | Int32 | — | — | Named | — | Die Anfangshöhe des Fensters |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Platzieren Sie das Fenster auf der rechten Seite des Bildschirms. |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Fenster in der Mitte des Bildschirms platzieren |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Das Fenster maximieren |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Wird entweder das Fenster auf einem anderen Monitor als PowerShell im Vollbildmodus anzeigen oder auf demselben Monitor nebeneinander mit PowerShell platzieren. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fenster nach dem Öffnen fokussieren |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the window to foreground after opening |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behält den Tastaturfokus auf dem Zielfenster beim Senden von Tastenanschlägen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen verschiedenen Eingabezeichenfolgen in Millisekunden beim Senden von Tasten |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |

## Outputs

- `Boolean`

## Related Links

- [EnsureDeepStack on GitHub](https://github.com/genXdev/genXdev)
