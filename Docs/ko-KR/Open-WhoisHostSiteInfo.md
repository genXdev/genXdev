# Open-WhoisHostSiteInfo

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `whois

## Synopsis

> 웹 브라우저에서 Whois 호스트 정보 조회를 엽니다.

## Description

웹 브라우저에서 도메인 이름이나 IP 주소에 대한 Whois 호스트 정보 쿼리를 엽니다. 구성 가능한 모니터 선택 및 여러 쿼리를 지원하며, 창 위치 지정, 브라우저 선택 및 자동화 기능을 포함한 광범위한 브라우저 구성 옵션을 제공합니다.

## Syntax

```powershell
Open-WhoisHostSiteInfo -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 실행할 쿼리입니다. |
| `-Language` | String | — | — | 2 | — | 반환된 검색 결과의 언어 |
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
| `-Monitor` | Int32 | — | — | Named | `-1` | 사용할 모니터, 0 = 기본, -1은 폐기, -2 = 설정된 보조 모니터, 기본값은 -1, 위치 지정 없음 |
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
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창에 포커스 설정 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창을 전면으로 설정 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 위치 지정 후 창 최대화 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复为正常状态 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell 창 포커스 복원 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 기존 브라우저 창을 재사용하지 말고, 대신 새 창을 만드세요. |
| `-PassThru` | SwitchParameter | — | — | Named | — | 브라우저 프로세스의 [System.Diagnostics.Process] 객체를 반환합니다. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | 웹 브라우저를 연 후 URL을 반환하세요 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자를 이스케이프 처리 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | SendKeys를 보낸 후 PowerShell에 키보드 포커스가 돌아가지 않도록 방지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 줄 바꿈을 위해 일반 Enter 대신 Shift+Enter를 보내기 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 다른 키 시퀀스 전송 사이의 지연 시간(밀리초) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 브라우저 창의 테두리를 제거합니다. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 사용하여 언어, 이미지 컬렉션 등 AI 기본 설정을 지정합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 환경 설정(언어, 이미지 컬렉션 등)을 위해 세션에 저장된 대체 설정을 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AI 기본 설정(언어, 이미지 컬렉션 등)은 세션에 영향을 주지 않고 영구적인 환경 설정에만 저장합니다. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 브라우저 창을 PowerShell과 다른 모니터에서 전체 화면으로 배치하거나, 같은 모니터에서 PowerShell과 나란히 배치합니다. |

## Examples

### Open-WhoisHostSiteInfo -Queries "example.com", "example.org" -Monitor 0

```powershell
Open-WhoisHostSiteInfo -Queries "example.com", "example.org" -Monitor 0
```

기본 모니터에서 여러 도메인의 Whois 정보를 엽니다.

### whois example.com -m 1

```powershell
whois example.com -m 1
```

별칭과 위치 매개변수를 사용하여 example.com의 Whois 정보를 엽니다.

### "microsoft.com", "google.com" | Open-WhoisHostSiteInfo -Private -Chrome

```powershell
"microsoft.com", "google.com" | Open-WhoisHostSiteInfo -Private -Chrome
```

파이프라인의 도메인에 대한 Whois 정보를 Chrome 시크릿 모드에서 엽니다.

## Related Links

- [Open-WhoisHostSiteInfo on GitHub](https://github.com/genXdev/genXdev)
