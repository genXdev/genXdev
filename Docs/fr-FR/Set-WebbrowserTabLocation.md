# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> Navigue l'onglet actuel du navigateur web vers une URL spécifiée.

## Description

Définit l'emplacement (URL) de l'onglet actuellement sélectionné du navigateur web. Prend en charge les navigateurs Edge et Chrome via des commutateurs optionnels. La navigation inclut la validation de l'URL et assure un chargement correct de la page grâce à des opérations asynchrones.

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-Chromium] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]

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
| `-Chromium` | SwitchParameter | — | — | Named | — | Naviguez à l'aide de Microsoft Edge ou Google Chrome, selon le navigateur par défaut |
| `-Firefox` | SwitchParameter | — | — | Named | — | Naviguer en utilisant le navigateur Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Naviguer à l'aide du navigateur WebKit géré par Playwright |
| `-Page` | Object | — | — | Named | — | Référence de l'objet de la page du navigateur |
| `-ByReference` | PSObject | — | — | Named | — | Objet de référence de session de navigateur |

## Examples

### Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge

```powershell
Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge
```

### "https://github.com/microsoft" | lt -ch

```powershell
"https://github.com/microsoft" | lt -ch
```

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)
