# Open-MediaFile

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `vlcmedia, `media, `findmedia

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | 검색할 파일명 또는 패턴. 기본값은 '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Search across all available drives |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | 하위 디렉터리로 재귀하지 않음 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | 디렉터리 탐색 중 심볼릭 링크 및 정션을 따릅니다. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 항목이 발견되지 않을 때 상대 검색을 위해 트리 상단으로 계속 검색하는 최대 재귀 깊이입니다. 0은 비활성화를 의미합니다. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최대 파일 크기(바이트)입니다. 0은 무제한을 의미합니다. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최소 파일 크기(바이트). 0은 최소값 없음을 의미합니다. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | 이 날짜/시간(UTC) 이후에 수정된 파일만 포함하십시오. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | 이 날짜/시간(UTC) 이전에 수정된 파일만 포함하세요. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | 건너뛸 파일 특성 (예: 시스템, 숨김, 또는 없음). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | 파이프라인 입력에서 검색할 파일 이름 또는 패턴입니다. 기본값은 "*"입니다. 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | 미디어 파일을 저장할 재생목록 경로입니다. 지정하지 않으면 재생목록이 임시 디렉터리에 저장됩니다. |
| `-Width` | Int32 | — | — | 1 | `-1` | 창의 초기 너비 |
| `-Height` | Int32 | — | — | 2 | `-1` | 창문의 초기 높이 |
| `-X` | Int32 | — | — | 3 | `-999999` | 창의 초기 X 위치 |
| `-Y` | Int32 | — | — | 4 | `-999999` | 창의 초기 Y 위치 |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | VLC 플레이어 창으로 보낼 키 입력, cmdlet GenXdev\Send-Key에 대한 설명서 참조 |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | 디렉터리 작업의 최대 병렬 처리 수준 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | 선택사항: 취소 제한 시간(초) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | VLC에 키를 보낼 때 제어 문자와 수정자를 이스케이프 처리하십시오. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | VLC에 키를 보낼 때 Enter 대신 Shift+Enter를 사용하세요 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | VLC에 키를 보낼 때 서로 다른 입력 문자열 사이의 지연 시간(밀리초) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 키 입력 후 VLC 창에 키보드 포커스 유지 |
| `-Monitor` | Int32 | — | — | Named | `-2` | 사용할 모니터, 0 = 기본, -1은 무시 |
| `-AspectRatio` | String | — | — | Named | — | 원본 종횡비 |
| `-Crop` | String | — | — | Named | — | 비디오 자르기 |
| `-SubtitleFile` | String | — | — | Named | — | 자막 파일 사용 |
| `-SubtitleScale` | Int32 | — | — | Named | — | 자막 텍스트 크기 조정 비율 |
| `-SubtitleLanguage` | String | — | — | Named | — | 자막 언어 |
| `-AudioLanguage` | String | — | — | Named | — | 오디오 언어 |
| `-PreferredAudioLanguage` | String | — | — | Named | — | 선호하는 오디오 언어 |
| `-HttpProxy` | String | — | — | Named | — | HTTP 프록시 |
| `-HttpProxyPassword` | String | — | — | Named | — | HTTP 프록시 비밀번호 |
| `-VerbosityLevel` | Int32 | — | — | Named | — | Verbosity level |
| `-SubdirectoryBehavior` | String | — | — | Named | — | 하위 디렉터리 동작 |
| `-IgnoredExtensions` | String | — | — | Named | — | 무시된 확장자 |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | VLC 실행 파일 경로 |
| `-ReplayGainMode` | String | — | — | Named | — | 리플레이 게인 모드 |
| `-ReplayGainPreamp` | Single | — | — | Named | — | 리플레이 게인 프리앰프 |
| `-ForceDolbySurround` | String | — | — | Named | — | 돌비 서라운드 강제 감지 |
| `-AudioFilters` | String[] | — | — | Named | — | 오디오 필터 |
| `-Visualization` | String | — | — | Named | — | 오디오 시각화 |
| `-Deinterlace` | String | — | — | Named | — | 디인터레이스 |
| `-DeinterlaceMode` | String | — | — | Named | — | 디인터레이스 모드 |
| `-VideoFilters` | String[] | — | — | Named | — | 비디오 필터 모듈 |
| `-VideoFilterModules` | String[] | — | — | Named | — | 비디오 필터 모듈 |
| `-Modules` | String[] | — | — | Named | — | 모듈 |
| `-AudioFilterModules` | String[] | — | — | Named | — | 오디오 필터 모듈 |
| `-AudioVisualization` | String | — | — | Named | — | 오디오 시각화 모드 |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | 선호하는 자막 언어 |
| `-IgnoredFileExtensions` | String | — | — | Named | — | 무시된 파일 확장자 |
| `-Arguments` | String | — | — | Named | — | 추가 인수 |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | 검색 결과에 대체 데이터 스트림 포함 |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | 재생 목록에 비디오 파일만 포함하세요 |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | 재생 목록에 오디오 파일만 포함하세요 |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | 플레이리스트에 사진만 포함하세요 |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Additionally include videos in the playlist |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Additionally include audio files in the playlist |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Additionally include pictures in the playlist |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 창의 테두리를 제거합니다 |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Place window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | 화면 하단에 창을 배치합니다 |
| `-Centered` | SwitchParameter | — | — | Named | — | 창을 화면 중앙에 배치합니다. |
| `-FullScreen` | SwitchParameter | — | — | Named | — | F11을 창에 보냅니다 |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | 항상 위에 |
| `-Random` | SwitchParameter | — | — | Named | — | 무작위로 파일을 영원히 재생 |
| `-Loop` | SwitchParameter | — | — | Named | — | Repeat all

===== CRITICAL JSON OUTPUT REQUIREMENT =====
You MUST respond with ONLY valid json. NO other text is allowed.
Do NOT include any explanation, commentary, or text before or after the json.
Your response must be parseable json that conforms EXACTLY to this schema:
{
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
}

Example response format: {"response":"your actual response here"}
===== END REQUIREMENT ===== |
| `-Repeat` | SwitchParameter | — | — | Named | — | 현재 항목 반복 |
| `-StartPaused` | SwitchParameter | — | — | Named | — | 시작 일시 중지 |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | 재생하고 종료 |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | 오디오 비활성화 |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | 자막 비활성화 |
| `-AutoScale` | SwitchParameter | — | — | Named | — | 비디오 자동 크기 조절 |
| `-HighPriority` | SwitchParameter | — | — | Named | — | 프로세스의 우선순위를 높입니다. |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | 오디오 타임 스트레칭 활성화 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 새로운 VLC 미디어 플레이어 인스턴스 열기 |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | 비디오 배경화면 모드 활성화 |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | 오디오 시간 늘이기 활성화 |
| `-Close` | SwitchParameter | — | — | Named | — | VLC 미디어 플레이어 창을 닫으세요 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Powershell과 다른 모니터에서 창을 전체 화면으로 설정하거나, 같은 모니터에서 Powershell과 나란히 설정합니다. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | VLC 창을 연 후 포커스하기 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 VLC 창을 전경으로 설정 |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximize the window |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | VLC를 연 후 PowerShell 창의 포커스를 복원합니다. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | 파일 및 디렉터리의 대/소문자 구분을 가져오거나 설정합니다. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 디렉터리 탐색의 최대 재귀 깊이입니다. 0은 무제한을 의미합니다. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | 와일드카드 패턴(예: *.tmp, *\bin\*)과 일치하는 파일 또는 디렉토리를 제외합니다. |
| `-PassThru` | SwitchParameter | — | — | Named | — | 검색으로 찾은 파일들을 반환합니다 |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | VLC를 열지 않고 검색으로 찾은 파일 반환 |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | 각 프로세스에 대한 창 도우미를 반환합니다 |

## Related Links

- [Open-MediaFile on GitHub](https://github.com/genXdev/genXdev)
