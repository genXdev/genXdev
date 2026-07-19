# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit

## Synopsis

> Crée et pousse un nouveau commit git avec toutes les modifications.

## Description

Ajoute toutes les modifications dans le dépôt git actuel, crée un commit avec le titre spécifié et pousse les modifications vers l'origine distante. Configure automatiquement le suivi en amont si nécessaire.

## Syntax

```powershell
New-GitCommit [[-Title] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Le titre du message de commit à utiliser |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

git commit -m "Added new authentication feature"

### Example 2

```powershell
commit "Hotfix for login issue"
```

Créez un commit en utilisant l'alias 'commit' avec un message par défaut.

## Related Links

- [New-GitCommit on GitHub](https://github.com/genXdev/genXdev)
