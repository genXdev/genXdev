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
| `-Images` | IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]] | ✅ | ✅ (ByValue) | 0 | — | Array of image objects with path, keywords and description |
| `-FilePath` | String | — | — | 1 | `$null` | 生成的HTML文件输出路径 |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | 画廊标题 |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | 画廊的描述 |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | 是否启用编辑 |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | 是否启用删除 |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | 将图片以 base64 数据 URL 的形式嵌入，而非 file:// URL，以提高可移植性。 |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | 按此速率（像素/秒）自动滚动页面（设为 null 可禁用） |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | 在可见范围内动画化矩形（物体/面），每300ms循环一次 |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | 强制单列布局（居中，1/3屏幕宽度） |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | 要添加到每个图像路径前的前缀（例如用于远程URL） |
| `-PageSize` | Int32 | — | — | Named | `20` | 每页加载的图像数量（用于动态加载） |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | 打印模式下加载的最大图像数量 |
| `-RootMargin` | String | — | — | Named | `'1200px'` | 用于无限滚动触发的IntersectionObserver rootMargin（例如"1200px"） |
| `-Threshold` | Double | — | — | Named | `0.1` | 用于无限滚动触发的 IntersectionObserver 阈值 |

## Outputs

- `String`

## Related Links

- [GenerateMasonryLayoutHtml on GitHub](https://github.com/genXdev/genXdev)
