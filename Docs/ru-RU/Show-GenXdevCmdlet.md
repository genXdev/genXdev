# Show-GenXdevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `cmds

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `Collections.ArrayList`
- `Void`

## Related Links

- [Show-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
