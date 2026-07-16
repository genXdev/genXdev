# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-ValueByKeyInStore [-StoreName] <string> [-KeyName] <string> [[-Value] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Store name for the key-value pair |
| `-KeyName` | String | ✅ | — | 1 | — | 설정하거나 업데이트할 키의 이름 |
| `-Value` | String | — | — | 2 | — | 저장할 값 |
| `-SynchronizationKey` | String | — | — | 3 | — | 동기화 범위를 식별하는 키 |
| `-DatabasePath` | String | — | — | Named | — | 키-값 저장소 데이터 파일의 데이터베이스 경로 |

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
