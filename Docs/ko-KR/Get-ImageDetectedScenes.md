# Get-ImageDetectedScenes

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> DeepStack를 사용하여 이미지를 365개 장면 카테고리 중 하나로 분류합니다.

## Description

이 함수는 이미지 파일을 분석하여 365개의 다양한 장면 카테고리 중 하나로 분류합니다. 구성 가능한 포트에서 실행되는 로컬 DeepStack 장면 인식 API를 사용하며, 신뢰도 점수와 함께 장면 분류 결과를 반환합니다. 이 함수는 GPU 가속 및 Docker 컨테이너 관리를 지원합니다.

## Syntax

```powershell
Get-ImageDetectedScenes -ImagePath <String> [[-ConfidenceThreshold] <Double>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [-Force] [-ImageName <String>] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 분석할 이미지 파일의 로컬 경로 |
| `-ConfidenceThreshold` | Double | — | — | 1 | `0.0` | 최소 신뢰도 임계값(0.0-1.0). 기본값은 0.0입니다. |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Docker 컨테이너의 이름 |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | 영구 저장을 위한 Docker 볼륨의 이름 |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | DeepStack 서비스의 포트 번호 |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | 서비스 상태 확인을 위한 최대 대기 시간(초) |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | 헬스 체크 시도 간격 (초 단위) |
| `-ImageName` | String | — | — | Named | — | 사용할 사용자 정의 Docker 이미지 이름 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker 초기화 건너뛰기 (상위 함수에서 이미 호출된 경우 사용) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker 컨테이너를 강제로 재구축하고 기존 데이터를 제거합니다 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU 가속 버전 사용 (NVIDIA GPU 필요) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 초기화 중에 Docker Desktop 창 표시 |

## Examples

### Get-ImageDetectedScenes -ImagePath "C:\Users\YourName\landscape.jpg" Classifies the scene in the specified image using default settings.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\Users\YourName\landscape.jpg"
Classifies the scene in the specified image using default settings.
```

### Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -ConfidenceThreshold 0.6 -UseGPU Classifies the scene using GPU acceleration and only accepts results with confidence >= 60%.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -ConfidenceThreshold 0.6 -UseGPU
Classifies the scene using GPU acceleration and only accepts results with confidence >= 60%.
```

### Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -UseGPU Classifies the scene using GPU acceleration for faster processing.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -UseGPU
Classifies the scene using GPU acceleration for faster processing.
```

### "C:\Users\YourName\beach.jpg" | Get-ImageDetectedScenes Pipeline support for processing multiple images.

```powershell
"C:\Users\YourName\beach.jpg" | Get-ImageDetectedScenes
Pipeline support for processing multiple images.
```

## Related Links

- [Get-ImageDetectedScenes on GitHub](https://github.com/genXdev/genXdev)
