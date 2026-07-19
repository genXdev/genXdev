# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> 브라우저 창에서 키보드 단축키로 YouTube 동영상을 열고 제어합니다.

## Description

YouTube 검색어와 일치하는 동영상 또는 YouTube의 다양한 섹션에서 동영상을 브라우저 창에서 엽니다. 대화형 인터페이스를 통해 동영상 재생 및 탐색을 위한 키보드 컨트롤을 제공합니다. 여러 브라우저와 검색 결과, 구독, 나중에 볼 동영상, 추천 동영상, 트렌딩 콘텐츠 등 다양한 YouTube 콘텐츠 유형을 지원합니다.

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('')` | YouTube 검색어로 동영상 찾기 |
| `-Subscriptions` | SwitchParameter | — | — | Named | — | 구독 채널의 동영상 열기 |
| `-WatchLater` | SwitchParameter | — | — | Named | — | Open videos from watch later playlist |
| `-Recommended` | SwitchParameter | — | — | Named | — | 추천 동영상 열기 |
| `-Trending` | SwitchParameter | — | — | Named | — | 인기 동영상 열기 |
| `-Private` | SwitchParameter | — | — | Named | — | 시크릿/프라이빗 브라우징 모드에서 열기 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge에서 열기 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome에서 열기 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 브라우저에 따라 Microsoft Edge 또는 Google Chrome에서 열립니다. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox에서 열기 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright가 관리하는 WebKit 브라우저를 사용합니다 |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | 전체 화면 모드로 열리는 것을 방지합니다 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 브라우저 컨트롤 숨기기 |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header |

## Examples

### Open-AllYoutubeVideos -Queries "PowerShell tutorial","vscode tips" -Edge

```powershell
Open-AllYoutubeVideos -Queries "PowerShell tutorial","vscode tips" -Edge
```

### qvideos "PowerShell tutorial" -e

```powershell
qvideos "PowerShell tutorial" -e
```

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)
