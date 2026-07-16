# Compare-ImageFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `comparefaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Compare-ImageFaces -ImagePath1 <String> -ImagePath2 <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath1` | String | ✅ | — | 0 | — | 비교할 첫 번째 이미지 파일의 로컬 경로 |
| `-ImagePath2` | String | ✅ | — | 1 | — | 비교할 두 번째 이미지 파일의 로컬 경로 |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Docker 컨테이너의 이름 |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | 영구 저장을 위한 Docker 볼륨의 이름 |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | DeepStack 서비스의 포트 번호 |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | 서비스 상태 확인을 위한 최대 대기 시간(초) |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | 헬스 체크 시도 간격 (초 단위) |
| `-ImageName` | String | — | — | 7 | — | 사용할 사용자 정의 Docker 이미지 이름 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker 초기화 건너뛰기 (상위 함수에서 이미 호출된 경우 사용) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker 컨테이너를 강제로 재구축하고 기존 데이터를 제거합니다 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU 가속 버전 사용 (NVIDIA GPU 필요) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 초기화 중에 Docker Desktop 창 표시 |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Compare-ImageFaces on GitHub](https://github.com/genXdev/genXdev)
