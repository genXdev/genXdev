# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> 주어진 키-값 저장소에 대한 모든 키 이름을 검색합니다.

## Description

* KeyValueStore JSON 파일을 쿼리하여 지정된 저장소의 모든 활성(삭제되지 않은) 키를 검색합니다.
* 동기화 범위로 선택적으로 필터링할 수 있습니다.
* 디렉터리 구조가 없으면 자동으로 초기화하고, 로컬이 아닌 저장소의 동기화를 처리합니다.

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

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

로컬 범위에 대한 ApplicationSettings 저장소에서 모든 키를 검색합니다.

### Example 2

```powershell
getkeys AppSettings
```

별칭을 사용하여 키를 검색합니다.

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
