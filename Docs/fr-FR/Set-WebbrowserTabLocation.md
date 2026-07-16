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
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | L'URL vers laquelle naviguer |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Empêcher la sélection automatique des onglets |
| `-Edge` | SwitchParameter | — | — | Named | — | Naviguez en utilisant le navigateur Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Naviguez à l'aide du navigateur Google Chrome *(Parameter set: )* |
| `-Page` | Object | — | — | Named | — | Référence de l'objet de la page du navigateur |
| `-ByReference` | PSObject | — | — | Named | — | Objet de référence de session de navigateur |

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)
