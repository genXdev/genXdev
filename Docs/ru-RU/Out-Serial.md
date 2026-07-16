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
| `-Portname` | String | — | — | 0 | `'COM5'` | Используемый порт (например, COM1). |
| `-BaudRate` | Int32 | — | — | 1 | `9600` | Скорость передачи данных. |
| `-MaxBytesToRead` | UInt32 | — | — | 2 | `0` | Ограничивает количество байтов для чтения. |
| `-ReadTimeout` | UInt32 | — | — | 3 | — | Включает чтение с заданным таймаутом в миллисекундах. |
| `-WriteTimeout` | UInt32 | — | — | 4 | — | Разрешает запись с заданным таймаутом в миллисекундах. |
| `-Parity` | String | — | — | 5 | `'None'` | Одно из значений System.IO.Ports.SerialPort.Parity. |
| `-DataBits` | Int32 | — | — | 6 | `8` | Значение битов данных. |
| `-StopBits` | String | — | — | 7 | `'One'` | Одно из значений System.IO.Ports.SerialPort.StopBits. |
| `-Text` | Object | ✅ | ✅ (ByValue) | 8 | — | Text to sent to serial port. |
| `-AddCRLinefeeds` | SwitchParameter | — | — | Named | `$false` | Input text parts with added linefeeds. |

## Related Links

- [Out-Serial on GitHub](https://github.com/genXdev/genXdev)
