# Show-FoundImagesInBrowser

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `showfoundimages

## Synopsis

> 격자형 웹 갤러리에서 이미지 검색 결과를 표시합니다.

## Description

이미지 검색 결과를 가져와 브라우저 기반의 메이슨리 레이아웃으로 표시합니다. 편집 및 삭제 기능이 있는 대화형 모드 또는 단순 표시 모드로 작동할 수 있습니다. 일반적으로 Find-Image에서 가져온 이미지 데이터 객체를 받아 호버 툴팁에 얼굴 인식, 객체 감지, 장면 분류 데이터와 같은 메타데이터를 표시합니다.

## Syntax

```powershell
Show-FoundImagesInBrowser [[-InputObject] <Object[]>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-OnlyReturnHtml] [-PassThru] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object[] | — | ✅ (ByValue) | 0 | `@()` | 갤러리에 표시할 이미지 데이터 객체입니다. |
| `-Interactive` | SwitchParameter | — | — | Named | — | Will connect to browser and adds additional buttons like Edit and Delete |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | 갤러리 제목 |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | 이미지 위에 마우스를 올리면 얼굴 인식 및 객체 감지 데이터가 표시됩니다. |
| `-Private` | SwitchParameter | — | — | Named | — | 시크릿/프라이빗 브라우징 모드에서 열기 |
| `-Force` | SwitchParameter | — | — | Named | — | 디버깅 포트를 강제로 활성화하고, 필요한 경우 기존 브라우저를 중지합니다 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge에서 열기 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome에서 열기 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 브라우저에 따라 Microsoft Edge 또는 Google Chrome에서 열립니다. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox에서 열기 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright가 관리하는 WebKit 브라우저를 사용합니다 |
| `-All` | SwitchParameter | — | — | Named | — | 모든 등록된 최신 브라우저에서 열림 |
| `-Monitor` | Int32 | — | — | Named | `-2` | 사용할 모니터, 0 = 기본, -1 = 무시, -2 = 설정된 보조 모니터, 기본값은 Global:DefaultSecondaryMonitor 또는 찾을 수 없으면 2 |
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
| `-NewWindow` | SwitchParameter | — | — | Named | — | 기존 창을 재사용하지 않고 새 브라우저 창을 생성합니다 |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | <html><body>If you are seeing this, your browser does not support HTML5.</body></html> |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | 이미지를 file:// URL 대신 base64 데이터 URL로 임베드하여 이식성을 높입니다. |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | 둥근 직사각형 안에 그림만 표시하고, 아래에는 텍스트가 없습니다. |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자와 수정자를 이스케이프 처리하세요 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 키 입력 시 대상 창에 키보드 포커스 유지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 키를 보낼 때 Enter 대신 Shift+Enter를 사용하세요 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 키를 전송할 때 입력 문자열 간의 지연 시간(밀리초) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 창의 테두리와 제목 표시줄을 제거하여 더 깔끔한 외관을 만듭니다. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return the browser window helper object for further manipulation |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Place browser window side by side with PowerShell on the same monitor |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | 페이지를 초당 이 픽셀 수만큼 자동 스크롤합니다 (비활성화하려면 null) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | 가시 범위 내의 사각형(객체/면)을 300ms마다 순환하며 애니메이션 처리합니다. |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | 단일 열 레이아웃 강제 (중앙 정렬, 화면 너비의 1/3) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | 각 이미지 경로 앞에 추가할 접두사 (예: 원격 URL용) |

## Examples

### Show-FoundImagesInBrowser -InputObject $images Displays the image results in a simple web gallery.

```powershell
Show-FoundImagesInBrowser -InputObject $images
Displays the image results in a simple web gallery.
```

### Show-FoundImagesInBrowser -InputObject $images -Interactive -Title "My Photos" Displays images in interactive mode with edit/delete buttons.

```powershell
Show-FoundImagesInBrowser -InputObject $images -Interactive -Title "My Photos"
Displays images in interactive mode with edit/delete buttons.
```

### showfoundimages $images -Private -FullScreen Opens the gallery in private browsing mode in fullscreen.

```powershell
showfoundimages $images -Private -FullScreen
Opens the gallery in private browsing mode in fullscreen.
```

## Related Links

- [Show-FoundImagesInBrowser on GitHub](https://github.com/genXdev/genXdev)
