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
| `-PeerName` | String | ✅ | — | 0 | — | O nome do peer para gerar um código QR |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker (usada quando já chamada pela função pai) |
| `-Force` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | Named | `51839` | A porta do serviço WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Nome personalizado da imagem Docker a ser usado |
| `-PUID` | String | — | — | Named | `'1000'` | ID do usuário para permissões no contêiner |
| `-PGID` | String | — | — | Named | `'1000'` | ID do grupo para permissões no contêiner |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Fuso horário a ser usado para o contêiner |

## Related Links

- [Get-WireGuardPeerQRCode on GitHub](https://github.com/genXdev/genXdev)
