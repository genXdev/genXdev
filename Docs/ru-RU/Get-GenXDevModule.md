# Get-GenXDevModule

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает все модули GenXDev из указанного пути.

## Description

Эта функция выполняет поиск в структуре каталогов модулей GenXdev, исключая любые, содержащие '.local' в имени. Для каждого найденного допустимого модуля она возвращает папку самой последней версии (1.x), содержащую действительный файл манифеста модуля (.psd1).

## Syntax

```powershell
Get-GenXDevModule [[-Path] <String>] [-IncludeLocal] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | — | — | 0 | — | Корневой путь для поиска модулей GenXdev |
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
