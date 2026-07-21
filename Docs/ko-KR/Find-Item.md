# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> 고급 필터링 옵션으로 파일과 디렉터리를 검색합니다.

## Description

```text
* Find-Item을 사용하여 파일 찾기 -> l
        * 빠른 다중 스레드 검색: 구성 가능한 최대 병렬 처리 수준(CPU 코어 기준 기본값)을 사용하여 병렬 및 비동기 IO 처리를 활용하여 효율적인 파일 및 디렉터리 검색.
        * 고급 패턴 일치: 와일드카드(*, ?), **와 같은 재귀 패턴, 복잡한 경로 구조를 지원하여 정밀한 파일 및 디렉터리 쿼리 가능.
              **/filename은 filename이 일치될 때까지만 재귀합니다. 이러한 패턴은 파일 이름이나 디렉터리 이름이 앞에 오는 한 여러 개 허용됩니다.
              이 패턴 파서는 Resolve-Path의 강력함을 가지지만 재귀 기능이 있으며, 와일드카드로 *와 ?만 지원하여
              경로에 [ ] 대괄호가 있는 버그를 방지하고, 전체 전체 경로에 대한 와일드카드 일치와 달리 와일드카드가 없는 경로 섹션의 무결성을 유지합니다.
        * 향상된 콘텐츠 검색: -Content 매개변수를 사용하여 파일 내용 내에서 정규식 패턴을 사용한 포괄적인 Select-String 통합.
            * 대용량 파일 최적화: 스마트 중첩 버퍼와 최소 힙 할당으로 매우 큰 파일 처리
            * 다중 일치 옵션: 줄당 모든 일치 항목 찾기(-AllMatches) 또는 파일당 첫 번째 일치 항목만 찾기(-List)
            * 대/소문자 구분 제어: 문화권별 옵션(-Culture)이 있는 대/소문자 구분 일치(-CaseSensitive)
            * 컨텍스트 캡처: 더 나은 이해를 위해 일치 전후의 줄 표시(-Context)
            * 역일치: 패턴이 포함되지 않은 파일 찾기(-NotMatch)
            * 출력 형식: 원시 문자열 출력(-Raw), 부울 응답(-Quiet) 또는 전체 MatchInfo 개체
            * 패턴 유형: 정규식(기본값) 또는 단순 리터럴 문자열 일치(-SimpleMatch)
            * 인코딩 지원: 정확한 텍스트 처리를 위한 파일 인코딩 지정(-Encoding)
        * 경로 유형 유연성: 상대 경로, 절대 경로, UNC, 루트 경로 및 NTFS 대체 데이터 스트림(ADS)을 처리하며 스트림에서 선택적 콘텐츠 검색 가능.
        * 다중 드라이브 지원: -AllDrives로 모든 드라이브 검색 또는 -SearchDrives를 통해 특정 드라이브 검색(지정된 경우 광 디스크 포함).
        * 디렉터리 및 파일 필터링: 디렉터리만 검색(-Directory), 파일 및 디렉터리 모두 검색(-FilesAndDirectories) 또는 콘텐츠 일치 파일 검색 옵션.
        * 제외 및 제한: -Exclude로 패턴 제외, 최대 재귀 깊이 설정(-MaxRecursionDepth), 파일 크기 제한(-MaxFileSize, -MinFileSize) 및 수정 날짜 필터(-ModifiedAfter, -ModifiedBefore).
        * 출력 사용자 지정: FileInfo/DirectoryInfo 개체에 대한 PassThru, 상대 경로, 대화형 모드의 하이퍼링크 또는 비대화형 모드의 일반 경로 지원(문제 발생 시 -NoLinks를 사용하여 비대화형 모드 강제).
        * 성능 최적화: 콘텐츠 검색 시 기본적으로 비텍스트 파일 건너뛰기(IncludeNonTextFileMatching으로 재정의), 긴 경로(>260자) 처리, 심볼릭 링크/정션 팔로우.
        * 안전 기능: 시간 제한 지원(-TimeoutSeconds), 액세스 불가 항목 무시, 기본적으로 시스템 특성 건너뛰기, 방문 노드 추적으로 무한 루프 방지.

        * -Category 매개변수의 유효한 범주: 사진, 동영상, 음악, 문서, 스프레드시트, 프레젠테이션, 아카이브, 설치 프로그램, 실행 파일, 데이터베이스, 디자인 파일, 전자책, 자막, 글꼴, 이메일 파일, 3D 모델, 게임 자산, 의료 파일, 재무 파일, 법률 파일, 소스 코드, 스크립트, 마크업 및 데이터, 구성, 로그, 텍스트 파일, 웹 파일, 음악 가사 및 코드, 창작 글쓰기, 레시피, 연구 파일
```
## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | 검색할 파일 이름 또는 패턴입니다. 기본값은 '*'입니다. 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | 검색할 파일 이름 또는 패턴입니다. 기본값은 '*'입니다. 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | 콘텐츠 내에서 검색할 정규식 패턴 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | 출력에서 상대 경로를 해석하기 위한 기본 경로 |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | 디렉터리 작업의 최대 병렬 처리 수준 |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 선택 사항: 취소 시간 제한(초) |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | 사용 가능한 모든 드라이브 검색 |
| `-Directory` | SwitchParameter | — | — | Named | `False` | 디렉터리만 검색 |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | 파일과 디렉터리를 모두 포함합니다. |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | 출력 일치 항목을 객체로 |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | 검색 결과에 대체 데이터 스트림 포함 |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | 하위 디렉터리로 재귀하지 않음 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | 디렉터리 탐색 중 심볼릭 링크와 접합점 따르기 |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | 광 디스크 드라이브 포함 |
| `-SearchDrives` | String[] | — | — | Named | — | 선택 사항: 특정 드라이브 검색 |
| `-DriveLetter` | Char[] | — | — | Named | — | 선택 사항: 특정 드라이브 검색 |
| `-Root` | String[] | — | — | Named | — | 선택 사항: 특정 디렉터리 검색 |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Name 입력에서 디렉터리 구성 요소를 제거하여 루트 디렉터리 내에서만 검색을 강제합니다. |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | 파일 내용을 검색할 때 텍스트가 아닌 파일 포함 |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | 자동 모드를 강제하며 링크를 생성하지 않습니다 |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | 파일 및 디렉터리의 대/소문자 구분을 설정하거나 가져옵니다 |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | 설정된 경우, 대체 데이터 스트림(ADS) 내에서 콘텐츠 검색을 수행합니다. 설정되지 않은 경우, 콘텐츠를 검색하지 않고 ADS 파일 정보를 출력합니다. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 디렉터리 순회의 최대 재귀 깊이입니다. 0은 무제한을 의미합니다. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 상대 검색을 위해 트리 상단으로 계속 검색할 때 최대 재귀 깊이입니다. 항목이 없으면 0은 비활성화됨을 의미합니다. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최대 파일 크기(바이트)입니다. 0은 제한 없음을 의미합니다. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최소 파일 크기(바이트)입니다. 0은 최소값이 없음을 의미합니다. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 이 날짜/시간(UTC) 이후에 수정된 파일만 포함합니다. |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 이 날짜/시간(UTC) 이전에 수정된 파일만 포함하세요. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | 건너뛸 파일 특성(예: 시스템, 숨김 또는 없음). |
| `-Exclude` | String[] | — | — | Named | — | 이러한 와일드카드 패턴과 일치하는 파일 또는 디렉터리를 제외합니다(예: *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | 텍스트의 각 줄에서 여러 일치 항목을 검색하도록 cmdlet을 지시합니다. 이 매개 변수가 없으면 Select-String은 텍스트의 각 줄에서 첫 번째 일치 항목만 찾습니다. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | 이 cmdlet이 일치 항목을 대소문자를 구분하여 처리함을 나타냅니다. 기본적으로 일치 항목은 대소문자를 구분하지 않습니다. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | 패턴과 일치하는 줄 앞뒤로 지정된 줄 수를 캡처합니다. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | 지정된 패턴과 일치하는 문화권 이름을 지정합니다. Culture 매개 변수는 SimpleMatch 매개 변수와 함께 사용해야 합니다. 기본 동작은 현재 PowerShell 실행 공간(세션)의 문화권을 사용합니다. *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | 대상 파일에 대한 인코딩 유형을 지정합니다. Select-String 호환 값 및 확장된 .NET 인코딩을 지원합니다. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | 각 입력 파일에서 일치하는 텍스트의 첫 번째 인스턴스만 반환됩니다. 이는 정규식과 일치하는 내용이 있는 파일 목록을 검색하는 가장 효율적인 방법입니다. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | 출력에서 일치하는 문자열 강조를 비활성화합니다. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | NotMatch 매개 변수는 지정된 패턴과 일치하지 않는 텍스트를 찾습니다. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | cmdlet이 MatchInfo 개체 대신 단순 응답을 반환함을 나타냅니다. 패턴이 발견되면 반환 값은 $true이고, 패턴이 발견되지 않으면 $null입니다. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | cmdlet이 MatchInfo 개체 대신 일치하는 문자열만 출력하도록 합니다. 이는 Unix grep 또는 Windows findstr.exe 명령과 가장 유사한 동작을 초래합니다. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | cmdlet이 정규식 일치 대신 단순 일치를 사용함을 나타냅니다. 단순 일치에서 Select-String은 Pattern 매개 변수의 텍스트를 입력에서 검색합니다. Pattern 매개 변수의 값을 정규식 문으로 해석하지 않습니다. *(Parameter set: )* |

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
현재 디렉터리와 하위 디렉터리에 있는 모든 디렉터리를 찾습니다.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

XML 파일을 찾고 개체 전달
모든 .xml 파일을 검색하고 결과를 파이프라인을 통해 개체로 전달합니다.

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

모든 드라이브 검색
사용 가능한 모든 드라이브에서 모든 PDF 파일을 검색합니다.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

사용자 지정 제한 시간 및 병렬 처리
5분 제한 시간과 제한된 병렬 처리를 사용하여 로그 파일을 검색합니다.

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
텍스트 파일을 검색하지만 재귀는 2단계 디렉터리 수준으로 제한합니다.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

파일 크기로 필터링
1MB보다 크고 10MB보다 작은 파일을 찾습니다.

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
임시 파일과 bin 디렉토리를 제외하고 모든 파일 검색.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

특정 드라이브 검색
C: 및 D: 드라이브에서만 .docx 파일을 검색합니다.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

대/소문자 구분 콘텐츠 검색
내용에 "Error"(대/소문자 구분)가 포함된 파일 검색.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

대체 데이터 스트림 콘텐츠 검색
"secret"이 포함된 대체 데이터 스트림이 있는 파일 검색.

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

각 줄에서 모든 일치 항목 찾기
각 줄에서 'function'의 모든 항목을 검색하며, 첫 번째 일치 항목만 찾지 않습니다.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

일치 항목 주변 컨텍스트 표시
각 일치 항목에 대해 이해를 돕기 위해 앞 2줄과 뒤 3줄을 표시합니다.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

일치하는 문자열만 가져오기
전체 일치 개체 대신 일치하는 텍스트 문자열만 반환합니다.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

간단한 부울 확인
패턴이 존재하는지 확인하려면 일치 세부 정보 대신 true/false를 반환합니다.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

파일당 첫 번째 일치 항목만 찾기
효율적인 파일 나열을 위해 각 파일의 첫 번째 일치 항목에서 중지합니다.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

리터럴 문자열 일치
SimpleMatch를 사용하여 정규식 해석 없이 정확한 텍스트를 검색합니다.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

특정 패턴을 포함하지 않는 파일 찾기
NotMatch를 사용하여 지정된 패턴을 포함하지 않는 파일을 찾습니다.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

파일 인코딩 지정
정확한 텍스트 처리를 위해 특정 인코딩으로 파일 검색.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

문화적 텍스트 비교
국제 텍스트에 대해 문화별 일치를 SimpleMatch와 함께 사용하세요.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

파일 필터를 사용한 복잡한 내용 검색
파일 크기, 날짜 및 내용 필터를 결합하여 정밀한 검색을 수행합니다.

## Parameter Details

### `-Name <String[]>`

> 검색할 파일 이름 또는 패턴입니다. 기본값은 '*'입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> 검색할 파일 이름 또는 패턴입니다. 기본값은 '*'입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> 콘텐츠 내에서 검색할 정규식 패턴

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> 출력에서 상대 경로를 해석하기 위한 기본 경로

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> 디렉터리 작업의 최대 병렬 처리 수준

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> 선택 사항: 취소 시간 제한(초)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> 사용 가능한 모든 드라이브 검색

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> 디렉터리만 검색

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> 파일과 디렉터리를 모두 포함합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> 출력 일치 항목을 객체로

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> 검색 결과에 대체 데이터 스트림 포함

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> 하위 디렉터리로 재귀하지 않음

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> 디렉터리 탐색 중 심볼릭 링크와 접합점 따르기

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> 광 디스크 드라이브 포함

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> 선택 사항: 특정 드라이브 검색

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> 선택 사항: 특정 드라이브 검색

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> 선택 사항: 특정 디렉터리 검색

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> Name 입력에서 디렉터리 구성 요소를 제거하여 루트 디렉터리 내에서만 검색을 강제합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> 파일 내용을 검색할 때 텍스트가 아닌 파일 포함

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> 자동 모드를 강제하며 링크를 생성하지 않습니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> 파일 및 디렉터리의 대/소문자 구분을 설정하거나 가져옵니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> 설정된 경우, 대체 데이터 스트림(ADS) 내에서 콘텐츠 검색을 수행합니다. 설정되지 않은 경우, 콘텐츠를 검색하지 않고 ADS 파일 정보를 출력합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> 디렉터리 순회의 최대 재귀 깊이입니다. 0은 무제한을 의미합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSearchUpDepth <Int32>`

> 상대 검색을 위해 트리 상단으로 계속 검색할 때 최대 재귀 깊이입니다. 항목이 없으면 0은 비활성화됨을 의미합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> 결과에 포함할 최대 파일 크기(바이트)입니다. 0은 제한 없음을 의미합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> 결과에 포함할 최소 파일 크기(바이트)입니다. 0은 최소값이 없음을 의미합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> 이 날짜/시간(UTC) 이후에 수정된 파일만 포함합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> 이 날짜/시간(UTC) 이전에 수정된 파일만 포함하세요.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> 건너뛸 파일 특성(예: 시스템, 숨김 또는 없음).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `None` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> 이러한 와일드카드 패턴과 일치하는 파일 또는 디렉터리를 제외합니다(예: *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> 텍스트의 각 줄에서 여러 일치 항목을 검색하도록 cmdlet을 지시합니다. 이 매개 변수가 없으면 Select-String은 텍스트의 각 줄에서 첫 번째 일치 항목만 찾습니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> 이 cmdlet이 일치 항목을 대소문자를 구분하여 처리함을 나타냅니다. 기본적으로 일치 항목은 대소문자를 구분하지 않습니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> 패턴과 일치하는 줄 앞뒤로 지정된 줄 수를 캡처합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> 지정된 패턴과 일치하는 문화권 이름을 지정합니다. Culture 매개 변수는 SimpleMatch 매개 변수와 함께 사용해야 합니다. 기본 동작은 현재 PowerShell 실행 공간(세션)의 문화권을 사용합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> 대상 파일에 대한 인코딩 유형을 지정합니다. Select-String 호환 값 및 확장된 .NET 인코딩을 지원합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> 각 입력 파일에서 일치하는 텍스트의 첫 번째 인스턴스만 반환됩니다. 이는 정규식과 일치하는 내용이 있는 파일 목록을 검색하는 가장 효율적인 방법입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> 출력에서 일치하는 문자열 강조를 비활성화합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> NotMatch 매개 변수는 지정된 패턴과 일치하지 않는 텍스트를 찾습니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> cmdlet이 MatchInfo 개체 대신 단순 응답을 반환함을 나타냅니다. 패턴이 발견되면 반환 값은 $true이고, 패턴이 발견되지 않으면 $null입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> cmdlet이 MatchInfo 개체 대신 일치하는 문자열만 출력하도록 합니다. 이는 Unix grep 또는 Windows findstr.exe 명령과 가장 유사한 동작을 초래합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> cmdlet이 정규식 일치 대신 단순 일치를 사용함을 나타냅니다. 단순 일치에서 Select-String은 Pattern 매개 변수의 텍스트를 입력에서 검색합니다. Pattern 매개 변수의 값을 정규식 문으로 해석하지 않습니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-DuplicateFiles.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-TextFileAtomic.md)
