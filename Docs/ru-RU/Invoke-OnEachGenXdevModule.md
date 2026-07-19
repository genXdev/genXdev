# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> Выполняет блок сценария для каждого модуля GenXdev в рабочей области.

## Description

Эта функция перебирает модули GenXdev в рабочей области и выполняет предоставленный блок скрипта для каждого модуля. Она может фильтровать модули по шаблону имени, исключать локальные модули, включать только опубликованные модули или обрабатывать скрипты вместо модулей. Функция автоматически переходит в правильный каталог модуля перед выполнением блока скрипта.

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

## Examples

### Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

```powershell
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }
```

GenXdev modules include: GenXdev.Console, GenXdev.DotNet, GenXdev.Extensions, GenXdev.Helpers, GenXdev.Installer, GenXdev.IO, GenXdev.NET, GenXdev.NuGet, GenXdev.OS, GenXdev.Razor, GenXdev.Text, GenXdev.Web, GenXdev.Windows, GenXdev.WPF

### foreach-genxdev-module-do {     param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)     Get-ChildItem } -ModuleName "GenXdev.AI"

```powershell
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"
```

Использует псевдоним для вывода содержимого каталога модуля GenXdev.AI.

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
