# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)
