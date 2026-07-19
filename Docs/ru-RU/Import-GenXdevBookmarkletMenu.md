# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Импортирует букмарклеты GenXdev JavaScript в коллекции закладок браузера.

## Description

Эта функция сканирует каталог на наличие файлов букмарклетов GenXdev с

## Syntax

```powershell
Import-GenXdevBookmarkletMenu [[-SnippetsPath] <String>] [[-TargetFolder] <String>] [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SnippetsPath` | String | — | — | 0 | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` | Путь к каталогу с файлами сниппетов букмарклета |
| `-TargetFolder` | String | — | — | 1 | `""` | Целевая папка закладок в структуре закладок браузера |
| `-Edge` | SwitchParameter | — | — | Named | — | Импорт букмарклетов в браузер Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Импорт букмарклетов в браузер Google Chrome |
| `-Firefox` | SwitchParameter | — | — | Named | — | Импорт букмарклетов в браузер Mozilla Firefox |

## Examples

### Import-GenXdevBookmarkletMenu -Edge

```powershell
Import-GenXdevBookmarkletMenu -Edge
```

Импортирует все файлы закладок из каталога фрагментов по умолчанию в папку панели закладок Microsoft Edge.

### Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf

```powershell
Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf
```

Показывает, какие букмарклеты будут импортированы из указанного пути в Google Chrome без фактического выполнения операции импорта.

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
