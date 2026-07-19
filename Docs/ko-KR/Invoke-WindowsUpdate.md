# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> Windows가 최신 상태인지 확인하고 선택적으로 사용 가능한 업데이트를 설치합니다.

## Description

이 함수는 Windows 업데이트, winget 패키지 업데이트, 그리고 PowerShell 모듈 업데이트를 확인합니다. 사용 가능한 업데이트를 표시하거나 자동으로 설치할 수 있습니다. 이 함수는 Windows 업데이트를 설치하기 위해 관리자 권한이 필요하며, 업데이트에 재시작이 필요한 경우 선택적으로 시스템을 다시 시작할 수 있습니다.

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | 사용 가능한 Windows 업데이트를 자동으로 설치 |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | 업데이트에 재시작이 필요한 경우 자동으로 재부팅 |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0"` | 사용자 지정 Windows 업데이트 검색 기준 |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | 업데이트 검색에 드라이버 포함 |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | 업데이트 카테고리별로 그룹화하고 색상 출력 |
| `-NoBanner` | SwitchParameter | — | — | Named | — | Disable banner/status output |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | 재부팅 요구 사항 확인/보고 건너뛰기 |

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

사용 가능한 Windows 및 winget 업데이트를 설치하지 않고 확인합니다.

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

사용 가능한 모든 Windows 및 winget 업데이트를 자동으로 설치합니다.

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

별칭을 사용하여 모든 업데이트를 설치하고 필요한 경우 자동으로 재부팅합니다.

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

더 나은 구성을 위해 카테고리별로 그룹화된 사용 가능한 업데이트를 표시합니다.

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

사용자 정의 검색 조건으로 드라이버를 포함한 업데이트를 확인합니다.

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
