# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> WireGuard VPN 서버의 상세 상태 정보를 가져옵니다.

## Description

이 함수는 Docker 컨테이너에서 실행 중인 WireGuard VPN 서버에 대한 상세 상태 정보를 검색합니다. 인터페이스 세부 정보, 수신 포트, 연결된 피어 및 서버 상태를 포함합니다. 서버 상태, 피어 수, 가동 시간 및 네트워크 구성 세부 정보를 포함한 WireGuard 서비스에 대한 포괄적인 정보를 제공합니다.

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker 초기화 건너뛰기 (상위 함수에서 이미 호출된 경우 사용) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker 컨테이너를 강제로 재구축하고 기존 데이터를 제거합니다 |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Docker 컨테이너의 이름 |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | 영구 저장을 위한 Docker 볼륨의 이름 |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | WireGuard 서비스의 포트 번호 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | 서비스 상태 확인을 위한 최대 대기 시간(초) |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | 헬스 체크 시도 간격 (초 단위) |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | 사용할 사용자 정의 Docker 이미지 이름 |
| `-PUID` | String | — | — | 6 | `'1000'` | 컨테이너 내 권한을 위한 사용자 ID |
| `-PGID` | String | — | — | 7 | `'1000'` | 컨테이너 내 권한을 위한 그룹 ID |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | 컨테이너에 사용할 시간대 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 컨테이너를 실행할 때 창을 표시합니다(패스스루) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 창 테두리 제거(통과) |
| `-Width` | Int32 | — | — | 9 | `-1` | 문자 또는 픽셀 단위의 창 너비 (통과) |
| `-Height` | Int32 | — | — | 10 | `-1` | 문자 또는 픽셀 단위의 창 높이 (통과) |
| `-Left` | Int32 | — | — | 11 | — | 창 왼쪽 위치(통과) |
| `-Right` | Int32 | — | — | 12 | — | 창 오른쪽 위치 (통과) |
| `-Bottom` | Int32 | — | — | 13 | — | 창 하단 위치 (통과) |
| `-Centered` | SwitchParameter | — | — | Named | — | 창을 가운데로 정렬합니다 (통과) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | 전체 화면 모드로 창 열기(통과) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 작업 후 창에 포커스 복원 (통과) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 나란히 창 표시 (직접 통과) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열린 후 창에 포커스 맞추기 (통과) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 창을 전경으로 설정 (통과) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 윈도우로 Escape 키 보내기 (통과) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 키 전송 시 키보드 포커스 유지 (통과) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 키를 보낼 때 Shift + Enter 사용 (패스스루) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | 키 전송 사이의 지연 시간(밀리초) (통과) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션 전용 모드 (통과) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션 데이터 지우기 (통과) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션 초기화 건너뛰기 (통과) |

## Examples

### Get-WireGuardStatus

```powershell
Get-WireGuardStatus
```

기본 설정으로 WireGuard 서버의 상태를 반환합니다.

### Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"

```powershell
Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"
```

Docker를 초기화하지 않고 사용자 정의 컨테이너의 상태를 검색합니다.

## Related Links

- [Get-WireGuardStatus on GitHub](https://github.com/genXdev/genXdev)
