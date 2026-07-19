# EnsureVSCodeInstallation

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Visual Studio Code를 설치하고 추천 확장 프로그램으로 구성합니다.

## Description

Visual Studio Code가 설치되어 있는지 확인하고, 설치되어 있지 않으면 WinGet을 사용하여 설치합니다.
작업 영역 구성에서 사용자 설정, 키 바인딩을 구성하고 권장 확장 프로그램을 설치합니다.
또한 PSGallery를 신뢰할 수 있는 리포지토리로 설정하고 특정 확장 프로그램 설정을 구성합니다.

## Syntax

```powershell
EnsureVSCodeInstallation [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureVSCodeInstallation

```powershell
EnsureVSCodeInstallation
```

## Related Links

- [EnsureVSCodeInstallation on GitHub](https://github.com/genXdev/genXdev)
