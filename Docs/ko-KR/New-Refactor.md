# New-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `newrefactor

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-Refactor -Name <String> -PromptKey <String> [[-Prompt] <String>] [[-SelectionScript] <String>] [[-SelectionPrompt] <String>] [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoAddModifiedFiles] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilesToAdd <IO.FileInfo[]>] [-KeysToSend <String[]>] [-Model <String>] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | 이 새로운 리팩터 세트의 이름 |
| `-PromptKey` | String | ✅ | — | 1 | — | 프롬프트 키는 사용할 프롬프트 스크립트를 나타냅니다. |
| `-Prompt` | String | — | — | 2 | `''` | 템플릿을 재정의하는 사용자 정의 프롬프트 텍스트 |
| `-SelectionScript` | String | — | — | 3 | — | 리팩토링할 항목을 선택하는 PowerShell 스크립트 |
| `-SelectionPrompt` | String | — | — | 4 | — | LLM 선택 가이드 프롬프트 |
| `-LLMQueryType` | String | — | — | 5 | `'Coding'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | 사용 가능한 시스템 RAM에 따라 구성 선택 |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | 사용 가능한 GPU RAM으로 구성 선택 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-Priority` | Int32 | — | — | Named | `0` | 이 리팩토링의 우선순위 설정 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | LLM 도구를 위한 PowerShell 명령 정의 배열 |
| `-FilesToAdd` | IO.FileInfo[] | — | — | Named | `@()` | 처리할 파일 배열 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-AutoAddModifiedFiles` | SwitchParameter | — | — | Named | — | 수정된 파일을 자동으로 대기열에 추가합니다 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Code` | SwitchParameter | — | — | Named | — | Visual Studio Code에서 파일 열기 |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Open in Visual Studio |
| `-KeysToSend` | String[] | — | — | Named | `@()` | 파일을 연 후 보낼 키 입력 |

## Related Links

- [New-Refactor on GitHub](https://github.com/genXdev/genXdev)
