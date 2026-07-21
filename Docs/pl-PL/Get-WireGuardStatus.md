# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Pobiera szczegółowe informacje o stanie serwera VPN WireGuard.

## Description

Ta funkcja pobiera szczegółowe informacje o stanie serwera VPN WireGuard działającego w kontenerze Docker, w tym szczegóły interfejsu, port nasłuchu, podłączeni użytkownicy oraz kondycja serwera. Dostarcza kompleksowych informacji o usłudze WireGuard, takich jak status serwera, liczba użytkowników, czas pracy i szczegóły konfiguracji sieci.

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pomiń inicjalizację Dockera (używane, gdy już wywołane przez funkcję nadrzędną) |
| `-Force` | SwitchParameter | — | — | Named | — | Wymuś przebudowę kontenera Docker i usuń istniejące dane |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Nazwa kontenera Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Nazwa wolumenu Dockera dla trwałego przechowywania |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Numer portu dla usługi WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maksymalny czas w sekundach oczekiwania na sprawdzenie stanu usługi |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interwał w sekundach między próbami sprawdzenia kondycji |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Niestandardowa nazwa obrazu Docker do użycia |
| `-PUID` | String | — | — | 6 | `'1000'` | Identyfikator użytkownika dla uprawnień w kontenerze |
| `-PGID` | String | — | — | 7 | `'1000'` | Identyfikator grupy dla uprawnień w kontenerze |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Strefa czasowa do użycia dla kontenera |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Pokaż okno podczas uruchamiania kontenera (przekazywanie) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Usuń obramowania okien (tryb przezroczysty) |
| `-Width` | Int32 | — | — | 9 | `-1` | Szerokość okna w znakach lub pikselach (przekazywanie bez zmian) |
| `-Height` | Int32 | — | — | 10 | `-1` | Wysokość okna w znakach lub pikselach (przekazywanie dalej) |
| `-Left` | Int32 | — | — | 11 | — | Pozycja lewego okna (przepuszczanie) |
| `-Right` | Int32 | — | — | 12 | — | Pozycja prawego okna (przepustowość) |
| `-Bottom` | Int32 | — | — | 13 | — | Pozycja dolna okna (przepuszczanie) |
| `-Centered` | SwitchParameter | — | — | Named | — | Wyśrodkuj okno (przepuszczanie) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Otwórz okno w trybie pełnoekranowym (przekazywanie) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Przywróć fokus na okno po wykonaniu operacji (przekierowanie) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Pokaż okno obok siebie (przekazywanie) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Skup okno po otwarciu (przekazywanie) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Ustaw okno na pierwszym planie (pass-through) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Wyślij klawisz Escape do okna (przekaż dalej) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Zachowaj fokus klawiatury podczas wysyłania klawiszy (przepuszczanie) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Użyj Shift+Enter podczas wysyłania klawiszy (przepuszczanie) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Opóźnienie w milisekundach między wysyłaniem klawiszy (przekazywanie) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Tryb tylko sesji (przekazywanie) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść dane sesji (przekazywanie) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Pomiń inicjalizację sesji (przepuszczanie) |

## Examples

### Get-WireGuardStatus

```powershell
Get-WireGuardStatus
```

Zwraca stan serwera WireGuard z domyślnymi ustawieniami.

### Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"

```powershell
Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"
```

Pobiera stan niestandardowego kontenera bez inicjalizowania Docker.

## Parameter Details

### `-NoDockerInitialize`

> Pomiń inicjalizację Dockera (używane, gdy już wywołane przez funkcję nadrzędną)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Wymuś przebudowę kontenera Docker i usuń istniejące dane

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Nazwa kontenera Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> Nazwa wolumenu Dockera dla trwałego przechowywania

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'wireguard_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Numer portu dla usługi WireGuard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `51839` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Maksymalny czas w sekundach oczekiwania na sprawdzenie stanu usługi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Interwał w sekundach między próbami sprawdzenia kondycji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Niestandardowa nazwa obrazu Docker do użycia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `'linuxserver/wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PUID <String>`

> Identyfikator użytkownika dla uprawnień w kontenerze

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PGID <String>`

> Identyfikator grupy dla uprawnień w kontenerze

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeZone <String>`

> Strefa czasowa do użycia dla kontenera

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 8 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Pokaż okno podczas uruchamiania kontenera (przekazywanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Usuń obramowania okien (tryb przezroczysty)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Szerokość okna w znakach lub pikselach (przekazywanie bez zmian)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 9 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Wysokość okna w znakach lub pikselach (przekazywanie dalej)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 10 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Pozycja lewego okna (przepuszczanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 11 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Pozycja prawego okna (przepustowość)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 12 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Pozycja dolna okna (przepuszczanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 13 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Wyśrodkuj okno (przepuszczanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fullscreen`

> Otwórz okno w trybie pełnoekranowym (przekazywanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Przywróć fokus na okno po wykonaniu operacji (przekierowanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Pokaż okno obok siebie (przekazywanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Skup okno po otwarciu (przekazywanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Ustaw okno na pierwszym planie (pass-through)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Wyślij klawisz Escape do okna (przekaż dalej)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Zachowaj fokus klawiatury podczas wysyłania klawiszy (przepuszczanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Użyj Shift+Enter podczas wysyłania klawiszy (przepuszczanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Opóźnienie w milisekundach między wysyłaniem klawiszy (przekazywanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 14 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Tryb tylko sesji (przekazywanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Wyczyść dane sesji (przekazywanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Pomiń inicjalizację sesji (przepuszczanie)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WireGuardPeers.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Reset-WireGuardConfiguration.md)
