# Out-Serial

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Out-Serial on GitHub](https://github.com/genXdev/genXdev)
