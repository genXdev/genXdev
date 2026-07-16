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
| `-Portname` | String | — | — | 0 | `'COM5'` | Le port à utiliser (par exemple, COM1). |
| `-BaudRate` | Int32 | — | — | 1 | `9600` | Le débit en bauds. |
| `-MaxBytesToRead` | UInt32 | — | — | 2 | `0` | Limite le nombre d'octets à lire. |
| `-ReadTimeout` | UInt32 | — | — | 3 | — | Active la lecture avec un délai d'attente spécifié en millisecondes. |
| `-WriteTimeout` | UInt32 | — | — | 4 | — | Permet l'écriture avec un délai d'attente spécifié en millisecondes. |
| `-Parity` | String | — | — | 5 | `'None'` | L'une des valeurs System.IO.Ports.SerialPort.Parity. |
| `-DataBits` | Int32 | — | — | 6 | `8` | La valeur des bits de données. |
| `-StopBits` | String | — | — | 7 | `'One'` | L'une des valeurs System.IO.Ports.SerialPort.StopBits. |
| `-Text` | Object | ✅ | ✅ (ByValue) | 8 | — | Texte à envoyer au port série. |
| `-AddCRLinefeeds` | SwitchParameter | — | — | Named | `$false` | Add linefeeds to input text parts. |

## Related Links

- [Out-Serial on GitHub](https://github.com/genXdev/genXdev)
