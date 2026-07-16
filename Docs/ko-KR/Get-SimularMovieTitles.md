# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | 분석할 영화 제목 배열 |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | 각 결과에 대해 IMDB 검색을 엽니다. |
| `-Language` | String | — | — | Named | — | IMDB 검색 또는 브라우저 세션을 위한 언어 |
| `-Monitor` | Int32 | — | — | Named | `-1` | 브라우저 창 배치를 위한 모니터 인덱스 또는 이름 |
| `-Width` | Int32 | — | — | Named | `-1` | 브라우저 창의 너비(픽셀) |
| `-Height` | Int32 | — | — | Named | `-1` | 브라우저 창의 높이(픽셀 단위) |
| `-AcceptLang` | String | — | — | Named | — | 브라우저 세션의 Accept-Language HTTP 헤더 |
| `-Private` | SwitchParameter | — | — | Named | — | 시크릿/비공개 모드로 브라우저 열기 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 브라우저 세션에 Google Chrome을 사용하세요 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 브라우저 세션에 Chromium을 사용하세요 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 브라우저 세션에 Mozilla Firefox를 사용하세요 |
| `-Left` | Int32 | — | — | Named | — | 브라우저 창의 왼쪽 위치 (픽셀 단위) |
| `-Right` | Int32 | — | — | Named | — | 브라우저 창의 오른쪽 위치 (픽셀 단위) |
| `-Bottom` | Int32 | — | — | Named | — | 브라우저 창의 하단 위치(픽셀 단위) |
| `-Centered` | SwitchParameter | — | — | Named | — | 화면 중앙에 브라우저 창 열기 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 브라우저를 전체 화면 모드로 열기 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 애플리케이션 모드로 브라우저 열기 (최소 UI) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 세션에 대한 브라우저 확장 프로그램 비활성화 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable popup blocker in browser session |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창에 포커스 설정 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 브라우저 창을 연 후 전경으로 설정 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 브라우저 창을 연 후 최대화 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 브라우저를 닫은 후 이전 창으로 포커스 복원 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 각 IMDB 결과를 새 브라우저 창에서 열기 |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.imdb.com/search/ |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | https://www.example.com |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 브라우저를 연 후 Escape 키 전송 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 키를 전송한 후 브라우저에서 키보드 포커스 유지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 키를 브라우저로 보낼 때 Shift+Enter를 사용하세요 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 브라우저에 키를 전송하는 사이의 지연 시간(밀리초) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 테두리 없는 브라우저 창 열기 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 각 결과에 대해 브라우저 창을 나란히 엽니다. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Instructions` | String | — | — | Named | — | {
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
} |
| `-Attachments` | String[] | — | — | Named | — | 첨부할 파일 경로 배열 |
| `-ImageDetail` | String | — | — | Named | — | 이미지 처리에 대한 이미지 세부 수준입니다. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Array of function definitions that can be called by the AI model during processing. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | AI가 호출할 수 있는 도구로 사용할 PowerShell 명령 정의 배열입니다. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 실행 전 확인이 필요하지 않은 명령어 이름의 배열 |
| `-AudioTemperature` | Double | — | — | Named | — | 오디오 생성을 위한 온도. |
| `-TemperatureResponse` | Double | — | — | Named | — | 응답 생성을 위한 온도 |
| `-CpuThreads` | Int32 | — | — | Named | — | 사용할 CPU 스레드 수입니다. |
| `-SuppressRegex` | String | — | — | Named | — | 특정 출력을 억제하는 정규 표현식입니다. |
| `-AudioContextSize` | Int32 | — | — | Named | — | 처리를 위한 오디오 컨텍스트 크기입니다. |
| `-SilenceThreshold` | Double | — | — | Named | — | 오디오 처리를 위한 무음 임계값 |
| `-LengthPenalty` | Double | — | — | Named | — | 시퀀스 생성을 위한 길이 패널티. |
| `-EntropyThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 엔트로피 임계값. |
| `-LogProbThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 로그 확률 임계값. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 오디오 감지를 위한 음성 임계값이 없습니다. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 음성 출력을 비활성화합니다. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 사고 발언 출력을 비활성화합니다. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX(음성 활성화)를 비활성화합니다. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 데스크톱 오디오 캡처를 사용하세요. |
| `-NoContext` | SwitchParameter | — | — | Named | — | 컨텍스트 사용을 비활성화합니다. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Only responses. |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 지정된 경우, 처리 후 결과 문자열 목록을 시스템 클립보드에 다시 복사합니다. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 모델의 생각을 대화 기록에 추가하지 마세요 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 죄송합니다. 제가 이전 대화 내용을 확인할 수 없습니다. "마지막 대화에서 계속"하려면 이전 메시지를 다시 보내주시기 바랍니다. |
| `-Speak` | SwitchParameter | — | — | Named | — | AI 응답에 대한 텍스트 음성 변환 기능을 활성화합니다 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI 사고 응답에 대한 텍스트 음성 변환 활성화 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 세션 캐시에 세션을 저장하지 마세요 |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AI 모델의 기본 도구를 활성화합니다. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <사용자>
안녕하세요, 오늘 날씨가 어떤가요?
</사용자> |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | markup blocks of type: code, table, list, blockquote, heading |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 도구 호출에 대한 최대 콜백 길이입니다. |

## Related Links

- [Get-SimularMovieTitles on GitHub](https://github.com/genXdev/genXdev)
