# Show-GenXdevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `cmds

## Synopsis

> Отображает модули GenXdev PowerShell с их командлетами и псевдонимами.

## Description

Перечисляет все установленные модули GenXdev PowerShell и связанные с ними командлеты и псевдонимы. Использует Get-GenXDevCmdlet для получения информации о командлетах и, при необходимости, их позиций в сценарии. Предоставляет возможности фильтрации и различные варианты отображения.

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Шаблон поиска для фильтрации командлетов 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Регулярное выражение для сопоставления определений командлетов |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | GenXdev - названия модулей для поиска 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Пропустить поиск в локальных путях модулей |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Поиск только в опубликованных путях модулей |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Поиск в файлах скриптов вместо модулей |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Включает каталог сценариев в дополнение к обычным модулям *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Perform exact matching instead of wildcard matching |
| `-Online` | SwitchParameter | — | — | Named | — | Открыть документацию GitHub вместо вывода в консоль |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | При указании отображает только псевдонимы командлетов |
| `-ShowTable` | SwitchParameter | — | — | Named | — | Отображение результатов в табличном формате |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Examples

### Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable Lists all cmdlets starting with "Get" in the Console module as a table

```powershell
Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable
Lists all cmdlets starting with "Get" in the Console module as a table
```

### cmds get -m console Lists all cmdlets starting with "Get" in the Console module

```powershell
cmds get -m console
Lists all cmdlets starting with "Get" in the Console module
```

### Show-GenXdevCmdlet -OnlyReturnModuleNames Returns only unique module names

```powershell
Show-GenXdevCmdlet -OnlyReturnModuleNames
Returns only unique module names
```

## Outputs

- `Collections.ArrayList`
- `Void`

## Related Links

- [Show-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
