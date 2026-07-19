# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> JSON 기반 키-값 저장소에서 값을 검색합니다.

## Description

* JSON 파일 기반 키-값 저장소에서 지정된 키에 대한 값을 검색합니다.
* 선택적 기본값과 여러 범위 간 동기화를 지원합니다.
* 자동 디렉터리 초기화 및 동기화를 제공합니다.

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

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

AppSettings에서 "Theme" 값을 검색하고, 찾을 수 없으면 "Dark"를 반환합니다.

### Example 2

```powershell
getvalue AppSettings Theme
```

'getvalue' 별칭을 사용하여 값을 검색합니다.

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
