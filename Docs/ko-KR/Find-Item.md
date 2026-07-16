# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l

## Synopsis

> 고급 필터링 옵션을 사용하여 파일 및 디렉터리를 검색합니다.

## Description

• Find-Item을 사용하여 파일 찾기 -> l
        • 빠른 멀티스레드 검색: 구성 가능한 최대 병렬 처리 수준(기본값은 CPU 코어 기준)으로 병렬 및 비동기 I/O 처리를 활용하여 효율적인 파일 및 디렉터리 스캔.
        • 고급 패턴 매칭: 와일드카드(*, ?), 재귀 패턴(예: **) 및 복잡한 경로 구조를 지원하여 정밀한 파일 및 디렉터리 쿼리 수행.
              **/filename은 filename이 일치할 때까지만 재귀합니다. 이러한 패턴은 filename 또는 directoryname이 앞에 오는 한 여러 개 허용됩니다.
              이 패턴 파서는 Resolve-Path의 기능을 가지면서도 재귀 기능이 있으며, 와일드카드로 *와 ?만 지원하므로 [ ] 대괄호가 포함된 경로에서 발생하는 버그를 방지하고, 전체 경로에 대한 와일드카드 매칭과 달리 와일드카드가 없는 경로 섹션의 무결성을 유지합니다.
        • 향상된 콘텐츠 검색: -Content 매개변수를 사용한 파일 내용 내 정규식 패턴에 대한 포괄적인 Select-String 통합.
            • 대용량 파일 최적화: 스마트 중첩 버퍼와 최소 힙 할당으로 매우 큰 파일 처리.
            • 다중 일치 옵션: 줄당 모든 일치 항목 찾기(-AllMatches) 또는 파일당 첫 번째 일치 항목만 찾기(-List).
            • 대소문자 구분 제어: 문화권별 옵션(-Culture)을 사용한 대소문자 구분 매칭(-CaseSensitive).
            • 컨텍스트 캡처: 일치 항목 앞뒤 줄 표시(-Context)로 이해도 향상.
            • 역방향 매칭: 패턴을 포함하지 않는 파일 찾기(-NotMatch).
            • 출력 형식: 원시 문자열 출력(-Raw), 부울 응답(-Quiet), 또는 전체 MatchInfo 개체.
            • 패턴 유형: 정규식(기본값) 또는 단순 리터럴 문자열 매칭(-SimpleMatch).
            • 인코딩 지원: 정확한 텍스트 처리를 위한 파일 인코딩 지정(-Encoding).
        • 경로 유형 유연성: 상대 경로, 절대 경로, UNC 경로, 루트 경로 및 NTFS 대체 데이터 스트림(ADS) 처리, 스트림 내 선택적 콘텐츠 검색.
        • 다중 드라이브 지원: -AllDrives로 모든 드라이브 검색 또는 -SearchDrives로 특정 드라이브 검색(지정된 경우 광 디스크 포함).
        • 디렉터리 및 파일 필터링: 디렉터리만 검색(-Directory), 파일과 디렉터리 모두 검색(-FilesAndDirectories), 또는 콘텐츠 일치 파일 검색 옵션.
        • 제외 및 제한: -Exclude로 패턴 제외, 최대 재귀 깊이 설정(-MaxRecursionDepth), 파일 크기 제한(-MaxFileSize, -MinFileSize), 수정 날짜 필터(-ModifiedAfter, -ModifiedBefore).
        • 출력 사용자 정의: PassThru를 통한 FileInfo/DirectoryInfo 개체, 상대 경로, 대화형 모드의 하이퍼링크, 비대화형 모드의 일반 경로 지원(문제 발생 시 -NoLinks 사용하여 비대화형 모드 강제).
        • 성능 최적화: 콘텐츠 검색 시 기본적으로 비텍스트 파일 건너뜀(-IncludeNonTextFileMatching으로 재정의), 긴 경로(>260자) 처리, 심볼 링크/정션 따라가기.
        • 안전 기능: 시간 제한 지원(-TimeoutSeconds), 액세스 불가 항목 무시, 기본적으로 시스템 특성 건너뜀, 방문 노드 추적으로 무한 루프 방지.

## Syntax

```powershell
Find-Item [[-Name] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [<CommonParameters>]

Find-Item [[-Name] <string[]>] [[-Content] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [-AllMatches] [-CaseSensitive] [-Context <int[]>] [-Culture <string>] [-Encoding <string>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | 검색할 파일명 또는 패턴. 기본값은 '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | 검색할 파일명 또는 패턴. 기본값은 '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | 콘텐츠 내에서 검색하기 위한 정규 표현식 패턴 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | 출력에서 상대 경로를 확인하기 위한 기본 경로 |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | 디렉터리 작업의 최대 병렬 처리 수준 |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 선택사항: 취소 제한 시간(초) |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Search across all available drives |
| `-Directory` | SwitchParameter | — | — | Named | `False` | 디렉토리만 검색 |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | 파일과 디렉터리를 모두 포함 |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | {
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
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | 검색 결과에 대체 데이터 스트림 포함 |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | 하위 디렉터리로 재귀하지 않음 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | 디렉터리 순회 중 심볼릭 링크와 정션(junction)을 따라가기 |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | 광학 디스크 드라이브 포함 |
| `-SearchDrives` | String[] | — | — | Named | — | 선택 사항: 특정 드라이브 검색 |
| `-DriveLetter` | Char[] | — | — | Named | — | 선택 사항: 특정 드라이브 검색 |
| `-Root` | String[] | — | — | Named | — | 선택 사항: 특정 디렉토리 검색 |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Name 입력에서 디렉토리 구성 요소를 제거하여 루트 디렉토리 내에서만 검색을 강제합니다. |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | 파일 내용 검색 시 비텍스트 파일 포함 |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | 무인 모드를 강제하며 링크를 생성하지 않습니다. |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | 파일 및 디렉터리의 대/소문자 구분을 가져오거나 설정합니다. |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | 설정 시 대체 데이터 스트림(ADS) 내에서 콘텐츠 검색을 수행합니다. 설정하지 않으면 콘텐츠를 검색하지 않고 ADS 파일 정보를 출력합니다. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 디렉터리 탐색의 최대 재귀 깊이입니다. 0은 무제한을 의미합니다. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 항목이 발견되지 않을 때 상대 검색을 위해 트리 상단으로 계속 검색하는 최대 재귀 깊이입니다. 0은 비활성화를 의미합니다. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최대 파일 크기(바이트)입니다. 0은 무제한을 의미합니다. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최소 파일 크기(바이트). 0은 최소값 없음을 의미합니다. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 이 날짜/시간(UTC) 이후에 수정된 파일만 포함하십시오. |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 이 날짜/시간(UTC) 이전에 수정된 파일만 포함하세요. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | 건너뛸 파일 특성 (예: 시스템, 숨김, 또는 없음). |
| `-Exclude` | String[] | — | — | Named | — | 이러한 와일드카드 패턴과 일치하는 파일 또는 디렉터리 제외(예: *.tmp, *\bin\*) |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | 이 매개 변수는 cmdlet이 각 텍스트 줄에서 둘 이상의 일치 항목을 검색하도록 지시합니다. 이 매개 변수가 없으면 Select-String은 각 텍스트 줄에서 첫 번째 일치 항목만 찾습니다. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | cmdlet 일치 항목이 대/소문자를 구분하도록 지정합니다. 기본적으로 일치 항목은 대/소문자를 구분하지 않습니다. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | 패턴과 일치하는 줄의 앞뒤로 지정된 수의 줄을 캡처합니다. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | 지정된 패턴과 일치하는 문화 이름을 지정합니다. Culture 매개 변수는 SimpleMatch 매개 변수와 함께 사용해야 합니다. 기본 동작은 현재 PowerShell 실행 공간(세션)의 문화를 사용합니다. *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | 대상 파일의 인코딩 유형을 지정합니다. Select-String 호환 값 및 확장된 .NET 인코딩을 지원합니다. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | 각 입력 파일에서 일치하는 첫 번째 텍스트 인스턴스만 반환됩니다. 이는 정규 표현식과 일치하는 내용이 있는 파일 목록을 검색하는 가장 효율적인 방법입니다. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | 출력에서 일치하는 문자열의 강조 표시를 비활성화합니다. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | NotMatch 매개변수는 지정된 패턴과 일치하지 않는 텍스트를 찾습니다. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | cmdlet이 MatchInfo 객체 대신 간단한 응답을 반환함을 나타냅니다. 패턴이 발견되면 반환 값은 $true이고, 패턴이 발견되지 않으면 $null입니다. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | 이 cmdlet은 MatchInfo 개체 대신 일치하는 문자열만 출력하도록 합니다. 이는 Unix grep이나 Windows findstr.exe 명령어와 가장 유사한 동작을 제공합니다. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | cmdlet이 정규식 일치 대신 단순 일치를 사용함을 나타냅니다. 단순 일치에서 Select-String은 Pattern 매개 변수의 텍스트에 대해 입력을 검색합니다. Pattern 매개 변수 값을 정규식 문으로 해석하지 않습니다. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

특정 단어가 포함된 파일 찾기
현재 디렉터리와 하위 디렉터리에서 "translation"이라는 단어가 포함된 모든 파일을 검색합니다.

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

버전 문자열이 포함된 JavaScript 파일 찾기
"Version == `x.y.z`" 형식의 버전 문자열이 포함된 JavaScript 파일을 검색합니다.

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

모든 디렉터리 나열
현재 디렉터리와 그 하위 디렉터리에 있는 모든 디렉터리를 찾습니다.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Find XML files and pass objects
Search for all .xml files and pass the results as objects through the pipeline.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

대체 데이터 스트림 포함
모든 파일을 검색하고 결과에 대체 데이터 스트림을 포함합니다.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

모든 드라이브에서 검색
사용 가능한 모든 드라이브에서 모든 PDF 파일을 검색합니다.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

사용자 정의 타임아웃 및 병렬 처리
5분 타임아웃과 제한된 병렬 처리로 로그 파일을 검색합니다.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

파이프라인 입력
Get-ChildItem에서 파일 경로를 전달하여 "error"가 포함된 파일을 검색합니다.

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

재귀 깊이 제한
텍스트 파일을 검색하되 재귀를 디렉터리 2단계로 제한합니다.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

파일 크기 기준으로 필터링
1MB보다 크고 10MB보다 작은 파일 찾기.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

수정 날짜로 필터링
2025년 1월 1일 이후에 수정된 파일을 찾습니다.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

특정 패턴 제외
임시 파일과 bin 디렉터리를 제외하고 모든 파일 검색

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

특정 드라이브 검색
C: 및 D: 드라이브에서만 .docx 파일 검색

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

대소문자 구분 콘텐츠 검색
파일 내용에서 "Error"(대소문자 구분)를 검색합니다.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

대체 데이터 스트림 내용 검색
"secret"이 포함된 대체 데이터 스트림을 가진 파일 검색

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

모든 줄에서 일치 항목 찾기
각 줄에서 "function"의 모든 발생을 검색하며, 첫 번째 일치만 검색하지 않습니다.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

매칭 결과 주변 내용 표시
각 일치 항목 앞 2줄, 뒤 3줄을 표시하여 더 나은 이해를 돕습니다.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

일치하는 문자열만 반환
전체 일치 객체 대신 일치하는 텍스트 문자열만 반환합니다.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

간단한 불리언 검사
패턴 존재 여부 확인 시 일치 상세 대신 true/false 반환

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

파일당 첫 번째 일치 항목만 찾기
효율적인 파일 목록을 위해 각 파일의 첫 번째 일치 항목에서 중단합니다.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

리터럴 문자열 매칭
SimpleMatch를 사용하여 정규식 해석 없이 정확한 텍스트 검색

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

패턴이 포함되지 않은 파일 찾기
NotMatch를 사용하여 지정된 패턴이 포함되지 않은 파일을 찾습니다.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Specify file encoding
Search files with specific encoding for accurate text processing.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

문화 텍스트 비교
SimpleMatch을 사용하여 국제 텍스트에 문화별 매칭을 적용합니다.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

파일 필터를 사용한 복잡한 콘텐츠 검색
파일 크기, 날짜 및 콘텐츠 필터를 결합하여 정밀한 검색을 수행합니다.

## Related Links

- [Find-Item on GitHub](https://github.com/genXdev/genXdev)
