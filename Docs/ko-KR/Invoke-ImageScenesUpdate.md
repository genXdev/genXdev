# Invoke-ImageScenesUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagescenedetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageScenesUpdate [[-ImageDirectories] <String[]>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-ShowWindow] [-SkipSession] [-TimeoutSecond <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | 이미지를 처리할 디렉토리 경로들 |
| `-Recurse` | SwitchParameter | — | — | Named | — | 지정된 디렉터리 및 모든 하위 디렉터리의 이미지 처리 |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | 아직 얼굴 메타데이터 파일이 없는 이미지만 처리하세요 |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 이전에 실패한 이미지 키워드 업데이트를 다시 시도합니다 |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Docker 컨테이너의 이름 |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | 영구 저장을 위한 Docker 볼륨의 이름 |
| `-ServicePort` | Int32 | — | — | Named | `5000` | DeepStack 서비스의 포트 번호 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | 서비스 상태 확인을 위한 최대 대기 시간(초) |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | 헬스 체크 시도 간격 (초 단위) |
| `-ImageName` | String | — | — | Named | — | 사용할 사용자 정의 Docker 이미지 이름 |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | 객체 탐지를 위한 최소 신뢰도 임계값 (0.0-1.0) |
| `-Language` | String | — | — | Named | — | 생성된 설명 및 키워드에 사용되는 언어 |
| `-Model` | String | — | ✅ (ByValue) | Named | — | 초기화할 모델의 이름 또는 부분 경로 🌐 *Supports wildcards* |
| `-ApiKey` | String | — | — | Named | `$null` | 요청에 사용할 API 키입니다. |
| `-TimeoutSecond` | Int32 | — | — | Named | — | 요청 시간 초과(초), 기본값은 24시간입니다 |
| `-FacesDirectory` | String | — | — | Named | — | 사람 폴더별로 정리된 얼굴 이미지가 포함된 디렉터리입니다. 지정하지 않으면 설정된 얼굴 디렉터리 환경설정을 사용합니다. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker 초기화 건너뛰기 (상위 함수에서 이미 호출된 경우 사용) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker 컨테이너를 강제로 재구축하고 기존 데이터를 제거합니다 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU 가속 버전 사용 (NVIDIA GPU 필요) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 초기화 중에 Docker 창 표시 |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru를 사용하여 콘솔에 출력하는 대신 구조화된 객체를 반환합니다. |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | faces 디렉터리의 변경 사항을 감지하고 필요시 얼굴을 다시 등록합니다 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정(예: 언어, 이미지 컬렉션 등)을 세션에 저장된 대체 설정으로 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 사용하지 마세요 |

## Related Links

- [Invoke-ImageScenesUpdate on GitHub](https://github.com/genXdev/genXdev)
