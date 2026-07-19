# Out-Serial

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Envía una cadena a un puerto serie

## Description

Te permite enviar una cadena a un puerto de comunicación serie

## Syntax

```powershell
Out-Serial [[-Portname] <String>] [[-BaudRate] <Int32>] [[-MaxBytesToRead] <UInt32>] [[-ReadTimeout] <UInt32>] [[-WriteTimeout] <UInt32>] [[-Parity] <String>] [[-DataBits] <Int32>] [[-StopBits] <String>] -Text <Object> [-AddCRLinefeeds] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Portname` | String | — | — | 0 | `'COM5'` | El puerto a utilizar (por ejemplo, COM1). |
| `-BaudRate` | Int32 | — | — | 1 | `9600` | La velocidad en baudios. |
| `-MaxBytesToRead` | UInt32 | — | — | 2 | `0` | Limita el número de bytes a leer. |
| `-ReadTimeout` | UInt32 | — | — | 3 | — | Habilita la lectura con un tiempo de espera especificado en milisegundos. |
| `-WriteTimeout` | UInt32 | — | — | 4 | — | Habilita la escritura con un tiempo de espera específico en milisegundos. |
| `-Parity` | String | — | — | 5 | `'None'` | Uno de los valores de System.IO.Ports.SerialPort.Parity. |
| `-DataBits` | Int32 | — | — | 6 | `8` | El valor de los bits de datos. |
| `-StopBits` | String | — | — | 7 | `'One'` | Uno de los valores de System.IO.Ports.SerialPort.StopBits. |
| `-Text` | Object | ✅ | ✅ (ByValue) | 8 | — | Text to sent to serial port. |
| `-AddCRLinefeeds` | SwitchParameter | — | — | Named | `$false` | Add linefeeds to input text parts. |

## Related Links

- [Out-Serial on GitHub](https://github.com/genXdev/genXdev)
