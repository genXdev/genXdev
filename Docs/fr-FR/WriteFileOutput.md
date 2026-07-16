# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | Les informations d'invocation de la fonction appelante |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | L'objet d'entrée à traiter, qui peut être un chemin de fichier ou un objet |
| `-Prefix` | String | — | — | Named | — | Un préfixe de chaîne optionnel à ajouter à l'affichage de sortie pour un contexte supplémentaire |
| `-RelativeBasePath` | String | — | — | Named | — | Chemin de base pour la génération de chemins de fichiers relatifs dans la sortie |
| `-FullPaths` | SwitchParameter | — | — | Named | — | Force l'utilisation de chemins absolus complets au lieu de chemins relatifs |

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
