# Assert-RefactorFile

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 지정된 IDE와 AI 프롬프트 템플릿을 사용하여 소스 파일에 대한 리팩토링 작업을 실행합니다.

## Description

이 함수는 리팩터링 정의를 기반으로 AI 프롬프트를 준비하고, 적절한 IDE(VS Code 또는 Visual Studio)를 감지하거나 선택한 후, 준비된 프롬프트로 대상 파일을 열어 리팩터링 프로세스를 자동화합니다. 이 함수는 프롬프트 템플릿 처리, IDE 감지, 리팩터링 워크플로우 자동화를 처리합니다.

## Syntax

```powershell
Assert-RefactorFile -Path <String> [[-RefactorSettings] <GenXdev.Helpers.RefactorSettings>] [-AllowLongRunningTests] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | 개선할 소스 파일의 경로 |
| `-RefactorSettings` | GenXdev.Helpers.RefactorSettings | — | — | 1 | `[GenXdev.Helpers.RefactorSettings]::new()` | 리팩터 정의에는 설정과 프롬프트 템플릿이 포함되어 있습니다. |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | The `-AllowLongRunningTests` parameter. |

## Examples

### $refactorDef = Get-RefactorDefinition -Type "Documentation" Assert-RefactorFile -RefactorDefinition $refactorDef -Path "MyScript.ps1"

```powershell
$refactorDef = Get-RefactorDefinition -Type "Documentation"
Assert-RefactorFile -RefactorDefinition $refactorDef -Path "MyScript.ps1"
```

### Assert-RefactorFile -RefactorDefinition $refactorDef -Path ".\Functions\Test.ps1"

```powershell
Assert-RefactorFile -RefactorDefinition $refactorDef -Path ".\Functions\Test.ps1"
```

## Related Links

- [Assert-RefactorFile on GitHub](https://github.com/genXdev/genXdev)
