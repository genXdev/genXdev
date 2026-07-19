# Set-TaskbarAlignment

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Windows 11+ 작업 표시줄 정렬을 가운데와 왼쪽 위치 사이로 구성합니다.

## Description

Windows 11 이상 버전에서 작업 표시줄 정렬을 설정합니다. 레지스트리 키 'TaskbarAl'을 HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced에서 수정합니다. 정렬은 가운데(값 1) 또는 왼쪽(값 0)으로 설정할 수 있습니다.

## Syntax

```powershell
Set-TaskbarAlignment -Justify <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Justify` | String | ✅ | — | 0 | — | 작업 표시줄 정렬(가운데 또는 왼쪽) |

## Examples

### Set-TaskbarAlignment -Justify Left Sets the Windows 11 taskbar to left alignment

```powershell
Set-TaskbarAlignment -Justify Left
Sets the Windows 11 taskbar to left alignment
```

### Set-TaskAlign Center -WhatIf Shows what would happen if taskbar was set to center alignment

```powershell
Set-TaskAlign Center -WhatIf
Shows what would happen if taskbar was set to center alignment
```

## Related Links

- [Set-TaskbarAlignment on GitHub](https://github.com/genXdev/genXdev)
