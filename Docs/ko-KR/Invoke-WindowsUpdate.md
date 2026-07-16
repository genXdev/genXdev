# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
