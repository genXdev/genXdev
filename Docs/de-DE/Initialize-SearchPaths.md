# Initialize-SearchPaths

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Initialisiert und konfiguriert Systemsuchpfade für die Paketverwaltung.

## Description

* Erstellt eine umfassende Liste von Suchpfaden durch Kombinieren von Standard-Systempfaden, Chocolatey-Pfaden, Entwicklungswerkzeugpfaden und benutzerdefinierten Paketpfaden.
* Aktualisiert die PATH-Umgebungsvariable des Systems mit diesen konsolidierten Pfaden.

## Syntax

```powershell
Initialize-SearchPaths [[-WorkspaceFolder] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WorkspaceFolder` | String | — | — | 0 | — | Der Arbeitsbereichsordnerpfad, der für Node-Module und PowerShell-Pfade verwendet werden soll. |

## Examples

### Example 1

```powershell
Initialize-SearchPaths
```

Initialisiert die Suchpfade mit dem Standard-Arbeitsbereichsordner.

### Example 2

```powershell
Initialize-SearchPaths -WorkspaceFolder "C:\workspace"
```

Initialisiert Suchpfade mithilfe eines bestimmten Arbeitsbereichsordners.

## Related Links

- [Initialize-SearchPaths on GitHub](https://github.com/genXdev/genXdev)
