# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> Выполняет замену текста во всем проекте каталога.

## Description

Рекурсивно проходит по файлам и каталогам в проекте для выполнения замены текста. Обрабатывает как имена файлов/каталогов, так и содержимое файлов. Пропускает типичные бинарные файлы и папки репозиториев (.git, .svn) во избежание повреждений. Использует кодировку UTF-8 без BOM для файловых операций. Поддерживает как регистрозависимый, так и регистронезависимый режимы замены.

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | Каталог, путь к файлу или каталог+маска поиска |
| `-FindText` | String | ✅ | — | 1 | — | Текст для поиска (чувствительность к регистру определяется параметром CaseInsensitive) |
| `-ReplacementText` | String | ✅ | — | 2 | — | Текст для замены совпадений с |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Examples

### Rename-InProject -Source .\src\*.js -FindText "oldName" `     -ReplacementText "newName"

```powershell
Rename-InProject -Source .\src\*.js -FindText "oldName" `
    -ReplacementText "newName"
```

### rip . "MyClass" "MyNewClass" -WhatIf

```powershell
rip . "MyClass" "MyNewClass" -WhatIf
```

### rip . "OLDNAME" "NewName" -CaseInsensitive

```powershell
rip . "OLDNAME" "NewName" -CaseInsensitive
```

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
