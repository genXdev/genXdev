# Invoke-HuggingFaceCli

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Вызывает Hugging Face CLI с указанными аргументами.

## Description

Вызывает EnsureHuggingFace, чтобы убедиться, что CLI установлен, затем выполняет
Hugging Face CLI с переданными аргументами. Считывает путь CLI из
$ENV:LOCALAPPDATA\GenXdev.PowerShell\hfclilocation.json. Возвращает
вывод команды в виде строки; при ошибке вызывает Write-Error.

## Syntax

```powershell
Invoke-HuggingFaceCli -Arguments <String[]> [[-Timeout] <Int32>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Arguments` | String[] | ✅ | — | 0 | — | The arguments to pass to the Hugging Face CLI |
| `-Timeout` | Int32 | — | — | 1 | `36000` | Таймаут в секундах для выполнения CLI и установки зависимостей |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительно переустанавливает CLI Hugging Face |

## Examples

### Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force

```powershell
Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force
```

Вызывает CLI с командой "login", принудительно переустанавливая.

### Invoke-HuggingFaceCli @("whoami") 300

```powershell
Invoke-HuggingFaceCli @("whoami") 300
```

Вызывает CLI с командой "whoami" и таймаутом 300 секунд.

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)
