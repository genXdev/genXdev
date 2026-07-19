# EnsureVSCodeInstallation

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Устанавливает и настраивает Visual Studio Code с рекомендуемыми расширениями.

## Description

Проверяет, установлен ли Visual Studio Code, и если нет, устанавливает его с помощью WinGet.
Настраивает пользовательские параметры, привязки клавиш и устанавливает рекомендуемые расширения из
конфигурации рабочей области. Также настраивает PSGallery как доверенный репозиторий и
конфигурирует отдельные параметры расширений.

## Syntax

```powershell
EnsureVSCodeInstallation [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureVSCodeInstallation

```powershell
EnsureVSCodeInstallation
```

## Related Links

- [EnsureVSCodeInstallation on GitHub](https://github.com/genXdev/genXdev)
