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
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | A porta do serviço WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Nome personalizado da imagem Docker a ser usado |
| `-PUID` | String | — | — | 6 | `'1000'` | ID do usuário para permissões no contêiner |
| `-PGID` | String | — | — | 7 | `'1000'` | ID do grupo para permissões no contêiner |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Fuso horário a ser usado para o contêiner |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker (usada quando já chamada pela função pai) |
| `-Force` | SwitchParameter | — | — | Named | — | Reinicialização forçada sem confirmação |

## Related Links

- [Reset-WireGuardConfiguration on GitHub](https://github.com/genXdev/genXdev)
