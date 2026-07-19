# Remove-AllItems

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `sdel

## Synopsis

> 고급 오류 처리를 통해 디렉터리의 모든 콘텐츠를 재귀적으로 제거합니다.

## Description

지정된 디렉토리 내의 모든 파일과 하위 디렉토리를 역순 삭제 전략을 사용하여 안전하게 제거하여 깊은 경로를 처리합니다. WhatIf 지원, 자세한 로깅 및 잠긴 파일을 위한 대체 삭제 방법을 포함합니다.

## Syntax

```powershell
Remove-AllItems -Path <String> [-DeleteFolder] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 정리할 디렉터리 경로 |
| `-DeleteFolder` | SwitchParameter | — | — | Named | — | Also delete the root folder supplied with the Path parameter |

## Examples

### Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose

```powershell
Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose
```

### sdel ".\temp" -DeleteFolder

```powershell
sdel ".\temp" -DeleteFolder
```

## Related Links

- [Remove-AllItems on GitHub](https://github.com/genXdev/genXdev)
