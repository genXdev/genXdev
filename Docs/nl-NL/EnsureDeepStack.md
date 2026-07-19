# EnsureDeepStack

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Zorgt ervoor dat de DeepStack-gezichtsherkenningsservice is geïnstalleerd en actief is.

## Description

Deze functie stelt de DeepStack-gezichtsherkenningsservice in en beheert deze met Docker. Het zorgt ervoor dat Docker Desktop is geïnstalleerd, haalt de DeepStack Docker-image op en voert de service uit in een container met persistente opslag voor geregistreerde gezichten.

DeepStack biedt een eenvoudige REST API voor gezichtsdetectie, registratie en herkenning die goed gedocumenteerd en actief onderhouden wordt.

## Syntax

```powershell
EnsureDeepStack [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-Monitor <Int32>] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-UseGPU] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Het poortnummer voor de DeepStack-service |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | 5 | — | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gebruik GPU-versnelde versie (vereist NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon Docker Desktop-venster tijdens initialisatie |
| `-Monitor` | Int32 | — | — | Named | `-2` | De te gebruiken monitor, 0 = standaard, -1 is negeren |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-Width` | Int32 | — | — | Named | — | De initiële breedte van het venster |
| `-Height` | Int32 | — | — | Named | — | De initiële hoogte van het venster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het venster aan de rechterkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het venster in het midden van het scherm |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximaliseer het venster |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Zet het venster volledig scherm op een ander scherm dan Powershell, of naast Powershell op hetzelfde scherm |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het venster op de voorgrond na het openen |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Toetsenbordfocus op doelvenster houden bij het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |

## Examples

### EnsureDeepStack -ContainerName "deepstack_face_recognition" `                 -VolumeName "deepstack_face_data" `                 -ServicePort 5000 `                 -HealthCheckTimeout 60 `                 -HealthCheckInterval 3

```powershell
EnsureDeepStack -ContainerName "deepstack_face_recognition" `
                -VolumeName "deepstack_face_data" `
                -ServicePort 5000 `
                -HealthCheckTimeout 60 `
                -HealthCheckInterval 3
```

### EnsureDeepStack -Force -UseGPU

```powershell
EnsureDeepStack -Force -UseGPU
```

## Outputs

- `Boolean`

## Related Links

- [EnsureDeepStack on GitHub](https://github.com/genXdev/genXdev)
