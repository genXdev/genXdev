# Compare-ImageFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `comparefaces

## Synopsis

> DeepStack를 사용하여 두 개의 다른 이미지에서 얼굴을 비교하고 유사성을 반환합니다.

## Description

이 함수는 두 이미지 간의 얼굴을 비교하여 유사도를 결정합니다. 구성 가능한 포트에서 실행되는 로컬 DeepStack 얼굴 매칭 API를 사용하며 0.0에서 1.0 사이의 유사도 점수를 반환합니다. 이는 일반적으로 신분증 사진과 사람의 실제 사진을 매칭하거나 두 사진이 동일 인물인지 확인하는 데 사용됩니다.

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

## Examples

### Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `                    -ImagePath2 "C:\Users\YourName\photo2.jpg"

```powershell
Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `
                   -ImagePath2 "C:\Users\YourName\photo2.jpg"
```

기본 설정을 사용하여 두 이미지 간의 얼굴을 비교합니다.

### comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU

```powershell
comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU
```

GPU 가속을 사용하여 얼굴을 비교하고 신원을 확인합니다. 별칭 및 위치 매개변수를 지원합니다.

## Outputs

- `Collections.Hashtable`

## Related Links

- [Compare-ImageFaces on GitHub](https://github.com/genXdev/genXdev)
