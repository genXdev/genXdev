# EnsureSSMSInstalled

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures SSMS is installed and accessible from the command line.

## Description

Проверяет, установлен ли SSMS и доступен ли он в системной переменной PATH. Если нет, сначала проверяется, нужно ли обновить переменную окружения PATH. Если это не решает проблему, устанавливается SSMS с помощью WinGet и настраивается переменная окружения PATH.

## Syntax

```powershell
EnsureSSMSInstalled [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureSSMSInstalled Checks and ensures SSMS is installed and accessible.

```powershell
EnsureSSMSInstalled
Checks and ensures SSMS is installed and accessible.
```

## Related Links

- [EnsureSSMSInstalled on GitHub](https://github.com/genXdev/genXdev)
