# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st

## Synopsis

> 从正在运行的 Playwright 管理浏览器中选择一个浏览器标签页。

## Description

列出并选择所有正在运行的Playwright管理的浏览器实例中的浏览器标签页。在未指定选择条件时，显示所有浏览器类型中所有可用标签页的表格。支持按数字索引、URL模式或直接页面引用进行选择。选定标签页后，设置$Global:chromeController和$Global:chromeSession，以与其他Webbrowser cmdlet保持向后兼容。

## Syntax

```powershell
Select-WebbrowserTab [[-Id] <Int32>] [<CommonParameters>]

Select-WebbrowserTab -Name <String> [<CommonParameters>]

Select-WebbrowserTab -ByReference <Object> [<CommonParameters>]

Select-WebbrowserTab [-All] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Force] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Id` | Int32 | — | — | 0 | `-1` | 从所显示列表中的标签索引 *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | 在其URL中选择包含此文本的第一个标签页 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | 来自 Playwright 浏览器状态的直接页面引用 *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | 筛选标签页到 Microsoft Edge 浏览器实例 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 将标签页筛选到 Google Chrome 浏览器实例 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 过滤标签页至基于 Chromium 的浏览器实例（Edge 或 Chrome） |
| `-Firefox` | SwitchParameter | — | — | Named | — | 筛选标签页至 Firefox 浏览器实例 |
| `-PlayWright` | SwitchParameter | — | — | Named | — | 筛选标签页到所有Playwright管理的浏览器类型 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 将选项卡筛选到 WebKit 浏览器实例 |
| `-All` | SwitchParameter | — | — | Named | — | 显示所有浏览器类型的标签（不过滤） |
| `-Force` | SwitchParameter | — | — | Named | — | 跳过确认，选择第一个匹配标签 |

## Examples

### Select-WebbrowserTab Lists all open tabs across all Playwright browser types.

```powershell
Select-WebbrowserTab
Lists all open tabs across all Playwright browser types.
```

### Select-WebbrowserTab -Id 2 Selects the tab at index 2 from the list.

```powershell
Select-WebbrowserTab -Id 2
Selects the tab at index 2 from the list.
```

### st -Name "github.com" Selects the first tab whose URL contains "github.com".

```powershell
st -Name "github.com"
Selects the first tab whose URL contains "github.com".
```

### st -Firefox -Id 0 Selects the first tab from the Firefox browser.

```powershell
st -Firefox -Id 0
Selects the first tab from the Firefox browser.
```

## Outputs

- `PSObject`

## Related Links

- [Select-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
