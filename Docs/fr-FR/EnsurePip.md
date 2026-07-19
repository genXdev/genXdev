# EnsurePip

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Garantit que pip est installé et fonctionnel pour l'installation Python spécifiée.

## Description

Vérifie que pip est disponible et fonctionnel pour l'exécutable Python donné.
Si pip n'est pas disponible, tente de l'installer en utilisant ensurepip. Valide
la fonctionnalité de pip en vérifiant la version et les opérations de base. Retourne $true si
pip est prêt ; génère une Write-Error en cas d'échec.

## Syntax

```powershell
EnsurePip [[-PythonPath] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonPath` | String | — | — | 0 | — | Chemin vers l'exécutable Python |
| `-Timeout` | Int32 | — | — | Named | `300` | Délai d'attente en secondes pour l'installation pip |
| `-Force` | SwitchParameter | — | — | Named | — | Force la réinstallation/mise à niveau de pip |

## Examples

### EnsurePip

```powershell
EnsurePip
```

Garantit que pip est disponible pour l'installation Python par défaut.

### EnsurePip -PythonPath "C:\Python39\python.exe" -Force

```powershell
EnsurePip -PythonPath "C:\Python39\python.exe" -Force
```

Force l'installation pip pour un exécutable Python spécifique.

### $pythonPath = EnsurePython EnsurePip -PythonPath $pythonPath

```powershell
$pythonPath = EnsurePython
EnsurePip -PythonPath $pythonPath
```

Assure pip pour une installation Python spécifique renvoyée par EnsurePython.

## Related Links

- [EnsurePip on GitHub](https://github.com/genXdev/genXdev)
