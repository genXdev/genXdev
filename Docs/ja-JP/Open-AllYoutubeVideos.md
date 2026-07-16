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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('')` | YouTubeの動画を見つけるための検索キーワード |
| `-Subscriptions` | SwitchParameter | — | — | Named | — | 購読チャンネルの動画を開く |
| `-WatchLater` | SwitchParameter | — | — | Named | — | "後で見る" プレイリストから動画を開く |
| `-Recommended` | SwitchParameter | — | — | Named | — | おすすめの動画を開く |
| `-Trending` | SwitchParameter | — | — | Named | — | 話題の動画を開く |
| `-Private` | SwitchParameter | — | — | Named | — | シークレットモードで開く |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge で開く |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome で開く |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | フルスクリーンモードでの起動を防ぎます |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを非表示にする |
| `-AcceptLang` | String | — | — | Named | `$null` | ブラウザのaccept-lang HTTPヘッダーを設定する |

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)
