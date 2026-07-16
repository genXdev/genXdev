# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
