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
| `-Portname` | String | — | — | 0 | `'COM5'` | A porta a ser utilizada (por exemplo, COM1). |
| `-BaudRate` | Int32 | — | — | 1 | `9600` | A taxa de transmissão. |
| `-MaxBytesToRead` | UInt32 | — | — | 2 | `0` | Limita o número de bytes a serem lidos. |
| `-ReadTimeout` | UInt32 | — | — | 3 | — | Permite a leitura com um tempo limite especificado em milissegundos. |
| `-WriteTimeout` | UInt32 | — | — | 4 | — | Permite escrever com um tempo limite especificado em milissegundos. |
| `-Parity` | String | — | — | 5 | `'None'` | Um dos valores de System.IO.Ports.SerialPort.Parity. |
| `-DataBits` | Int32 | — | — | 6 | `8` | O valor dos bits de dados. |
| `-StopBits` | String | — | — | 7 | `'One'` | Um dos valores de System.IO.Ports.SerialPort.StopBits. |
| `-Text` | Object | ✅ | ✅ (ByValue) | 8 | — | Texto a ser enviado para a porta serial. |
| `-AddCRLinefeeds` | SwitchParameter | — | — | Named | `$false` | Add linefeeds to input text parts. |

## Related Links

- [Out-Serial on GitHub](https://github.com/genXdev/genXdev)
