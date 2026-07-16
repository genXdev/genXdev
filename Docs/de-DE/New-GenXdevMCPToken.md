# New-GenXdevMCPToken

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-GenXdevMCPToken [[-Length] <Int32>] [-Force] [-SetEnvironmentVariable] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Length` | Int32 | — | — | 0 | `32` | Die Länge des Tokens in Bytes (Standard: 32, Minimum: 16) |
| `-SetEnvironmentVariable` | SwitchParameter | — | — | Named | — | Speichern Sie das Token in der Benutzerumgebungsvariable GENXDEV_MCP_TOKEN. |
| `-Force` | SwitchParameter | — | — | Named | — | Vorhandene Umgebungsvariable überschreiben ohne Nachfrage |

## Related Links

- [New-GenXdevMCPToken on GitHub](https://github.com/genXdev/genXdev)
