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
| `-QuerySelector` | String[] | ✅ | — | 0 | — | La chaîne de sélecteur de requête ou le tableau de chaînes à utiliser pour sélectionner les nœuds DOM |
| `-ModifyScript` | String | — | — | 1 | `''` | Le script pour modifier la sortie du sélecteur de requête, p. ex. e.outerHTML ou e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Google Chrome |
| `-Page` | Object | — | — | Named | — | Référence de l'objet de la page du navigateur |
| `-ByReference` | PSObject | — | — | Named | — | Objet de référence de session de navigateur |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Empêcher la sélection automatique des onglets |

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)
