# Invoke-ImageEnhancement

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `enhanceimage

## Synopsis

> DeepStack를 사용하여 이미지를 4배 확대하고 품질을 향상시킵니다.

## Description

이 함수는 원본 이미지의 너비와 높이를 4배로 확대하면서 이미지 품질을 향상시킵니다. 구성 가능한 포트에서 실행되는 로컬 DeepStack 이미지 향상 API를 사용하며, 향상된 이미지를 base64 데이터로 반환하거나 파일로 저장합니다. 이 함수는 GPU 가속 및 Docker 컨테이너 관리를 지원합니다.

## Syntax

```powershell
Invoke-ImageEnhancement -ImagePath <String> [[-OutputPath] <String>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 개선할 이미지 파일의 로컬 경로 |
| `-OutputPath` | String | — | — | 1 | — | 향상된 이미지를 저장할 선택적 경로 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker 초기화 건너뛰기 (상위 함수에서 이미 호출된 경우 사용) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker 컨테이너를 강제로 재구축하고 기존 데이터를 제거합니다 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU 가속 버전 사용 (NVIDIA GPU 필요) |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Docker 컨테이너의 이름 |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | 영구 저장을 위한 Docker 볼륨의 이름 |
| `-ServicePort` | Int32 | — | — | Named | `5000` | DeepStack 서비스의 포트 번호 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | 서비스 상태 확인을 위한 최대 대기 시간(초) |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | 헬스 체크 시도 간격 (초 단위) |
| `-ImageName` | String | — | — | Named | — | 사용할 사용자 정의 Docker 이미지 이름 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 초기화 중에 Docker Desktop 창 표시 |

## Examples

### Invoke-ImageEnhancement -ImagePath "C:\Users\YourName\small_photo.jpg" `                         -OutputPath "C:\Users\YourName\enhanced_photo.jpg" Enhances the image and saves it to the specified output path.

```powershell
Invoke-ImageEnhancement -ImagePath "C:\Users\YourName\small_photo.jpg" `
                        -OutputPath "C:\Users\YourName\enhanced_photo.jpg"
Enhances the image and saves it to the specified output path.
```

### enhanceimage "C:\photos\low_quality.jpg" Enhances the image and returns the base64 data and dimensions using alias.

```powershell
enhanceimage "C:\photos\low_quality.jpg"
Enhances the image and returns the base64 data and dimensions using alias.
```

### Invoke-ImageEnhancement -ImagePath "C:\photos\image.jpg" -UseGPU Enhances the image using GPU acceleration for faster processing.

```powershell
Invoke-ImageEnhancement -ImagePath "C:\photos\image.jpg" -UseGPU
Enhances the image using GPU acceleration for faster processing.
```

## Related Links

- [Invoke-ImageEnhancement on GitHub](https://github.com/genXdev/genXdev)
