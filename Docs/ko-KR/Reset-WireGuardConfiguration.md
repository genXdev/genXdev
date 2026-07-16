# Reset-WireGuardConfiguration

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Reset-WireGuardConfiguration on GitHub](https://github.com/genXdev/genXdev)
