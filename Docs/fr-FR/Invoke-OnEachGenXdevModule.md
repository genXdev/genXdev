# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> Exécute un bloc de script sur chaque module GenXdev dans l'espace de travail.

## Description

Cette fonction parcourt les modules GenXdev dans l'espace de travail et exécute un bloc de script fourni pour chaque module. Elle peut filtrer les modules par modèle de nom, exclure les modules locaux, inclure uniquement les modules publiés ou traiter des scripts au lieu de modules. La fonction se dirige automatiquement vers le répertoire correct du module avant d'exécuter le bloc de script.

## Syntax

```powershell
Invoke-OnEachGenXdevModule -Script <ScriptBlock> [[-ModuleName] <String[]>] [-FromScripts] [-IncludeScripts] [-NoLocal] [-OnlyPublished] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | — | 0 | — | Le bloc de script à exécuter pour chaque module GenXdev |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | Filtre à appliquer aux noms de modules 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Exclut les modules de développement locaux du traitement |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Inclut uniquement les modules publiés qui ont des fichiers LICENSE et README.md |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Traiter le répertoire de scripts au lieu des répertoires de modules |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Inclut le répertoire scripts en plus des modules réguliers |

## Examples

### Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

```powershell
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }
```

Module names:
- GenXdev.Async
- GenXdev.Collections
- GenXdev.Console
- GenXdev.Data
- GenXdev.Drawing
- GenXdev.Files
- GenXdev.Helpers
- GenXdev.IO
- GenXdev.Linq
- GenXdev.Maths
- GenXdev.Net
- GenXdev.Numerics
- GenXdev.Reflection
- GenXdev.Security
- GenXdev.Text
- GenXdev.Threading
- GenXdev.Time
- GenXdev.Web
- GenXdev.Xml

### foreach-genxdev-module-do {     param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)     Get-ChildItem } -ModuleName "GenXdev.AI"

```powershell
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"
```

Utilise un alias pour lister le contenu du répertoire du module GenXdev.AI.

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
