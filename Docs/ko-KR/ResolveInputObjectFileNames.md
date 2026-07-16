# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
ResolveInputObjectFileNames [[-InputObject] <Object>] [[-RelativeBasePath] <String>] [-AllDrives] [-File] [-IncludeAlternateFileStreams] [-NoRecurse] [-PassThru] [<CommonParameters>]

ResolveInputObjectFileNames [[-Pattern] <String>] [<CommonParameters>]

ResolveInputObjectFileNames [-Directory] [-FilesAndDirectories] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | 파일 이름이나 디렉토리를 포함하는 입력 객체 |
| `-File` | SwitchParameter | — | — | Named | — | 파일만 반환 |
| `-Pattern` | String | — | — | 1 | — | 콘텐츠 내에서 검색하기 위한 정규 표현식 패턴 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | 출력에서 상대 경로를 확인하기 위한 기본 경로 |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Search across all available drives |
| `-Directory` | SwitchParameter | — | — | Named | — | 디렉토리만 검색 *(Parameter set: )* |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | 파일과 디렉터리를 모두 포함 *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | {
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
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | 검색 결과에 대체 데이터 스트림 포함 |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | 하위 디렉터리로 재귀하지 않음 |

## Related Links

- [ResolveInputObjectFileNames on GitHub](https://github.com/genXdev/genXdev)
