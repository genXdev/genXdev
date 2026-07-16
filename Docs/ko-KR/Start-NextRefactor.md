# Start-NextRefactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `nextrefactor

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-NextRefactor [[-Name] <String[]>] [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-CleanUpDeletedFiles] [-MarkAllCompleted] [-RedoLast] [-Reset] [-ResetLMSelections] [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | 리팩터 이름, 와일드카드 허용 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | 추가할 파일 이름들 |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | 제거할 파일명들 |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | 3 | — | 삭제된 파일 정리 |
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
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | 모든 LLM 선택을 다시 시작합니다 |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | 모든 파일을 리팩터링됨으로 표시 |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Redo the last refactor |
| `-Speak` | SwitchParameter | — | — | Named | — | 다음 리팩터링의 세부 사항을 말씀해 주세요. |

## Related Links

- [Start-NextRefactor on GitHub](https://github.com/genXdev/genXdev)
