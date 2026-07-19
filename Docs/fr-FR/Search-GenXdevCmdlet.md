# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> Recherche une cmdlet GenXdev et l'ouvre éventuellement dans un IDE pour l'édition.

## Description

Cette fonction recherche les cmdlets GenXdev à l'aide d'un modèle et ouvre éventuellement le fichier source de la cmdlet trouvée dans Visual Studio Code ou Visual Studio pour l'éditer. Elle récupère les informations sur les cmdlets et fournit des raccourcis clavier pour naviguer rapidement vers la définition de la fonction.

## Syntax

```powershell
Search-GenXdevCmdlet [[-CmdletName] <String>] [[-ModuleName] <String[]>] [-Code] [-EditCmdlet] [-FromScripts] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Motif de recherche pour filtrer les cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | Noms de modules GenXdev à rechercher 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Ignorer la recherche dans les chemins de modules locaux |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Limit search to published module paths only |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Chercher dans les fichiers de script au lieu des fichiers de module |
| `-Code` | SwitchParameter | — | — | Named | — | Ouvrir la commande trouvée dans Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Ouvrir l'applet de commande trouvée dans Visual Studio |
| `-EditCmdlet` | SwitchParameter | — | — | Named | — | Ouvre également le fichier dans l'éditeur après l'avoir trouvé |

## Examples

### Search-GenXdevCmdlet -CmdletName "Get-*" -Code Opens first matching cmdlet starting with "Get-" in Visual Studio Code.

```powershell
Search-GenXdevCmdlet -CmdletName "Get-*" -Code
Opens first matching cmdlet starting with "Get-" in Visual Studio Code.
```

### searchcmdlet "Set-GitConfig" -EditCmdlet Searches for Set-GitConfig cmdlet and opens it for editing.

```powershell
searchcmdlet "Set-GitConfig" -EditCmdlet
Searches for Set-GitConfig cmdlet and opens it for editing.
```

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
