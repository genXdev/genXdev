# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
