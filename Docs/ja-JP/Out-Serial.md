# Out-Serial

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> 文字列をシリアルポートに送信します

## Description

シリアル通信ポートに文字列を送信できます

## Syntax

```powershell
Out-Serial [[-Portname] <String>] [[-BaudRate] <Int32>] [[-MaxBytesToRead] <UInt32>] [[-ReadTimeout] <UInt32>] [[-WriteTimeout] <UInt32>] [[-Parity] <String>] [[-DataBits] <Int32>] [[-StopBits] <String>] -Text <Object> [-AddCRLinefeeds] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Portname` | String | — | — | 0 | `'COM5'` | 使用するポート（例：COM1）。 |
| `-BaudRate` | Int32 | — | — | 1 | `9600` | ボーレート |
| `-MaxBytesToRead` | UInt32 | — | — | 2 | `0` | 読み取るバイト数を制限します。 |
| `-ReadTimeout` | UInt32 | — | — | 3 | — | 指定されたタイムアウト（ミリ秒）で読み取りを有効にします。 |
| `-WriteTimeout` | UInt32 | — | — | 4 | — | 指定されたミリ秒単位のタイムアウトで書き込みを有効にします。 |
| `-Parity` | String | — | — | 5 | `'None'` | System.IO.Ports.SerialPort.Parity 値の1つ。 |
| `-DataBits` | Int32 | — | — | 6 | `8` | データビット値。 |
| `-StopBits` | String | — | — | 7 | `'One'` | System.IO.Ports.SerialPort.StopBits 値の1つ。 |
| `-Text` | Object | ✅ | ✅ (ByValue) | 8 | — | シリアルポートに送信するテキスト。 |
| `-AddCRLinefeeds` | SwitchParameter | — | — | Named | `$false` | Add linefeeds
to input text parts. |

## Related Links

- [Out-Serial on GitHub](https://github.com/genXdev/genXdev)
