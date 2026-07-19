# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> Développe toute référence de fichier donnée en un chemin d'accès complet.

## Description

Développe toute référence de fichier donnée en un chemin d'accès complet, par rapport au répertoire courant de l'utilisateur. Peut éventuellement garantir que les répertoires ou fichiers existent.

## Syntax

```powershell
Expand-Path -FilePath <String> [-CreateDirectory] [-CreateFile] [-DeleteExistingFile] [-DirectoryMustExist] [-FileMustExist] [-ForceDrive <Char>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Chemin à développer |
| `-CreateDirectory` | SwitchParameter | — | — | Named | — | Créer le répertoire s'il n'existe pas |
| `-CreateFile` | SwitchParameter | — | — | Named | — | Crée un fichier vide s'il n'existe pas |
| `-DeleteExistingFile` | SwitchParameter | — | — | Named | — | Supprimera le fichier s'il existe déjà |
| `-ForceDrive` | Char | — | — | Named | `'*'` | Forcera l'utilisation d'un lecteur spécifique |
| `-FileMustExist` | SwitchParameter | — | — | Named | — | Lève une exception si le fichier n'existe pas. |
| `-DirectoryMustExist` | SwitchParameter | — | — | Named | — | Lèvera une erreur si le répertoire n'existe pas |

## Examples

### Expand-Path -FilePath ".\myfile.txt" -CreateFile

```powershell
Expand-Path -FilePath ".\myfile.txt" -CreateFile
```

### ep ~\documents\test.txt -CreateFile

```powershell
ep ~\documents\test.txt -CreateFile
```

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)
