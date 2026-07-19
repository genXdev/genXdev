# Get-Ideas

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `ideas

## Synopsis

> Отображает идеи из файла README.md.

## Description

Показывает все идеи из раздела "## Ideas" файла README.md. Может использовать либо README в текущей папке, либо в каталоге профиля PowerShell, либо в каталоге OneDrive.

## Syntax

```powershell
Get-Ideas [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Используйте README в каталоге профиля PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Сортировать строки по дате (префикс yyyyMMdd) вместо приоритета |
| `-Ascending` | SwitchParameter | — | — | Named | — | Изменить порядок сортировки на обратный (по возрастанию вместо по убыванию) |
| `-First` | Int32 | — | — | 0 | `0` | Ограничить вывод первыми N строками |

## Examples

### Ideas -UseHomeREADME

```powershell
Ideas -UseHomeREADME
```

### Ideas -UseOneDriveREADME

```powershell
Ideas -UseOneDriveREADME
```

## Related Links

- [Get-Ideas on GitHub](https://github.com/genXdev/genXdev)
