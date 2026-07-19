# Initialize-SearchPaths

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 패키지 관리를 위한 시스템 검색 경로를 초기화하고 구성합니다.

## Description

* 기본 시스템 위치, Chocolatey 경로, 개발 도구 경로 및 사용자 정의 패키지 경로를 결합하여 포괄적인 검색 경로 목록을 작성합니다.
* 이러한 통합된 경로로 시스템의 PATH 환경 변수를 업데이트합니다.

## Syntax

```powershell
Initialize-SearchPaths [[-WorkspaceFolder] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WorkspaceFolder` | String | — | — | 0 | — | Node 모듈 및 PowerShell 경로에 사용할 작업 영역 폴더 경로입니다. |

## Examples

### Example 1

```powershell
Initialize-SearchPaths
```

기본 작업 영역 폴더를 사용하여 검색 경로를 초기화합니다.

### Example 2

```powershell
Initialize-SearchPaths -WorkspaceFolder "C:\workspace"
```

특정 작업 영역 폴더를 사용하여 검색 경로를 초기화합니다.

## Related Links

- [Initialize-SearchPaths on GitHub](https://github.com/genXdev/genXdev)
