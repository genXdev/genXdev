# Get-GenXDevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `gcmds

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Get-GenXDevCmdlet on GitHub](https://github.com/genXdev/genXdev)
