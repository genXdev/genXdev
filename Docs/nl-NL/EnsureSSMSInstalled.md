# EnsureSSMSInstalled

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Zorgt ervoor dat SSMS is geïnstalleerd en toegankelijk is vanaf de opdrachtregel.

## Description

Controleert of SSMS is geïnstalleerd en beschikbaar is in het systeem-PAD. Indien niet gevonden, controleert het eerst of de omgevingsvariabele PAD moet worden bijgewerkt. Als dat het probleem niet oplost, installeert het SSMS met WinGet en configureert het de omgevingsvariabele PAD.

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
