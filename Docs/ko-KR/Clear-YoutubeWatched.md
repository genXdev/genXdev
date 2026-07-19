# Clear-YoutubeWatched

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 브라우저의 로컬 저장소에서 YouTube 시청 기록을 삭제합니다.

## Description

이 함수는 브라우저에서 YouTube 탭을 선택하고 Open-AllYoutubeVideos -> qvideos cmdlet의 시청한 동영상에 대한 로컬 스토리지 값을 재설정하여 시청 기록을 지웁니다. 브라우저에 YouTube 탭이 열려 있어야 합니다.

## Syntax

```powershell
Clear-YoutubeWatched [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저 사용 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저를 사용하세요 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 브라우저에 따라 Microsoft Edge 또는 Google Chrome을 사용하세요. |
| `-Firefox` | SwitchParameter | — | — | Named | — | 파이어폭스 브라우저를 사용하세요 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-managed WebKit 브라우저 사용 |

## Examples

### Clear-YoutubeWatched Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the currently open YouTube tab.

```powershell
Clear-YoutubeWatched
Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the
currently open YouTube tab.
```

## Related Links

- [Clear-YoutubeWatched on GitHub](https://github.com/genXdev/genXdev)
