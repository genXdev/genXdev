# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> 在指定目录中搜索图像文件和元数据，支持过滤功能及可选的基于浏览器的画廊展示。

## Description

在指定目录及其子目录中搜索图像文件（jpg、jpeg、png、gif、bmp、webp、tiff、tif）。对于每张图像，检查相关的 description.json、keywords.json、people.json 和 objects.json 文件以获取元数据。可以根据关键词匹配、人物识别和物体检测来过滤图像，然后将结果作为对象返回。使用 -ShowInBrowser 在基于浏览器的瀑布流布局中显示结果。

参数逻辑：
- 在同一参数类型内（如关键词、人物、物体等）：使用 OR 逻辑
  示例：-Keywords "cat","dog" 查找包含 cat 或 dog 的图像
- 在不同参数类型之间：使用 AND 逻辑
  示例：-Keywords "cat" -People "John" 查找同时包含 cat 和 John 的图像
- EXIF 范围参数：提供 [最小值, 最大值] 以进行范围过滤
- 字符串参数：支持使用 * 和 ? 进行通配符匹配

该函数搜索图像目录，并检查包含 JSON 格式元数据的备用数据流。它可以使用通配符模式匹配关键词、过滤特定人物以及搜索检测到的物体。默认返回图像数据对象。使用 -ShowInBrowser 在网页浏览器中显示。

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | 将与所有可能的元数据类型匹配。 |
| `-Name` | String[] | — | — | 1 | `@('.\')` | 用于搜索图像的目录路径数组 |
| `-Language` | String | — | — | Named | — | 描述和关键词的语言。 |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | 要查找的描述文本，支持通配符。 |
| `-Keywords` | String[] | — | — | Named | `@()` | The keywords to look for, wildcards allowed. |
| `-People` | String[] | — | — | Named | `@()` | 要寻找的人，允许使用通配符。 |
| `-Objects` | String[] | — | — | Named | `@()` | 要查找的对象，允许使用通配符。 |
| `-Scenes` | String[] | — | — | Named | `@()` | 要查找的场景类别，支持通配符。 |
| `-PictureType` | String[] | — | — | Named | `@()` | 过滤图片类型（例如：'daylight'、'evening'、'indoor'等）。支持通配符。 |
| `-StyleType` | String[] | — | — | Named | `@()` | 要筛选的风格类型（例如'休闲'、'正式'等）。支持通配符。 |
| `-OverallMood` | String[] | — | — | Named | `@()` | （用于筛选的整体情绪，例如“平静”、“欢快”、“悲伤”等。支持通配符。） |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | 通过图像EXIF元数据中的相机品牌进行筛选。支持通配符。 |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | 按图片EXIF元数据中的相机型号筛选。支持通配符。 |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | 根据图像EXIF元数据中的GPS纬度范围进行筛选 |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | 根据图像EXIF元数据中的GPS经度范围进行筛选 |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | 按图像EXIF元数据中的GPS海拔范围（米）过滤。 |
| `-GeoLocation` | Double[] | — | — | Named | — | 要搜索的附近地理坐标 [纬度, 经度]。 |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | 从地理位置搜索图像的最大距离（以米为单位） |
| `-MetaExposureTime` | Double[] | — | — | Named | — | 按图像EXIF元数据中的曝光时间范围（秒）筛选。 |
| `-MetaFNumber` | Double[] | — | — | Named | — | 根据图像EXIF元数据中的F数值（光圈）范围进行筛选。 |
| `-MetaISO` | Int32[] | — | — | Named | — | Filter by ISO sensitivity range in image EXIF metadata. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | 按焦距范围过滤图像EXIF元数据（单位：mm）。 |
| `-MetaWidth` | Int32[] | — | — | Named | — | 根据EXIF元数据按像素宽度范围筛选图像 |
| `-MetaHeight` | Int32[] | — | — | Named | — | Filter by image height range in pixels from EXIF metadata. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | 根据EXIF元数据中的拍摄日期进行筛选。可以是一个日期范围。 |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | 画廊标题 |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | 画廊的描述 |
| `-AcceptLang` | String | — | — | Named | `$null` | 设置浏览器接受语言 HTTP 头 |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到浏览器窗口的按键，参见 cmdlet GenXdev\Send-Key 的文档 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送按键时，需转义控制字符和修饰键。 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | '防止发送按键后键盘焦点返回 PowerShell' |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ('发送键时使用Shift+Enter代替Enter') |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送按键时不同输入字符串之间的延迟（以毫秒为单位） |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开浏览器窗口后聚焦 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置为前台 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后最大化窗口 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复到正常状态 |
| `-Monitor` | Int32 | — | — | Named | `-2` | ('要使用的显示器，0 = 默认，-1 = 丢弃，' +
                '-2 = 配置的辅助显示器，默认为 ' +
                "`Global:DefaultSecondaryMonitor`，如果未找到则为2") |
| `-Width` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始宽度 |
| `-Height` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始高度 |
| `-X` | Int32 | — | — | Named | `-999999` | 网络浏览器窗口的初始X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | Web浏览器窗口的初始Y坐标 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | 将图片嵌入为base64格式。 |
| `-NoFallback` | SwitchParameter | — | — | Named | — | 用于禁用回退行为的开关。 |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | 跳过数据库初始化和重建。 |
| `-AllDrives` | SwitchParameter | — | — | Named | — | 搜索所有可用驱动器 |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | 不递归到子目录 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | 在目录遍历期间跟随符号链接和连接点。 |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 目录遍历的最大递归深度。0 表示无限制。 |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 在树中向上搜索相对项且未找到任何项时的最大递归深度。0 表示禁用。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 纳入结果中的最大文件大小（以字节为单位）。0 表示无限制。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 结果中包含的文件最小字节数。0 表示无最小值。 |
| `-ModifiedAfter` | DateTime | — | — | Named | — | 仅包含在此日期/时间（UTC）之后修改的文件。 |
| `-ModifiedBefore` | DateTime | — | — | Named | — | 仅包含在此日期/时间（UTC）之前修改的文件。 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | 要跳过的文件属性（例如：系统、隐藏或无）。 |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | 过滤包含露骨内容的图像。 |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | 筛选不含露骨内容的图像。 |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | 在基于浏览器的图片画廊中显示搜索结果。 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 将图像数据作为对象返回。当与-ShowInBrowser一起使用时，既显示图库又返回对象。 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 去除窗口边框和标题栏，以获得更简洁的外观。 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Place browser window side by side with PowerShell on the same monitor |
| `-Interactive` | SwitchParameter | — | — | Named | — | 将连接浏览器并添加额外的按钮（如编辑和删除）。仅在与-ShowInBrowser一起使用时有效。 |
| `-Private` | SwitchParameter | — | — | Named | — | 在无痕/隐私浏览模式下打开 |
| `-Force` | SwitchParameter | — | — | Named | — | ('强制启用调试端口，必要时停止现有浏览器') |
| `-Edge` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 中打开 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 在谷歌浏览器中打开 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 或 Google Chrome 中打开，具体取决于默认浏览器是什么 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 在 Firefox 中打开 |
| `-PlayWright` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的浏览器，而非操作系统预装的浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 打开 Playwright 管理的 WebKit 浏览器。隐含 -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | 在无可见窗口的情况下运行浏览器 |
| `-All` | SwitchParameter | — | — | Named | — | 在所有注册的现代浏览器中打开 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 在全屏模式下打开 |
| `-Left` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕中央 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 防止加载浏览器扩展 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 禁用弹出窗口拦截器 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 不要重用现有的浏览器窗口，而是创建一个新的。 |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | 仅返回生成的HTML，而不是在浏览器中显示它。 |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | 仅以圆角矩形显示图片，下方无文字。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 使用会话中存储的替代设置来管理AI偏好，如语言、图像集合等 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除会话中存储的AI偏好设置（如语言、图像集等）的备选设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 不要使用会话中存储的替代设置，用于AI偏好设置，如语言、图像收藏等 |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | 按此速率（像素/秒）自动滚动页面（设为 null 可禁用） |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | 在可见范围内动画化矩形（物体/面），每300ms循环一次 |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | 强制单列布局（居中，1/3屏幕宽度） |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | 要添加到每个图像路径前的前缀（例如用于远程URL） |
| `-MinConfidenceRatio` | Double | — | — | Named | — | 用于过滤人物、场景和对象的最小置信度比率（0.0-1.0）。仅返回置信度大于或等于此值的人物、场景和对象数据。 |

## Examples

### Find-Image -Keywords "cat","dog" -Name "C:\Photos\*" Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

```powershell
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.
```

### findimages cat,dog "C:\Photos" Same as above using the alias and positional parameters.

```powershell
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.
```

### Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser Searches for photos containing John OR Jane and displays them in a web gallery.

```powershell
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*" Searches for images that contain vacation keywords AND John as a person AND beach objects. All three criteria must be met (AND logic between parameter types).

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).
```

### Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*" Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8. EXIF parameters use range filtering with [min, max] values.

```powershell
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.
```

### Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

```powershell
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.
```

### findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

```powershell
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*" Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.
```

### Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

```powershell
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.
```

### Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

```powershell
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.
```

### Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*" Searches for daylight photos with a calm/peaceful mood and returns the image objects.

```powershell
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.
```

### findimages -StyleType "casual" -HasNudity -Name "C:\Art\*" Searches for casual style images that contain nudity and returns the data objects.

```powershell
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.
```

### Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*" Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.

```powershell
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
```

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
