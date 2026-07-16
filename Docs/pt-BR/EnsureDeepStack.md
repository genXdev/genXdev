# EnsureDeepStack

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureDeepStack [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-Monitor <Int32>] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-UseGPU] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | O número da porta para o serviço DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | 5 | — | Nome personalizado da imagem Docker a ser usado |
| `-Force` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use a versão acelerada por GPU (requer placa de vídeo NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar a janela do Docker Desktop durante a inicialização |
| `-Monitor` | Int32 | — | — | Named | `-2` | O monitor a ser usado, 0 = padrão, -1 é descartar |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove as bordas da janela |
| `-Width` | Int32 | — | — | Named | — | A largura inicial da janela |
| `-Height` | Int32 | — | — | Named | — | A altura inicial da janela |
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

## Outputs

- `Boolean`

## Related Links

- [EnsureDeepStack on GitHub](https://github.com/genXdev/genXdev)
