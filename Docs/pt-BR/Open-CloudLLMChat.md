# Open-CloudLLMChat

> **Module:** GenXdev.Queries.AI | **Type:** Function | **Aliases:** `ask

## Synopsis

> Abre uma interface de chat LLM em nuvem para consultas de IA.

## Description

Esta função fornece uma interface unificada para abrir vários serviços de chat de IA baseados em nuvem em um navegador web. Ela suporta múltiplas plataformas de IA, incluindo ChatGPT, BingCopilot, Google Gemini, X Grok, DeepSearch e GitHub Copilot. A função seleciona automaticamente a função específica de endpoint apropriada e passa todos os parâmetros relevantes para configuração do navegador e posicionamento da janela.

## Syntax

```powershell
Open-CloudLLMChat -Queries <String[]> [[-EndPoint] <String>] [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NewWindow] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | A consulta a ser executada. |
| `-EndPoint` | String | — | — | 1 | `'XGrok'` | O endpoint para invocar a consulta |
| `-Language` | String | — | — | 2 | — | O idioma dos resultados de pesquisa retornados |
| `-Private` | SwitchParameter | — | — | Named | — | Abre no modo de navegação anônima/privada |
| `-Force` | SwitchParameter | — | — | Named | — | Forçar ativação da porta de depuração, interrompendo navegadores existentes se necessário |
| `-Edge` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Abre no Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge ou Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Abre no Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Use o navegador gerenciado pelo Playwright em vez do navegador instalado no sistema operacional |
| `-Webkit` | SwitchParameter | — | — | Named | — | Abre o navegador WebKit gerenciado pelo Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Execute o navegador sem uma janela visível |
| `-All` | SwitchParameter | — | — | Named | — | Abre em todos os navegadores modernos registrados |
| `-Monitor` | Int32 | — | — | Named | `-1` | O monitor a ser usado: 0 = padrão, -1 = descartar, -2 = Monitor secundário configurado, o padrão é -1, sem posicionamento |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Isso definirá a janela em modo tela cheia em um monitor diferente do PowerShell, ou lado a lado com o PowerShell no mesmo monitor |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Abre em modo de tela cheia |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | The `-ShowWindow` parameter. |
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
| `-AcceptLang` | String | — | — | Named | — | Definir o cabeçalho HTTP Accept-Language do navegador |
| `-KeysToSend` | String[] | — | — | Named | — | Teclas a serem enviadas para a janela do navegador, consulte a documentação do cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela do navegador após abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Trazer a janela do navegador para o primeiro plano após abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar a janela após o posicionamento |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar a janela ao estado normal após o posicionamento |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimizar a janela após o posicionamento |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco da janela do PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Não reutilize a janela do navegador existente; em vez disso, crie uma nova. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retorna um objeto [System.Diagnostics.Process] do processo do navegador |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Após abrir o navegador web, retorne a URL |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape os caracteres de controle ao enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Evitar que o foco do teclado retorne ao PowerShell após enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Envie Shift+Enter em vez do Enter normal para quebras de linha |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso entre o envio de diferentes sequências de teclas em milissegundos |

## Examples

### Open-CloudLLMChat -Queries "How to write better PowerShell functions?" -EndPoint "ChatGPT"

```powershell
Open-CloudLLMChat -Queries "How to write better PowerShell functions?" -EndPoint "ChatGPT"
```

Abre o ChatGPT e envia a consulta sobre funções do PowerShell.

### ask "What is machine learning?" -EndPoint "GoogleGemini"

```powershell
ask "What is machine learning?" -EndPoint "GoogleGemini"
```

Usa o alias para perguntar ao Google Gemini sobre aprendizado de máquina.

### "PowerShell", "Python", "JavaScript" | Open-CloudLLMChat -EndPoint "XGrok" -Monitor 0

```powershell
"PowerShell", "Python", "JavaScript" | Open-CloudLLMChat -EndPoint "XGrok" -Monitor 0
```

Processa múltiplas consultas através do X Grok no monitor padrão.

## Related Links

- [Open-CloudLLMChat on GitHub](https://github.com/genXdev/genXdev)
