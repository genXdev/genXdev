# EnsureWireGuard

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Garante que o serviço VPN WireGuard esteja instalado e em execução via contêiner Docker.

## Description

Esta função configura e gerencia o serviço de VPN WireGuard usando o Docker Desktop. Ela garante automaticamente que o Docker Desktop esteja em execução, baixa a imagem mais recente do Docker WireGuard, cria volumes de armazenamento persistentes e gerencia o ciclo de vida do contêiner, incluindo monitoramento de integridade e capacidade de reinicialização.

WireGuard é uma VPN simples, rápida e moderna que utiliza criptografia de ponta. Ela oferece desempenho superior e simplicidade em comparação com soluções tradicionais de VPN como OpenVPN, com sobrecarga de configuração mínima e excelente suporte entre plataformas.

## Syntax

```powershell
EnsureWireGuard [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
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
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar a janela do Docker Desktop durante a inicialização |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove as bordas da janela |
| `-Width` | Int32 | — | — | Named | `-1` | A largura inicial da janela |
| `-Height` | Int32 | — | — | Named | `-1` | A altura inicial da janela |
| `-Left` | SwitchParameter | — | — | Named | — | Coloque a janela no lado esquerdo da tela |
| `-Right` | SwitchParameter | — | — | Named | — | Coloque a janela no lado direito da tela |
| `-Bottom` | SwitchParameter | — | — | Named | — | Coloque a janela na parte inferior da tela |
| `-Centered` | SwitchParameter | — | — | Named | — | Colocar a janela no centro da tela |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximize a janela |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco da janela do PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Isso definirá a janela em modo tela cheia em um monitor diferente do PowerShell, ou lado a lado com o PowerShell no mesmo monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela após abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Definir janela como primeiro plano após abrir |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape caracteres de controle e modificadores ao enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Manter o foco do teclado na janela de destino ao enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso entre diferentes strings de entrada em milissegundos ao enviar teclas |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-Force` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |

## Examples

### EnsureWireGuard

```powershell
EnsureWireGuard
```

### EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821

```powershell
EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821
```

### EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120

```powershell
EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120
```

### EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"

```powershell
EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"
```

### EnsureWireGuard -Force

```powershell
EnsureWireGuard -Force
```

## Outputs

- `Boolean`

## Related Links

- [EnsureWireGuard on GitHub](https://github.com/genXdev/genXdev)
