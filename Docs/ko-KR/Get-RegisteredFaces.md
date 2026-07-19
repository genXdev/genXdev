# Get-RegisteredFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> DeepStack에서 등록된 모든 얼굴 식별자 목록을 검색합니다.

## Description

이 함수는 로컬 DeepStack 얼굴 인식 API에 연결하여 등록된 모든 얼굴 식별자를 검색합니다. /v1/vision/face/list 엔드포인트를 사용하여 DeepStack 서비스를 쿼리하고 얼굴 식별자 문자열 배열을 반환합니다. 함수는 Docker 컨테이너 초기화, API 통신 및 다양한 실패 시나리오에 대한 오류 처리를 수행합니다.

## Syntax

```powershell
Get-RegisteredFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker 초기화 건너뛰기 (상위 함수에서 이미 호출된 경우 사용) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker 컨테이너를 강제로 재구축하고 기존 데이터를 제거합니다 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU 가속 버전 사용 (NVIDIA GPU 필요) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Docker 컨테이너의 이름 |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | 영구 저장을 위한 Docker 볼륨의 이름 |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | DeepStack 서비스의 포트 번호 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | 서비스 상태 확인을 위한 최대 대기 시간(초) |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | 헬스 체크 시도 간격 (초 단위) |
| `-ImageName` | String | — | — | 5 | — | 사용할 사용자 정의 Docker 이미지 이름 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 초기화 중에 Docker Desktop 창 표시 |

## Examples

### Get-RegisteredFaces

```powershell
Get-RegisteredFaces
```

이 예제는 기본 매개변수를 사용하여 등록된 모든 얼굴을 검색합니다.

### Get-RegisteredFaces -Force -UseGPU

```powershell
Get-RegisteredFaces -Force -UseGPU
```

이 예제는 컨테이너를 강제로 다시 빌드하고 GPU 가속을 사용합니다.

### Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080

```powershell
Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080
```

이 예시는 사용자 정의 컨테이너 이름과 포트 번호를 사용합니다.

### Get-RegisteredFaces | Where-Object { $_ -like "John*" }

```powershell
Get-RegisteredFaces |
Where-Object { $_ -like "John*" }
```

이 예제는 모든 얼굴을 검색하고 'John'으로 시작하는 얼굴을 필터링합니다.

## Related Links

- [Get-RegisteredFaces on GitHub](https://github.com/genXdev/genXdev)
