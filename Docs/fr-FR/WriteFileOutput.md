# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Affiche les informations du fichier avec des noms d'affichage hyperliés pour une expérience utilisateur améliorée.

## Description

Cette fonction traite les objets d'entrée de fichier et les sort dans un format convivial avec des noms de fichiers hyperliés lorsqu'ils sont affichés dans la console. Elle gère différents types d'entrée, y compris les chaînes de caractères, les objets FileInfo et d'autres types d'objets. La fonction détecte automatiquement si la sortie est redirigée ou capturée dans un pipeline et ajuste son comportement en conséquence.

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

## Examples

### WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"

```powershell
WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"
```

### Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_

```powershell
Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_
```

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
