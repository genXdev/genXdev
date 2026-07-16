# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ValueByKeyFromStore [-StoreName] <string> [-KeyName] <string> [[-DefaultValue] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | 키를 검색할 스토어의 이름 |
| `-KeyName` | String | ✅ | — | 1 | — | 지정된 저장소에서 검색할 키 |
| `-DefaultValue` | String | — | — | 2 | — | 선택적 기본값 |
| `-SynchronizationKey` | String | — | — | 3 | — | 동기화 범위를 식별하는 키 |
| `-DatabasePath` | String | — | — | Named | — | 키-값 저장소 데이터 파일의 데이터베이스 경로 |

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
