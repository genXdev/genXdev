# EnsureDockerDesktop

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureDockerDesktop [[-Monitor] <Int32>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [[-KeysToSend] <String[]>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Left] [-NoBorders] [-NoDockerInitialization] [-RestoreFocus] [-Right] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar a janela do Docker Desktop durante a inicialização |
| `-Monitor` | Int32 | — | — | 0 | `-1` | O monitor a ser usado, 0 = padrão, -1 é descartar |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove as bordas da janela |
| `-Force` | SwitchParameter | — | — | Named | — | Força uma reinicialização do Docker Desktop |
| `-Width` | Int32 | — | — | 1 | — | A largura inicial da janela |
| `-Height` | Int32 | — | — | 2 | — | A altura inicial da janela |
| `-X` | Int32 | — | — | 3 | — | A posição inicial X da janela |
| `-Y` | Int32 | — | — | 4 | — | A posição Y inicial da janela |
| `-Left` | SwitchParameter | — | — | Named | — | Coloque a janela no lado esquerdo da tela |
| `-Right` | SwitchParameter | — | — | Named | — | Coloque a janela no lado direito da tela |
| `-Top` | SwitchParameter | — | — | Named | — | Posicione a janela no lado superior da tela |
| `-Bottom` | SwitchParameter | — | — | Named | — | Coloque a janela na parte inferior da tela |
| `-Centered` | SwitchParameter | — | — | Named | — | Colocar a janela no centro da tela |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximize a janela |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco da janela do PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Isso definirá a janela em modo tela cheia em um monitor diferente do PowerShell, ou lado a lado com o PowerShell no mesmo monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela após abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Definir janela como primeiro plano após abrir |
| `-KeysToSend` | String[] | — | — | 5 | — | Keystrokes to send to the Window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape caracteres de controle e modificadores ao enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Manter o foco do teclado na janela de destino ao enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 6 | — | Atraso entre diferentes strings de entrada em milissegundos ao enviar teclas |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-NoDockerInitialization` | SwitchParameter | — | — | Named | — | Pular a inicialização do Docker e retornar imediatamente |

## Related Links

- [EnsureDockerDesktop on GitHub](https://github.com/genXdev/genXdev)
