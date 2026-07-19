# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> 입력 객체를 파일 및 디렉터리 이름으로 확장하며, 다양한 필터 및 출력 옵션을 지원합니다.

## Description

이 함수는 입력 객체(파일, 디렉터리 또는 컬렉션)를 처리하여 파일 및 디렉터리 이름으로 확장합니다. 필터링, 패턴 매칭을 지원하며 결과를 객체로 출력할 수 있습니다. 이 함수는 파이프라인 입력과 함께 작동하도록 설계되었으며 재귀, 대체 데이터 스트림 등에 대한 옵션을 제공합니다.

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

## Examples

### ResolveInputObjectFileNames -Input "C:\Temp" -File

```powershell
ResolveInputObjectFileNames -Input "C:\Temp" -File
```

## Related Links

- [ResolveInputObjectFileNames on GitHub](https://github.com/genXdev/genXdev)
