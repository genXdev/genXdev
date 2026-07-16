# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Code JavaScript, chemin de fichier ou URL à exécuter |
| `-Inspect` | SwitchParameter | — | — | Named | — | Arrêter dans le débogueur du navigateur avant d'exécuter |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Empêcher la sélection automatique des onglets |
| `-Edge` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Google Chrome |
| `-Page` | Object | — | — | Named | — | Référence de l'objet de la page du navigateur |
| `-ByReference` | PSObject | — | — | Named | — | Objet de référence de session de navigateur |

## Related Links

- [Invoke-WebbrowserEvaluation on GitHub](https://github.com/genXdev/genXdev)
