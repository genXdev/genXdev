# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 로컬 및 OneDrive 저장소를 위한 KeyValueStore 디렉터리 구조를 초기화합니다.

## Description

로컬 머신(즉시 액세스용)과 OneDrive 폴더(클라우드 동기화용)의 두 위치에 JSON 기반 키-값 저장소를 위한 디렉토리 구조를 생성합니다. cmdlet은 두 디렉토리가 모두 존재하고 올바르게 구성되었는지 확인합니다.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | 키-값 저장소 데이터 파일의 데이터베이스 경로 |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

키-값 저장소를 위한 표준 로컬 및 OneDrive 디렉터리를 생성합니다.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

지정된 사용자 경로 아래에 키-값 저장소 디렉토리를 생성합니다.

## Related Links

- [Initialize-KeyValueStores on GitHub](https://github.com/genXdev/genXdev)
