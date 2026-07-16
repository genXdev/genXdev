# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]

Set-WebbrowserTabLocation [-Edge] [<CommonParameters>]

Set-WebbrowserTabLocation [-Chrome] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | A URL para navegar |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Evitar seleção automática de guias |
| `-Edge` | SwitchParameter | — | — | Named | — | Navegue usando o navegador Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navegue usando o navegador Google Chrome *(Parameter set: )* |
| `-Page` | Object | — | — | Named | — | Referência do objeto de página do navegador |
| `-ByReference` | PSObject | — | — | Named | — | Objeto de referência de sessão do navegador |

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)
