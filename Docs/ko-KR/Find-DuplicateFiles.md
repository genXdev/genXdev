# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | 검색할 파일명 또는 패턴. 기본값은 '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | 파이프라인 입력에서 검색할 파일 이름 또는 패턴입니다. 기본값은 '*'입니다. 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | 콘텐츠 내에서 검색하기 위한 정규 표현식 패턴 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | 출력에서 상대 경로를 확인하기 위한 기본 경로 |
| `-Category` | String[] | — | — | Named | — | Only output files belonging to selected categories |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | 디렉터리 작업의 최대 병렬 처리 수준 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | 선택사항: 취소 제한 시간(초) |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Search across all available drives |
| `-Directory` | SwitchParameter | — | — | Named | — | 디렉토리만 검색 |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | 파일과 디렉터리를 모두 포함 |
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
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | 디렉터리 순회 중 심볼릭 링크와 정션(junction)을 따라가기 |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | 광학 디스크 드라이브 포함 |
| `-SearchDrives` | String[] | — | — | Named | `@()` | 선택 사항: 특정 드라이브 검색 |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | 선택 사항: 특정 드라이브 검색 |
| `-Root` | String[] | — | — | Named | `@()` | 선택 사항: 특정 디렉토리 검색 |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Name 입력에서 디렉토리 구성 요소를 제거하여 루트 디렉토리 내에서만 검색을 강제합니다. |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | 파일 내용 검색 시 비텍스트 파일 포함 |
| `-NoLinks` | SwitchParameter | — | — | Named | — | 무인 모드를 강제하며 링크를 생성하지 않습니다. |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | 파일 및 디렉터리의 대/소문자 구분을 가져오거나 설정합니다. |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | 설정된 경우, 대체 데이터 스트림(ADS) 내에서 콘텐츠 검색을 수행합니다. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 디렉터리 탐색의 최대 재귀 깊이입니다. 0은 무제한을 의미합니다. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 트리 상향 검색 중 연속을 찾기 위한 최대 재귀 깊이입니다. 0은 비활성화를 의미합니다. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최대 파일 크기(바이트)입니다. 0은 무제한을 의미합니다. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최소 파일 크기(바이트). 0은 최소값 없음을 의미합니다. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | 이 날짜/시간(UTC) 이후에 수정된 파일만 포함 |
| `-ModifiedBefore` | DateTime | — | — | Named | — | 이 날짜/시간(UTC) 이전에 수정된 파일만 포함 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | 건너뛸 파일 특성 (예: 시스템, 숨김 또는 없음) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | 와일드카드 패턴과 일치하는 파일 또는 디렉터리 제외 |
| `-AllMatches` | SwitchParameter | — | — | Named | — | 각 텍스트 줄에서 두 개 이상의 일치 항목을 검색합니다. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | 일치 항목은 대소문자를 구분합니다 *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | 일치 항목 주변의 컨텍스트 줄을 캡처합니다 *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | 패턴 매칭에 사용되는 문화 이름 *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | 대상 파일의 인코딩을 지정합니다. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | 파일별로 첫 번째 일치 항목만 반환됨 *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | 출력에서 일치하는 문자열 강조를 비활성화합니다 *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | NotMatch 매개변수는 패턴과 일치하지 않는 텍스트를 찾습니다. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Output only matching strings instead of MatchInfo objects *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | 간단한 문자열 매칭을 사용하고 정규식은 사용하지 마세요 *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | 동일한 파일명과 내용으로 시작하는 한 다양한 크기의 파일을 반환하며, 이를 통해 손상된 다운로드/복사 작업을 감지합니다. |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | 파일의 바이트 길이를 빠르게 비교하여 빠른 인덱싱 및 중복 검색에 사용됩니다. 파일의 내용을 비교하지 않습니다. |

## Related Links

- [Find-DuplicateFiles on GitHub](https://github.com/genXdev/genXdev)
