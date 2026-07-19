# EnsurePython

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Garantit que Python est installé et disponible dans le PATH du système.

## Description

Vérifie que Python est installé et accessible via le PATH système. Si Python
n'est pas trouvé, tente de l'installer en utilisant winget (Gestionnaire de paquets Windows).
Prend en charge les exigences de version spécifiques et fournit un retour sur la progression pendant
l'installation. Renvoie le chemin d'accès à l'exécutable Python en cas de succès ; lève
Write-Error en cas d'échec.

Cette fonction priorise les installations Python existantes mais peut forcer une
réinstallation si nécessaire. Elle valide la fonctionnalité de Python en vérifiant
la sortie de version et garantit que l'installation est correctement accessible.

## Syntax

```powershell
EnsurePython [[-Version] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Version` | String | — | — | 0 | `"3.12"` | Version de Python à garantir d'être installée |
| `-Timeout` | Int32 | — | — | Named | `600` | Délai d'attente en secondes pour l'installation de Python |
| `-Force` | SwitchParameter | — | — | Named | — | Force la réinstallation de Python |

## Examples

### EnsurePython

```powershell
EnsurePython
```

Garantit que Python 3.12 est installé avec les paramètres par défaut.

### $pythonPath = EnsurePython -Version "3.11" -Timeout 900

```powershell
$pythonPath = EnsurePython -Version "3.11" -Timeout 900
```

Installe Python 3.11 avec un délai d'attente prolongé et renvoie le chemin d'exécution.

### EnsurePython -Force -Verbose

```powershell
EnsurePython -Force -Verbose
```

Forces réinstallation de Python 3.12 avec informations de progression détaillées.

### EnsurePython -Version "3.10" -Force

```powershell
EnsurePython -Version "3.10" -Force
```

Force l'installation de Python 3.10 même si une autre version existe.

## Related Links

- [EnsurePython on GitHub](https://github.com/genXdev/genXdev)
