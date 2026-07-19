# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Выводит информацию о файлах с гиперссылками на отображаемые имена для улучшения пользовательского опыта.

## Description

Эта функция обрабатывает входные объекты файлов и выводит их в удобочитаемом формате с гиперссылками на имена файлов при отображении в консоли. Она обрабатывает различные типы входных данных, включая строки, объекты FileInfo и другие типы объектов. Функция автоматически определяет, перенаправляется ли вывод или захватывается в конвейере, и соответствующим образом корректирует свое поведение.

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | Информация о вызове из вызывающей функции |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | The input object to process, which can be a file path or object |
| `-Prefix` | String | — | — | Named | — | Необязательный строковый префикс, добавляемый к выводимому отображению для дополнительного контекста |
| `-RelativeBasePath` | String | — | — | Named | — | Базовый путь для создания относительных путей файлов в выводе |
| `-FullPaths` | SwitchParameter | — | — | Named | — | Принудительно использовать полные абсолютные пути вместо относительных путей |

## Examples

### WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"

```powershell
WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"
```

### Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_

```powershell
Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_
```

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
