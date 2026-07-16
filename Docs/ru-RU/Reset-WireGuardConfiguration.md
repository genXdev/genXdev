# Reset-WireGuardConfiguration

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Reset-WireGuardConfiguration [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Force] [-NoDockerInitialize] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Номер порта для службы WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Имя пользовательского образа Docker для использования |
| `-PUID` | String | — | — | 6 | `'1000'` | Идентификатор пользователя для прав в контейнере |
| `-PGID` | String | — | — | 7 | `'1000'` | Идентификатор группы для разрешений в контейнере |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Часовой пояс для использования контейнером |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker (используется, когда уже вызвана родительской функцией) |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительный сброс без подтверждения |

## Related Links

- [Reset-WireGuardConfiguration on GitHub](https://github.com/genXdev/genXdev)
