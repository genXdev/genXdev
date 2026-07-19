# Clear-YoutubeWatched

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> ブラウザのローカルストレージからYouTubeの視聴履歴を消去します。

## Description

この関数は、ブラウザ内のYouTubeタブを選択し、Open-AllYoutubeVideos -> qvideos コマンドレットの視聴済み動画に関するローカルストレージ値をリセットすることで、視聴履歴をクリアします。この関数を使用するには、ブラウザでYouTubeタブが開かれている必要があります。

## Syntax

```powershell
Clear-YoutubeWatched [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブラウザをご利用ください |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome ブラウザを使用してください |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft Edge または Google Chrome を使用してください。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox ブラウザを使用してください |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright 管理の WebKit ブラウザを使用 |

## Examples

### Clear-YoutubeWatched Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the currently open YouTube tab.

```powershell
Clear-YoutubeWatched
Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the
currently open YouTube tab.
```

## Related Links

- [Clear-YoutubeWatched on GitHub](https://github.com/genXdev/genXdev)
