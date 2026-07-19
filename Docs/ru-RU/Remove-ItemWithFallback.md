# Remove-ItemWithFallback

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rmf

## Synopsis

> Удаляет файлы или каталоги с несколькими резервными механизмами для надежного удаления.

## Description

Эта функция предоставляет надежный способ удаления файлов и каталогов, последовательно пробуя несколько методов удаления:
1. Прямое удаление через методы System.IO для наилучшей производительности
2. Командлет Remove-Item, поддерживающий поставщики PowerShell, в качестве запасного варианта
3. Пометка для удаления при следующей перезагрузке системы, если другие методы не сработали
Это обеспечивает максимальную надежность при удалении элементов у разных поставщиков.

## Syntax

```powershell
Remove-ItemWithFallback -Path <String> [-CountRebootDeletionAsSuccess] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Путь к удаляемому элементу |
| `-CountRebootDeletionAsSuccess` | SwitchParameter | — | — | Named | `$false` | The `-CountRebootDeletionAsSuccess` parameter. |

## Examples

### Remove-ItemWithFallback -Path "C:\temp\myfile.txt" Attempts to remove the file using all available methods.

```powershell
Remove-ItemWithFallback -Path "C:\temp\myfile.txt"
Attempts to remove the file using all available methods.
```

### "C:\temp\mydir" | rif Uses the alias 'rif' to remove a directory through the pipeline.

```powershell
"C:\temp\mydir" | rif
Uses the alias 'rif' to remove a directory through the pipeline.
```

## Outputs

- `Boolean`

## Related Links

- [Remove-ItemWithFallback on GitHub](https://github.com/genXdev/genXdev)
