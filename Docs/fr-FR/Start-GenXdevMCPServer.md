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
| `-Port` | Int32 | — | — | 0 | `2175` | Le port sur lequel le serveur MCP écoutera (par défaut : 2175) |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | Tableau des définitions de commandes PowerShell à exposer en tant qu'outils MCP |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | Tableau des noms de commandes pouvant être exécutées sans confirmation de l'utilisateur |
| `-StopExisting` | SwitchParameter | — | — | Named | — | Arrêtez tout serveur MCP existant fonctionnant sur le port spécifié avant d'en démarrer un nouveau |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | Longueur maximale de la sortie de l'outil en caractères avant troncature (par défaut : 75000) |
| `-Token` | String | — | — | 4 | `$null` | Jeton d'authentification requis pour que les clients se connectent au serveur MCP |

## Related Links

- [Start-GenXdevMCPServer on GitHub](https://github.com/genXdev/genXdev)
