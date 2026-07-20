# Out-Serial

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Sends a string to a serial port

## Description

Allows you to send a string to a serial communication port

## Syntax

```powershell
Out-Serial [[-Portname] <String>] [[-BaudRate] <Int32>] [[-MaxBytesToRead] <UInt32>] [[-ReadTimeout] <UInt32>] [[-WriteTimeout] <UInt32>] [[-Parity] <String>] [[-DataBits] <Int32>] [[-StopBits] <String>] -Text <Object> [-AddCRLinefeeds] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Portname` | String | — | — | 0 | `'COM5'` | The port to use (for example, COM1). |
| `-BaudRate` | Int32 | — | — | 1 | `9600` | The baud rate. |
| `-MaxBytesToRead` | UInt32 | — | — | 2 | `0` | Limits the nr of bytes to read. |
| `-ReadTimeout` | UInt32 | — | — | 3 | — | Enables reading with a specified timeout in milliseconds. |
| `-WriteTimeout` | UInt32 | — | — | 4 | — | Enables writing with a specified timeout in milliseconds. |
| `-Parity` | String | — | — | 5 | `'None'` | One of the System.IO.Ports.SerialPort.Parity values. |
| `-DataBits` | Int32 | — | — | 6 | `8` | The data bits value. |
| `-StopBits` | String | — | — | 7 | `'One'` | One of the System.IO.Ports.SerialPort.StopBits values. |
| `-Text` | Object | ✅ | ✅ (ByValue) | 8 | — | Text to sent to serial port. |
| `-AddCRLinefeeds` | SwitchParameter | — | — | Named | `$false` | Add linefeeds to input text parts. |

## Parameter Details

### `-Portname <String>`

> The port to use (for example, COM1).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'COM5'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BaudRate <Int32>`

> The baud rate.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `9600` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxBytesToRead <UInt32>`

> Limits the nr of bytes to read.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReadTimeout <UInt32>`

> Enables reading with a specified timeout in milliseconds.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WriteTimeout <UInt32>`

> Enables writing with a specified timeout in milliseconds.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Parity <String>`

> One of the System.IO.Ports.SerialPort.Parity values.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `'None'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DataBits <Int32>`

> The data bits value.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `8` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StopBits <String>`

> One of the System.IO.Ports.SerialPort.StopBits values.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | `'One'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Text <Object>`

> Text to sent to serial port.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 8 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AddCRLinefeeds`

> Add linefeeds to input text parts.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/alignScript.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-HashTable.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureNuGetAssembly.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-DefaultWebLanguage.md)
- [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXDevCmdlet.md)
- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ImageMetadata.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Initialize-SearchPaths.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/resetdefaultmonitor.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/secondscreen.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-GenXdevCommandNotFoundAction.md)
- [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-GenXdevCmdlet.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-Verb.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/sidebyside.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-UnattendedMode.md)
