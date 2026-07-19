# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb

## Synopsis

> Inicia um navegador gerenciado pelo Playwright com um perfil de usuário persistente.

## Description

<details>
<summary><b>Expand description</b></summary>

Inicia uma instância de navegador autônoma alimentada pelos binários integrados do Playwright (Chromium, Firefox ou WebKit) — completamente independente de qualquer navegador instalado no sistema. O navegador usa um perfil de usuário persistente armazenado em GenXdev AppData, para que cookies, localStorage e sessões sobrevivam entre reinicializações.

Este cmdlet substitui a abordagem antiga de porta CDP/depuração que quebrou no Chrome 136+. Em vez de anexar a um navegador do sistema via uma porta de depuração, o Playwright gerencia seu próprio ciclo de vida do navegador diretamente.

Principais recursos:
- Perfis persistentes por tipo de navegador (Chromium, Firefox, WebKit)
- Tamanho de viewport e posição da janela configuráveis
- Modo headless para automação
- Suporte a servidor proxy
- Cabeçalho Accept-Language personalizado
- Opção de contexto anônimo/privado
- Controle de extensões de navegador
- Dimensionamento e posicionamento do viewport via -Width, -Height, -Left, -Right, etc.
- Forçar reinicialização para fechar instância existente e iniciar nova

O navegador iniciado e seu contexto/página são armazenados em $Global:GenXdevPlaywright para uso por outros cmdlets.

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'Chromium'` | O mecanismo do navegador a ser iniciado: Chromium, Firefox ou WebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | Execute o navegador sem uma janela visível |
| `-Proxy` | String | — | — | Named | — | URL do servidor proxy (ex. http://proxy:8080) |
| `-AcceptLang` | String | — | — | Named | — | Definir o cabeçalho HTTP Accept-Language do navegador |
| `-Width` | Int32 | — | — | Named | `-1` | Largura inicial da janela de visualização em pixels |
| `-Height` | Int32 | — | — | Named | `-1` | Altura inicial da janela de visualização em pixels |
| `-Force` | SwitchParameter | — | — | Named | — | Feche o navegador existente e inicie um novo |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forçar a reexibição do diálogo de consentimento de instalação |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros (navegadores Playwright) |
| `-Monitor` | Int32 | — | — | Named | `-1` | O monitor a ser usado, 0 = padrão, -1 = descartar, -2 = Monitor secundário configurado, assume o padrão $Global:DefaultSecondaryMonitor ou 2 se não encontrado |
| `-X` | Int32 | — | — | Named | `-999999` | A posição inicial X da janela do navegador web |
| `-Y` | Int32 | — | — | Named | `-999999` | A posição Y inicial da janela do navegador web |
| `-Left` | SwitchParameter | — | — | Named | — | Colocar janela do navegador no lado esquerdo da tela |
| `-Right` | SwitchParameter | — | — | Named | — | Posicione a janela do navegador no lado direito da tela |
| `-Top` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador na parte superior da tela |
| `-Bottom` | SwitchParameter | — | — | Named | — | Posicione a janela do navegador na parte inferior da tela |
| `-Centered` | SwitchParameter | — | — | Named | — | Colocar a janela do navegador no centro da tela |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximiza a janela para ocupar a tela inteira |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove as bordas da janela |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco da janela do PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Posicione a janela do navegador em tela cheia em um monitor diferente do PowerShell, ou lado a lado com o PowerShell no mesmo monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela do navegador após abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Trazer a janela do navegador para o primeiro plano após abrir |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimiza a janela após o posicionamento |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar a janela após o posicionamento |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar a janela ao estado normal após o posicionamento |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape caracteres de controle e modificadores ao enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Manter o foco do teclado na janela de destino ao enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso entre diferentes strings de entrada em milissegundos ao enviar teclas |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retorna o objeto auxiliar de janela para manipulação adicional |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Examples

### Open-PlayWrightBrowser Launches a persistent Chromium browser with the default profile.

```powershell
Open-PlayWrightBrowser
Launches a persistent Chromium browser with the default profile.
```

### Open-PlayWrightBrowser -BrowserType Firefox -Headless Launches Firefox in headless mode.

```powershell
Open-PlayWrightBrowser -BrowserType Firefox -Headless
Launches Firefox in headless mode.
```

### Open-PlayWrightBrowser -Width 1280 -Height 720 -Force Restarts the browser with a 1280x720 viewport.

```powershell
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
```

### Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders Launches Chromium on the left half of monitor 1 without window borders.

```powershell
Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders
Launches Chromium on the left half of monitor 1 without window borders.
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Open-PlayWrightBrowser on GitHub](https://github.com/genXdev/genXdev)
