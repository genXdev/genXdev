# Get-GenXDevModule

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera todos os módulos GenXDev de um caminho especificado.

## Description

Esta função pesquisa em uma estrutura de diretórios por módulos GenXdev, excluindo qualquer um que tenha '.local' no nome. Para cada módulo válido encontrado, ela retorna a pasta de versão mais recente (1.x) que contenha um arquivo de manifesto de módulo (.psd1) válido.

## Syntax

```powershell
Get-GenXDevModule [[-Path] <String>] [-IncludeLocal] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | — | — | 0 | — | O caminho raiz para pesquisar por módulos GenXdev |
| `-IncludeLocal` | SwitchParameter | — | — | Named | — | The `-IncludeLocal` parameter. |

## Examples

### Get-GenXDevModule -Path "C:\PowerShell\Modules"

```powershell
Get-GenXDevModule -Path "C:\PowerShell\Modules"
```

### Get-GenXDevModule "C:\PowerShell\Modules"

```powershell
Get-GenXDevModule "C:\PowerShell\Modules"
```

## Related Links

- [Get-GenXDevModule on GitHub](https://github.com/genXdev/genXdev)
