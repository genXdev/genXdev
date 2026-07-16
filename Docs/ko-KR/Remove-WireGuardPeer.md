# Remove-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-WireGuardPeer -PeerName <String> [-Bottom] [-Centered] [-ClearSession] [-ContainerName <String>] [-FocusWindow] [-Force] [-Fullscreen] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-Height <Int32>] [-ImageName <String>] [-Left] [-NoBorders] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-ServicePort <Int32>] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-TimeZone <String>] [-VolumeName <String>] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | 제거할 피어의 이름 |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Docker 컨테이너의 이름 |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | 영구 저장을 위한 Docker 볼륨의 이름 |
| `-ServicePort` | Int32 | — | — | Named | `51839` | WireGuard 서비스의 포트 번호 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | 서비스 상태 확인을 위한 최대 대기 시간(초) |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | 헬스 체크 시도 간격 (초 단위) |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | 사용할 사용자 정의 Docker 이미지 이름 |
| `-PUID` | String | — | — | Named | `'1000'` | 컨테이너 내 권한을 위한 사용자 ID |
| `-PGID` | String | — | — | Named | `'1000'` | 컨테이너 내 권한을 위한 그룹 ID |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | 컨테이너에 사용할 시간대 |
| `-Force` | SwitchParameter | — | — | Named | — | 확인 없이 강제 제거 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 부모 함수에 의해 호출될 때 Docker 초기화 건너뛰기 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 초기화 중에 Docker Desktop 창 표시 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 창의 테두리를 제거합니다 |
| `-Width` | Int32 | — | — | Named | `-1` | 창의 초기 너비 |
| `-Height` | Int32 | — | — | Named | `-1` | 창문의 초기 높이 |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | 화면 하단에 창을 배치합니다 |
| `-Centered` | SwitchParameter | — | — | Named | — | 창을 화면 중앙에 배치합니다. |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximize the window |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell 창 포커스 복원 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Powershell과 다른 모니터에서 창을 전체 화면으로 설정하거나, 같은 모니터에서 Powershell과 나란히 설정합니다. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열린 후 창에 포커스 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 창을 전경으로 설정 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자와 수정자를 이스케이프 처리하세요 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 키 입력 시 대상 창에 키보드 포커스 유지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 키를 보낼 때 Enter 대신 Shift+Enter를 사용하세요 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 키를 전송할 때 입력 문자열 간의 지연 시간(밀리초) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Remove-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
