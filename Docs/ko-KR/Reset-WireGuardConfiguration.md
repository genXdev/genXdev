# Reset-WireGuardConfiguration

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> WireGuard VPN 서버 구성을 재설정하여 모든 피어를 제거합니다.

## Description

이 함수는 Docker 컨테이너에서 실행 중인 WireGuard VPN 서버 구성을 재설정하여 모든 피어를 제거하고 새로운 서버 구성을 생성합니다. 이는 되돌릴 수 없는 파괴적인 작업으로, 모든 피어 구성이 영구적으로 삭제됩니다. 함수는 WireGuard 서비스를 중지하고, 모든 피어 디렉토리와 구성 파일을 제거하며, 서버 키를 삭제하고, 컨테이너를 다시 시작한 후 새 구성이 생성되었는지 확인합니다.

## Syntax

```powershell
Reset-WireGuardConfiguration [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Force] [-NoDockerInitialize] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Docker 컨테이너의 이름 |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | 영구 저장을 위한 Docker 볼륨의 이름 |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | WireGuard 서비스의 포트 번호 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | 서비스 상태 확인을 위한 최대 대기 시간(초) |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | 헬스 체크 시도 간격 (초 단위) |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | 사용할 사용자 정의 Docker 이미지 이름 |
| `-PUID` | String | — | — | 6 | `'1000'` | 컨테이너 내 권한을 위한 사용자 ID |
| `-PGID` | String | — | — | 7 | `'1000'` | 컨테이너 내 권한을 위한 그룹 ID |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | 컨테이너에 사용할 시간대 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker 초기화 건너뛰기 (상위 함수에서 이미 호출된 경우 사용) |
| `-Force` | SwitchParameter | — | — | Named | — | 확인 없이 강제 재시작 |

## Examples

### Reset-WireGuardConfiguration

```powershell
Reset-WireGuardConfiguration
```

기본 설정으로 WireGuard 구성을 재설정하며, 진행하기 전에 확인을 요청합니다.

### Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"

```powershell
Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"
```

사용자 정의 컨테이너 이름에 대한 WireGuard 구성을 확인 프롬프트 없이 재설정합니다.

## Related Links

- [Reset-WireGuardConfiguration on GitHub](https://github.com/genXdev/genXdev)
