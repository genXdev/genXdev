# Out-Serial

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Sendet eine Zeichenkette an eine serielle Schnittstelle

## Description

Ermöglicht das Senden einer Zeichenfolge an einen seriellen Kommunikationsanschluss

## Syntax

```powershell
Out-Serial [[-Portname] <String>] [[-BaudRate] <Int32>] [[-MaxBytesToRead] <UInt32>] [[-ReadTimeout] <UInt32>] [[-WriteTimeout] <UInt32>] [[-Parity] <String>] [[-DataBits] <Int32>] [[-StopBits] <String>] -Text <Object> [-AddCRLinefeeds] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Portname` | String | — | — | 0 | `'COM5'` | Der zu verwendende Port (z. B. COM1). |
| `-BaudRate` | Int32 | — | — | 1 | `9600` | Die Baudrate. |
| `-MaxBytesToRead` | UInt32 | — | — | 2 | `0` | Begrenzt die Anzahl der zu lesenden Bytes. |
| `-ReadTimeout` | UInt32 | — | — | 3 | — | Ermöglicht das Lesen mit einem angegebenen Timeout in Millisekunden. |
| `-WriteTimeout` | UInt32 | — | — | 4 | — | Ermöglicht das Schreiben mit einem angegebenen Timeout in Millisekunden. |
| `-Parity` | String | — | — | 5 | `'None'` | Einer der System.IO.Ports.SerialPort.Parity-Werte. |
| `-DataBits` | Int32 | — | — | 6 | `8` | Der Wert der Datenbits. |
| `-StopBits` | String | — | — | 7 | `'One'` | Einer der System.IO.Ports.SerialPort.StopBits-Werte. |
| `-Text` | Object | ✅ | ✅ (ByValue) | 8 | — | An den seriellen Anschluss zu sendender Text. |
| `-AddCRLinefeeds` | SwitchParameter | — | — | Named | `$false` | Add linefeeds to input text parts. |

## Related Links

- [Out-Serial on GitHub](https://github.com/genXdev/genXdev)
