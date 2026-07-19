# EnsurePip

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Убедитесь, что pip установлен и функционирует для указанной установки Python.

## Description

Проверяет, доступен ли pip и функционирует ли он для указанного исполняемого файла Python.
Если pip недоступен, пытается установить его с помощью ensurepip. Проверяет
функциональность pip, проверяя версию и базовые операции. Возвращает $true, если
pip готов; вызывает Write-Error в случае неудачи.

## Syntax

```powershell
EnsurePip [[-PythonPath] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonPath` | String | — | — | 0 | — | Путь к исполняемому файлу Python |
| `-Timeout` | Int32 | — | — | Named | `300` | Таймаут в секундах для установки pip |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная переустановка/обновление pip |

## Examples

### EnsurePip

```powershell
EnsurePip
```

Обеспечивает доступность pip для стандартной установки Python.

### EnsurePip -PythonPath "C:\Python39\python.exe" -Force

```powershell
EnsurePip -PythonPath "C:\Python39\python.exe" -Force
```

Принудительная установка pip для конкретного исполняемого файла Python.

### $pythonPath = EnsurePython EnsurePip -PythonPath $pythonPath

```powershell
$pythonPath = EnsurePython
EnsurePip -PythonPath $pythonPath
```

Обеспечивает pip для конкретной установки Python, возвращенной EnsurePython.

## Related Links

- [EnsurePip on GitHub](https://github.com/genXdev/genXdev)
