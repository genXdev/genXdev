# Initialize-SearchPaths

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Initialise et configure les chemins de recherche système pour la gestion des paquets.

## Description

* Construit une liste complète de chemins de recherche en combinant les emplacements système par défaut, les chemins Chocolatey, les chemins d'outils de développement et les chemins de paquets personnalisés.
* Met à jour la variable d'environnement PATH du système avec ces chemins consolidés.

## Syntax

```powershell
Initialize-SearchPaths [[-WorkspaceFolder] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WorkspaceFolder` | String | — | — | 0 | — | Le chemin du dossier de l'espace de travail à utiliser pour les modules Node et les chemins PowerShell. |

## Examples

### Example 1

```powershell
Initialize-SearchPaths
```

Initialise les chemins de recherche en utilisant le dossier de l'espace de travail par défaut.

### Example 2

```powershell
Initialize-SearchPaths -WorkspaceFolder "C:\workspace"
```

Initialise les chemins de recherche à l'aide d'un dossier d'espace de travail spécifique.

## Related Links

- [Initialize-SearchPaths on GitHub](https://github.com/genXdev/genXdev)
