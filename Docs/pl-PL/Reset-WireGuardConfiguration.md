# Reset-WireGuardConfiguration

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Resetuje konfigurację serwera VPN WireGuard, usuwając wszystkich klientów.

## Description

Ta funkcja resetuje konfigurację serwera WireGuard VPN działającego w kontenerze Docker poprzez usunięcie wszystkich klientów i wygenerowanie świeżej konfiguracji serwera. Jest to operacja niszcząca, której nie można cofnąć i która trwale usunie wszystkie konfiguracje klientów. Funkcja zatrzymuje usługę WireGuard, usuwa wszystkie katalogi i pliki konfiguracyjne klientów, usuwa klucze serwera, restartuje kontener oraz weryfikuje, że nowa konfiguracja została wygenerowana.

## Syntax

```powershell
Reset-WireGuardConfiguration [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Force] [-NoDockerInitialize] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Nazwa kontenera Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Nazwa wolumenu Dockera dla trwałego przechowywania |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Numer portu dla usługi WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maksymalny czas w sekundach oczekiwania na sprawdzenie stanu usługi |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interwał w sekundach między próbami sprawdzenia kondycji |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Niestandardowa nazwa obrazu Docker do użycia |
| `-PUID` | String | — | — | 6 | `'1000'` | Identyfikator użytkownika dla uprawnień w kontenerze |
| `-PGID` | String | — | — | 7 | `'1000'` | Identyfikator grupy dla uprawnień w kontenerze |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Strefa czasowa do użycia dla kontenera |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pomiń inicjalizację Dockera (używane, gdy już wywołane przez funkcję nadrzędną) |
| `-Force` | SwitchParameter | — | — | Named | — | Wymuś reset bez potwierdzenia |

## Examples

### Reset-WireGuardConfiguration

```powershell
Reset-WireGuardConfiguration
```

Resetuje konfigurację WireGuard z ustawieniami domyślnymi i pyta o potwierdzenie przed kontynuowaniem.

### Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"

```powershell
Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"
```

Resetuje konfigurację WireGuard dla niestandardowej nazwy kontenera bez monitów potwierdzających.

## Parameter Details

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

> Wymuś reset bez potwierdzenia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-WireGuardPeer.md)
