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
| `-Port` | Int32 | — | — | 0 | `2175` | Порт, на якому сервер MCP буде прослуховувати (за замовчуванням: 2175) |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | PowerShell команди для експорту як MCP інструменти |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | Get-Help Get-Command Get-Module Write-Host Write-Output Write-Debug Write-Verbose Write-Warning Write-Error Get-ChildItem Get-Item Get-Process Get-Service Get-Date Get-Location Get-Variable Set-Variable Remove-Variable New-Variable Clear-Variable Get-Alias New-Alias Set-Alias Remove-Alias Export-Alias Get-PSDrive Get-PSProvider Get-PSSession New-PSSession Remove-PSSession Enter-PSSession Exit-PSSession Invoke-Command Invoke-Expression Measure-Command Measure-Object Select-Object Where-Object ForEach-Object Sort-Object Group-Object Compare-Object Tee-Object Format-Table Format-List Format-Wide Format-Custom Out-File Out-Host Out-Null Out-Printer Out-String Out-GridView Out-Default Get-Host Get-Culture Get-UICulture Get-ExecutionPolicy Set-ExecutionPolicy Get-WmiObject Get-WmiObject Get-CimInstance Get-CimClass New-CimSession Remove-CimSession Get-CimSession Invoke-CimMethod Register-CimIndicationEvent Unregister-Event Get-Event New-Event Remove-Event Wait-Event Register-EngineEvent Register-ObjectEvent Register-WmiEvent Register-CimIndicationEvent Get-EventSubscriber Remove-EventSubscription |
| `-StopExisting` | SwitchParameter | — | — | Named | — | Зупиніть будь-який існуючий MCP-сервер, що працює на вказаному порту, перед запуском нового. |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | Максимальна довжина виводу інструменту в символах перед обрізанням (за замовчуванням: 75000) |
| `-Token` | String | — | — | 4 | `$null` | Для підключення до MCP-сервера клієнтам потрібен токен автентифікації. |

## Parameter Details

### `-Port <Int32>`

> Порт, на якому сервер MCP буде прослуховувати (за замовчуванням: 2175)

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

> PowerShell команди для експорту як MCP інструменти

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

> Get-Help Get-Command Get-Module Write-Host Write-Output Write-Debug Write-Verbose Write-Warning Write-Error Get-ChildItem Get-Item Get-Process Get-Service Get-Date Get-Location Get-Variable Set-Variable Remove-Variable New-Variable Clear-Variable Get-Alias New-Alias Set-Alias Remove-Alias Export-Alias Get-PSDrive Get-PSProvider Get-PSSession New-PSSession Remove-PSSession Enter-PSSession Exit-PSSession Invoke-Command Invoke-Expression Measure-Command Measure-Object Select-Object Where-Object ForEach-Object Sort-Object Group-Object Compare-Object Tee-Object Format-Table Format-List Format-Wide Format-Custom Out-File Out-Host Out-Null Out-Printer Out-String Out-GridView Out-Default Get-Host Get-Culture Get-UICulture Get-ExecutionPolicy Set-ExecutionPolicy Get-WmiObject Get-WmiObject Get-CimInstance Get-CimClass New-CimSession Remove-CimSession Get-CimSession Invoke-CimMethod Register-CimIndicationEvent Unregister-Event Get-Event New-Event Remove-Event Wait-Event Register-EngineEvent Register-ObjectEvent Register-WmiEvent Register-CimIndicationEvent Get-EventSubscriber Remove-EventSubscription

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

> Зупиніть будь-який існуючий MCP-сервер, що працює на вказаному порту, перед запуском нового.

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

> Максимальна довжина виводу інструменту в символах перед обрізанням (за замовчуванням: 75000)

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

> Для підключення до MCP-сервера клієнтам потрібен токен автентифікації.

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevCommandNotFoundAction.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-DeepLinkImageFile.md)
