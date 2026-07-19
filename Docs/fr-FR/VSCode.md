# VSCode

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Ouvre un ou plusieurs fichiers dans Visual Studio Code.

## Description

Cette fonction prend des chemins de fichiers et les ouvre dans Visual Studio Code. Elle développe les chemins et valide l'existence des fichiers avant de tenter de les ouvrir. La fonction prend en charge à la fois les chemins de fichiers directs et les entrées de pipeline, ce qui la rend idéale pour ouvrir rapidement plusieurs fichiers à partir de recherches dans le terminal.

## Syntax

```powershell
VSCode -FilePath <String[]> [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue) | 0 | — | Le chemin du fichier à ouvrir dans VSCode |
| `-Copilot` | SwitchParameter | — | — | Named | — | Ajouter le fichier source à la session d'édition Copilot |

## Examples

### VSCode -FilePath "C:\path\to\file.txt" -Copilot

```powershell
VSCode -FilePath "C:\path\to\file.txt" -Copilot
```

### Get-ChildItem *.js -Recurse | VSCode

```powershell
Get-ChildItem *.js -Recurse | VSCode
```

## Related Links

- [VSCode on GitHub](https://github.com/genXdev/genXdev)
