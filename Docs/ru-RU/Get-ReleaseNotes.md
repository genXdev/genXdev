# Get-ReleaseNotes

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `releasenotes

## Synopsis

> Отображает ReleaseNotes из файла README.md.

## Description

Показывает все примечания к выпуску из раздела "## Примечания к выпуску" файла README.md. Может использовать README в текущем расположении, каталоге профиля PowerShell или каталоге OneDrive.

## Syntax

```powershell
Get-ReleaseNotes [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
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

### ReleaseNotes -UseHomeREADME

```powershell
ReleaseNotes -UseHomeREADME
```

## Related Links

- [Get-ReleaseNotes on GitHub](https://github.com/genXdev/genXdev)
