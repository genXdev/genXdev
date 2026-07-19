# Move-ToRecycleBin

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Déplace les fichiers et dossiers vers la corbeille de Windows en toute sécurité.

## Description

* Déplace en toute sécurité des fichiers ou dossiers vers la corbeille à l'aide de l'API Shell Windows, même s'ils sont actuellement utilisés.
* La fonction utilise l'objet COM Shell.Application pour effectuer l'opération, garantissant un comportement de recyclage approprié et une capacité d'annulation.

## Syntax

```powershell
Move-ToRecycleBin [-Path] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Spécifiez le(s) chemin(s) à déplacer vers la corbeille |

## Examples

### Example 1

```powershell
Move-ToRecycleBin -Path "C:\temp\old-report.txt"
```

Déplacer un seul fichier vers la corbeille.

### Example 2

```powershell
"file1.txt","file2.txt" | recycle
```

Déplacer plusieurs fichiers vers la corbeille à l'aide du pipeline et d'un alias.

## Related Links

- [Move-ToRecycleBin on GitHub](https://github.com/genXdev/genXdev)
