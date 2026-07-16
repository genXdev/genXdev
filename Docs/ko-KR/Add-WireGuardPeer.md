# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | 피어의 고유 이름 |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | VPN을 통해 라우팅될 IP 범위 |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | 이 피어에 사용할 DNS 서버 |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | 피어 구성 파일이 저장되어야 하는 경로 |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | Docker 컨테이너의 이름 |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | 영구 저장을 위한 Docker 볼륨의 이름 |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | WireGuard 서비스의 포트 번호 |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | 서비스 상태 확인을 위한 최대 대기 시간(초) |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | 헬스 체크 시도 간격 (초 단위) |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | 사용할 사용자 정의 Docker 이미지 이름 |
| `-PUID` | String | — | — | 10 | `'1000'` | 컨테이너 내 권한을 위한 사용자 ID |
| `-PGID` | String | — | — | 11 | `'1000'` | 컨테이너 내 권한을 위한 그룹 ID |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | 컨테이너에 사용할 시간대 |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | 상대 구성 저장 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 서비스 초기화 시 WireGuard 창을 표시합니다. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 서비스를 초기화할 때 창 테두리 제거 |
| `-Width` | Int32 | — | — | Named | `-1` | 서비스 초기화 시 창 너비 설정 |
| `-Height` | Int32 | — | — | Named | `-1` | 서비스를 초기화할 때 창 높이를 설정합니다 |
| `-Left` | Int32 | — | — | Named | — | 서비스를 초기화할 때 창 왼쪽 위치를 설정합니다 |
| `-Right` | Int32 | — | — | Named | — | 서비스 초기화 시 창 위치를 올바르게 설정 |
| `-Bottom` | Int32 | — | — | Named | — | 서비스 초기화 시 창 하단 위치 설정 |
| `-Centered` | SwitchParameter | — | — | Named | — | 서비스 초기화 시 창을 중앙에 배치합니다. |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | 서비스를 전체 화면 모드로 시작합니다 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 서비스 초기화 후 창에 포커스 복원 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 서비스를 초기화할 때 창을 나란히 표시합니다. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 서비스를 초기화한 후 창에 포커스를 맞춥니다. |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 서비스를 초기화한 후 창을 전경으로 설정 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 서비스를 초기화한 후 창에 Escape 키를 보냅니다. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 서비스 초기화 후 키를 전송할 때 키보드 포커스 유지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 서비스 초기화 후 키를 보낼 때 Shift+Enter를 사용하세요 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 서비스 초기화 후 키를 전송할 때의 지연 시간(밀리초) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션은 WireGuard 서비스에만 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 서비스 초기화 시 세션을 지웁니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 서비스 초기화 시 세션 건너뛰기 |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | 모바일 간편 설정을 위한 QR 코드 생성 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker 초기화 건너뛰기 (상위 함수에서 이미 호출된 경우 사용) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker 컨테이너를 강제로 재구축하고 기존 데이터를 제거합니다 |

## Related Links

- [Add-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
