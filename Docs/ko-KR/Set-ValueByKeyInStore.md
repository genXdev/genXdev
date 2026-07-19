# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> JSON 파일 기반 저장소에서 키-값 쌍을 관리합니다.

## Description

JSON 파일을 사용하여 키-값 쌍의 영구 저장소를 제공합니다. 새 항목 삽입과 기존 항목 업데이트를 모두 처리합니다. 로컬이 아닌 저장소의 경우 선택적 동기화를 지원합니다. 이 함수는 동기화 키, 저장소 이름 및 키 이름의 조합을 기반으로 새 키-값 쌍을 삽입하거나 기존 쌍을 업데이트하는 upsert 작업을 구현합니다.

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

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

ConfigStore에서 API 엔드포인트를 설정하십시오.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

별칭을 사용하여 값을 설정합니다.

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
