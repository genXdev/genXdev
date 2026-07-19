# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit

## Synopsis

> Maakt een nieuwe git commit met alle wijzigingen en pusht deze.

## Description

Stage alle wijzigingen in de huidige git-repository, maak een commit met de opgegeven titel en push de wijzigingen naar de externe origin. Stel automatisch upstream tracking in indien nodig.

## Syntax

```powershell
New-GitCommit [[-Title] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Te gebruiken commit-berichttitel |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Creëer een commit met een aangepast bericht "Added new authentication feature".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Maak een commit met het 'commit' alias en standaard bericht.

## Related Links

- [New-GitCommit on GitHub](https://github.com/genXdev/genXdev)
