# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]]> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]] | ✅ | ✅ (ByValue) | 0 | — | パス、キーワード、説明を持つ画像オブジェクトの配列 |
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

## Outputs

- `String`

## Related Links

- [GenerateMasonryLayoutHtml on GitHub](https://github.com/genXdev/genXdev)
