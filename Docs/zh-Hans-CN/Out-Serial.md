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
| `-Portname` | String | — | — | 0 | `'COM5'` | 要使用的端口（例如，COM1）。 |
| `-BaudRate` | Int32 | — | — | 1 | `9600` | 波特率。 |
| `-MaxBytesToRead` | UInt32 | — | — | 2 | `0` | 限制读取的字节数。 |
| `-ReadTimeout` | UInt32 | — | — | 3 | — | 使用指定的超时时间（以毫秒为单位）启用读取功能。 |
| `-WriteTimeout` | UInt32 | — | — | 4 | — | 支持以毫秒为单位指定超时时间进行写入。 |
| `-Parity` | String | — | — | 5 | `'None'` | System.IO.Ports.SerialPort.Parity 值之一。 |
| `-DataBits` | Int32 | — | — | 6 | `8` | 数据位值。 |
| `-StopBits` | String | — | — | 7 | `'One'` | System.IO.Ports.SerialPort.StopBits 值之一。 |
| `-Text` | Object | ✅ | ✅ (ByValue) | 8 | — | Text to sent to serial port. |
| `-AddCRLinefeeds` | SwitchParameter | — | — | Named | `$false` | Input text parts:
Add linefeeds to input text parts. |

## Related Links

- [Out-Serial on GitHub](https://github.com/genXdev/genXdev)
