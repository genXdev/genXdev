# Clear-WebbrowserTabSiteApplicationData

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `clearsitedata

## Synopsis

> Limpa todos os dados de armazenamento do navegador para a guia atual no Edge ou Chrome.

## Description

O cmdlet Clear-WebbrowserTabSiteApplicationData executa um snippet JavaScript que limpa vários tipos de armazenamento do navegador para a aba atual, incluindo:
- Armazenamento local
- Armazenamento de sessão
- Cookies
- Bancos de dados IndexedDB
- Armazenamento em cache
- Registros de service workers

## Syntax

```powershell
Clear-WebbrowserTabSiteApplicationData [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Limpar no Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Limpar no Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Limpar no Microsoft Edge ou Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Limpar no Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Limpar no navegador WebKit gerenciado pelo Playwright |

## Examples

### Clear-WebbrowserTabSiteApplicationData -Edge Clears all browser storage data in the current Edge tab.

```powershell
Clear-WebbrowserTabSiteApplicationData -Edge
Clears all browser storage data in the current Edge tab.
```

### clearsitedata -Chrome Clears all browser storage data in the current Chrome tab using the alias. ##############################################################################

```powershell
clearsitedata -Chrome
Clears all browser storage data in the current Chrome tab using the alias.
##############################################################################
```

## Related Links

- [Clear-WebbrowserTabSiteApplicationData on GitHub](https://github.com/genXdev/genXdev)
