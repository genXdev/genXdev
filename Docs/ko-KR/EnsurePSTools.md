# EnsurePSTools

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Sysinternals 도구(PSTools)가 설치 및 사용 가능한지 확인합니다.

## Description

Sysinternals 도구(예: handle.exe)가 시스템에 설치되어 있고 올바르게 구성되었는지 확인합니다. 발견되지 않으면 WinGet을 사용하여 Sysinternals Suite를 설치하고 전체 설치 프로세스를 자동으로 처리합니다.

## Syntax

```powershell
EnsurePSTools [[-PSExeName] <String>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Sysinternals 도구 강제 재설치 |
| `-PSExeName` | String | — | — | 0 | `'handle.exe'` | 설치를 확인할 실행 파일 이름 |

## Examples

### EnsurePSTools Ensures Sysinternals tools are installed and properly configured.

```powershell
EnsurePSTools
Ensures Sysinternals tools are installed and properly configured.
```

### EnsurePSTools -Force -PSExeName 'procexp.exe' Forces reinstallation of Sysinternals tools and uses procexp.exe to verify installation. ##############################################################################

```powershell
EnsurePSTools -Force -PSExeName 'procexp.exe'
Forces reinstallation of Sysinternals tools and uses procexp.exe to verify
installation.
##############################################################################
```

## Related Links

- [EnsurePSTools on GitHub](https://github.com/genXdev/genXdev)
