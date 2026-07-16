# Get-WireGuardPeerQRCode

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardPeerQRCode -PeerName <String> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-ServicePort <Int32>] [-TimeZone <String>] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | QR 코드를 생성할 피어의 이름 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker 초기화 건너뛰기 (상위 함수에서 이미 호출된 경우 사용) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker 컨테이너를 강제로 재구축하고 기존 데이터를 제거합니다 |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Docker 컨테이너의 이름 |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | 영구 저장을 위한 Docker 볼륨의 이름 |
| `-ServicePort` | Int32 | — | — | Named | `51839` | WireGuard 서비스의 포트 번호 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | 서비스 상태 확인을 위한 최대 대기 시간(초) |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | 헬스 체크 시도 간격 (초 단위) |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | 사용할 사용자 정의 Docker 이미지 이름 |
| `-PUID` | String | — | — | Named | `'1000'` | 컨테이너 내 권한을 위한 사용자 ID |
| `-PGID` | String | — | — | Named | `'1000'` | 컨테이너 내 권한을 위한 그룹 ID |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | 컨테이너에 사용할 시간대 |

## Related Links

- [Get-WireGuardPeerQRCode on GitHub](https://github.com/genXdev/genXdev)
