# Import-GenXdevModules

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `reloadgenxdev

## Synopsis

> Импортирует все модули PowerShell GenXdev в глобальную область видимости.

## Description

Сканирует родительский каталог на наличие модулей GenXdev и импортирует каждый из них в глобальную область. Использует управление стеком местоположения для сохранения рабочего каталога и предоставляет визуальную обратную связь для успешных и неудачных импортов. Отслеживает изменения количества функций в процессе импорта.

## Syntax

```powershell
Import-GenXdevModules [-DebugFailedModuleDefinitions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DebugFailedModuleDefinitions` | SwitchParameter | — | — | Named | — | Включить отладочный вывод для неудачных определений модулей |

## Examples

### Import-GenXdevModules -DebugFailedModuleDefinitions Imports modules with debug output for failures

```powershell
Import-GenXdevModules -DebugFailedModuleDefinitions
Imports modules with debug output for failures
```

### reloadgenxdev Imports all modules using the alias

```powershell
reloadgenxdev
Imports all modules using the alias
```

## Related Links

- [Import-GenXdevModules on GitHub](https://github.com/genXdev/genXdev)
