# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Adiciona uma nova configuração de peer (cliente) WireGuard VPN ao servidor.

## Description

Esta função adiciona um novo peer ao servidor VPN WireGuard em execução em um contêiner Docker. Ela gera uma nova configuração de cliente com um endereço IP único, cria as chaves criptográficas necessárias e retorna os detalhes da configuração. A função pode, opcionalmente, salvar a configuração em um arquivo ou gerar um código QR para facilitar a configuração em dispositivos móveis. A função valida nomes de peers, verifica duplicatas e lida com várias condições de erro de forma elegante.

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Um nome único para o par |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | As faixas de IP que serão roteadas através da VPN |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | Servidores DNS a serem usados para este par |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | O caminho onde o arquivo de configuração do peer deve ser salvo |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | A porta do serviço WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | Nome personalizado da imagem Docker a ser usado |
| `-PUID` | String | — | — | 10 | `'1000'` | ID do usuário para permissões no contêiner |
| `-PGID` | String | — | — | 11 | `'1000'` | ID do grupo para permissões no contêiner |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | Fuso horário a ser usado para o contêiner |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | Salvar a configuração do peer em um arquivo |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar a janela do WireGuard ao inicializar o serviço |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remover bordas das janelas ao inicializar o serviço |
| `-Width` | Int32 | — | — | Named | `-1` | Defina a largura da janela ao inicializar o serviço |
| `-Height` | Int32 | — | — | Named | `-1` | Defina a altura da janela ao inicializar o serviço |
| `-Left` | Int32 | — | — | Named | — | Definir a posição esquerda da janela ao inicializar o serviço |
| `-Right` | Int32 | — | — | Named | — | Definir a posição correta da janela ao inicializar o serviço |
| `-Bottom` | Int32 | — | — | Named | — | Definir a posição inferior da janela ao inicializar o serviço |
| `-Centered` | SwitchParameter | — | — | Named | — | Centralizar a janela ao inicializar o serviço |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Inicie o serviço em modo de tela cheia |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco na janela após inicializar o serviço |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Mostre a janela lado a lado ao inicializar o serviço |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela após inicializar o serviço |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Trazer a janela para o primeiro plano após inicializar o serviço |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Enviar tecla Escape para a janela após inicializar o serviço |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Manter o foco do teclado ao enviar teclas após inicializar o serviço |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter ao enviar teclas após inicializar o serviço |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso em milissegundos ao enviar teclas após inicializar o serviço |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar sessão apenas para o serviço WireGuard |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar a sessão ao inicializar o serviço |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Pular sessão ao inicializar o serviço |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | Gerar QR code para configuração fácil no celular |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker (usada quando já chamada pela função pai) |
| `-Force` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |

## Examples

### Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `     -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `     "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `     -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `     -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `     -PGID "1000" -TimeZone "Etc/UTC"

```powershell
Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `
    -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `
    "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `
    -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `
    -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `
    -PGID "1000" -TimeZone "Etc/UTC"
```

### Add-WireGuardPeer "MyTablet" -ShowQRCode

```powershell
Add-WireGuardPeer "MyTablet" -ShowQRCode
```

## Related Links

- [Add-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
