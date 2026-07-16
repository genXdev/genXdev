# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker (usada quando já chamada pela função pai) |
| `-Force` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | A porta do serviço WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Nome personalizado da imagem Docker a ser usado |
| `-PUID` | String | — | — | 6 | `'1000'` | ID do usuário para permissões no contêiner |
| `-PGID` | String | — | — | 7 | `'1000'` | ID do grupo para permissões no contêiner |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Fuso horário a ser usado para o contêiner |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostre a janela do Docker ao executar o WireGuard |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remover bordas da janela do Docker |
| `-Width` | Int32 | — | — | 9 | `-1` | Defina a largura da janela do Docker |
| `-Height` | Int32 | — | — | 10 | `-1` | Definir a altura da janela do Docker |
| `-Left` | Int32 | — | — | 11 | — | Defina a posição esquerda da janela do Docker |
| `-Right` | Int32 | — | — | 12 | — | Defina a posição correta da janela do Docker |
| `-Bottom` | Int32 | — | — | 13 | — | Defina a posição inferior da janela do Docker |
| `-Centered` | SwitchParameter | — | — | Named | — | Centralizar a janela do Docker na tela |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Executar a janela do Docker em modo de tela cheia |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco para a janela anterior após executar o Docker |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Exibir janela do Docker lado a lado com outras janelas |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela do Docker após iniciar |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Coloque a janela do Docker como janela em primeiro plano |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Enviar tecla Escape para a janela do Docker após a inicialização |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Manter o foco do teclado na janela do Docker após a inicialização |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter ao enviar teclas para a janela do Docker |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Atraso em milissegundos entre o envio de teclas para a janela do Docker |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use sessão apenas para a janela do Docker |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar sessão da janela do Docker antes de executar |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Pular sessão para janela do Docker |

## Related Links

- [Get-WireGuardPeers on GitHub](https://github.com/genXdev/genXdev)
