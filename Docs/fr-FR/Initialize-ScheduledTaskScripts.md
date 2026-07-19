# Initialize-ScheduledTaskScripts

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Crée des tâches planifiées qui exécutent des scripts PowerShell à intervalles spécifiés.

## Description

Crée et configure des tâches planifiées qui exécutent des scripts PowerShell à divers intervalles, notamment :
- Démarrage du système
- Connexion de l'utilisateur
- Toutes les heures de jours spécifiques (par exemple, le lundi à 13h00)
- Tous les jours à des heures précises (par exemple, tous les jours à 15h00)
Chaque tâche s'exécute avec des privilèges élevés dans le contexte de l'utilisateur actuel.

## Syntax

```powershell
Initialize-ScheduledTaskScripts [[-FilePath] <String>] [[-Prefix] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | — | — | 0 | `''` | Chemin du répertoire où les scripts de tâches seront créés |
| `-Prefix` | String | — | — | 1 | `'PS'` | Préfixe pour les noms des tâches planifiées |

## Examples

### Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"

```powershell
Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"
```

### Initialize-ScheduledTaskScripts

```powershell
Initialize-ScheduledTaskScripts
```

## Related Links

- [Initialize-ScheduledTaskScripts on GitHub](https://github.com/genXdev/genXdev)
