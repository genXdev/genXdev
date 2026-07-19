# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged

## Synopsis

> Получить список измененных файлов в Git-репозитории.

## Description

Эта функция извлекает список файлов, которые были изменены в текущем репозитории Git. Она может использоваться для идентификации файлов, которые были изменены, добавлены или удалены. По умолчанию возвращает относительные пути с префиксом .\. Используйте -PassThru для получения объектов FileInfo.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Возвращает объекты FileInfo (как Get-ChildItem) вместо строк пути. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Возвращает относительные пути, такие как ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Возвращает объекты FileInfo для каждого измененного файла.

## Outputs


## Related Links

- [Get-GitChangedFiles on GitHub](https://github.com/genXdev/genXdev)
