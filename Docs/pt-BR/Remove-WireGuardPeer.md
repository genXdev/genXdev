# Remove-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Remove uma configuração de peer WireGuard VPN.

## Description

Esta função remove a configuração de um peer VPN WireGuard do servidor em execução em um contêiner Docker. Ela exclui os arquivos de configuração do peer e atualiza o servidor WireGuard para parar de aceitar conexões deste peer. A função valida a existência do peer antes da remoção e fornece prompts de confirmação, a menos que o parâmetro Force seja especificado.

## Syntax

```powershell
Remove-WireGuardPeer -PeerName <String> [-Bottom] [-Centered] [-ClearSession] [-ContainerName <String>] [-FocusWindow] [-Force] [-Fullscreen] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-Height <Int32>] [-ImageName <String>] [-Left] [-NoBorders] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-ServicePort <Int32>] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-TimeZone <String>] [-VolumeName <String>] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | O nome do par a ser removido |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | Named | `51839` | A porta do serviço WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Nome personalizado da imagem Docker a ser usado |
| `-PUID` | String | — | — | Named | `'1000'` | ID do usuário para permissões no contêiner |
| `-PGID` | String | — | — | Named | `'1000'` | ID do grupo para permissões no contêiner |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Fuso horário a ser usado para o contêiner |
| `-Force` | SwitchParameter | — | — | Named | — | Forçar remoção sem confirmação |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker quando chamado pela função pai |
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

## Examples

### Remove-WireGuardPeer -PeerName "MyPhone"

```powershell
Remove-WireGuardPeer -PeerName "MyPhone"
```

Remove o par chamado "MyPhone" com prompt de confirmação.

### Remove-WireGuardPeer -PeerName "Tablet" -Force

```powershell
Remove-WireGuardPeer -PeerName "Tablet" -Force
```

Remove o peer chamado "Tablet" sem solicitação de confirmação.

### Remove-WireGuardPeer "WorkLaptop"

```powershell
Remove-WireGuardPeer "WorkLaptop"
```

Remove o peer usando a sintaxe de parâmetro posicional.

## Related Links

- [Remove-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
