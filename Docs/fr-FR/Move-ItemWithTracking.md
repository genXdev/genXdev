# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Déplace les fichiers et répertoires tout en préservant les liens et références du système de fichiers.

## Description

* Utilise l'API Windows MoveFileEx pour déplacer des fichiers et répertoires avec le suivi des liens activé, garantissant que les références du système de fichiers sont maintenues.
* Si le chemin source est sous contrôle Git, il tente d'utiliser git mv pour suivre le renommage dans Git.
* Revient à MoveFileEx si Git n'est pas disponible ou si git mv échoue.

## Syntax

```powershell
Move-ItemWithTracking [-Path] <string> [-Destination] <string> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Chemin source du fichier/répertoire à déplacer |
| `-Destination` | String | ✅ | — | 1 | — | Chemin de destination vers lequel déplacer |
| `-Force` | SwitchParameter | — | — | Named | `False` | Écraser la destination si elle existe |

## Examples

### Example 1

```powershell
Move-ItemWithTracking -Path "C:\temp\oldfile.txt" -Destination "D:\newfile.txt"
```

Déplace un fichier tout en préservant les liens du système de fichiers et le suivi Git.

### Example 2

```powershell
"C:\temp\olddir" | Move-ItemWithTracking -Destination "D:\newdir" -Force
```

Déplace un répertoire, en écrasant la destination si elle existe.

## Related Links

- [Move-ItemWithTracking on GitHub](https://github.com/genXdev/genXdev)
