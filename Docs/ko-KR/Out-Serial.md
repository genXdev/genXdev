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
| `-Portname` | String | — | — | 0 | `'COM5'` | 사용할 포트 (예: COM1). |
| `-BaudRate` | Int32 | — | — | 1 | `9600` | 보드레이트입니다. |
| `-MaxBytesToRead` | UInt32 | — | — | 2 | `0` | 읽을 바이트 수를 제한합니다. |
| `-ReadTimeout` | UInt32 | — | — | 3 | — | 지정된 시간(밀리초)이 초과되면 읽기를 활성화합니다. |
| `-WriteTimeout` | UInt32 | — | — | 4 | — | 지정된 시간 제한(밀리초)으로 쓰기를 활성화합니다. |
| `-Parity` | String | — | — | 5 | `'None'` | System.IO.Ports.SerialPort.Parity 값 중 하나입니다. |
| `-DataBits` | Int32 | — | — | 6 | `8` | 데이터 비트 값입니다. |
| `-StopBits` | String | — | — | 7 | `'One'` | System.IO.Ports.SerialPort.StopBits 값 중 하나입니다. |
| `-Text` | Object | ✅ | ✅ (ByValue) | 8 | — | 시리얼 포트로 보낼 텍스트입니다. |
| `-AddCRLinefeeds` | SwitchParameter | — | — | Named | `$false` | Add linefeeds to input text parts. |

## Related Links

- [Out-Serial on GitHub](https://github.com/genXdev/genXdev)
