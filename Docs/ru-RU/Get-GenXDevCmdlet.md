# Get-GenXDevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `gcmds

## Synopsis

> Извлекает и выводит список всех командлетов GenXdev и их подробности.

## Description

Выполняет поиск по установленным модулям GenXdev и файлам сценариев для поиска командлетов, их псевдонимов и описаний. Можно фильтровать по шаблону имени и имени модуля. Поддерживает фильтрацию по определениям командлетов и предоставляет гибкие возможности поиска как в локальных, так и в опубликованных путях модулей.

## Syntax

```powershell
Get-GenXDevCmdlet [[-CmdletName] <String[]>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [<CommonParameters>]

Get-GenXDevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String[] | — | ✅ (ByPropertyName) | 0 | — | Шаблон поиска для фильтрации командлетов 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Регулярное выражение для сопоставления определений командлетов |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | GenXdev - названия модулей для поиска 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Пропустить поиск в локальных путях модулей |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Поиск только в опубликованных путях модулей |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Поиск в файлах скриптов вместо модулей |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Включает каталог сценариев в дополнение к обычным модулям *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Perform exact matching instead of wildcard matching |

## Examples

### Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal

```powershell
Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal
```

### gcmds Get-*

```powershell
gcmds Get-*
```

### Get-GenXDevCmdlet -OnlyReturnModuleNames

```powershell
Get-GenXDevCmdlet -OnlyReturnModuleNames
```

## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Get-GenXDevCmdlet on GitHub](https://github.com/genXdev/genXdev)
