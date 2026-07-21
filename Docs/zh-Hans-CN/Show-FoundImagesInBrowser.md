# Show-FoundImagesInBrowser

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `showfoundimages`

## Synopsis

> 以瀑布流布局网页画廊显示图像搜索结果。

## Description

获取图像搜索结果，并将其以浏览器为基础的瀑布流布局显示。可运行在具有编辑和删除功能的交互模式，或简单显示模式。接受通常来自Find-Image的图像数据对象，并通过悬停工具提示显示元数据，如人脸识别、对象检测和场景分类数据。

## Syntax

```powershell
Show-FoundImagesInBrowser [[-InputObject] <Object[]>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-OnlyReturnHtml] [-PassThru] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object[] | — | ✅ (ByValue) | 0 | `@()` | 要在图库中显示的图像数据对象。 |
| `-Interactive` | SwitchParameter | — | — | Named | — | 将连接到浏览器并添加额外的按钮，如编辑和删除 |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | 画廊标题 |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | 悬停图像以查看人脸识别和物体检测数据 |
| `-Private` | SwitchParameter | — | — | Named | — | 在无痕/隐私浏览模式下打开 |
| `-Force` | SwitchParameter | — | — | Named | — | 强制启用调试端口，必要时关闭现有浏览器 |
| `-Edge` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 中打开 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 在 Google Chrome 中打开 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 或 Google Chrome 中打开，具体取决于默认浏览器是什么 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 在 Firefox 中打开 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的 WebKit 浏览器 |
| `-All` | SwitchParameter | — | — | Named | — | 在所有已注册的现代浏览器中打开 |
| `-Monitor` | Int32 | — | — | Named | `-2` | 要使用的显示器，0 = 默认，-1 = 禁用，-2 = 配置的辅助显示器，默认为全局设置中的 DefaultSecondaryMonitor，如果未找到则使用 2 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 以全屏模式打开 |
| `-Width` | Int32 | — | — | Named | `-1` | 网络浏览器窗口的初始宽度 |
| `-Height` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始高度 |
| `-X` | Int32 | — | — | Named | `-999999` | 网页浏览器窗口的初始 X 位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | Web浏览器窗口的初始Y位置 |
| `-Left` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕底部 |
| `-Centered` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕中央 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 阻止加载浏览器扩展 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 禁用弹出窗口拦截器 |
| `-AcceptLang` | String | — | — | Named | `$null` | 设置浏览器接受语言的HTTP头 |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到浏览器窗口的按键，请参阅 cmdlet GenXdev\Send-Key 的文档 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开后聚焦浏览器窗口 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置于前台 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后最大化窗口 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复至正常状态 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 创建新的浏览器窗口，而不是重复使用现有窗口 |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | . 概要
    向文件添加内容，例如 "附加到此文件"、"附加到其他内容" 或 "附加到未加密的内容"？
    附加到此文件？附加到其他内容？附加到未加密的内容？
    不不不，没有对象，没有加密，没有容器。
    使用类似于 PowerShell 的内容管道（如 "获取内容" 和 "设置内容"）附加内容。

. 描述
    `添加内容` cmdlet 将内容追加到指定项或文件。可通过指定文件路径指定内容，或使用管道将内容传递给 `添加内容` 命令。

    如果需要在特定位置创建新文件，请指定路径。

    输入文件的第 1 行？模式？文件？不。

    在 PowerShell 3.0 中引入的 `添加内容` 需要 Microsoft.PowerShell.Utility 模块。

. 参数

    -Credential
        指定有权执行此操作的用户帐户。默认为当前用户。

        键入用户名，例如 "User01" 或 "Domain01\User01"；或输入一个 PSCredential 对象，例如 `Get-Credential` cmdlet 生成的对象。

        如果键入用户名，此 cmdlet 会提示输入密码。

        此参数在某些 PowerShell 提供程序安装的 cmdlet 中不受支持。

    -Exclude
        作为字符串数组省略指定项。此参数的值限定了 Path 参数。输入路径元素或模式，例如 "*.txt"。支持通配符。

    -Filter
        以提供程序的格式或语言指定筛选器。此参数值限定了 Path 参数。筛选器的语法（包括是否使用通配符）由提供程序定义。筛选器通常比包含其他参数更高效，因为提供程序在检索对象时应用筛选器，而不是在 PowerShell 检索对象后再应用筛选器。

    -Force
        覆盖只读保护，允许将内容追加到现有只读文件。但不会覆盖安全限制。

    -Include
        作为字符串数组仅包含指定项。此参数的值限定了 Path 参数。输入路径元素或模式，例如 "*.txt"。支持通配符。

    -LiteralPath
        指定一个或多个位置的路径。与 Path 参数不同，LiteralPath 的值完全按输入使用。不会将任何字符解释为通配符。如果路径包含转义字符，请将其括在单引号中。单引号告诉 PowerShell 不要将任何字符解释为转义序列。

    -NoNewline
        指示此 cmdlet 不向内容添加新行。

        为属于字符串数组的字符串对象追加不带换行符的字符串内容。如果指定了分隔符，则使用分隔符分隔它们。如果未指定分隔符，则在不带分隔符的情况下追加它们。

        此参数是在 PowerShell 3.0 中引入的。

    -PassThru
        返回一个代表所添加内容的对象。默认情况下，此 cmdlet 不生成任何输出。

    -Path
        指定接收附加内容的项的路径。允许使用通配符。如果指定多个路径，请使用逗号分隔。

    -Stream
        指定备用数据流。如果流不存在，此 cmdlet 会创建它。支持通配符。

        此参数是在 Windows PowerShell 3.0 中引入的。

    -Value
        指定要追加的内容。要追加包含引号的字符串，请使用单引号或双引号括住字符串。例如 `-Value '这是一个带引号的字符串'`。指定包含引号的字符串，例如 `-Value '这是一个带"双引号"的字符串'`。若要追加多行字符串或多行字符串对象，请使用 here-string。

    -Confirm
        在运行 cmdlet 前提示确认。

    -WhatIf
        显示 cmdlet 运行时会发生什么。cmdlet 未运行。

    -UseTransaction
        在活动事务的命令中包含该参数。此参数仅在事务正在进行时有效。

    -Encoding
        指定目标文件的编码类型。默认值为 utf8NoBOM。可接受的值有：

        - ascii：使用 ASCII（7 位）字符集。
        - bigendianunicode：使用 big-endian 字节顺序的 UTF-16 格式。
        - oem：使用 MS-DOS 和控制台程序的默认编码。
        - unicode：使用 little-endian 字节顺序的 UTF-16 格式。
        - utf7：使用 UTF-7 格式。
        - utf8：使用 UTF-8 格式。
        - utf8BOM：使用带字节顺序标记 (BOM) 的 UTF-8 格式。
        - utf8NoBOM：使用不带字节顺序标记 (BOM) 的 UTF-8 格式。
        - utf32：使用 UTF-32 格式。

        编码是 PowerShell 3.0 中引入的。

. 示例

    -------------------------- 示例 1 --------------------------
    ```
    PS C:\> 添加内容 -Path C:\Test\test.txt -Value "附录"
    ```

    此命令将 "附录" 追加到 Test.txt 文件末尾。当命令完成时，文件中将包含两行字符串："测试" 和 "附录"。

    -------------------------- 示例 2 --------------------------
    ```
    PS C:\> 获取内容 -Path C:\Test\test.txt | 添加内容 -Path C:\Test\test2.txt
    ```

    此命令获取 C:\Test\test.txt 文件的内容，并将该数据追加到 C:\Test\test2.txt 文件。

    -------------------------- 示例 3 --------------------------
    ```
    PS C:\> 添加内容 -Path C:\Test\* -Exclude *.doc -Value "附录"
    ```

    此命令将 "附录" 追加到除 .doc 文件外的所有 C:\Test 目录中的文件。

    -------------------------- 示例 4 --------------------------
    ```
    PS C:\> 添加内容 -Path C:\Test -Value "附录" -PassThru -NoNewline
    ```

    此命令将 "附录" 追加到 C:\Test 目录中的文件。因为指定了 PassThru 参数，所以会显示文件。由于指定了 NoNewline 参数，没有换行符会添加到文件中。

    -------------------------- 示例 5 --------------------------
    ```
    PS C:\> 添加内容 -Path Profile.ps1 -Value (获取日期) -PassThru
    ```

    此命令将当前日期追加到本地计算机上的 Profile.ps1 文件。该命令使用 PassThru 参数将文件对象传递给管道以显示。

    -------------------------- 示例 6 --------------------------
    ```
    PS C:\> 添加内容 -Path .\*.txt -Value "--- EOF ---" -Force
    ```

    此命令将 "--- EOF ---" 字符串追加到当前目录中的所有文本文件。由于使用了 Force 参数，因此会覆盖只读权限。

    -------------------------- 示例 7 --------------------------
    ```
    PS C:\> 添加内容 -Path C:\Test -Stream stream1 -Value "附录 1"
    ```

    此命令将 "附录 1" 追加到 C:\Test 目录中所有文件的 stream1 备用数据流。

    -------------------------- 示例 8 --------------------------
    ```
    PS C:\> $cred = 获取凭据
    PS C:\> 添加内容 -Path C:\Test\test.txt -Value "附录" -Credential $cred
    ```

    这些命令将 "附录" 追加到 Test.txt 文件。使用 -Credential 参数指定用户凭据以执行操作。 |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | 为了更好的可移植性，请将图片嵌入为 base64 数据 URL，而非 file:// URL。 |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | 仅以圆角矩形显示图片，下方无文字。 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送按键时转义控制字符和修饰键 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 发送按键时保持键盘焦点在目标窗口上 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 发送按键时使用 Shift+Enter 代替 Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送按键时不同输入字符串之间的延迟（毫秒） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除窗口边框和标题栏，以获得更简洁的外观 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 返回浏览器窗口辅助对象以供进一步操作 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 在同一个显示器上将浏览器窗口与PowerShell并排放置 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 在会话中使用备选设置来配置AI偏好 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除为 AI 偏好存储在会话中的替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久性首选项中，不影响当前会话 |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | 页面自动滚动的速度（像素/秒），设为 null 可禁用 |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | 对可见范围内的矩形（对象/面）进行动画处理，每300毫秒循环一次 |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | 强制单列布局（居中，1/3屏幕宽度） |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | 每个图像路径前添加的前缀（例如，用于远程URL） |

## Examples

### Show-FoundImagesInBrowser -InputObject $images Displays the image results in a simple web gallery.

```powershell
Show-FoundImagesInBrowser -InputObject $images
Displays the image results in a simple web gallery.
```

### Show-FoundImagesInBrowser -InputObject $images -Interactive -Title "My Photos" Displays images in interactive mode with edit/delete buttons.

```powershell
Show-FoundImagesInBrowser -InputObject $images -Interactive -Title "My Photos"
Displays images in interactive mode with edit/delete buttons.
```

### showfoundimages $images -Private -FullScreen Opens the gallery in private browsing mode in fullscreen.

```powershell
showfoundimages $images -Private -FullScreen
Opens the gallery in private browsing mode in fullscreen.
```

## Parameter Details

### `-InputObject <Object[]>`

> 要在图库中显示的图像数据对象。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@()` |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Interactive`

> 将连接到浏览器并添加额外的按钮，如编辑和删除

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `i`, `editimages` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Title <String>`

> 画廊标题

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Photo Gallery'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> 悬停图像以查看人脸识别和物体检测数据

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `('Hover over images to see face recognition ' +
            'and object detection data')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> 在无痕/隐私浏览模式下打开

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> 强制启用调试端口，必要时关闭现有浏览器

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> 在 Microsoft Edge 中打开

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> 在 Google Chrome 中打开

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> 在 Microsoft Edge 或 Google Chrome 中打开，具体取决于默认浏览器是什么

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> 在 Firefox 中打开

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> 使用 Playwright 管理的 WebKit 浏览器

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> 在所有已注册的现代浏览器中打开

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> 要使用的显示器，0 = 默认，-1 = 禁用，-2 = 配置的辅助显示器，默认为全局设置中的 DefaultSecondaryMonitor，如果未找到则使用 2

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> 以全屏模式打开

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> 网络浏览器窗口的初始宽度

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Web浏览器窗口的初始高度

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> 网页浏览器窗口的初始 X 位置

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> Web浏览器窗口的初始Y位置

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> 将浏览器窗口置于屏幕左侧

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> 将浏览器窗口放置在屏幕右侧

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> 将浏览器窗口置于屏幕顶部

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> 将浏览器窗口置于屏幕底部

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> 将浏览器窗口置于屏幕中央

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> 隐藏浏览器控件

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> 阻止加载浏览器扩展

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> 禁用弹出窗口拦截器

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> 设置浏览器接受语言的HTTP头

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> 要发送到浏览器窗口的按键，请参阅 cmdlet GenXdev\Send-Key 的文档

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> 打开后聚焦浏览器窗口

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> 打开后将浏览器窗口置于前台

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> 定位后最大化窗口

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> 定位后将窗口恢复至正常状态

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> 恢复 PowerShell 窗口焦点

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> 创建新的浏览器窗口，而不是重复使用现有窗口

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyReturnHtml`

> . 概要
    向文件添加内容，例如 "附加到此文件"、"附加到其他内容" 或 "附加到未加密的内容"？
    附加到此文件？附加到其他内容？附加到未加密的内容？
    不不不，没有对象，没有加密，没有容器。
    使用类似于 PowerShell 的内容管道（如 "获取内容" 和 "设置内容"）附加内容。

. 描述
    `添加内容` cmdlet 将内容追加到指定项或文件。可通过指定文件路径指定内容，或使用管道将内容传递给 `添加内容` 命令。

    如果需要在特定位置创建新文件，请指定路径。

    输入文件的第 1 行？模式？文件？不。

    在 PowerShell 3.0 中引入的 `添加内容` 需要 Microsoft.PowerShell.Utility 模块。

. 参数

    -Credential
        指定有权执行此操作的用户帐户。默认为当前用户。

        键入用户名，例如 "User01" 或 "Domain01\User01"；或输入一个 PSCredential 对象，例如 `Get-Credential` cmdlet 生成的对象。

        如果键入用户名，此 cmdlet 会提示输入密码。

        此参数在某些 PowerShell 提供程序安装的 cmdlet 中不受支持。

    -Exclude
        作为字符串数组省略指定项。此参数的值限定了 Path 参数。输入路径元素或模式，例如 "*.txt"。支持通配符。

    -Filter
        以提供程序的格式或语言指定筛选器。此参数值限定了 Path 参数。筛选器的语法（包括是否使用通配符）由提供程序定义。筛选器通常比包含其他参数更高效，因为提供程序在检索对象时应用筛选器，而不是在 PowerShell 检索对象后再应用筛选器。

    -Force
        覆盖只读保护，允许将内容追加到现有只读文件。但不会覆盖安全限制。

    -Include
        作为字符串数组仅包含指定项。此参数的值限定了 Path 参数。输入路径元素或模式，例如 "*.txt"。支持通配符。

    -LiteralPath
        指定一个或多个位置的路径。与 Path 参数不同，LiteralPath 的值完全按输入使用。不会将任何字符解释为通配符。如果路径包含转义字符，请将其括在单引号中。单引号告诉 PowerShell 不要将任何字符解释为转义序列。

    -NoNewline
        指示此 cmdlet 不向内容添加新行。

        为属于字符串数组的字符串对象追加不带换行符的字符串内容。如果指定了分隔符，则使用分隔符分隔它们。如果未指定分隔符，则在不带分隔符的情况下追加它们。

        此参数是在 PowerShell 3.0 中引入的。

    -PassThru
        返回一个代表所添加内容的对象。默认情况下，此 cmdlet 不生成任何输出。

    -Path
        指定接收附加内容的项的路径。允许使用通配符。如果指定多个路径，请使用逗号分隔。

    -Stream
        指定备用数据流。如果流不存在，此 cmdlet 会创建它。支持通配符。

        此参数是在 Windows PowerShell 3.0 中引入的。

    -Value
        指定要追加的内容。要追加包含引号的字符串，请使用单引号或双引号括住字符串。例如 `-Value '这是一个带引号的字符串'`。指定包含引号的字符串，例如 `-Value '这是一个带"双引号"的字符串'`。若要追加多行字符串或多行字符串对象，请使用 here-string。

    -Confirm
        在运行 cmdlet 前提示确认。

    -WhatIf
        显示 cmdlet 运行时会发生什么。cmdlet 未运行。

    -UseTransaction
        在活动事务的命令中包含该参数。此参数仅在事务正在进行时有效。

    -Encoding
        指定目标文件的编码类型。默认值为 utf8NoBOM。可接受的值有：

        - ascii：使用 ASCII（7 位）字符集。
        - bigendianunicode：使用 big-endian 字节顺序的 UTF-16 格式。
        - oem：使用 MS-DOS 和控制台程序的默认编码。
        - unicode：使用 little-endian 字节顺序的 UTF-16 格式。
        - utf7：使用 UTF-7 格式。
        - utf8：使用 UTF-8 格式。
        - utf8BOM：使用带字节顺序标记 (BOM) 的 UTF-8 格式。
        - utf8NoBOM：使用不带字节顺序标记 (BOM) 的 UTF-8 格式。
        - utf32：使用 UTF-32 格式。

        编码是 PowerShell 3.0 中引入的。

. 示例

    -------------------------- 示例 1 --------------------------
    ```
    PS C:\> 添加内容 -Path C:\Test\test.txt -Value "附录"
    ```

    此命令将 "附录" 追加到 Test.txt 文件末尾。当命令完成时，文件中将包含两行字符串："测试" 和 "附录"。

    -------------------------- 示例 2 --------------------------
    ```
    PS C:\> 获取内容 -Path C:\Test\test.txt | 添加内容 -Path C:\Test\test2.txt
    ```

    此命令获取 C:\Test\test.txt 文件的内容，并将该数据追加到 C:\Test\test2.txt 文件。

    -------------------------- 示例 3 --------------------------
    ```
    PS C:\> 添加内容 -Path C:\Test\* -Exclude *.doc -Value "附录"
    ```

    此命令将 "附录" 追加到除 .doc 文件外的所有 C:\Test 目录中的文件。

    -------------------------- 示例 4 --------------------------
    ```
    PS C:\> 添加内容 -Path C:\Test -Value "附录" -PassThru -NoNewline
    ```

    此命令将 "附录" 追加到 C:\Test 目录中的文件。因为指定了 PassThru 参数，所以会显示文件。由于指定了 NoNewline 参数，没有换行符会添加到文件中。

    -------------------------- 示例 5 --------------------------
    ```
    PS C:\> 添加内容 -Path Profile.ps1 -Value (获取日期) -PassThru
    ```

    此命令将当前日期追加到本地计算机上的 Profile.ps1 文件。该命令使用 PassThru 参数将文件对象传递给管道以显示。

    -------------------------- 示例 6 --------------------------
    ```
    PS C:\> 添加内容 -Path .\*.txt -Value "--- EOF ---" -Force
    ```

    此命令将 "--- EOF ---" 字符串追加到当前目录中的所有文本文件。由于使用了 Force 参数，因此会覆盖只读权限。

    -------------------------- 示例 7 --------------------------
    ```
    PS C:\> 添加内容 -Path C:\Test -Stream stream1 -Value "附录 1"
    ```

    此命令将 "附录 1" 追加到 C:\Test 目录中所有文件的 stream1 备用数据流。

    -------------------------- 示例 8 --------------------------
    ```
    PS C:\> $cred = 获取凭据
    PS C:\> 添加内容 -Path C:\Test\test.txt -Value "附录" -Credential $cred
    ```

    这些命令将 "附录" 追加到 Test.txt 文件。使用 -Credential 参数指定用户凭据以执行操作。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EmbedImages`

> 为了更好的可移植性，请将图片嵌入为 base64 数据 URL，而非 file:// URL。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowOnlyPictures`

> 仅以圆角矩形显示图片，下方无文字。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoMetadata`, `OnlyPictures` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> 发送按键时转义控制字符和修饰键

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> 发送按键时保持键盘焦点在目标窗口上

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> 发送按键时使用 Shift+Enter 代替 Enter

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> 发送按键时不同输入字符串之间的延迟（毫秒）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> 移除窗口边框和标题栏，以获得更简洁的外观

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> 返回浏览器窗口辅助对象以供进一步操作

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> 在同一个显示器上将浏览器窗口与PowerShell并排放置

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> 在会话中使用备选设置来配置AI偏好

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> 清除为 AI 偏好存储在会话中的替代设置

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> 仅将设置存储在持久性首选项中，不影响当前会话

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScrollPixelsPerSecond <Int32>`

> 页面自动滚动的速度（像素/秒），设为 null 可禁用

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoAnimateRectangles`

> 对可见范围内的矩形（对象/面）进行动画处理，每300毫秒循环一次

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleColumnMode`

> 强制单列布局（居中，1/3屏幕宽度）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageUrlPrefix <String>`

> 每个图像路径前添加的前缀（例如，用于远程URL）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-AIMetaLanguage.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Update-AllImageMetaData.md)
