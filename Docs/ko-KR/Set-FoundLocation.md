# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> 첫 번째 일치하는 파일이나 폴더를 찾아 해당 위치로 설정합니다.

## Description

이 cmdlet은 검색 구문을 사용하여 첫 번째 일치하는 폴더 또는 파일(선택 사항)을 찾고 해당 디렉터리로 변경하여 디렉터리를 빠르게 전환할 수 있도록 도와줍니다. 콘텐츠, 파일 특성, 크기, 수정 날짜 및 기타 여러 조건에 의한 고급 필터링을 지원합니다.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | 검색할 파일 이름 또는 패턴입니다. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | 파이프라인 입력에서 검색할 파일 이름 또는 패턴입니다. 기본값은 '*'입니다. *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | 파일 내용 내에서 검색할 정규식 패턴 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | 선택된 범주에 속하는 파일만 출력합니다. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | 디렉터리 작업의 최대 병렬 처리 수준 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | 선택 사항: 취소 시간 제한(초) |
| `-AllDrives` | SwitchParameter | — | — | Named | — | 사용 가능한 모든 드라이브 검색 |
| `-File` | SwitchParameter | — | — | Named | — | 파일 이름만 검색하고 처음 발견한 파일의 폴더로 변경 |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | 파일 이름 일치를 포함하고 첫 번째 발견된 파일의 폴더로 변경 |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | 검색 결과에 대체 데이터 스트림 포함 |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | 하위 디렉터리로 재귀하지 않음 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | 디렉터리 탐색 중 심볼릭 링크와 접합점 따르기 |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | 광 디스크 드라이브 포함 |
| `-SearchDrives` | String[] | — | — | Named | `@()` | 선택 사항: 특정 드라이브 검색 |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | 선택 사항: 특정 드라이브 검색 |
| `-Root` | String[] | — | — | Named | `@()` | 선택 사항: 제공된 이름과 결합된 특정 기본 폴더 검색 |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | 파일 내용을 검색할 때 텍스트가 아닌 파일(바이너리, 이미지 등) 포함 |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | 파일 및 디렉터리의 대/소문자 구분을 설정하거나 가져옵니다 |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | 설정된 경우, 대체 데이터 스트림(ADS) 내에서 콘텐츠 검색을 수행합니다. 설정되지 않은 경우, 콘텐츠를 검색하지 않고 ADS 파일 정보를 출력합니다. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 디렉터리 순회의 최대 재귀 깊이입니다. 0은 무제한을 의미합니다. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최대 파일 크기(바이트)입니다. 0은 제한 없음을 의미합니다. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 결과에 포함할 최소 파일 크기(바이트)입니다. 0은 최소값이 없음을 의미합니다. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | 이 날짜/시간(UTC) 이후에 수정된 파일만 포함합니다. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | 이 날짜/시간(UTC) 이전에 수정된 파일만 포함하세요. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | 건너뛸 파일 특성(예: 시스템, 숨김 또는 없음). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | 이러한 와일드카드 패턴과 일치하는 파일 또는 디렉터리를 제외합니다(예: *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | 이 cmdlet이 일치 항목을 대소문자를 구분하여 처리함을 나타냅니다. 기본적으로 일치 항목은 대소문자를 구분하지 않습니다. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | 지정된 패턴과 일치하는 문화권 이름을 지정합니다. Culture 매개 변수는 SimpleMatch 매개 변수와 함께 사용해야 합니다. 기본 동작은 현재 PowerShell 실행 공간(세션)의 문화권을 사용합니다. *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | 대상 파일의 인코딩 유형을 지정합니다. 기본값은 utf8NoBOM입니다. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | NotMatch 매개 변수는 지정된 패턴과 일치하지 않는 텍스트를 찾습니다. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | cmdlet이 정규식 일치 대신 단순 일치를 사용함을 나타냅니다. 단순 일치에서 Select-String은 Pattern 매개 변수의 텍스트를 입력에서 검색합니다. Pattern 매개 변수의 값을 정규식 문으로 해석하지 않습니다. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Set-Location 대신 Push-Location을 사용하여 위치 스택에 위치를 푸시합니다. |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | 설정된 경우, 정확한 이름 일치만 고려됩니다. 기본적으로 이름에 와일드카드 문자가 포함되지 않은 경우 와일드카드 일치가 사용됩니다. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

'*.Console' 패턴과 일치하는 첫 번째 디렉터리에 대한 변경 사항입니다.

### lcd *.Console

```powershell
lcd *.Console
```

별칭을 사용하여 '*.Console' 패턴과 일치하는 첫 번째 디렉터리로 변경합니다.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

'function' 단어를 포함하는 첫 번째 PowerShell 파일이 있는 디렉터리로 변경합니다.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

이름에 'test'가 포함된 첫 번째 파일이 있는 디렉터리로 변경합니다.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

패턴 '1.\d+.2025'와 일치하는 내용이 포함된 첫 번째 파일이 있는 디렉터리로 변경합니다.

## Parameter Details

### `-Name <String>`

> 검색할 파일 이름 또는 패턴입니다.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-InputObject <Object>`

> 파이프라인 입력에서 검색할 파일 이름 또는 패턴입니다. 기본값은 '*'입니다.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | InputObject |

<hr/>
### `-Content <String[]>`

> 파일 내용 내에서 검색할 정규식 패턴

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@(".*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-Category <String[]>`

> 선택된 범주에 속하는 파일만 출력합니다.

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
### `-TimeoutSeconds <Int32>`

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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-File`

> 파일 이름만 검색하고 처음 발견한 파일의 폴더로 변경

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filename` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DirectoriesAndFiles`

> 파일 이름 일치를 포함하고 첫 번째 발견된 파일의 폴더로 변경

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `FilesAndDirectories` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> 검색 결과에 대체 데이터 스트림 포함

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | `@()` |
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
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> 선택 사항: 제공된 이름과 결합된 특정 기본 폴더 검색

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> 파일 내용을 검색할 때 텍스트가 아닌 파일(바이너리, 이미지 등) 포함

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> 파일 및 디렉터리의 대/소문자 구분을 설정하거나 가져옵니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.MatchCasing]::PlatformDefault)` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> 설정된 경우, 대체 데이터 스트림(ADS) 내에서 콘텐츠 검색을 수행합니다. 설정되지 않은 경우, 콘텐츠를 검색하지 않고 ADS 파일 정보를 출력합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-ModifiedAfter <DateTime>`

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
### `-ModifiedBefore <DateTime>`

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
| **Default value** | `(
            [System.IO.FileAttributes]::System)` |
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
| **Default value** | `@("*\\.git\\*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseSensitive`

> 이 cmdlet이 일치 항목을 대소문자를 구분하여 처리함을 나타냅니다. 기본적으로 일치 항목은 대소문자를 구분하지 않습니다.

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

> 대상 파일의 인코딩 유형을 지정합니다. 기본값은 utf8NoBOM입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"UTF8NoBOM"` |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Push`

> Set-Location 대신 Push-Location을 사용하여 위치 스택에 위치를 푸시합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> 설정된 경우, 정확한 이름 일치만 고려됩니다. 기본적으로 이름에 와일드카드 문자가 포함되지 않은 경우 와일드카드 일치가 사용됩니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Rename-InProject.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-TextFileAtomic.md)
