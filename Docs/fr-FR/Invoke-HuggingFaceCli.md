# Invoke-HuggingFaceCli

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Invoke l'interface en ligne de commande Hugging Face avec les arguments spécifiés.

## Description

Appelle EnsureHuggingFace pour s'assurer que l'interface CLI est installée, puis exécute la CLI Hugging Face avec les arguments fournis. Lit le chemin de la CLI depuis $ENV:LOCALAPPDATA\GenXdev.PowerShell\hfclilocation.json. Renvoie la sortie de la commande sous forme de chaîne ; génère une erreur Write-Error en cas d'échec.

## Syntax

```powershell
Invoke-HuggingFaceCli -Arguments <String[]> [[-Timeout] <Int32>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Arguments` | String[] | ✅ | — | 0 | — | Les arguments à passer à la CLI Hugging Face |
| `-Timeout` | Int32 | — | — | 1 | `36000` | Délai en secondes pour l'exécution de la CLI et l'installation des dépendances |
| `-Force` | SwitchParameter | — | — | Named | — | Force la réinstallation de l'interface en ligne de commande Hugging Face |

## Examples

### Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force

```powershell
Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force
```

Invoque la CLI avec la commande "login", en forçant la réinstallation.

### Invoke-HuggingFaceCli @("whoami") 300

```powershell
Invoke-HuggingFaceCli @("whoami") 300
```

Invoque le CLI avec la commande "whoami" et un délai d'attente de 300 secondes.

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)
