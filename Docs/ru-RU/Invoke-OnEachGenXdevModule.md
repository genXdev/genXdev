# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-OnEachGenXdevModule -Script <ScriptBlock> [[-ModuleName] <String[]>] [-FromScripts] [-IncludeScripts] [-NoLocal] [-OnlyPublished] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | — | 0 | — | Скриптовый блок для выполнения для каждого модуля GenXdev |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | Фильтр для применения к именам модулей 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Исключает локальные модули разработки из обработки |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Включает только опубликованные модули, имеющие файлы LICENSE и README.md |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Обрабатывать каталог скриптов вместо каталогов модулей |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Включает каталог сценариев в дополнение к обычным модулям |

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
