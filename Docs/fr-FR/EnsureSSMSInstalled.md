# EnsureSSMSInstalled

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> S'assure que SSMS est installé et accessible depuis la ligne de commande.

## Description

Vérifie si SSMS est installé et disponible dans le PATH du système. Si ce n'est pas le cas, il vérifie d'abord si la variable d'environnement PATH nécessite une mise à jour. Si cela ne résout pas le problème, il installe SSMS à l'aide de WinGet et configure la variable d'environnement PATH.

## Syntax

```powershell
EnsureSSMSInstalled [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureSSMSInstalled Checks and ensures SSMS is installed and accessible.

```powershell
EnsureSSMSInstalled
Checks and ensures SSMS is installed and accessible.
```

## Related Links

- [EnsureSSMSInstalled on GitHub](https://github.com/genXdev/genXdev)
