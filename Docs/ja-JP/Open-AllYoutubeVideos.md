# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> キーボードショートカットでブラウザウィンドウでYouTube動画を開いて操作します。

## Description

ブラウザウィンドウで、検索語に一致するYouTube動画やさまざまなYouTubeセクションの動画を開きます。インタラクティブインターフェースを通じて、動画再生とナビゲーションのためのキーボードコントロールを提供します。複数のブラウザと、検索結果、登録チャンネル、後で見る、おすすめ動画、急上昇コンテンツなど、さまざまなYouTubeコンテンツタイプに対応しています。

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [-Webkit] [<CommonParameters>]
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
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft EdgeまたはGoogle Chromeで開きます |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox で開く |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright で管理される WebKit ブラウザを使用します |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | フルスクリーンモードでの起動を防ぎます |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを非表示にする |
| `-AcceptLang` | String | — | — | Named | `$null` | ブラウザのaccept-lang HTTPヘッダーを設定する |

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
