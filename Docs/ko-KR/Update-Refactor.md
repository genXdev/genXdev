# Update-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `updaterefactor

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | 리팩터 이름, 와일드카드 허용 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | 업데이트할 리팩터 세트 *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | 추가할 파일 이름들 |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | 제거할 파일명들 |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | 수정 날짜별로 파일 선택하기 |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | 수정된 날짜별로 파일을 선택하려면 |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | Select files by creation date from |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | 생성 날짜별로 파일 선택 |
| `-PromptKey` | String | — | — | Named | — | 프롬프트 키는 사용할 프롬프트 스크립트를 나타냅니다. |
| `-Prompt` | String | — | — | Named | `''` | 프롬프트 키는 사용할 프롬프트 스크립트를 나타냅니다. |
| `-SelectionScript` | String | — | — | Named | — | 리팩토링할 항목을 선택하는 함수를 위한 PowerShell 스크립트 |
| `-SelectionPrompt` | String | — | — | Named | — | If provided, will invoke LLM to do the selection based on the content of the script |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-Priority` | Int32 | — | — | Named | — | 이 리팩토링의 우선순위 설정 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | LLM 선택 중 도구로 사용할 PowerShell 명령 정의 배열 |
| `-KeysToSend` | String[] | — | — | Named | `@()` | 파일을 연 후 키 입력으로 사용할 키 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | 삭제된 파일 정리 |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | 사용자 상호작용을 억제하는 스위치 |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | LLM 기반 파일 선택 처리를 활성화하는 스위치 |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | 리팩터 세트의 모든 파일을 처리하도록 전환 |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | 실패한 LLM 선택을 재시도로 전환 |
| `-Clear` | SwitchParameter | — | — | Named | — | 리팩터 집합에서 모든 파일을 지웁니다 |
| `-ClearLog` | SwitchParameter | — | — | Named | — | 리팩터 세트의 로그를 지웁니다 |
| `-Reset` | SwitchParameter | — | — | Named | — | ===== 크리티컬 JSON 출력 요구사항 =====
JSON만 응답해야 합니다. 다른 텍스트는 허용되지 않습니다.
설명, 주석, 또는 JSON 앞뒤의 텍스트를 포함하지 마십시오.
응답은 이 스키마에 정확히 일치하는 파싱 가능한 JSON이어야 합니다:
{
  "json_schema": {
    "strict": true,
    "name": "text_transformation_response",
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "description": "The transformed text output",
          "type": "string"
        }
      },
      "type": "object"
    }
  },
  "type": "json_schema"
}

예시 응답 형식: {"response":"your actual response here"}
===== 요구사항 끝 =====

리팩터 세트의 처음부터 시작 |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | 모든 LLMSelections을 다시 시작합니다 |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | 모든 파일을 리팩터링됨으로 표시 |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Redo the last refactor |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | 마지막 업데이트 이후 수정된 파일을 자동으로 다시 처리합니다. |
| `-Code` | SwitchParameter | — | — | Named | — | 파일을 열 IDE |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Open in Visual Studio |
| `-Speak` | SwitchParameter | — | — | Named | — | 다음 리팩터링의 세부 사항을 말씀해 주세요. |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | 사용 가능한 시스템 RAM에 따라 구성 선택 |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | 사용 가능한 GPU RAM으로 구성 선택 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Update-Refactor on GitHub](https://github.com/genXdev/genXdev)
