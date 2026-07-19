# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> Consulta e manipula nós do DOM na aba ativa do navegador usando seletores CSS.

## Description

Usa automação de navegador para encontrar elementos correspondentes a um seletor CSS e retorna seu conteúdo HTML ou executa JavaScript personalizado em cada elemento correspondente. Esta função é útil para tarefas de raspagem web e automação de navegador.

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | A string de seletor de consulta ou array de strings para usar na seleção de nós do DOM |
| `-ModifyScript` | String | — | — | 1 | `''` | O script para modificar a saída do seletor de consulta, por exemplo, e.outerHTML ou e.outerHTML='olá mundo' |
| `-Edge` | SwitchParameter | — | — | Named | — | Use o navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use o navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Use o Microsoft Edge ou o Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use o navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Use o navegador WebKit gerenciado pelo Playwright |
| `-Page` | Object | — | — | Named | — | Referência de objeto de página do navegador para direcionar uma guia específica |
| `-ByReference` | PSObject | — | — | Named | — | Objeto de referência de sessão do navegador para reutilizar uma sessão de navegador existente |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Evitar seleção automática de guias |

## Examples

### Get HTML of all header divs Get-WebbrowserTabDomNodes -QuerySelector "div.header"

```powershell
Get HTML of all header divs
Get-WebbrowserTabDomNodes -QuerySelector "div.header"
```

### Pause all videos on the page wl "video" "e.pause()"

```powershell
Pause all videos on the page
wl "video" "e.pause()"
```

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)
