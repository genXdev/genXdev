# Import-GenXdevModules

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `reloadgenxdev

## Synopsis

> 모든 GenXdev PowerShell 모듈을 전역 범위로 가져옵니다.

## Description

상위 디렉터리에서 GenXdev 모듈을 검색하여 각각을 전역 스코프로 가져옵니다. 위치 스택 관리를 통해 작업 디렉터리를 보존하고, 성공 및 실패한 가져오기에 대한 시각적 피드백을 제공합니다. 가져오기 과정 중 함수 개수 변화를 추적합니다.

## Syntax

```powershell
Import-GenXdevModules [-DebugFailedModuleDefinitions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DebugFailedModuleDefinitions` | SwitchParameter | — | — | Named | — | 실패한 모듈 정의에 대한 디버그 출력 활성화 |

## Examples

### Import-GenXdevModules -DebugFailedModuleDefinitions Imports modules with debug output for failures

```powershell
Import-GenXdevModules -DebugFailedModuleDefinitions
Imports modules with debug output for failures
```

### reloadgenxdev Imports all modules using the alias

```powershell
reloadgenxdev
Imports all modules using the alias
```

## Related Links

- [Import-GenXdevModules on GitHub](https://github.com/genXdev/genXdev)
