# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> Démarre un processus avec un niveau de priorité spécifié.

## Description

* Lance un exécutable avec un niveau de priorité personnalisable et fournit des options d'attente et de gestion des processus.
* Wraps Start-Process avec des fonctionnalités supplémentaires pour contrôler la priorité du processus et le comportement d'exécution.

## Syntax

```powershell
Start-ProcessWithPriority [-FilePath] <string> [[-ArgumentList] <string[]>] [[-Priority] <string>] [-NoWait] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Chemin vers l'exécutable à lancer |
| `-ArgumentList` | String[] | — | — | 1 | — | Arguments à passer à l'exécutable |
| `-Priority` | String | — | — | 2 | — | Niveau de priorité du processus |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Ne pas attendre la fin du processus |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Retourner l'objet process |

## Examples

### Example 1

```powershell
Start-ProcessWithPriority -FilePath "notepad.exe" -Priority "Low" -NoWait
```

Lance le Bloc-notes avec une priorité basse et revient immédiatement.

### Example 2

```powershell
nice notepad.exe -Priority High
```

Utilise l'alias 'nice' pour lancer un processus avec une priorité élevée.

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
