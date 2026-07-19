# Get-WikipediaSummary

> **Module:** GenXdev.Queries.Text | **Type:** Function | **Aliases:** `wikitxt

## Synopsis

> Retrieves a summary of a topic from Wikipedia.

## Description

Queries the Wikipedia API to get a concise summary of the specified topic, removing parenthetical content for improved readability.

## Syntax

```powershell
Get-WikipediaSummary -Queries <String[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | La requête à exécuter |

## Examples

### Get-WikipediaSummary -Queries "PowerShell"

```powershell
Get-WikipediaSummary -Queries "PowerShell"
```

### wikitxt "PowerShell", "Typescript", "C#"

```powershell
wikitxt "PowerShell", "Typescript", "C#"
```

## Related Links

- [Get-WikipediaSummary on GitHub](https://github.com/genXdev/genXdev)
