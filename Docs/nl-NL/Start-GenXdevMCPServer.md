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
| `-Port` | Int32 | — | — | 0 | `2175` | De poort waarop de MCP-server zal luisteren (standaard: 2175) |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | Array van PowerShell-commando definities om als MCP-tools te gebruiken |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | Array met commandonamen die zonder gebruikersbevestiging kunnen worden uitgevoerd |
| `-StopExisting` | SwitchParameter | — | — | Named | — | Stop elke bestaande MCP-server die op de opgegeven poort draait voordat u een nieuwe start |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | Maximale lengte van tooluitvoer in tekens voordat wordt bijgesneden (standaard: 75000) |
| `-Token` | String | — | — | 4 | `$null` | Authenticatietoken vereist voor clients om verbinding te maken met de MCP-server |

## Related Links

- [Start-GenXdevMCPServer on GitHub](https://github.com/genXdev/genXdev)
