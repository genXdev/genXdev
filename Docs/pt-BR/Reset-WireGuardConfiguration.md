# Reset-WireGuardConfiguration

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Redefine a configuração do servidor WireGuard VPN, removendo todos os pares.

## Description

Esta função redefine a configuração do servidor VPN WireGuard em execução em um contêiner Docker, removendo todos os peers e gerando uma nova configuração do servidor. Esta é uma operação destrutiva que não pode ser desfeita e removerá permanentemente todas as configurações de peer. A função para o serviço WireGuard, remove todos os diretórios de peer e arquivos de configuração, remove as chaves do servidor, reinicia o contêiner e verifica se uma nova configuração foi gerada.

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

## Examples

### Reset-WireGuardConfiguration

```powershell
Reset-WireGuardConfiguration
```

Redefine a configuração do WireGuard com as configurações padrão e solicita confirmação antes de prosseguir.

### Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"

```powershell
Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"
```

Redefine a configuração do WireGuard para um nome de contêiner personalizado sem solicitações de confirmação.

## Related Links

- [Reset-WireGuardConfiguration on GitHub](https://github.com/genXdev/genXdev)
