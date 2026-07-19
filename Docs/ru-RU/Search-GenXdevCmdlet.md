# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> Выполняет поиск командлета GenXdev и при необходимости открывает его в IDE для редактирования.

## Description

Эта функция ищет командлеты GenXdev по шаблону и опционально открывает файл исходного кода найденного командлета в Visual Studio Code или Visual Studio для редактирования. Она извлекает информацию о командлете и предоставляет сочетания клавиш для быстрого перехода к определению функции.

## Syntax

```powershell
Search-GenXdevCmdlet [[-CmdletName] <String>] [[-ModuleName] <String[]>] [-Code] [-EditCmdlet] [-FromScripts] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Шаблон поиска для фильтрации командлетов 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev - названия модулей для поиска 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Пропустить поиск в локальных путях модулей |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Ограничить поиск только опубликованными путями модулей |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Поиск в файлах скриптов вместо файлов модулей |
| `-Code` | SwitchParameter | — | — | Named | — | Откройте найденный командлет в Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Откройте найденный командлет в Visual Studio |
| `-EditCmdlet` | SwitchParameter | — | — | Named | — | Также открывает файл в редакторе после нахождения |

## Examples

### Search-GenXdevCmdlet -CmdletName "Get-*" -Code Opens first matching cmdlet starting with "Get-" in Visual Studio Code.

```powershell
Search-GenXdevCmdlet -CmdletName "Get-*" -Code
Opens first matching cmdlet starting with "Get-" in Visual Studio Code.
```

### searchcmdlet "Set-GitConfig" -EditCmdlet Searches for Set-GitConfig cmdlet and opens it for editing.

```powershell
searchcmdlet "Set-GitConfig" -EditCmdlet
Searches for Set-GitConfig cmdlet and opens it for editing.
```

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
