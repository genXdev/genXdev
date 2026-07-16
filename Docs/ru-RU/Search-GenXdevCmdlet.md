# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
