# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> DeepStack 얼굴 인식 시스템에서 등록된 모든 얼굴을 제거합니다.

## Description

이 함수는 데이터 저장소 디렉토리에서 모든 얼굴 파일을 제거하고 서비스를 다시 시작하여 빈 얼굴 레지스트리를 다시 로드함으로써 DeepStack 얼굴 인식 데이터베이스에서 등록된 모든 얼굴을 지웁니다. 이는 되돌릴 수 없는 파괴 작업이며 등록된 모든 얼굴 데이터를 영구적으로 제거합니다.

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | 등록된 모든 얼굴을 제거할 때 확인 프롬프트 무시 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker Desktop 초기화 건너뛰기 (상위 함수에서 이미 호출된 경우 사용) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Docker 컨테이너 강제 재구축 및 기존 데이터 삭제 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU 가속 버전 사용 (NVIDIA GPU 필요) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Docker 컨테이너의 이름 |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | 영구 저장을 위한 Docker 볼륨의 이름 |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | DeepStack 서비스의 포트 번호 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | 서비스 상태 확인을 기다리는 최대 시간(초) |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | 상태 확인 시도 간격(초) |
| `-ImageName` | String | — | — | 5 | — | 사용할 사용자 정의 Docker 이미지 이름 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 초기화 중 Docker Desktop 창 표시 |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

등록된 모든 얼굴을 확인 메시지와 함께 제거합니다.

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

확인 메시지 없이 등록된 모든 얼굴을 제거합니다.

### unregall -Force

```powershell
unregall -Force
```

별칭을 사용하여 확인 없이 모든 얼굴을 제거합니다.

## Parameter Details

### `-Force`

> 등록된 모든 얼굴을 제거할 때 확인 프롬프트 무시

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Docker Desktop 초기화 건너뛰기 (상위 함수에서 이미 호출된 경우 사용)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceRebuild`

> Docker 컨테이너 강제 재구축 및 기존 데이터 삭제

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseGPU`

> GPU 가속 버전 사용 (NVIDIA GPU 필요)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Docker 컨테이너의 이름

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'deepstack_face_recognition'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> 영구 저장을 위한 Docker 볼륨의 이름

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'deepstack_face_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> DeepStack 서비스의 포트 번호

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `5000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> 서비스 상태 확인을 기다리는 최대 시간(초)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> 상태 확인 시도 간격(초)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> 사용할 사용자 정의 Docker 이미지 이름

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> 초기화 중 Docker Desktop 창 표시

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Register-Face.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Unregister-Face.md)
