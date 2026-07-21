# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> 웹 브라우저에서 GitHub 리포지토리 검색 쿼리를 열거나 사용 가능한 모든 한정자와 검색 범주(리포지토리, 코드, 이슈, 사용자, 커밋, 토론, 토픽, 위키)를 지원하는 GitHub REST API에 대해 고급 검색을 실행합니다.

## Description

<details>
<summary><b>Expand description</b></summary>

GitHub 저장소 검색 쿼리를 광범위한 사용자 지정 옵션과 함께 웹 브라우저에서 열거나 고급 API 검색을 수행합니다. 이 함수는 PowerShell에서 GitHub 저장소에 빠르게 액세스할 수 있는 강력한 인터페이스를 제공하며, 여러 브라우저, 창 위치, 언어 필터링 및 키보드 자동화를 지원하거나 API를 통해 구조화된 데이터를 검색합니다.

주요 기능:

파이프라인 입력을 통한 여러 검색 쿼리 지원
자동 지역화를 포함한 언어별 필터링
멀티 브라우저 지원(Edge, Chrome, Firefox)
고급 창 위치 및 모니터 선택
비공개/시크릿 브라우징 모드
방해 없는 브라우징을 위한 애플리케이션 모드
키보드 자동화 및 포커스 관리
프로그래매틱 사용을 위한 URL 반환 옵션
한정자, 정렬, 페이지 매김을 포함한 고급 API 검색
모든 GitHub 검색 유형 지원
개인용 액세스 토큰을 사용한 인증
API 검색을 위한 비동기 작업 실행
원시 JSON 또는 구조화된 개체 출력

이 함수는 자동으로 웹 모드용 GitHub 검색 URL 또는 API 모드용 API 엔드포인트를 구성하고 모든 브라우저 관련 매개 변수를 기본 Open-Webbrowser 함수에 전달하여 일관된 동작을 보장합니다.

</details>
## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | GitHub에서 실행할 검색 쿼리입니다. 여러 쿼리와 일괄 검색을 위한 파이프라인 입력을 지원합니다. 각 쿼리는 URL로 인코딩되어 GitHub 검색에 사용됩니다. |
| `-Type` | String | — | — | Named | `'Code'` | 검색할 주요 범주입니다. 기본값은 '코드'입니다. |
| `-In` | String[] | — | — | Named | — | 검색할 필드입니다. 선택한 유형에 유효한 옵션만 허용됩니다. |
| `-User` | String | — | — | Named | — | 검색을 사용자의 리소스(리포지토리, 코드, 이슈 등)로 제한합니다. |
| `-Org` | String | — | — | Named | — | 검색을 조직으로 제한합니다. |
| `-Repo` | String | — | — | Named | — | 검색을 명명된 리포지토리('소유자/리포지토리')로 제한합니다. |
| `-Path` | String | — | — | Named | — | 특정 파일 또는 디렉터리 경로로 코드 검색 제한(와일드카드는 GitHub 검색 구문당 지원됨). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | 파일 이름(경로 제외)으로 결과를 필터링합니다. *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | 코드 검색을 파일 확장자로 제한합니다. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | 프로그래밍 언어로 필터링합니다. |
| `-Size` | String | — | — | Named | — | 파일/저장소 크기. 숫자 및 범위 구문을 지원합니다 (예제 참조). |
| `-State` | String | — | — | Named | — | 이슈/PR 관련. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: 특정 사용자가 생성한 항목만으로 제한합니다. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | 이슈/PR: 사용자가 할당된 항목으로 제한. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | 이슈/PR: 모든 지정된 문자열로 레이블이 지정되어야 합니다. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | 이슈/PR: 특정 메타데이터(예: 레이블, 마일스톤)가 누락되어 있어야 합니다. *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | 정렬 필드(유형에 따라 다름). 예: "stars", "forks", "updated" 등 |
| `-Order` | String | — | — | Named | — | 정렬을 위한 "asc" 또는 "desc" 순서. |
| `-PerPage` | Int32 | — | — | Named | `10` | 페이지 크기(최대 100). |
| `-Page` | Int32 | — | — | Named | `1` | 페이지가 매겨진 결과의 페이지 번호입니다. |
| `-Token` | String | — | — | Named | — | GitHub OAuth 또는 개인 액세스 토큰입니다. 제공되지 않으면 GITHUB_TOKEN 또는 환경 변수를 사용합니다. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | 브라우저의 accept-lang HTTP 헤더를 설정합니다. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 서로 다른 키 시퀀스를 전송하는 사이의 지연 시간(밀리초)입니다. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | 결과를 표시할 모니터입니다. 0 = 기본값, -1 = 폐기, -2 = 보조 모니터. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | 브라우저 창의 초기 너비입니다. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | 브라우저 창의 초기 높이입니다. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | 브라우저 창의 초기 X 위치입니다. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | 브라우저 창의 초기 Y 위치입니다. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | 브라우저 창에 보낼 키 입력입니다. GenXdev\Send-Key cmdlet에 대한 설명서를 참조하세요. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | 지원되는 경우 대/소문자를 구분하여 일치하는 결과만 표시합니다. |
| `-AsJob` | SwitchParameter | — | — | Named | — | 검색을 PowerShell 작업으로 비동기적으로 실행합니다. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | .DESCRIPTION
    Get-WinEvent cmdlet은 로컬 및 원격 컴퓨터의 이벤트 로그 및 ETW(Windows용 이벤트 추적) 공급자의 이벤트를 가져옵니다.

    기본적으로 Get-WinEvent는 이벤트 로그 이름을 반환합니다. 이벤트를 가져오려면 로그 파일, 로그 경로 또는 이벤트 공급자를 지정합니다.
    로그에서 이벤트를 가져오기 위해 FilterHashtable 또는 FilterXml 매개 변수를 사용하여 이벤트를 필터링할 수 있습니다.

    이 cmdlet을 사용하여 원격 컴퓨터의 이벤트 로그를 가져올 수도 있습니다. 로그 파일(.evtx, .etl, .evt)에서 이벤트를 가져오고, ETW 공급자에서 이벤트를 가져올 수 있습니다.

    이 cmdlet은 Windows Vista, Windows Server 2008 이상 버전의 Windows에서만 지원됩니다. *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | 웹 브라우저에서 여는 대신 API 모드를 사용하십시오. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | 익명 검색을 위해 브라우저를 비공개/시크릿 브라우징 모드로 엽니다. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | 필요한 경우 기존 브라우저를 중지하고 디버깅 포트를 강제로 활성화합니다. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | 검색 결과를 Microsoft Edge 브라우저에서 엽니다. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저에서 검색 결과를 엽니다. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 브라우저 설정에 따라 Microsoft Edge 또는 Google Chrome에서 검색 결과를 엽니다. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mozilla Firefox 브라우저에서 검색 결과를 엽니다. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | OS에 설치된 브라우저 대신 Playwright 관리 브라우저 사용 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright 관리 WebKit 브라우저를 엽니다. -PlayWright를 암시합니다. |
| `-Headless` | SwitchParameter | — | — | Named | — | 표시 창 없이 브라우저 실행 |
| `-All` | SwitchParameter | — | — | Named | — | 등록된 모든 최신 브라우저에서 열림 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 브라우저를 전체 화면 모드로 엽니다. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 왼쪽에 배치합니다. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 오른쪽에 배치합니다. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 상단에 배치합니다. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 하단에 배치합니다. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 중앙에 배치합니다. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 브라우저 컨트롤을 숨깁니다. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 브라우저 확장 프로그램 로딩을 방지합니다. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 브라우저에서 팝업 차단기를 비활성화합니다. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창에 포커스를 맞춥니다. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 브라우저 창을 열면 전경으로 설정합니다. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | 창을 배치한 후 최대화합니다. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell 창 포커스 복원. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 기존 브라우저 창을 재사용하지 말고 새 창을 만드십시오. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | 웹 모드에서는 브라우저 프로세스의 [System.Diagnostics.Process] 개체를 반환하고, API 모드에서는 쿼리 개체를 반환합니다. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | 웹브라우저를 열지 말고 URL만 반환하세요. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | 웹 브라우저를 연 후 URL을 반환합니다. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자 이스케이프 처리. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 키를 보낸 후 PowerShell로 키보드 포커스가 반환되지 않도록 방지합니다. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 줄 바꿈 시 일반 Enter 대신 Shift+Enter를 보냅니다. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 더 깔끔한 모양을 위해 창 테두리와 제목 표시줄을 제거합니다. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 브라우저 창을 PowerShell과 같은 모니터에서 나란히 배치합니다. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 환경 설정에 사용합니다. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 선호도에서 지웁니다. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 영구 설정에만 저장하고 세션에는 영향을 주지 않습니다. *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Parameter Details

### `-Query <String[]>`

> GitHub에서 실행할 검색 쿼리입니다. 여러 쿼리와 일괄 검색을 위한 파이프라인 입력을 지원합니다. 각 쿼리는 URL로 인코딩되어 GitHub 검색에 사용됩니다.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Queries` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Type <String>`

> 검색할 주요 범주입니다. 기본값은 '코드'입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Code'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-In <String[]>`

> 검색할 필드입니다. 선택한 유형에 유효한 옵션만 허용됩니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-User <String>`

> 검색을 사용자의 리소스(리포지토리, 코드, 이슈 등)로 제한합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Org <String>`

> 검색을 조직으로 제한합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repo <String>`

> 검색을 명명된 리포지토리('소유자/리포지토리')로 제한합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> 특정 파일 또는 디렉터리 경로로 코드 검색 제한(와일드카드는 GitHub 검색 구문당 지원됨).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Filename <String>`

> 파일 이름(경로 제외)으로 결과를 필터링합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Extension <String>`

> 코드 검색을 파일 확장자로 제한합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Language <String>`

> 프로그래밍 언어로 필터링합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Size <String>`

> 파일/저장소 크기. 숫자 및 범위 구문을 지원합니다 (예제 참조).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-State <String>`

> 이슈/PR 관련.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Author <String>`

> Issues/PR: 특정 사용자가 생성한 항목만으로 제한합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Assignee <String>`

> 이슈/PR: 사용자가 할당된 항목으로 제한.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Labels <String[]>`

> 이슈/PR: 모든 지정된 문자열로 레이블이 지정되어야 합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-No <String[]>`

> 이슈/PR: 특정 메타데이터(예: 레이블, 마일스톤)가 누락되어 있어야 합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-SortBy <String>`

> 정렬 필드(유형에 따라 다름). 예: "stars", "forks", "updated" 등

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Order <String>`

> 정렬을 위한 "asc" 또는 "desc" 순서.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerPage <Int32>`

> 페이지 크기(최대 100).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `10` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Int32>`

> 페이지가 매겨진 결과의 페이지 번호입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> GitHub OAuth 또는 개인 액세스 토큰입니다. 제공되지 않으면 GITHUB_TOKEN 또는 환경 변수를 사용합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-AcceptLang <String>`

> 브라우저의 accept-lang HTTP 헤더를 설정합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> 서로 다른 키 시퀀스를 전송하는 사이의 지연 시간(밀리초)입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Monitor <Int32>`

> 결과를 표시할 모니터입니다. 0 = 기본값, -1 = 폐기, -2 = 보조 모니터.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Width <Int32>`

> 브라우저 창의 초기 너비입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Height <Int32>`

> 브라우저 창의 초기 높이입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-X <Int32>`

> 브라우저 창의 초기 X 위치입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Y <Int32>`

> 브라우저 창의 초기 Y 위치입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-KeysToSend <String[]>`

> 브라우저 창에 보낼 키 입력입니다. GenXdev\Send-Key cmdlet에 대한 설명서를 참조하세요.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-CaseSensitive`

> 지원되는 경우 대/소문자를 구분하여 일치하는 결과만 표시합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsJob`

> 검색을 PowerShell 작업으로 비동기적으로 실행합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-RawResponse`

> .DESCRIPTION
    Get-WinEvent cmdlet은 로컬 및 원격 컴퓨터의 이벤트 로그 및 ETW(Windows용 이벤트 추적) 공급자의 이벤트를 가져옵니다.

    기본적으로 Get-WinEvent는 이벤트 로그 이름을 반환합니다. 이벤트를 가져오려면 로그 파일, 로그 경로 또는 이벤트 공급자를 지정합니다.
    로그에서 이벤트를 가져오기 위해 FilterHashtable 또는 FilterXml 매개 변수를 사용하여 이벤트를 필터링할 수 있습니다.

    이 cmdlet을 사용하여 원격 컴퓨터의 이벤트 로그를 가져올 수도 있습니다. 로그 파일(.evtx, .etl, .evt)에서 이벤트를 가져오고, ETW 공급자에서 이벤트를 가져올 수 있습니다.

    이 cmdlet은 Windows Vista, Windows Server 2008 이상 버전의 Windows에서만 지원됩니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Api`

> 웹 브라우저에서 여는 대신 API 모드를 사용하십시오.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Private`

> 익명 검색을 위해 브라우저를 비공개/시크릿 브라우징 모드로 엽니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Force`

> 필요한 경우 기존 브라우저를 중지하고 디버깅 포트를 강제로 활성화합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Edge`

> 검색 결과를 Microsoft Edge 브라우저에서 엽니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chrome`

> Google Chrome 브라우저에서 검색 결과를 엽니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chromium`

> 기본 브라우저 설정에 따라 Microsoft Edge 또는 Google Chrome에서 검색 결과를 엽니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Firefox`

> Mozilla Firefox 브라우저에서 검색 결과를 엽니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PlayWright`

> OS에 설치된 브라우저 대신 Playwright 관리 브라우저 사용

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Playwright 관리 WebKit 브라우저를 엽니다. -PlayWright를 암시합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> 표시 창 없이 브라우저 실행

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> 등록된 모든 최신 브라우저에서 열림

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> 브라우저를 전체 화면 모드로 엽니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Left`

> 브라우저 창을 화면 왼쪽에 배치합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Right`

> 브라우저 창을 화면 오른쪽에 배치합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Top`

> 브라우저 창을 화면 상단에 배치합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Bottom`

> 브라우저 창을 화면 하단에 배치합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Centered`

> 브라우저 창을 화면 중앙에 배치합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ApplicationMode`

> 브라우저 컨트롤을 숨깁니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBrowserExtensions`

> 브라우저 확장 프로그램 로딩을 방지합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-DisablePopupBlocker`

> 브라우저에서 팝업 차단기를 비활성화합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-FocusWindow`

> 열기 후 브라우저 창에 포커스를 맞춥니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SetForeground`

> 브라우저 창을 열면 전경으로 설정합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Maximize`

> 창을 배치한 후 최대화합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-RestoreFocus`

> PowerShell 창 포커스 복원.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NewWindow`

> 기존 브라우저 창을 재사용하지 말고 새 창을 만드십시오.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PassThru`

> 웹 모드에서는 브라우저 프로세스의 [System.Diagnostics.Process] 개체를 반환하고, API 모드에서는 쿼리 개체를 반환합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> 웹브라우저를 열지 말고 URL만 반환하세요.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ReturnOnlyURL`

> 웹 브라우저를 연 후 URL을 반환합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyEscape`

> 키를 보낼 때 제어 문자 이스케이프 처리.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> 키를 보낸 후 PowerShell로 키보드 포커스가 반환되지 않도록 방지합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyUseShiftEnter`

> 줄 바꿈 시 일반 Enter 대신 Shift+Enter를 보냅니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBorders`

> 더 깔끔한 모양을 위해 창 테두리와 제목 표시줄을 제거합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SideBySide`

> 브라우저 창을 PowerShell과 같은 모니터에서 나란히 배치합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SessionOnly`

> 세션에 저장된 대체 설정을 환경 설정에 사용합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ClearSession`

> 세션에 저장된 대체 설정을 선호도에서 지웁니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SkipSession`

> 영구 설정에만 저장하고 세션에는 영향을 주지 않습니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-BuiltWithSiteInfo.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-YoutubeQuery.md)
