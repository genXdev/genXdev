# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit

## Synopsis

> Crea y envía un nuevo commit de git con todos los cambios.

## Description

Prepara todos los cambios en el repositorio git actual, crea un commit con el título especificado y envía los cambios al origen remoto. Configura automáticamente el seguimiento ascendente si es necesario.

## Syntax

```powershell
New-GitCommit [[-Title] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | El título del mensaje de commit a usar |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Crea un commit con un mensaje personalizado "Añadida nueva funcionalidad de autenticación".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Crea un commit usando el alias 'commit' con el mensaje predeterminado.

## Related Links

- [New-GitCommit on GitHub](https://github.com/genXdev/genXdev)
