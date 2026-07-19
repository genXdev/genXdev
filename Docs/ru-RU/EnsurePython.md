# EnsurePython

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Убедитесь, что Python установлен и доступен в системном PATH.

## Description

Проверяет, установлен ли Python и доступен ли он через системный PATH. Если Python не найден, пытается установить его с помощью winget (Диспетчер пакетов Windows). Поддерживает требования к конкретной версии и предоставляет обратную связь о ходе установки. Возвращает путь к исполняемому файлу Python в случае успеха; вызывает Write-Error при неудаче.

Эта функция отдаёт приоритет существующим установкам Python, но может принудительно переустановить его при необходимости. Проверяет функциональность Python, проверяя вывод версии, и гарантирует, что установка должным образом доступна.

## Syntax

```powershell
EnsurePython [[-Version] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Version` | String | — | — | 0 | `"3.12"` | Версия Python, которая должна быть установлена |
| `-Timeout` | Int32 | — | — | Named | `600` | Время ожидания (в секундах) для установки Python |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительно переустанавливает Python |

## Examples

### EnsurePython

```powershell
EnsurePython
```

Гарантирует установку Python 3.12 с настройками по умолчанию.

### $pythonPath = EnsurePython -Version "3.11" -Timeout 900

```powershell
$pythonPath = EnsurePython -Version "3.11" -Timeout 900
```

Устанавливает Python 3.11 с увеличенным таймаутом и возвращает путь к исполняемому файлу.

### EnsurePython -Force -Verbose

```powershell
EnsurePython -Force -Verbose
```

Přinutí přeinstalaci Pythonu 3.12 s podrobnými informacemi o průběhu.

### EnsurePython -Version "3.10" -Force

```powershell
EnsurePython -Version "3.10" -Force
```

Принудительная установка Python 3.10, даже если существует другая версия.

## Related Links

- [EnsurePython on GitHub](https://github.com/genXdev/genXdev)
