# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-StoreKeys [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | 키를 검색할 상점의 이름 |
| `-SynchronizationKey` | String | — | — | 1 | — | 동기화 범위를 식별하는 키, 기본값은 all |
| `-DatabasePath` | String | — | — | Named | — | 키-값 저장소 데이터 파일의 데이터베이스 경로 |

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
