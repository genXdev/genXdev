# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Löscht dauerhaft angegebene Ordner aus allen Branches eines Git-Repositorys.

## Description

Bereinigt ein Git-Repository, indem angegebene Ordner aus der gesamten Commit-Historie aller Branches entfernt werden. Dies geschieht durch Klonen des Repositorys, Verwenden von git filter-branch zum Entfernen der Ordner und erzwungenes Zurückschieben der Änderungen. Dieser Vorgang ist destruktiv und überschreibt die Git-Historie dauerhaft.

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | Die URI des zu bereinigenden Git-Repositorys |
| `-Folders` | String[] | ✅ | — | 1 | — | Array von Ordnerpfaden, die dauerhaft entfernt werden sollen |
| `-tempPath` | String | — | — | Named | `"~\convert.tmp\"` | The `-tempPath` parameter. |

## Examples

### PermanentlyDeleteGitFolders `     -RepoUri "https://github.com/user/repo.git" `     -Folders "bin", "obj"

```powershell
PermanentlyDeleteGitFolders `
    -RepoUri "https://github.com/user/repo.git" `
    -Folders "bin", "obj"
```

## Outputs

- `String[]`

## Related Links

- [PermanentlyDeleteGitFolders on GitHub](https://github.com/genXdev/genXdev)
