# EnsureSSMSInstalled

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Stellt sicher, dass SSMS installiert und von der Befehlszeile aus zugänglich ist.

## Description

Überprüft, ob SSMS installiert und im System-PATH verfügbar ist. Falls nicht gefunden, wird zunächst geprüft, ob die PATH-Umgebungsvariable aktualisiert werden muss. Falls das das Problem nicht behebt, wird SSMS mit WinGet installiert und die PATH-Umgebungsvariable konfiguriert.

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
