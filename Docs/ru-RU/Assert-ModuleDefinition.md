# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Помощь в рефакторинге исходных файлов PowerShell с использованием искусственного интеллекта.

## Description

Эта функция автоматизирует процесс рефакторинга кода PowerShell с помощью ИИ. Она управляет шаблонами запросов, определяет активную IDE (VS Code или Visual Studio) и координирует процесс рефакторинга с помощью автоматизации клавиатуры. Функция может обрабатывать как файлы манифеста модуля (.psd1), так и файлы скриптов модуля (.psm1).

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Название модуля |
| `-Prompt` | String | — | — | Named | — | Помощник ИИ, предназначенный для вывода JSON. |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Only edit the AI prompt |

## Examples

### Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt

```powershell
Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt
```

### "MyModule" | Assert-ModuleDefinition

```powershell
"MyModule" | Assert-ModuleDefinition
```

## Related Links

- [Assert-ModuleDefinition on GitHub](https://github.com/genXdev/genXdev)
