# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 키-값 저장소를 제거합니다.

## Description

이 함수는 지정된 키-값 저장소를 삭제합니다. 로컬 저장소의 경우 파일을 물리적으로 제거합니다. 동기화된 저장소의 경우 모든 키를 삭제된 것으로 표시하고 동기화를 트리거합니다.

## Syntax

```powershell
Remove-KeyValueStore [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | 삭제할 상점 이름 |
| `-SynchronizationKey` | String | — | — | 1 | — | 동기화 범위를 식별하는 키 |
| `-DatabasePath` | String | — | — | Named | — | 키-값 저장소 데이터 파일의 데이터베이스 경로 |

## Examples

### Example 1

```powershell
Remove-KeyValueStore -StoreName "MyStore"
```

로컬 키-값 저장소 'MyStore'를 제거합니다.

### Example 2

```powershell
Remove-KeyValueStore "MyStore" -SynchronizationKey "Cloud"
```

특정 동기화 키를 사용하여 동기화된 저장소를 제거합니다.

## Related Links

- [Remove-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
