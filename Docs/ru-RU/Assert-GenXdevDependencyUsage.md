# Assert-GenXdevDependencyUsage

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `checkgenxdevdependencies

## Synopsis

> Проверяет использование зависимостей между модулями GenXdev для обеспечения соблюдения правильной иерархии модулей.

## Description

Эта функция анализирует модули GenXdev, чтобы убедиться, что они следуют правильной иерархии зависимостей. Она проверяет, что модули ссылаются только на зависимости, перечисленные в их манифесте RequiredModules, и предотвращает циклические зависимости, проверяя, что модули не ссылаются на модули, которые идут позже в цепочке зависимостей.

## Syntax

```powershell
Assert-GenXdevDependencyUsage [[-ModuleName] <String[]>] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | Фильтр для применения к именам модулей 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Поиск в файлах скриптов вместо файлов модулей |

## Examples

### Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"

```powershell
Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"
```

### checkgenxdevdependencies "GenXdev*" -FromScripts

```powershell
checkgenxdevdependencies "GenXdev*" -FromScripts
```

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)
