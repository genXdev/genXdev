# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st

## Synopsis

> Seleciona uma guia do navegador dos navegadores gerenciados pelo Playwright em execução.

## Description

Lista e seleciona guias do navegador de todas as instâncias do Playwright em execução. Quando chamado sem critérios de seleção, exibe uma tabela de todas as guias disponíveis em todos os tipos de navegador. Suporta seleção por índice numérico, padrão de URL ou referência direta à página.

Quando uma guia é selecionada, define $Global:chromeController e $Global:chromeSession para compatibilidade com outros cmdlets do Webbrowser.

## Syntax

```powershell
Select-WebbrowserTab [[-Id] <Int32>] [<CommonParameters>]

Select-WebbrowserTab -Name <String> [<CommonParameters>]

Select-WebbrowserTab -ByReference <Object> [<CommonParameters>]

Select-WebbrowserTab [-All] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Force] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Id` | Int32 | — | — | 0 | `-1` | Índice da guia da lista mostrada *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | Seleciona a primeira aba que contém este texto em sua URL *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | Referência direta de página a partir do estado do navegador Playwright *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Filtrar guias para instâncias do navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Filtrar abas para instâncias do navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Filtrar guias para instâncias de navegador baseadas no Chromium (Edge ou Chrome) |
| `-Firefox` | SwitchParameter | — | — | Named | — | Filtrar abas para instâncias do navegador Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Filtrar abas para todos os tipos de navegador gerenciados pelo Playwright |
| `-Webkit` | SwitchParameter | — | — | Named | — | Filtrar abas para instâncias do navegador WebKit |
| `-All` | SwitchParameter | — | — | Named | — | Mostrar abas de todos os tipos de navegador (sem filtragem) |
| `-Force` | SwitchParameter | — | — | Named | — | Pular confirmação e selecionar a primeira aba correspondente |

## Examples

### Select-WebbrowserTab Lists all open tabs across all Playwright browser types.

```powershell
Select-WebbrowserTab
Lists all open tabs across all Playwright browser types.
```

### Select-WebbrowserTab -Id 2 Selects the tab at index 2 from the list.

```powershell
Select-WebbrowserTab -Id 2
Selects the tab at index 2 from the list.
```

### st -Name "github.com" Selects the first tab whose URL contains "github.com".

```powershell
st -Name "github.com"
Selects the first tab whose URL contains "github.com".
```

### st -Firefox -Id 0 Selects the first tab from the Firefox browser.

```powershell
st -Firefox -Id 0
Selects the first tab from the Firefox browser.
```

## Outputs

- `PSObject`

## Related Links

- [Select-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
