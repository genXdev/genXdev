# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Разворачивает входные объекты в имена файлов и каталогов, поддерживая различные
фильтры и опции вывода.

## Description

Эта функция обрабатывает входные объекты (файлы, каталоги или коллекции) и раскрывает их в имена файлов и каталогов. Она поддерживает фильтрацию, сопоставление с образцом и может выводить результаты в виде объектов. Функция предназначена для работы с конвейерным вводом и предоставляет возможности для рекурсии, альтернативных потоков данных и многого другого.

## Syntax

```powershell
ResolveInputObjectFileNames [[-InputObject] <Object>] [[-RelativeBasePath] <String>] [-AllDrives] [-File] [-IncludeAlternateFileStreams] [-NoRecurse] [-PassThru] [<CommonParameters>]

ResolveInputObjectFileNames [[-Pattern] <String>] [<CommonParameters>]

ResolveInputObjectFileNames [-Directory] [-FilesAndDirectories] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Input object containing file names or directories |
| `-File` | SwitchParameter | — | — | Named | — | Return only files |
| `-Pattern` | String | — | — | 1 | — | Регулярное выражение для поиска в содержимом *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Базовый путь для разрешения относительных путей в выводе |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Выполнить поиск по всем доступным дискам |
| `-Directory` | SwitchParameter | — | — | Named | — | Search for directories only *(Parameter set: )* |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Включите как файлы, так и каталоги *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | [
  {
    "name": "John Doe",
    "age": 30,
    "email": "john.doe@example.com"
  },
  {
    "name": "Jane Smith",
    "age": 25,
    "email": "jane.smith@example.com"
  }
] |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Включить альтернативные потоки данных в результаты поиска |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Не рекурсировать в подкаталоги |

## Examples

### ResolveInputObjectFileNames -Input "C:\Temp" -File

```powershell
ResolveInputObjectFileNames -Input "C:\Temp" -File
```

## Related Links

- [ResolveInputObjectFileNames on GitHub](https://github.com/genXdev/genXdev)
