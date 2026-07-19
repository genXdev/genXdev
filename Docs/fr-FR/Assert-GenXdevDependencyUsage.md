# Assert-GenXdevDependencyUsage

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `checkgenxdevdependencies

## Synopsis

> Valide l'utilisation des dépendances entre les modules GenXdev pour garantir le maintien d'une hiérarchie de modules appropriée.

## Description

Cette fonction analyse les modules GenXdev pour garantir qu'ils respectent la hiérarchie de dépendances correcte. Elle vérifie que les modules ne référencent que des dépendances listées dans leur manifeste RequiredModules, et empêche les dépendances circulaires en validant que les modules ne référencent pas des modules qui apparaissent plus tard dans la chaîne de dépendances.

## Syntax

```powershell
Assert-GenXdevDependencyUsage [[-ModuleName] <String[]>] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | Filtre à appliquer aux noms de modules 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Chercher dans les fichiers de script au lieu des fichiers de module |

## Examples

### Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"

```powershell
Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"
```

### checkgenxdevdependencies "GenXdev*" -FromScripts

```powershell
checkgenxdevdependencies "GenXdev*" -FromScripts
```

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)
