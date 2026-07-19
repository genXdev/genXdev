# EnsureDefaultGenXdevRefactors

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 기본 GenXdev 리팩터링 정의를 사용할 수 있도록 보장합니다.

## Description

이 함수는 GenXdev PowerShell 모듈에 대한 기본 리팩토링 정의를 생성하고 유지 관리합니다. 문서화 및 서식 지정, C# 변환, 설치 동의 프롬프트에 대한 리팩터를 설정합니다.

## Syntax

```powershell
EnsureDefaultGenXdevRefactors [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | 기존 리팩터 정의를 강제로 재생성 |

## Examples

### EnsureDefaultGenXdevRefactors

```powershell
EnsureDefaultGenXdevRefactors
```

### EnsureDefaultGenXdevRefactors -Force

```powershell
EnsureDefaultGenXdevRefactors -Force
```

## Related Links

- [EnsureDefaultGenXdevRefactors on GitHub](https://github.com/genXdev/genXdev)
