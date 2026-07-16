# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Edge] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [<CommonParameters>]
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
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | 전체 화면 모드로 열리는 것을 방지합니다 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 브라우저 컨트롤 숨기기 |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header |

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)
