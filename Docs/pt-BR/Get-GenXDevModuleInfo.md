# Get-GenXDevModuleInfo

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera informações detalhadas sobre os módulos PowerShell do GenXdev.

## Description

Esta função examina módulos do PowerShell da GenXdev e retorna informações sobre sua configuração, versões e presença de arquivos-chave. Ela pode processar módulos especificados ou todos os módulos disponíveis.

## Syntax

```powershell
Get-GenXDevModuleInfo [[-ModuleName] <String[]>] [-IncludeLocal] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@()` | Nomes dos módulos para analisar |
| `-IncludeLocal` | SwitchParameter | — | — | Named | — | The `-IncludeLocal` parameter. |

## Examples

### Get-GenXDevModuleInfo -ModuleName "GenXdev.Console"

```powershell
Get-GenXDevModuleInfo -ModuleName "GenXdev.Console"
```

### "GenXdev.Console" | Get-GenXDevModuleInfo

```powershell
"GenXdev.Console" | Get-GenXDevModuleInfo
```

## Related Links

- [Get-GenXDevModuleInfo on GitHub](https://github.com/genXdev/genXdev)
