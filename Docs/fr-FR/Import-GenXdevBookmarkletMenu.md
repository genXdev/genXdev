# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Importe les signets JavaScript GenXdev dans les collections de signets du navigateur.

## Description

Cette fonction parcourt un répertoire à la recherche de fichiers de marque-pages GenXdev avec l'extension

## Syntax

```powershell
Import-GenXdevBookmarkletMenu [[-SnippetsPath] <String>] [[-TargetFolder] <String>] [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SnippetsPath` | String | — | — | 0 | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` | Chemin vers le répertoire contenant les fichiers de snippets de bookmarks |
| `-TargetFolder` | String | — | — | 1 | `""` | Dossier de favoris cible dans la structure de favoris du navigateur |
| `-Edge` | SwitchParameter | — | — | Named | — | Import bookmarklets into Microsoft Edge browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Importer des bookmarklets dans le navigateur Google Chrome |
| `-Firefox` | SwitchParameter | — | — | Named | — | Importer des bookmarklets dans le navigateur Mozilla Firefox |

## Examples

### Import-GenXdevBookmarkletMenu -Edge

```powershell
Import-GenXdevBookmarkletMenu -Edge
```

Importe tous les fichiers de bookmarklet du répertoire de snippets par défaut dans le dossier de la barre de favoris de Microsoft Edge.

### Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf

```powershell
Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf
```

Affiche quels bookmarklets seraient importés du chemin spécifié dans Google Chrome sans effectuer l'importation.

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
