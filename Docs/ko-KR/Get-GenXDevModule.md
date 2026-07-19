# Get-GenXDevModule

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 지정된 경로에서 모든 GenXDev 모듈을 검색합니다.

## Description

이 함수는 디렉터리 구조를 검색하여 GenXdev 모듈을 찾되, 이름에 '.local'이 포함된 모듈은 제외합니다. 발견된 각 유효한 모듈에 대해 유효한 모듈 매니페스트(.psd1) 파일이 포함된 가장 최신 버전 폴더(1.x)를 반환합니다.

## Syntax

```powershell
Get-GenXDevModule [[-Path] <String>] [-IncludeLocal] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | — | — | 0 | — | GenXdev 모듈을 검색할 루트 경로 |
| `-IncludeLocal` | SwitchParameter | — | — | Named | — | The `-IncludeLocal` parameter. |

## Examples

### Get-GenXDevModule -Path "C:\PowerShell\Modules"

```powershell
Get-GenXDevModule -Path "C:\PowerShell\Modules"
```

### Get-GenXDevModule "C:\PowerShell\Modules"

```powershell
Get-GenXDevModule "C:\PowerShell\Modules"
```

## Related Links

- [Get-GenXDevModule on GitHub](https://github.com/genXdev/genXdev)
