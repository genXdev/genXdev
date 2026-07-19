# Start-GenXdevMCPServer

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-GenXdevMCPServer [[-Port] <Int32>] [[-ExposedCmdLets] <GenXdev.Helpers.ExposedCmdletDefinition[]>] [[-NoConfirmationToolFunctionNames] <String[]>] [[-MaxOutputLength] <Int32>] [[-Token] <String>] [-StopExisting] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Port` | Int32 | — | — | 0 | `2175` | Der Port, auf dem der MCP-Server lauscht (Standard: 2175) |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | Array von PowerShell-Befehlsdefinitionen, um sie als MCP-Tools verfügbar zu machen |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | Liste von Befehlsnamen, die ohne Benutzerbestätigung ausgeführt werden können |
| `-StopExisting` | SwitchParameter | — | — | Named | — | Stoppen Sie einen vorhandenen MCP-Server auf dem angegebenen Port, bevor Sie einen neuen starten. |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | Maximale Länge der Werkzeugausgabe in Zeichen vor dem Abschneiden (Standard: 75000) |
| `-Token` | String | — | — | 4 | `$null` | Authentifizierungstoken erforderlich, damit Clients eine Verbindung zum MCP-Server herstellen können |

## Related Links

- [Start-GenXdevMCPServer on GitHub](https://github.com/genXdev/genXdev)
