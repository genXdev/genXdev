# Get-WireGuardPeerQRCode

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardPeerQRCode -PeerName <String> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-ServicePort <Int32>] [-TimeZone <String>] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Имя пользователя для генерации QR-кода |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker (используется, когда уже вызвана родительской функцией) |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | Named | `51839` | Номер порта для службы WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Имя пользовательского образа Docker для использования |
| `-PUID` | String | — | — | Named | `'1000'` | Идентификатор пользователя для прав в контейнере |
| `-PGID` | String | — | — | Named | `'1000'` | Идентификатор группы для разрешений в контейнере |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Часовой пояс для использования контейнером |

## Related Links

- [Get-WireGuardPeerQRCode on GitHub](https://github.com/genXdev/genXdev)
