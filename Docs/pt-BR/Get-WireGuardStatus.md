# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
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
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Exibir a janela ao executar o contêiner (passagem direta) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remover bordas da janela (passagem direta) |
| `-Width` | Int32 | — | — | 9 | `-1` | Largura da janela em caracteres ou pixels (passagem direta) |
| `-Height` | Int32 | — | — | 10 | `-1` | Altura da janela em caracteres ou pixels (pass-through) |
| `-Left` | Int32 | — | — | 11 | — | Posição esquerda da janela (passagem) |
| `-Right` | Int32 | — | — | 12 | — | Posição direita da janela (passagem) |
| `-Bottom` | Int32 | — | — | 13 | — | Posição inferior da janela (passagem) |
| `-Centered` | SwitchParameter | — | — | Named | — | Centraliza a janela (passagem) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Abrir janela em modo de tela cheia (pass-through) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco na janela após a operação (passagem direta) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Mostrar janela lado a lado (passagem) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela após abrir (passagem) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Trazer janela para o primeiro plano (passagem) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Enviar tecla Escape para a janela (passagem) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Manter o foco do teclado ao enviar teclas (passagem) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter ao enviar teclas (passagem) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Atraso em milissegundos entre o envio de teclas (passagem) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Modo apenas de sessão (pass-through) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar dados da sessão (passagem direta) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ignorar a inicialização da sessão (passagem direta) |

## Related Links

- [Get-WireGuardStatus on GitHub](https://github.com/genXdev/genXdev)
