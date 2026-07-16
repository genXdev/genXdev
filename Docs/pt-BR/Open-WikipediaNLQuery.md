# Open-WikipediaNLQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `wikinl

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-WikipediaNLQuery -Queries <String[]> [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | A consulta a ser executada. |
| `-Private` | SwitchParameter | — | — | Named | — | Abre no modo de navegação anônima/privada |
| `-Force` | SwitchParameter | — | — | Named | — | Forçar ativação da porta de depuração, interrompendo navegadores existentes se necessário |
| `-Edge` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Abre no Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge ou Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Abre no Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Abre em todos os navegadores modernos registrados |
| `-Monitor` | Int32 | — | — | Named | `-1` | O monitor a ser usado: 0 = padrão, -1 = descartar, -2 = Monitor secundário configurado, o padrão é -1, sem posicionamento |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Abre em modo de tela cheia |
| `-Width` | Int32 | — | — | Named | `-1` | A largura inicial da janela do navegador |
| `-Height` | Int32 | — | — | Named | `-1` | A altura inicial da janela do navegador web |
| `-X` | Int32 | — | — | Named | `-999999` | A posição inicial X da janela do navegador web |
| `-Y` | Int32 | — | — | Named | `-999999` | A posição Y inicial da janela do navegador web |
| `-Left` | SwitchParameter | — | — | Named | — | Colocar janela do navegador no lado esquerdo da tela |
| `-Right` | SwitchParameter | — | — | Named | — | Posicione a janela do navegador no lado direito da tela |
| `-Top` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador na parte superior da tela |
| `-Bottom` | SwitchParameter | — | — | Named | — | Posicione a janela do navegador na parte inferior da tela |
| `-Centered` | SwitchParameter | — | — | Named | — | Colocar a janela do navegador no centro da tela |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar os controles do navegador |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Impedir o carregamento de extensões do navegador |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desabilitar o bloqueador de pop-ups |
| `-AcceptLang` | String | — | — | Named | `$null` | Definir o cabeçalho HTTP Accept-Language do navegador |
| `-KeysToSend` | String[] | — | — | Named | — | Teclas a serem enviadas para a janela do navegador, consulte a documentação do cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape os caracteres de controle ao enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Evitar que o foco do teclado retorne ao PowerShell após enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Envie Shift+Enter em vez do Enter normal para quebras de linha |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso entre o envio de diferentes sequências de teclas em milissegundos |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela do navegador após abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Trazer a janela do navegador para o primeiro plano após abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar a janela após o posicionamento |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar a janela ao estado normal após o posicionamento |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco da janela do PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Não reutilize a janela do navegador existente; em vez disso, crie uma nova. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retorna um objeto [System.Diagnostics.Process] do processo do navegador |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Após abrir o navegador web, retorne a URL |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove as bordas da janela do navegador |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Abre duas janelas do navegador lado a lado |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar cookies apenas de sessão (sem cookies persistentes) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpe os dados da sessão do navegador antes de abrir |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Pular restauração da sessão anterior do navegador |

## Related Links

- [Open-WikipediaNLQuery on GitHub](https://github.com/genXdev/genXdev)
