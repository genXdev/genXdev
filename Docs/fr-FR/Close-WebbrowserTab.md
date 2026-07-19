# Close-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `ct, `CloseTab

## Synopsis

> Ferme l'onglet du navigateur web actuellement sélectionné.

## Description

Ferme l'onglet du navigateur web actuellement sélectionné en utilisant la méthode CloseAsync() de ChromeDriver. Si aucun onglet n'est actuellement sélectionné, la fonction tentera automatiquement de sélectionner le dernier onglet utilisé avant de le fermer.

## Syntax

```powershell
Close-WebbrowserTab [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Naviguez en utilisant le navigateur Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Naviguez à l'aide du navigateur Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge ou Google Chrome, selon le navigateur par défaut |
| `-Firefox` | SwitchParameter | — | — | Named | — | S'ouvre dans Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Utilise le navigateur WebKit géré par Playwright |

## Examples

### Close-WebbrowserTab Closes the currently active browser tab

```powershell
Close-WebbrowserTab
Closes the currently active browser tab
```

### ct Uses the alias to close the currently active browser tab

```powershell
ct
Uses the alias to close the currently active browser tab
```

## Related Links

- [Close-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
