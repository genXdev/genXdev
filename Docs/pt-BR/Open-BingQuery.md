# Open-BingQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `bq`

## Synopsis

> Abre uma consulta de pesquisa do Bing em um navegador da web.

## Description

Abre uma ou mais consultas de pesquisa do Bing em um navegador da web, usando configurações de navegador e parâmetros de linha de comando configuráveis. Esta função fornece uma interface abrangente para realizar pesquisas no Bing com amplas opções de personalização do navegador, incluindo posicionamento de janela, seleção de monitor, navegação privada e automação de teclas.

A função codifica automaticamente as consultas em URL e as formata para a API de pesquisa do Bing. Ela oferece suporte a todos os principais navegadores, incluindo Edge, Chrome e Firefox, com recursos como navegação privada, modo aplicativo, gerenciamento preciso de janelas e automação de teclas.

## Syntax

```powershell
Open-BingQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | A consulta a ser executada. |
| `-Language` | String | — | — | 1 | — | O idioma dos resultados de pesquisa retornados |
| `-Monitor` | Int32 | — | — | Named | `-1` | O monitor a ser usado, 0 = padrão, -1 descarta, -2 = monitor secundário configurado, padrão é $Global:DefaultSecondaryMonitor ou 2 se não encontrado |
| `-Width` | Int32 | — | — | Named | `-1` | A largura inicial da janela do navegador da web |
| `-Height` | Int32 | — | — | Named | `-1` | A altura inicial da janela do navegador web |
| `-X` | Int32 | — | — | Named | `-999999` | A posição inicial X da janela do navegador web |
| `-Y` | Int32 | — | — | Named | `-999999` | A posição Y inicial da janela do navegador web |
| `-AcceptLang` | String | — | — | Named | — | Define o cabeçalho HTTP accept-lang do navegador |
| `-Force` | SwitchParameter | — | — | Named | — | Forçar ativação da porta de depuração, parando navegadores existentes se necessário |
| `-Edge` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Abre no Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge ou no Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Abre no Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Use o navegador gerenciado pelo Playwright em vez do navegador instalado no sistema operacional |
| `-Webkit` | SwitchParameter | — | — | Named | — | Abre o navegador WebKit gerenciado pelo Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Execute o navegador sem uma janela visível |
| `-All` | SwitchParameter | — | — | Named | — | Abre em todos os navegadores modernos registrados |
| `-Left` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador no lado esquerdo da tela |
| `-Right` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador no lado direito da tela |
| `-Top` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador na parte superior da tela |
| `-Bottom` | SwitchParameter | — | — | Named | — | Colocar a janela do navegador na parte inferior da tela |
| `-Centered` | SwitchParameter | — | — | Named | — | Posicionar a janela do navegador no centro da tela |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Abre em modo de tela cheia |
| `-Private` | SwitchParameter | — | — | Named | — | Abre no modo de navegação anônima/privada |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar os controles do navegador |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Impedir o carregamento de extensões do navegador |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desativar o bloqueador de pop-ups |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela do navegador após abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Definir a janela do navegador como primeiro plano após abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar a janela após o posicionamento |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar a janela para o estado normal após o posicionamento |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retorna um objeto PowerShell do processo do navegador |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove as bordas da janela |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco da janela do PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Definirá a janela em tela cheia em um monitor diferente do Powershell, ou lado a lado com o Powershell no mesmo monitor |
| `-KeysToSend` | String[] | — | — | Named | — | Teclas a serem enviadas para a janela do navegador, consulte a documentação do cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape caracteres de controle ao enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Evitar que o foco do teclado retorne ao PowerShell após enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Enviar Shift+Enter em vez do Enter normal para quebras de linha |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso entre o envio de diferentes sequências de teclas em milissegundos |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas nas preferências persistentes sem afetar a sessão |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Não reutilize a janela existente do navegador; em vez disso, crie uma nova. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Não abra navegador, apenas retorne a URL |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Após abrir o navegador da web, retorne a URL |

## Examples

### Open-BingQuery -Queries "PowerShell scripting" -Monitor 0

```powershell
Open-BingQuery -Queries "PowerShell scripting" -Monitor 0
```

Abre uma pesquisa do Bing para "PowerShell scripting" no monitor padrão.

### bq "PowerShell scripting" -m 0

```powershell
bq "PowerShell scripting" -m 0
```

Abre uma pesquisa do Bing usando o alias e nomes de parâmetros curtos.

### Open-BingQuery -Queries "machine learning" -Language "English" -Private

```powershell
Open-BingQuery -Queries "machine learning" -Language "English" -Private
```

Abre uma sessão de navegação privada para pesquisar por "machine learning" com resultados em inglês.

### "PowerShell", "automation", "scripting" | Open-BingQuery -All -Left

```powershell
"PowerShell", "automation", "scripting" | Open-BingQuery -All -Left
```

Pesquisa por vários termos via pipeline e abre os resultados em todos os navegadores instalados, posicionando as janelas no lado esquerdo da tela.

## Parameter Details

### `-Queries <String[]>`

> A consulta a ser executada.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> O idioma dos resultados de pesquisa retornados

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> O monitor a ser usado, 0 = padrão, -1 descarta, -2 = monitor secundário configurado, padrão é $Global:DefaultSecondaryMonitor ou 2 se não encontrado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> A largura inicial da janela do navegador da web

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> A altura inicial da janela do navegador web

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> A posição inicial X da janela do navegador web

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> A posição Y inicial da janela do navegador web

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Define o cabeçalho HTTP accept-lang do navegador

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Forçar ativação da porta de depuração, parando navegadores existentes se necessário

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Abre no Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Abre no Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Abre no Microsoft Edge ou no Google Chrome, dependendo de qual é o navegador padrão

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Abre no Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> Use o navegador gerenciado pelo Playwright em vez do navegador instalado no sistema operacional

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Abre o navegador WebKit gerenciado pelo Playwright. Implica -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> Execute o navegador sem uma janela visível

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> Abre em todos os navegadores modernos registrados

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Coloque a janela do navegador no lado esquerdo da tela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> Coloque a janela do navegador no lado direito da tela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> Coloque a janela do navegador na parte superior da tela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> Colocar a janela do navegador na parte inferior da tela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Posicionar a janela do navegador no centro da tela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> Abre em modo de tela cheia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Abre no modo de navegação anônima/privada

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Ocultar os controles do navegador

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> Impedir o carregamento de extensões do navegador

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> Desativar o bloqueador de pop-ups

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Focar a janela do navegador após abrir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Definir a janela do navegador como primeiro plano após abrir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Maximizar a janela após o posicionamento

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> Restaurar a janela para o estado normal após o posicionamento

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Retorna um objeto PowerShell do processo do navegador

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Remove as bordas da janela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Restaurar o foco da janela do PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Definirá a janela em tela cheia em um monitor diferente do Powershell, ou lado a lado com o Powershell no mesmo monitor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Teclas a serem enviadas para a janela do navegador, consulte a documentação do cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Escape caracteres de controle ao enviar teclas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Evitar que o foco do teclado retorne ao PowerShell após enviar teclas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Enviar Shift+Enter em vez do Enter normal para quebras de linha

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Atraso entre o envio de diferentes sequências de teclas em milissegundos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Usar configurações alternativas armazenadas na sessão para preferências de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Limpar configurações alternativas armazenadas na sessão para preferências de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Armazenar configurações apenas nas preferências persistentes sem afetar a sessão

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> Não reutilize a janela existente do navegador; em vez disso, crie uma nova.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> Não abra navegador, apenas retorne a URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> Após abrir o navegador da web, retorne a URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Copy-PDFsFromGoogleQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-BuiltWithSiteInfo.md)
- [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-GithubQuery.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-YoutubeQuery.md)
