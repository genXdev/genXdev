# Copy-IdenticalParamValues

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Копирует значения параметров из привязанных параметров в новую хеш-таблицу на основе возможных параметров другой функции.

## Description

* Этот командлет создает новую хеш-таблицу, содержащую только те значения параметров,
  которые соответствуют параметрам, определенным в указанной целевой функции.
* Полученную хеш-таблицу затем можно использовать для вызова функции с помощью
  сплаттинга PowerShell.
* Параметры-переключатели включаются в результат только в том случае, если они были явно
  указаны и установлены в $true в связанных параметрах.
* Отсутствующие параметры-переключатели исключаются из результата для сохранения
  правильной семантики параметров.

## Syntax

```powershell
Copy-IdenticalParamValues [-BoundParameters] <Object[]> [-FunctionName] <string> [[-DefaultValues] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BoundParameters` | Object[] | ✅ | — | 0 | — | Исходные связанные параметры для копирования |
| `-FunctionName` | String | ✅ | — | 1 | — | Target function name to filter parameters |
| `-DefaultValues` | Object | — | — | 2 | — | Значения параметров по умолчанию |

## Examples

### Example 1

```powershell
function Test-Function {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,
        [Parameter(Mandatory = $false)]
        [switch] $Recurse
    )

    $params = GenXdev\Copy-IdenticalParamValues `
        -BoundParameters $PSBoundParameters `
        -FunctionName 'Get-ChildItem'

    Get-ChildItem @params
}
```

Демонстрирует копирование связанных параметров для использования с распаковкой.

## Related Links

- [Copy-IdenticalParamValues on GitHub](https://github.com/genXdev/genXdev)
