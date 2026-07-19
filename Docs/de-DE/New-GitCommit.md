# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit

## Synopsis

> Erstellt und pusht einen neuen Git-Commit mit allen Änderungen.

## Description

Übernimmt alle Änderungen im aktuellen Git-Repository, erstellt einen Commit mit dem angegebenen Titel und pusht die Änderungen zum Remote-Origin. Richtet automatisch das Upstream-Tracking ein, falls erforderlich.

## Syntax

```powershell
New-GitCommit [[-Title] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Der zu verwendende Commit-Nachrichtentitel |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Erstelle einen Commit mit einer benutzerdefinierten Nachricht "Neue Authentifizierungsfunktion hinzugefügt".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Erstelle einen Commit mit dem 'commit'-Alias und Standardnachricht.

## Related Links

- [New-GitCommit on GitHub](https://github.com/genXdev/genXdev)
