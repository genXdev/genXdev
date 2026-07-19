# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 画像データからレスポンシブなメイソンリーレイアウトのHTMLギャラリーを生成します。

## Description

画像を表示するための、レスポンシブなメーソンリーグリッドレイアウトのインタラクティブなHTMLギャラリーを作成します。機能:
- 画面サイズに適応するレスポンシブグリッドレイアウト
- 説明とキーワードを表示する画像ツールチップ
- 画像パスをクリックしてコピーする機能
- ホバーエフェクト付きのクリーンでモダンなスタイリング

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | パス、キーワード、説明を持つ画像オブジェクトの配列 |
| `-FilePath` | String | — | — | 1 | `$null` | 生成された HTML ファイルの出力パス |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | ギャラリーのタイトル |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | ギャラリーの説明 |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | 編集が有効かどうか |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | 削除が有効かどうか |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | 移植性を高めるため、ファイルURLではなくbase64データURLとして画像を埋め込む |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | 丸みを帯びた長方形で画像のみを表示し、下にテキストはなし。 |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | 1秒あたりのページ自動スクロールピクセル数（無効にする場合はnull） |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | 可視範囲内の長方形（オブジェクト/面）をアニメーションさせ、300msごとに循環させる |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Force single column layout (centered, 1/3 screen width) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | 各画像パスに付加するプレフィックス（例：リモートURL用） |
| `-PageSize` | Int32 | — | — | Named | `20` | 1ページあたりに読み込む画像の数（動的読み込みの場合） |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | 印刷モードで読み込む画像の最大数 |
| `-RootMargin` | String | — | — | Named | `'1200px'` | 無限スクロールトリガーのIntersectionObserver rootMargin（例: "1200px"） |
| `-Threshold` | Double | — | — | Named | `0.1` | 無限スクロールトリガーのためのIntersectionObserver閾値 |

## Examples

### Create gallery from image array and save to file $images = @(     @{         path = "C:\photos\sunset.jpg"         keywords = @("nature", "sunset", "landscape")         description = @{             short_description = "Mountain sunset"             long_description = "Beautiful sunset over mountain range"         }     } ) GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"

```powershell
Create gallery from image array and save to file
$images = @(
    @{
        path = "C:\photos\sunset.jpg"
        keywords = @("nature", "sunset", "landscape")
        description = @{
            short_description = "Mountain sunset"
            long_description = "Beautiful sunset over mountain range"
        }
    }
)
GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"
```

### Generate HTML string without saving $html = GenerateMasonryLayoutHtml $images

```powershell
Generate HTML string without saving
$html = GenerateMasonryLayoutHtml $images
```

## Outputs

- `String`

## Related Links

- [GenerateMasonryLayoutHtml on GitHub](https://github.com/genXdev/genXdev)
