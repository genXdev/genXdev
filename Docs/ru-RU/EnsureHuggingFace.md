# EnsureHuggingFace

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures the Hugging Face CLI is installed and functional.

## Description

Оркестрирует установку Python, pip и CLI Hugging Face, вызывая EnsurePython и EnsurePip, затем устанавливая пакет huggingface_hub. Сохраняет путь CLI в JSON-файл и обеспечивает доступность всех компонентов в системном PATH. Возвращает $true в случае успеха; вызывает Write-Error при неудаче.

## Syntax

```powershell
EnsureHuggingFace [[-PythonVersion] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonVersion` | String | — | — | 0 | `"3.12"` | Версия Python для проверки |
| `-Timeout` | Int32 | — | — | Named | `600` | Тайм-аут в секундах для процессов установки |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная переустановка всех компонентов |

## Examples

### EnsureHuggingFace

```powershell
EnsureHuggingFace
```

Убедитесь, что установлены Python 3.12, pip и HuggingFace CLI.

### EnsureHuggingFace -PythonVersion "3.11" -Force

```powershell
EnsureHuggingFace -PythonVersion "3.11" -Force
```

Принудительная переустановка с Python 3.11.

### EnsureHuggingFace -Timeout 1200

```powershell
EnsureHuggingFace -Timeout 1200
```

Обеспечивает установку с таймаутом 20 минут.

## Related Links

- [EnsureHuggingFace on GitHub](https://github.com/genXdev/genXdev)
