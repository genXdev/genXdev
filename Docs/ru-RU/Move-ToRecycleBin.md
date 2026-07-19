# Move-ToRecycleBin

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Безопасно перемещает файлы и папки в корзину Windows.

## Description

* Безопасно перемещает файлы или папки в корзину, используя Windows Shell API, даже если они в данный момент используются.
* Функция использует COM-объект Shell.Application для выполнения операции, обеспечивая правильное поведение корзины и возможность отмены.

## Syntax

```powershell
Move-ToRecycleBin [-Path] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Specify the path(s) to move to the recycle bin |

## Examples

### Example 1

```powershell
Move-ToRecycleBin -Path "C:\temp\old-report.txt"
```

Переместить один файл в корзину.

### Example 2

```powershell
"file1.txt","file2.txt" | recycle
```

Перемещение нескольких файлов в корзину с помощью конвейера и псевдонима.

## Related Links

- [Move-ToRecycleBin on GitHub](https://github.com/genXdev/genXdev)
