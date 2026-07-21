# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Crea y envía un nuevo commit de git con todos los cambios.

## Description

Prepara todos los cambios en el repositorio git actual, crea un commit con el título especificado y sube los cambios al origen remoto. Configura automáticamente el seguimiento ascendente si es necesario.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
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

Crear un commit con el mensaje personalizado "Nueva funcionalidad de autenticación añadida".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Haz un commit usando el alias 'commit' con el mensaje predeterminado.

## Parameter Details

### `-Title <String>`

> El título del mensaje de commit a usar

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

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/PermanentlyDeleteGitFolders.md)
