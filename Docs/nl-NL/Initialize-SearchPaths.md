# Initialize-SearchPaths

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Initialiseert en configureert systeemzoekpaden voor pakketbeheer.

## Description

* Bouwt een uitgebreide lijst van zoekpaden door standaard systeemlocaties, chocolatey-paden, paden voor ontwikkeltools en aangepaste pakketpaden te combineren.
* Werkt de PATH-omgevingsvariabele van het systeem bij met deze geconsolideerde paden.

## Syntax

```powershell
Initialize-SearchPaths [[-WorkspaceFolder] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WorkspaceFolder` | String | — | — | 0 | — | Het werkruimtemappad dat moet worden gebruikt voor node-modules en PowerShell-paden. |

## Examples

### Example 1

```powershell
Initialize-SearchPaths
```

Initialiseert zoekpaden met de standaard werkmap.

### Example 2

```powershell
Initialize-SearchPaths -WorkspaceFolder "C:\workspace"
```

Initialiseert zoekpaden met behulp van een specifieke werkruimtemap.

## Related Links

- [Initialize-SearchPaths on GitHub](https://github.com/genXdev/genXdev)
