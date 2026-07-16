# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | 사람 폴더별로 정리된 얼굴 이미지가 포함된 디렉터리입니다. 지정하지 않으면 설정된 얼굴 디렉터리 환경설정을 사용합니다. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | 실패한 등록에 대한 최대 재시도 횟수 |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Docker 컨테이너의 이름 |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | 영구 저장을 위한 Docker 볼륨의 이름 |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | DeepStack 서비스의 포트 번호 |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | 서비스 상태 확인을 위한 최대 대기 시간(초) |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | 헬스 체크 시도 간격 (초 단위) |
| `-ImageName` | String | — | — | 7 | — | 사용할 사용자 정의 Docker 이미지 이름 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker Desktop 초기화 건너뛰기 (상위 함수에서 이미 호출한 경우 사용) |
| `-Force` | SwitchParameter | — | — | Named | — | 모든 얼굴 강제 재등록 |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | 얼굴을 찾을 수 없어 처리하지 못한 실패한 이미지 파일의 이름을 변경합니다 |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Docker 컨테이너를 강제로 재구축하고 기존 데이터를 제거합니다 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU 가속 버전 사용 (NVIDIA GPU 필요) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 초기화 중에 Docker Desktop 창 표시 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 지정된 경우에만 세션을 사용하십시오 (환경 설정 데이터베이스에 변경 사항을 유지하지 마십시오). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 지정된 경우, 사용 전에 현재 세션 환경설정을 초기화하십시오. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 알려진 얼굴 루트 경로에 사용할 환경 설정 데이터베이스의 경로입니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 지정된 경우, 알려진 얼굴 루트 경로를 검색할 때 세션 로직을 건너뜁니다. |

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)
