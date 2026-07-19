# Open-GoogleSiteInfo

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 웹 브라우저에서 Google 사이트 정보 조회를 엽니다.

## Description

지정된 도메인에 대해 사이트 정보(site:, link:, related:)와 관련된 여러 Google 검색 쿼리를 웹 브라우저에서 엽니다.

## Syntax

```powershell
Open-GoogleSiteInfo -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
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
| `-NoBorders` | SwitchParameter | — | — | Named | — | 브라우저 창에서 창 테두리를 제거합니다 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 브라우저 프로필에 세션 전용 모드 사용 (영구 데이터 없음) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 브라우저 세션/프로필 데이터를 열기 전에 지우기 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 브라우저 세션/프로필 사용 건너뛰기 (기본값 사용) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Open browser windows side by side |
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

## Examples

### Open-GoogleSiteInfo -Queries "example.com" -Monitor 0

```powershell
Open-GoogleSiteInfo -Queries "example.com" -Monitor 0
```

### "example.com" | Open-GoogleSiteInfo -mon -1

```powershell
"example.com" | Open-GoogleSiteInfo -mon -1
```

## Related Links

- [Open-GoogleSiteInfo on GitHub](https://github.com/genXdev/genXdev)
