# Invoke-WebbrowserTabPollingScript

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Exécute un script de sondage en arrière-plan dans un onglet de navigateur web préalablement sélectionné.

## Description

Exécute en continu du JavaScript dans un onglet de navigateur et traite les résultats via un callback optionnel. Le script s'exécute dans un thread séparé pour éviter le blocage.

## Syntax

```powershell
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Code JavaScript, URLs ou chemins de fichiers à exécuter |
| `-InitialUrl` | String | — | — | 1 | — | URL vers lequel naviguer avant le début du sondage |
| `-Callback` | ScriptBlock | — | — | 2 | — | Bloc de script de rappel pour traiter les résultats du sondage |
| `-Edge` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Utilisez Microsoft Edge ou Google Chrome, selon le navigateur par défaut. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Utilisez le navigateur WebKit géré par Playwright |

## Examples

### Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `     -InitialUrl "https://example.com" `     -Callback { Write-Host "Polled" }

```powershell
Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `
    -InitialUrl "https://example.com" `
    -Callback { Write-Host "Polled" }
```

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
