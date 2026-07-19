# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub, `qgh

## Synopsis

> 웹 브라우저에서 GitHub 저장소 검색 쿼리를 열거나, 사용 가능한 모든 한정자와 검색 카테고리(저장소, 코드, 이슈, 사용자, 커밋, 토론, 주제, 위키)를 지원하는 GitHub REST API에 대해 고급 검색을 실행합니다.

## Description

웹 브라우저에서 광범위한 사용자 지정 옵션으로 GitHub 저장소 검색 쿼리를 열거나 고급 API 검색을 수행합니다. 이 함수는 PowerShell에서 GitHub 저장소에 빠르게 액세스할 수 있는 강력한 인터페이스를 제공하며, 여러 브라우저, 창 위치 지정, 언어 필터링, 키보드 자동화를 지원하고 API를 통해 구조화된 데이터를 검색할 수 있습니다. 주요 기능:

- 파이프라인 입력을 통한 다중 검색 쿼리 지원
- 자동 지역화 기능을 갖춘 언어별 필터링
- 멀티 브라우저 지원(Edge, Chrome, Firefox)
- 고급 창 위치 지정 및 모니터 선택
- 개인/시크릿 브라우징 모드
- 산만함 없는 브라우징을 위한 애플리케이션 모드
- 키보드 자동화 및 포커스 관리
- 프로그래밍 방식 사용을 위한 URL 반환 옵션
- 한정자, 정렬, 페이지 매김을 포함한 고급 API 검색
- 모든 GitHub 검색 유형 지원
- 개인 액세스 토큰을 사용한 인증
- API 검색을 위한 비동기 작업 실행
- 원시 JSON 또는 구조화된 객체 출력

이 함수는 자동으로 웹 모드용 GitHub 검색 URL 또는 API 모드용 API 엔드포인트를 구성하고 모든 브라우저 관련 매개변수를 기본 Open-Webbrowser 함수에 전달하여 일관된 동작을 보장합니다.

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
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | GitHub에서 실행할 검색 쿼리입니다. 다중 쿼리 및 배치 검색을 위한 파이프라인 입력을 지원합니다. 각 쿼리는 URL 인코딩되어 GitHub 검색에 사용됩니다. |
| `-Type` | String | — | — | Named | `'Code'` | 검색할 주요 카테고리입니다. 기본값은 'Code'입니다. |
| `-In` | String[] | — | — | Named | — | 검색할 필드입니다. 선택한 유형에 유효한 옵션만 허용됩니다. |
| `-User` | String | — | — | Named | — | 사용자의 리소스(리포지토리, 코드, 이슈 등)로 검색을 제한합니다. |
| `-Org` | String | — | — | Named | — | 검색 범위를 조직으로 제한합니다. |
| `-Repo` | String | — | — | Named | — | 검색을 지정된 저장소('소유자/저장소')로 제한합니다. |
| `-Path` | String | — | — | Named | — | 코드 검색을 특정 파일 또는 디렉터리 경로로 제한합니다(와일드카드 지원, GitHub 검색 구문 기준). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | 파일 이름(경로가 아닌)으로 결과를 필터링합니다. *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | 코드 검색을 파일 확장자로 제한합니다. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | 프로그래밍 언어로 필터링. |
| `-Size` | String | — | — | Named | — | 파일/리포지토리 크기. 숫자 및 범위 구문 지원 (예시 참조). |
| `-State` | String | — | — | Named | — | 이슈/PR용. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | 이슈/PR: 특정 사용자가 생성한 것만 필터링합니다. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | 이슈/PR: 사용자가 할당된 것으로 제한 *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | 이슈/PR: 모든 지정된 문자열로 레이블이 지정되어야 합니다. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | 이슈/PR: 특정 메타데이터(예: 레이블, 마일스톤)가 반드시 누락되어야 함. *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | 정렬 필드 (유형에 따라 다름). 예: "stars", "forks", "updated" 등 |
| `-Order` | String | — | — | Named | — | 정렬할 "asc" 또는 "desc" 순서입니다. |
| `-PerPage` | Int32 | — | — | Named | `10` | 페이지 크기 (최대 100) |
| `-Page` | Int32 | — | — | Named | `1` | 페이지가 매겨진 결과에 대한 페이지 번호입니다. |
| `-Token` | String | — | — | Named | — | GitHub OAuth 토큰 또는 개인 액세스 토큰. 제공되지 않은 경우 GITHUB_TOKEN 또는 환경 변수를 사용합니다. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | 브라우저의 accept-lang HTTP 헤더를 설정합니다. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 다른 키 시퀀스 전송 사이의 지연 시간(밀리초). *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | 결과를 표시할 모니터. 0 = 기본, -1 = 사용 안 함, -2 = 보조. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | 브라우저 창의 초기 너비. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | 브라우저 창의 초기 높이. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | 브라우저 창의 초기 X 위치입니다. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | 브라우저 창의 초기 Y 위치입니다. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | 브라우저 창으로 전송할 키 입력. GenXdev\Send-Key cmdlet에 대한 설명서를 참조하십시오. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | 지원되는 경우 대소문자 구분 결과만 일치시킵니다. |
| `-AsJob` | SwitchParameter | — | — | Named | — | 검색을 PowerShell 작업으로 비동기적으로 실행합니다. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | {
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
} *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | 웹 브라우저로 열지 말고 API 모드를 사용하세요. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | 비공개/시크릿 브라우징 모드에서 브라우저를 열어 익명으로 검색합니다. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | 디버깅 포트를 강제로 활성화합니다. 필요한 경우 기존 브라우저를 종료합니다. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저에서 검색 결과를 엽니다. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저에서 검색 결과를 엽니다. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Microsoft Edge 또는 Google Chrome에서 검색 결과를 엽니다. 기본 브라우저에 따라 다릅니다. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mozilla Firefox 브라우저에서 검색 결과를 엽니다. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Playwright에서 관리하는 브라우저를 OS에 설치된 브라우저 대신 사용합니다 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright로 관리되는 WebKit 브라우저를 엽니다. -PlayWright를 암시합니다. |
| `-Headless` | SwitchParameter | — | — | Named | — | 보이는 창 없이 브라우저 실행 |
| `-All` | SwitchParameter | — | — | Named | — | 모든 등록된 최신 브라우저에서 열림 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 전체 화면 모드로 브라우저를 엽니다. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 왼쪽에 배치하세요. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 오른쪽에 배치합니다. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 상단에 배치하세요. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 중앙에 배치합니다. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 브라우저 컨트롤을 숨깁니다. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 브라우저 확장 프로그램 로딩 방지 *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable the popup blocker in the browser. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 브라우저 창을 연 후 집중하십시오. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창을 전경으로 설정합니다. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | 위치 지정 후 창을 최대화합니다. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore PowerShell window focus. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 기존 브라우저 창을 재사용하지 말고, 대신 새 창을 만드세요. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | 웹 모드에서는 브라우저 프로세스의 [System.Diagnostics.Process] 개체를 반환하고, API 모드에서는 쿼리 개체를 반환합니다. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | 웹브라우저를 열지 말고 URL만 반환하세요. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | 웹 브라우저를 연 후, URL을 반환하세요. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자를 이스케이프하세요. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Prevent returning keyboard focus to PowerShell after sending keys. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 깔끔한 모양을 위해 창 테두리와 제목 표시줄을 제거합니다. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 브라우저 창과 PowerShell을 같은 모니터에 나란히 배치하세요. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 환경설정에 사용합니다. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 선호도에 대한 대체 설정을 지웁니다. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 설정 변경 사항은 세션에 영향을 주지 않고 영구 설정에만 저장하십시오. *(Parameter set: )* |

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

## Outputs

- `PSObject`

## Related Links

- [Open-GithubQuery on GitHub](https://github.com/genXdev/genXdev)
