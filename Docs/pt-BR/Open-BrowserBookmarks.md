# Open-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `sites

## Synopsis

> Abre favoritos do navegador que correspondem aos critérios de busca especificados.

## Description

Pesquisa favoritos nos navegadores Microsoft Edge, Google Chrome e Mozilla Firefox com base em consultas fornecidas. Abre os favoritos correspondentes no navegador selecionado com configurações de janela e modos de navegador ajustáveis.

Esta função fornece uma interface abrangente para encontrar e abrir favoritos do navegador com opções avançadas de filtragem e exibição. Ela suporta múltiplos critérios de pesquisa e pode abrir resultados em qualquer navegador instalado, com ampla personalização de posicionamento e comportamento da janela.

## Syntax

```powershell
Open-BrowserBookmarks [[-Queries] <String[]>] [[-Count] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Termos de pesquisa para filtrar favoritos |
| `-Count` | Int32 | — | — | 1 | `50` | Número máximo de URLs para abrir |
| `-Edge` | SwitchParameter | — | — | Named | — | Selecionar no Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Selecionar no Google Chrome |
| `-Firefox` | SwitchParameter | — | — | Named | — | Selecionar no Firefox |
| `-Monitor` | Int32 | — | — | Named | `-1` | O monitor a ser usado, 0 = padrão, -1 é descartar, -2 = Monitor secundário configurado |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Isso definirá a janela em modo tela cheia em um monitor diferente do PowerShell, ou lado a lado com o PowerShell no mesmo monitor |
| `-Private` | SwitchParameter | — | — | Named | — | Abre no modo de navegação anônima/privada |
| `-Force` | SwitchParameter | — | — | Named | — | Forçar ativação da porta de depuração, interrompendo navegadores existentes se necessário |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Abre em modo de tela cheia |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar a janela do navegador (não 1d ou oculta) |
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
| `-AcceptLang` | String | — | — | Named | `$null` | Definir o cabeçalho HTTP Accept-Language do navegador |
| `-KeysToSend` | String[] | — | — | Named | — | Teclas a serem enviadas para a janela do navegador, consulte a documentação do cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela do navegador após abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Trazer a janela do navegador para o primeiro plano após abrir |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimizar a janela após o posicionamento |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar a janela após o posicionamento |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar a janela ao estado normal após o posicionamento |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco da janela do PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Não reutilize a janela do navegador existente; em vez disso, crie uma nova. |
| `-Chromium` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge ou Google Chrome, dependendo de qual é o navegador padrão |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Use o navegador gerenciado pelo Playwright em vez do navegador instalado no sistema operacional |
| `-Webkit` | SwitchParameter | — | — | Named | — | Abre o navegador WebKit gerenciado pelo Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Execute o navegador sem uma janela visível |
| `-All` | SwitchParameter | — | — | Named | — | Abre em todos os navegadores modernos registrados |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desabilitar o bloqueador de pop-ups |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape os caracteres de controle ao enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Evitar que o foco do teclado retorne ao PowerShell após enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Envie Shift+Enter em vez do Enter normal para quebras de linha |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso entre o envio de diferentes sequências de teclas em milissegundos |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove as bordas da janela do navegador |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |

## Examples

### Open-BrowserBookmarks -Queries "github" -Edge -Count 5

```powershell
Open-BrowserBookmarks -Queries "github" -Edge -Count 5
```

Pesquisa por favoritos contendo "github" no Microsoft Edge e abre os primeiros 5 resultados no navegador padrão.

### sites gh -e -c 5

```powershell
sites gh -e -c 5
```

O mesmo que acima usando aliases - pesquisa nos favoritos do Edge por "gh" e abre 5 resultados no navegador padrão.

### Open-BrowserBookmarks -Queries "development", "tools" -Chrome -Firefox -Left -Count 10

```powershell
Open-BrowserBookmarks -Queries "development", "tools" -Chrome -Firefox -Left -Count 10
```

Pesquisa nos favoritos do Chrome por "desenvolvimento" e "ferramentas", abre os primeiros 10 resultados no Firefox posicionado no lado esquerdo da tela.

## Related Links

- [Open-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
