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
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | Array von PowerShell-Befehlsdefinitionen, die als MCP-Tools verfügbar gemacht werden sollen |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | Array von Befehlsnamen, die ohne Benutzerbestätigung ausgeführt werden können |
| `-StopExisting` | SwitchParameter | — | — | Named | — | Beenden Sie einen vorhandenen MCP-Server, der auf dem angegebenen Port ausgeführt wird, bevor Sie einen neuen starten |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | Maximale Länge der Toolausgabe in Zeichen vor dem Kürzen (Standard: 75000) |
| `-Token` | String | — | — | 4 | `$null` | Authentifizierungstoken, der für Clients erforderlich ist, um eine Verbindung zum MCP-Server herzustellen |

## Parameter Details

### `-Port <Int32>`

> Der Port, auf dem der MCP-Server lauscht (Standard: 2175)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `2175` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Array von PowerShell-Befehlsdefinitionen, die als MCP-Tools verfügbar gemacht werden sollen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Array von Befehlsnamen, die ohne Benutzerbestätigung ausgeführt werden können

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StopExisting`

> Beenden Sie einen vorhandenen MCP-Server, der auf dem angegebenen Port ausgeführt wird, bevor Sie einen neuen starten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxOutputLength <Int32>`

> Maximale Länge der Toolausgabe in Zeichen vor dem Kürzen (Standard: 75000)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `75000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> Authentifizierungstoken, der für Clients erforderlich ist, um eine Verbindung zum MCP-Server herzustellen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/de-DE/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/de-DE/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/de-DE/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/de-DE/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/de-DE/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevCommandNotFoundAction.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-DeepLinkImageFile.md)
