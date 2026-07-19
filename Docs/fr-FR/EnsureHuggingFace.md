# EnsureHuggingFace

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> S'assure que la CLI Hugging Face est installée et fonctionnelle.

## Description

Orchestre l'installation de Python, pip et de la CLI Hugging Face en appelant EnsurePython et EnsurePip, puis en installant le package huggingface_hub. Stocke le chemin de la CLI dans un fichier JSON et s'assure que tous les composants sont disponibles dans le PATH système. Retourne $true si réussi ; lève une erreur Write-Error en cas d'échec.

## Syntax

```powershell
EnsureHuggingFace [[-PythonVersion] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonVersion` | String | — | — | 0 | `"3.12"` | Version Python pour garantir |
| `-Timeout` | Int32 | — | — | Named | `600` | Délai d'expiration en secondes pour les processus d'installation |
| `-Force` | SwitchParameter | — | — | Named | — | Force la réinstallation de tous les composants |

## Examples

### EnsureHuggingFace

```powershell
EnsureHuggingFace
```

Assure que Python 3.12, pip et l'interface en ligne de commande HuggingFace sont installés.

### EnsureHuggingFace -PythonVersion "3.11" -Force

```powershell
EnsureHuggingFace -PythonVersion "3.11" -Force
```

Force la réinstallation avec Python 3.11.

### EnsureHuggingFace -Timeout 1200

```powershell
EnsureHuggingFace -Timeout 1200
```

Garantit l'installation avec un délai d'attente de 20 minutes.

## Related Links

- [EnsureHuggingFace on GitHub](https://github.com/genXdev/genXdev)
