# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 키-값 저장소의 파일 경로를 가져옵니다.

## Description

* 동기화 키, 저장소 이름 및 기본 디렉토리를 기반으로 키-값 저장소의 파일 경로를 구성합니다.

## Syntax

```powershell
Get-KeyValueStorePath [-SynchronizationKey] <string> [-StoreName] <string> [-BasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | 저장소를 식별하는 데 사용되는 동기화 키 |
| `-StoreName` | String | ✅ | — | 1 | — | 키-값 저장소의 이름 |
| `-BasePath` | String | — | — | Named | — | 파일 저장을 위한 기본 디렉터리 경로 |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

로컬 키-값 저장소의 경로를 가져옵니다.

## Related Links

- [Get-KeyValueStorePath on GitHub](https://github.com/genXdev/genXdev)
