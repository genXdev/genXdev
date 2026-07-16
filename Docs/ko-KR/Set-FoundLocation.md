# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | 검색할 파일 이름이나 패턴을 입력하세요. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | 파이프라인 입력에서 검색할 파일 이름 또는 패턴입니다. 기본값은 '*'입니다. *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | 파일 내용을 검색하기 위한 정규 표현식 패턴 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Only output files belonging to selected categories |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | 디렉터리 작업의 최대 병렬 처리 수준 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | 선택사항: 취소 제한 시간(초) |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Search across all available drives |
| `-File` | SwitchParameter | — | — | Named | — | Search for filenames only and change to folder of first found file |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | 파일 이름 일치를 포함하고 처음 발견된 파일의 폴더로 변경 |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | 검색 결과에 대체 데이터 스트림 포함 |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | 하위 디렉터리로 재귀하지 않음 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | 디렉터리 순회 중 심볼릭 링크와 정션(junction)을 따라가기 |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | 광학 디스크 드라이브 포함 |
| `-SearchDrives` | String[] | — | — | Named | `@()` | 선택 사항: 특정 드라이브 검색 |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | 선택 사항: 특정 드라이브 검색 |
| `-Root` | String[] | — | — | Named | `@()` | 선택 사항: 제공된 이름과 결합된 특정 기본 폴더 검색 |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | 파일 내용 검색 시 비텍스트 파일(바이너리, 이미지 등) 포함 |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | 파일 및 디렉터리의 대/소문자 구분을 가져오거나 설정합니다. |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | 설정 시 대체 데이터 스트림(ADS) 내에서 콘텐츠 검색을 수행합니다. 설정하지 않으면 콘텐츠를 검색하지 않고 ADS 파일 정보를 출력합니다. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 디렉터리 탐색의 최대 재귀 깊이입니다. 0은 무제한을 의미합니다. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최대 파일 크기(바이트)입니다. 0은 무제한을 의미합니다. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최소 파일 크기(바이트). 0은 최소값 없음을 의미합니다. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | 이 날짜/시간(UTC) 이후에 수정된 파일만 포함하십시오. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | 이 날짜/시간(UTC) 이전에 수정된 파일만 포함하세요. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | 건너뛸 파일 특성 (예: 시스템, 숨김, 또는 없음). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | 와일드카드 패턴(예: *.tmp, *\bin\*)과 일치하는 파일 또는 디렉토리를 제외합니다. |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | cmdlet 일치 항목이 대/소문자를 구분하도록 지정합니다. 기본적으로 일치 항목은 대/소문자를 구분하지 않습니다. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | 지정된 패턴과 일치하는 문화 이름을 지정합니다. Culture 매개 변수는 SimpleMatch 매개 변수와 함께 사용해야 합니다. 기본 동작은 현재 PowerShell 실행 공간(세션)의 문화를 사용합니다. *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | 대상 파일에 대한 인코딩 유형을 지정합니다. 기본값은 utf8NoBOM입니다. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | NotMatch 매개변수는 지정된 패턴과 일치하지 않는 텍스트를 찾습니다. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | cmdlet이 정규식 일치 대신 단순 일치를 사용함을 나타냅니다. 단순 일치에서 Select-String은 Pattern 매개 변수의 텍스트에 대해 입력을 검색합니다. Pattern 매개 변수 값을 정규식 문으로 해석하지 않습니다. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Use Push-Location instead of Set-Location and push the location onto the location stack |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | 설정된 경우 정확한 이름 일치만 고려됩니다. 기본적으로 이름에 와일드카드 문자가 포함되어 있지 않으면 와일드카드 일치가 사용됩니다. |

## Related Links

- [Set-FoundLocation on GitHub](https://github.com/genXdev/genXdev)
