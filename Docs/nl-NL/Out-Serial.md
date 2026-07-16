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
| `-Portname` | String | — | — | 0 | `'COM5'` | De te gebruiken poort (bijv. COM1). |
| `-BaudRate` | Int32 | — | — | 1 | `9600` | De baudrate. |
| `-MaxBytesToRead` | UInt32 | — | — | 2 | `0` | Beperkt het aantal bytes dat gelezen mag worden. |
| `-ReadTimeout` | UInt32 | — | — | 3 | — | Maakt het mogelijk om te lezen met een opgegeven time-out in milliseconden. |
| `-WriteTimeout` | UInt32 | — | — | 4 | — | Maakt schrijven mogelijk met een opgegeven time-out in milliseconden. |
| `-Parity` | String | — | — | 5 | `'None'` | Een van de System.IO.Ports.SerialPort.Parity waarden. |
| `-DataBits` | Int32 | — | — | 6 | `8` | De waarde van de databits. |
| `-StopBits` | String | — | — | 7 | `'One'` | Een van de System.IO.Ports.SerialPort.StopBits-waarden. |
| `-Text` | Object | ✅ | ✅ (ByValue) | 8 | — | Text om naar de seriële poort te sturen. |
| `-AddCRLinefeeds` | SwitchParameter | — | — | Named | `$false` | Add linefeeds
to
input
text
parts. |

## Related Links

- [Out-Serial on GitHub](https://github.com/genXdev/genXdev)
