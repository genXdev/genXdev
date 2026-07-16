# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
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
| `-ShowWindow` | SwitchParameter | — | — | Named | — | WireGuard 실행 시 Docker 창 표시 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Docker 창의 창 테두리 제거 |
| `-Width` | Int32 | — | — | 9 | `-1` | Docker 창의 너비 설정 |
| `-Height` | Int32 | — | — | 10 | `-1` | Docker 창의 높이 설정 |
| `-Left` | Int32 | — | — | 11 | — | 도커 창의 왼쪽 위치 설정 |
| `-Right` | Int32 | — | — | 12 | — | Docker 창의 오른쪽 위치를 설정합니다 |
| `-Bottom` | Int32 | — | — | 13 | — | Docker 창의 하단 위치 설정 |
| `-Centered` | SwitchParameter | — | — | Named | — | Docker 창을 화면 중앙에 배치 |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Docker 창을 전체 화면 모드로 실행 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Docker 실행 후 이전 창으로 포커스 복원 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Show Docker window side by side with other windows |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 실행 후 Docker 창에 포커스 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the Docker window as foreground window |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 시작 후 Docker 창에 Escape 키 보내기 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 런치 후 Docker 창에 키보드 포커스 유지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Docker 창에 키를 보낼 때는 Shift+Enter를 사용하세요 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Docker 창에 키를 보내는 사이의 지연 시간(밀리초) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Docker 창에만 세션 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Docker 창의 세션을 실행 전에 지우십시오 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Docker 윈도우 세션 건너뛰기 |

## Related Links

- [Get-WireGuardPeers on GitHub](https://github.com/genXdev/genXdev)
