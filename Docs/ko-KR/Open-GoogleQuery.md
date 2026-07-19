# Open-GoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `q

## Synopsis

> 구글 검색어를 웹 브라우저에서 열며, 구성 가능한 설정과 광범위한 사용자 지정 옵션을 제공합니다.

## Description

웹 브라우저에서 하나 이상의 Google 쿼리를 열며, 여러 언어, 모니터 선택, 창 위치 지정, 브라우저 선택 및 키보드 자동화를 포괄적으로 지원합니다. 이 함수는 브라우저 동작과 모양을 정밀하게 제어하여 Google 검색을 수행할 수 있는 풍부한 기능의 인터페이스를 제공합니다.

주요 기능은 다음과 같습니다:
- Google의 언어 필터링을 통해 100개 이상의 언어 지원
- 자동 또는 수동 모니터 선택을 통한 다중 모니터 지원
- 창 위치 지정 (왼쪽, 오른쪽, 위쪽, 아래쪽, 중앙, 전체 화면)
- 개인/시크릿 브라우징 모드 지원
- 방해 없는 브라우징을 위한 애플리케이션 모드
- 확장 프로그램 및 팝업 차단 옵션
- 포커스 관리 및 창 조작
- 파이프라인 지원을 통한 일괄 쿼리 처리
- 브라우저 창으로의 키 입력 자동화
- 기본 브라우저 함수로의 스마트 매개변수 전달

이 함수는 Google 검색 엔진에 맞게 검색어를 자동으로 형식화하고, 지정된 경우 언어 필터링을 적용합니다. 모든 브라우저 위치 지정 및 관리 기능은 기본 Open-Webbrowser 함수에서 상속됩니다.

## Syntax

```powershell
Open-GoogleQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Google에서 검색할 검색어 |
| `-Language` | String | — | — | 1 | — | Google 검색 결과의 언어 |
| `-Private` | SwitchParameter | — | — | Named | — | 시크릿/프라이빗 브라우징 모드에서 열기 |
| `-Force` | SwitchParameter | — | — | Named | — | 디버깅 포트를 강제로 활성화하고, 필요한 경우 기존 브라우저를 중지합니다 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge에서 열기 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome에서 열기 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 브라우저에 따라 Microsoft Edge 또는 Google Chrome에서 열립니다. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox에서 열기 |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Playwright에서 관리하는 브라우저를 OS에 설치된 브라우저 대신 사용합니다 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright로 관리되는 WebKit 브라우저를 엽니다. -PlayWright를 암시합니다. |
| `-Headless` | SwitchParameter | — | — | Named | — | 보이는 창 없이 브라우저 실행 |
| `-All` | SwitchParameter | — | — | Named | — | 모든 등록된 최신 브라우저에서 열림 |
| `-Monitor` | Int32 | — | — | Named | `-1` | 사용할 모니터, 0 = 기본값, -1 = 사용 안 함, -2 = 설정된 보조 모니터, 기본값은 -1 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 전체 화면 모드로 열기 |
| `-Width` | Int32 | — | — | Named | `-1` | 웹브라우저 창의 초기 너비 |
| `-Height` | Int32 | — | — | Named | `-1` | 웹 브라우저 창의 초기 높이 |
| `-X` | Int32 | — | — | Named | `-999999` | 웹브라우저 창의 초기 X 위치 |
| `-Y` | Int32 | — | — | Named | `-999999` | 웹브라우저 창의 초기 Y 위치 |
| `-Left` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 왼쪽에 배치합니다. |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 상단에 배치 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 중앙에 배치합니다 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 브라우저 컨트롤 숨기기 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 브라우저 확장 프로그램 로딩 방지 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable the popup blocker |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | 브라우저 창에 보낼 키 입력, cmdlet GenXdev\Send-Key에 대한 설명서 참조 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자를 이스케이프 처리 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | SendKeys를 보낸 후 PowerShell에 키보드 포커스가 돌아가지 않도록 방지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 줄 바꿈을 위해 일반 Enter 대신 Shift+Enter를 보내기 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 다른 키 시퀀스 전송 사이의 지연 시간(밀리초) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창에 포커스 설정 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창을 전면으로 설정 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 위치 지정 후 창 최대화 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复为正常状态 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell 창 포커스 복원 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 기존 브라우저 창을 재사용하지 말고, 대신 새 창을 만드세요. |
| `-PassThru` | SwitchParameter | — | — | Named | — | 브라우저 프로세스의 [System.Diagnostics.Process] 객체를 반환합니다. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | 웹 브라우저를 연 후 URL을 반환하세요 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 창의 테두리를 제거합니다 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 브라우저 창을 PowerShell과 다른 모니터에서 전체 화면으로 배치하거나, 같은 모니터에서 PowerShell과 나란히 배치합니다. |

## Examples

### Open-GoogleQuery -Queries "PowerShell scripting" -Language "English" -Monitor 0

```powershell
Open-GoogleQuery -Queries "PowerShell scripting" -Language "English" -Monitor 0
```

주 모니터에서 "PowerShell 스크립팅"에 대한 영어 Google 검색을 엽니다.

### q "machine learning algorithms" -m 2 -fs

```powershell
q "machine learning algorithms" -m 2 -fs
```

모니터 2에서 전체 화면 모드로 별칭을 사용하여 "machine learning algorithms"에 대한 구글 검색을 엽니다.

### "PowerShell", "Python", "JavaScript" | Open-GoogleQuery -Language "English" -Chrome

```powershell
"PowerShell", "Python", "JavaScript" | Open-GoogleQuery -Language "English" -Chrome
```

Opens multiple Google searches in Chrome via pipeline input, each in English.

### Open-GoogleQuery -Queries "artificial intelligence" -Private -NewWindow

```powershell
Open-GoogleQuery -Queries "artificial intelligence" -Private -NewWindow
```

새 창에서 '인공지능'에 대한 비공개 검색을 엽니다.

### Open-GoogleQuery -Queries "web development" -ApplicationMode -Centered

```powershell
Open-GoogleQuery -Queries "web development" -ApplicationMode -Centered
```

애플리케이션 모드(브라우저 컨트롤 없음)로 화면 중앙에 검색을 엽니다.

## Related Links

- [Open-GoogleQuery on GitHub](https://github.com/genXdev/genXdev)
