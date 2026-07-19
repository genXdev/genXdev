# Get-GenXDevNewModulesInOrderOfDependency

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает модули GenXDev в порядке зависимостей.

## Description

Эта функция возвращает список модулей GenXDev, расположенных в правильном порядке зависимостей, чтобы обеспечить правильную загрузку модулей. Сначала она получает всю информацию о модулях, а затем упорядочивает их на основе зависимостей, начиная с основных модулей и заканчивая зависимыми. Это гарантирует, что модули загружаются в правильной последовательности.

## Syntax

```powershell
Get-GenXDevNewModulesInOrderOfDependency [[-ModuleName] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('GenXdev*')` | Одно или несколько имен модулей для фильтрации |

## Examples

### Get-GenXDevNewModulesInOrderOfDependency -ModuleName "GenXdev.Helpers"

```powershell
Get-GenXDevNewModulesInOrderOfDependency -ModuleName "GenXdev.Helpers"
```

### "GenXdev.Console" | Get-GenXDevNewModulesInOrderOfDependency

```powershell
"GenXdev.Console" | Get-GenXDevNewModulesInOrderOfDependency
```

## Related Links

- [Get-GenXDevNewModulesInOrderOfDependency on GitHub](https://github.com/genXdev/genXdev)
