# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | A string de seletor de consulta ou array de strings para usar na seleção de nós do DOM |
| `-ModifyScript` | String | — | — | 1 | `''` | O script para modificar a saída do seletor de consulta, por exemplo, e.outerHTML ou e.outerHTML='olá mundo' |
| `-Edge` | SwitchParameter | — | — | Named | — | Use o navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use o navegador Google Chrome |
| `-Page` | Object | — | — | Named | — | Referência do objeto de página do navegador |
| `-ByReference` | PSObject | — | — | Named | — | Objeto de referência de sessão do navegador |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Evitar seleção automática de guias |

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)
