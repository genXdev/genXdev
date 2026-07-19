# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> AI 지원을 사용하여 PowerShell 소스 코드 파일 리팩토링을 지원합니다.

## Description

이 함수는 AI를 사용하여 PowerShell 코드 리팩토링 프로세스를 자동화합니다.
프롬프트 템플릿을 관리하고, 활성 IDE(VS Code 또는 Visual Studio)를 감지하며,
키보드 자동화를 통해 리팩토링 워크플로우를 조정합니다.
이 함수는 모듈 매니페스트(.psd1)와 모듈 스크립트(.psm1) 파일을
모두 처리할 수 있습니다.

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 모듈의 이름 |
| `-Prompt` | String | — | — | Named | — | AI 프롬프트 |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | AI 프롬프트만 편집하도록 전환 |

## Examples

### Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt

```powershell
Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt
```

### "MyModule" | Assert-ModuleDefinition

```powershell
"MyModule" | Assert-ModuleDefinition
```

## Related Links

- [Assert-ModuleDefinition on GitHub](https://github.com/genXdev/genXdev)
