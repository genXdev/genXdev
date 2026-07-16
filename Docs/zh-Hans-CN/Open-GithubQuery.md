# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub, `qgh

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-CaseSensitive] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要在GitHub上执行的搜索查询。支持多个查询和管道输入以进行批量搜索。每个查询都将进行URL编码，用于搜索GitHub。 |
| `-Type` | String | — | — | Named | `'Code'` | 要搜索的主要类别。默认为 'Code'。 |
| `-In` | String[] | — | — | Named | — | 要搜索的字段。仅接受所选类型的有效选项。 |
| `-User` | String | — | — | Named | — | 将搜索限制在用户的资源（仓库、代码、问题等）范围内。 |
| `-Org` | String | — | — | Named | — | 将搜索范围限定到某个组织。 |
| `-Repo` | String | — | — | Named | — | 将搜索限定到一个已命名的仓库（'owner/repo'）。 |
| `-Path` | String | — | — | Named | — | 将代码搜索限制到特定文件或目录路径（根据 GitHub 搜索语法支持通配符）。 *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | 根据文件名（而非路径）筛选结果。 *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Restrict code search to file extensions. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | 按编程语言过滤。 |
| `-Size` | String | — | — | Named | — | 文件/仓库大小。支持数值和范围语法（参见示例）。 |
| `-State` | String | — | — | Named | — | 用于问题/拉取请求。 *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: 仅限指定用户创建的条目。 *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Issues/PR: 仅限分配给某用户的内容。 *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR：必须使用所有指定的字符串进行标记。 *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR：必须缺少某些元数据（例如，标签、里程碑）。 *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | 排序字段（取决于类型）。例如：“stars”、“forks”、“updated”等。 |
| `-Order` | String | — | — | Named | — | 排序时使用"asc"（升序）或"desc"（降序）顺序。 |
| `-PerPage` | Int32 | — | — | Named | `10` | 页面大小（最大 100）。 |
| `-Page` | Int32 | — | — | Named | `1` | 分页结果的页码。 |
| `-Token` | String | — | — | Named | — | GitHub OAuth 或个人访问令牌。如果未提供，则使用 GITHUB_TOKEN 或环境变量。 *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送不同键序列之间的延迟（以毫秒为单位）。 *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | 用于显示结果的显示器。0 = 默认，-1 = 丢弃，-2 = 次要。 *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | 浏览器窗口的初始宽度。 *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | 浏览器窗口的初始高度。 *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | 浏览器窗口的初始X位置。 *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | 浏览器窗口的初始Y位置。 *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到浏览器窗口的按键操作，请参阅 cmdlet GenXdev\Send-Key 的文档。 *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | 仅匹配大小写敏感的结果（在支持的情况下）。 |
| `-AsJob` | SwitchParameter | — | — | Named | — | 以 PowerShell 作业形式异步运行搜索。 *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": ["response"],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | 请使用API模式，而不是在网页浏览器中打开。 *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | 以私密/无痕浏览模式打开浏览器，进行匿名搜索。 *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | 强制启用调试端口，如有必要则停止现有浏览器。 *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 浏览器中打开搜索结果。 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | 在谷歌Chrome浏览器中打开搜索结果。 *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器的不同，在Microsoft Edge或Google Chrome中打开搜索结果。 *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | 在 Mozilla Firefox 浏览器中打开搜索结果。 *(Parameter set: )* |
| `-All` | SwitchParameter | — | — | Named | — | 在所有已注册的现代浏览器中打开搜索结果。 *(Parameter set: )* |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 以全屏模式打开浏览器。 *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕左侧。 *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕右侧。 *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕顶部。 *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕底部。 *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕中央。 *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件。 *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 防止加载浏览器扩展。 *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 在浏览器中禁用弹出窗口拦截器。 *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开浏览器窗口后聚焦窗口。 *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置于前台。 *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | 在定位后最大化窗口。 *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点。 *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 不要重用现有的浏览器窗口，而是创建一个新的窗口。 *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | 返回一个 [System.Diagnostics.Process] 对象，在 Web 模式下为浏览器进程，在 API 模式下为查询对象。 |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.google.com *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening the web browser, return the URL. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送按键时需转义控制字符。 *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Prevent returning keyboard focus to PowerShell after sending keys. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 使用 Shift+Enter 换行，而不是普通 Enter。 *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将浏览器窗口和PowerShell窗口并排放置在同一显示器上。 *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 使用存储在会话中的替代设置来设置偏好。 *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的偏好设置备选方案。 *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session. *(Parameter set: )* |

## Outputs

- `PSObject`

## Related Links

- [Open-GithubQuery on GitHub](https://github.com/genXdev/genXdev)
