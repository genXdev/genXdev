# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey

## Synopsis

> 키-값 저장소에서 키를 제거합니다.

## Description

이 함수는 명명된 키-값 저장소에서 지정된 키를 제거합니다. 로컬 저장소의 경우 키가 영구적으로 삭제됩니다. 동기화 저장소의 경우 키는 삭제된 것으로 표시되어 동기화가 가능합니다.

## Syntax

```powershell
Remove-KeyFromStore [-StoreName] <string> [-KeyName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | 매장 이름 |
| `-KeyName` | String | ✅ | — | 1 | — | 삭제할 키 |
| `-SynchronizationKey` | String | — | — | 2 | — | 동기화 범위를 식별하는 키 |
| `-DatabasePath` | String | — | — | Named | — | 키-값 저장소 데이터 파일의 데이터베이스 경로 |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

저장소 "MyStore"에서 키 "MyKey"를 제거합니다.

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

별칭을 사용하여 키를 제거합니다.

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)
