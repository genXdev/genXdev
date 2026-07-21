# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> 在网页浏览器中打开 GitHub 仓库搜索查询，或针对 GitHub REST API 执行高级搜索，支持所有可用的限定符和搜索类别（仓库、代码、问题、用户、提交、讨论、主题、Wiki）。

## Description

在网页浏览器中打开 GitHub 仓库搜索查询，提供丰富的自定义选项，或执行高级 API 搜索。此功能为从 PowerShell 快速访问 GitHub 仓库提供了强大接口，支持多种浏览器、窗口定位、语言过滤和键盘自动化，或通过 API 检索结构化数据。主要特性：

支持管道输入的多个搜索查询
语言特定过滤，自动本地化
多浏览器支持（Edge、Chrome、Firefox）
高级窗口定位和显示器选择
私密/无痕浏览模式
专注浏览的应用模式
键盘自动化和焦点管理
用于编程使用的 URL 返回选项
支持限定词、排序、分页的高级 API 搜索
支持所有 GitHub 搜索类型
使用个人访问令牌进行身份验证
API 搜索的异步作业执行
原始 JSON 或结构化对象输出

该函数自动为 Web 模式构建 GitHub 搜索 URL，为 API 模式构建 API 端点，并将所有与浏览器相关的参数传递给底层的 Open-Webbrowser 函数，以实现一致的行为。

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要在 GitHub 上执行的搜索查询。支持多个查询和管道输入以进行批量搜索。每个查询将被 URL 编码并用于搜索 GitHub。 |
| `-Type` | String | — | — | Named | `'Code'` | 要搜索的主要类别。默认为'Code'。 |
| `-In` | String[] | — | — | Named | — | 要搜索的字段。仅接受所选类型的有效选项。 |
| `-User` | String | — | — | Named | — | 将搜索限制在用户的资源范围内（仓库、代码、问题等）。 |
| `-Org` | String | — | — | Named | — | 将搜索限制为某个组织。 |
| `-Repo` | String | — | — | Named | — | 将搜索限制为指定的仓库（'所有者/仓库'）。 |
| `-Path` | String | — | — | Named | — | 将代码搜索限制到特定的文件或目录路径（支持符合GitHub搜索语法的通配符）。 *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | 按文件名（而非路径）筛选结果。 *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | 将代码搜索限制为文件扩展名。 *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | 按编程语言筛选。 |
| `-Size` | String | — | — | Named | — | 文件/仓库大小。支持数字和范围语法（见示例）。 |
| `-State` | String | — | — | Named | — | 针对问题/拉取请求。 *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: 仅限指定用户创建的问题/拉取请求。 *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | 问题/拉取请求：限制为已分配用户的问题。 *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | 问题/PR：必须包含所有指定标签。 *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR: 必须缺少某些元数据（例如，标签、里程碑）。 *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | 排序字段（取决于类型）。例如，“星标数”、“分支数”、“更新日期”等。 |
| `-Order` | String | — | — | Named | — | 排序方式为升序"asc"或降序"desc"。 |
| `-PerPage` | Int32 | — | — | Named | `10` | 页面大小（最大 100）。 |
| `-Page` | Int32 | — | — | Named | `1` | 分页结果的页码。 |
| `-Token` | String | — | — | Named | — | GitHub OAuth 或个人访问令牌。如果未提供，则使用 GITHUB_TOKEN 或环境变量。 *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | 设置浏览器 accept-lang http 头。 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送不同键序列之间的延迟（以毫秒为单位）。 *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | 用于显示结果的显示器。0 = 默认，-1 = 丢弃，-2 = 次要。 *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | 浏览器窗口的初始宽度。 *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | 浏览器窗口的初始高度。 *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | 浏览器窗口的初始 X 位置。 *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | 浏览器窗口的初始Y位置。 *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到浏览器窗口的按键，请参阅 cmdlet GenXdev\Send-Key 的文档。 *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | 仅匹配区分大小写的结果（在支持的情况下）。 |
| `-AsJob` | SwitchParameter | — | — | Named | — | 将搜索作为 PowerShell 作业异步运行。 *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | 好了，你已经收到了通知：你的任务是根据文本生成一个JSON对象，包含一个属性“response”，类型为字符串。例如：{"response": "这是一段示例文本。"} *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | 使用API模式，而不是在网页浏览器中打开。 *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | 以私密/无痕浏览模式打开浏览器，进行匿名搜索。 *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | 强制启用调试端口，如有需要则停止现有浏览器。 *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 浏览器中打开搜索结果。 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | 在 Google Chrome 浏览器中打开搜索结果。 *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | 在Microsoft Edge或Google Chrome中打开搜索结果，具体取决于默认浏览器是什么。 *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | 在 Mozilla Firefox 浏览器中打开搜索结果。 *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | 使用Playwright管理的浏览器而非操作系统安装的浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 打开 Playwright 托管的 WebKit 浏览器。隐含 -PlayWright 参数。 |
| `-Headless` | SwitchParameter | — | — | Named | — | 运行浏览器但不显示可见窗口 |
| `-All` | SwitchParameter | — | — | Named | — | 在所有已注册的现代浏览器中打开 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 以全屏模式打开浏览器。 *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕左侧。 *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕右侧。 *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕顶部。 *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕底部。 *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕中心。 *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件。 *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 阻止加载浏览器扩展。 *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 在浏览器中禁用弹出窗口阻止程序。 *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置于焦点。 *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开浏览器窗口后将其置于前台。 *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后将窗口最大化。 *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点。 *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 不要重复使用现有浏览器窗口，而是新建一个。 *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | 在Web模式下返回浏览器进程的[System.Diagnostics.Process]对象，在API模式下返回查询对象。 |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | 不打开浏览器，直接返回网址。 *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | 打开Web浏览器后，返回URL。 *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送按键时转义控制字符。 *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 防止在发送按键后返回键盘焦点到 PowerShell。 *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 发送 Shift+Enter 而不是普通 Enter 来换行。 *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除窗口边框和标题栏，以获得更简洁的外观。 *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将浏览器窗口与PowerShell并排放置在同一台显示器上。 *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 使用存储在会话中的替代设置作为首选项。 *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除会话中存储的首选项的替代设置。 *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅在持久化首选项中存储设置，不影响当前会话。 *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Parameter Details

### `-Query <String[]>`

> 要在 GitHub 上执行的搜索查询。支持多个查询和管道输入以进行批量搜索。每个查询将被 URL 编码并用于搜索 GitHub。

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Queries` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Type <String>`

> 要搜索的主要类别。默认为'Code'。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Code'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-In <String[]>`

> 要搜索的字段。仅接受所选类型的有效选项。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-User <String>`

> 将搜索限制在用户的资源范围内（仓库、代码、问题等）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Org <String>`

> 将搜索限制为某个组织。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repo <String>`

> 将搜索限制为指定的仓库（'所有者/仓库'）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> 将代码搜索限制到特定的文件或目录路径（支持符合GitHub搜索语法的通配符）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Filename <String>`

> 按文件名（而非路径）筛选结果。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Extension <String>`

> 将代码搜索限制为文件扩展名。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Language <String>`

> 按编程语言筛选。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Size <String>`

> 文件/仓库大小。支持数字和范围语法（见示例）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-State <String>`

> 针对问题/拉取请求。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Author <String>`

> Issues/PR: 仅限指定用户创建的问题/拉取请求。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Assignee <String>`

> 问题/拉取请求：限制为已分配用户的问题。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Labels <String[]>`

> 问题/PR：必须包含所有指定标签。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-No <String[]>`

> Issues/PR: 必须缺少某些元数据（例如，标签、里程碑）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-SortBy <String>`

> 排序字段（取决于类型）。例如，“星标数”、“分支数”、“更新日期”等。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Order <String>`

> 排序方式为升序"asc"或降序"desc"。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerPage <Int32>`

> 页面大小（最大 100）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `10` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Int32>`

> 分页结果的页码。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> GitHub OAuth 或个人访问令牌。如果未提供，则使用 GITHUB_TOKEN 或环境变量。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-AcceptLang <String>`

> 设置浏览器 accept-lang http 头。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> 发送不同键序列之间的延迟（以毫秒为单位）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Monitor <Int32>`

> 用于显示结果的显示器。0 = 默认，-1 = 丢弃，-2 = 次要。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Width <Int32>`

> 浏览器窗口的初始宽度。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Height <Int32>`

> 浏览器窗口的初始高度。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-X <Int32>`

> 浏览器窗口的初始 X 位置。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Y <Int32>`

> 浏览器窗口的初始Y位置。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-KeysToSend <String[]>`

> 要发送到浏览器窗口的按键，请参阅 cmdlet GenXdev\Send-Key 的文档。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-CaseSensitive`

> 仅匹配区分大小写的结果（在支持的情况下）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsJob`

> 将搜索作为 PowerShell 作业异步运行。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-RawResponse`

> 好了，你已经收到了通知：你的任务是根据文本生成一个JSON对象，包含一个属性“response”，类型为字符串。例如：{"response": "这是一段示例文本。"}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Api`

> 使用API模式，而不是在网页浏览器中打开。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Private`

> 以私密/无痕浏览模式打开浏览器，进行匿名搜索。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Force`

> 强制启用调试端口，如有需要则停止现有浏览器。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Edge`

> 在 Microsoft Edge 浏览器中打开搜索结果。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chrome`

> 在 Google Chrome 浏览器中打开搜索结果。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chromium`

> 在Microsoft Edge或Google Chrome中打开搜索结果，具体取决于默认浏览器是什么。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Firefox`

> 在 Mozilla Firefox 浏览器中打开搜索结果。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PlayWright`

> 使用Playwright管理的浏览器而非操作系统安装的浏览器

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> 打开 Playwright 托管的 WebKit 浏览器。隐含 -PlayWright 参数。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> 运行浏览器但不显示可见窗口

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
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
### `-FullScreen`

> 以全屏模式打开浏览器。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Left`

> 将浏览器窗口置于屏幕左侧。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Right`

> 将浏览器窗口放置在屏幕右侧。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Top`

> 将浏览器窗口置于屏幕顶部。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Bottom`

> 将浏览器窗口放置在屏幕底部。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Centered`

> 将浏览器窗口置于屏幕中心。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ApplicationMode`

> 隐藏浏览器控件。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBrowserExtensions`

> 阻止加载浏览器扩展。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-DisablePopupBlocker`

> 在浏览器中禁用弹出窗口阻止程序。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-FocusWindow`

> 打开后将浏览器窗口置于焦点。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SetForeground`

> 打开浏览器窗口后将其置于前台。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Maximize`

> 定位后将窗口最大化。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-RestoreFocus`

> 恢复 PowerShell 窗口焦点。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NewWindow`

> 不要重复使用现有浏览器窗口，而是新建一个。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PassThru`

> 在Web模式下返回浏览器进程的[System.Diagnostics.Process]对象，在API模式下返回查询对象。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> 不打开浏览器，直接返回网址。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ReturnOnlyURL`

> 打开Web浏览器后，返回URL。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyEscape`

> 发送按键时转义控制字符。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> 防止在发送按键后返回键盘焦点到 PowerShell。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyUseShiftEnter`

> 发送 Shift+Enter 而不是普通 Enter 来换行。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBorders`

> 移除窗口边框和标题栏，以获得更简洁的外观。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SideBySide`

> 将浏览器窗口与PowerShell并排放置在同一台显示器上。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SessionOnly`

> 使用存储在会话中的替代设置作为首选项。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ClearSession`

> 清除会话中存储的首选项的替代设置。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SkipSession`

> 仅在持久化首选项中存储设置，不影响当前会话。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-BuiltWithSiteInfo.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-YoutubeQuery.md)
