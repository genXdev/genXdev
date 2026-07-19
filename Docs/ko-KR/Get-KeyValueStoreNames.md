# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames

## Synopsis

> 사용 가능한 키-값 저장소의 이름을 검색합니다.

## Description

* 키-값 저장소 디렉터리를 스캔하여 JSON 파일을 찾고 지정된 동기화 키 패턴에 따라 고유한 저장소 이름을 추출합니다.
* 저장소 디렉터리가 존재하는지 확인하고 필요한 경우 비로컬 저장소를 동기화합니다.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | 동기화 범위를 식별하는 키, 기본값은 all |
| `-DatabasePath` | String | — | — | Named | — | 키-값 저장소 데이터 파일의 데이터베이스 경로 |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

기본 위치에서 모든 매장 이름을 검색합니다.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

'로컬' 동기화 범위에 대한 스토어 이름을 검색합니다.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

별칭을 사용하여 사용자 정의 데이터베이스 경로에서 모든 상점 이름을 검색합니다.

## Related Links

- [Get-KeyValueStoreNames on GitHub](https://github.com/genXdev/genXdev)
