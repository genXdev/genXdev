# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Erstellt und schiebt einen neuen Git-Commit mit allen Änderungen.

## Description

Führt alle Änderungen im aktuellen Git-Repository zur Staging-Area hinzu, erstellt einen Commit mit dem angegebenen Titel und überträgt die Änderungen zum Remote-Origin. Richtet bei Bedarf automatisch die Upstream-Verfolgung ein.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Der zu verwendende Commit-Nachrichten-Titel |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Erstelle einen Commit mit der benutzerdefinierten Nachricht "Neue Authentifizierungsfunktion hinzugefügt".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Erstellen Sie einen Commit mit dem Alias 'commit' und der Standardnachricht.

## Parameter Details

### `-Title <String>`

> Der zu verwendende Commit-Nachrichten-Titel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/de-DE/PermanentlyDeleteGitFolders.md)
