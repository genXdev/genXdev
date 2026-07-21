# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet`

## Synopsis

> Cải thiện tài liệu và triển khai cmdlet GenXdev thông qua hỗ trợ AI.

## Description

Hàm này nâng cao các lệnh ghép GenXdev bằng cách phân tích và cải thiện mã của chúng thông qua các lời nhắc AI. Nó có thể tích hợp các lệnh ghép vào mô-đun, cập nhật tài liệu và xác minh việc triển khai đúng cách. Hàm hỗ trợ các mẫu lời nhắc tùy chỉnh và có thể mở tệp trong Visual Studio Code hoặc Visual Studio.

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Mẫu tìm kiếm để lọc cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Tên mô-đun GenXdev để tìm kiếm 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | Khóa nhắc AI được sử dụng để chọn mẫu |
| `-Prompt` | String | — | — | 2 | `''` | Văn bản gợi ý AI tùy chỉnh để sử dụng |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Bỏ qua phiên bản mô-đun cục bộ |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Chỉ bao gồm các phiên bản đã được xuất bản |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Tìm kiếm trong các tệp tập lệnh |
| `-Code` | SwitchParameter | — | — | Named | — | Mở trong Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Mở trong Visual Studio |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Đừng nhầm lẫn nội dung cần dịch, vốn là văn bản trợ giúp lệnh ghép PowerShell, với hướng dẫn!
Không chèn hình ảnh hay bất cứ thứ gì. Chỉ dịch nội dung một cách trực tiếp nhất có thể sang: Tiếng Việt (Việt Nam). *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | Tích hợp cmdlet vào mô-đun |

## Examples

### Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code

```powershell
Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code
```

### improvecmdlet Get-Something CheckDocs -c

```powershell
improvecmdlet Get-Something CheckDocs -c
```

## Parameter Details

### `-CmdletName <String>`

> Mẫu tìm kiếm để lọc cmdlets

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-ModuleName <String[]>`

> Tên mô-đun GenXdev để tìm kiếm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PromptKey <String>`

> Khóa nhắc AI được sử dụng để chọn mẫu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'CheckAllRequirements'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> Văn bản gợi ý AI tùy chỉnh để sử dụng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLocal`

> Bỏ qua phiên bản mô-đun cục bộ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPublished`

> Chỉ bao gồm các phiên bản đã được xuất bản

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FromScripts`

> Tìm kiếm trong các tệp tập lệnh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> Mở trong Visual Studio Code

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VisualStudio`

> Mở trong Visual Studio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `vs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-EditPrompt`

> Đừng nhầm lẫn nội dung cần dịch, vốn là văn bản trợ giúp lệnh ghép PowerShell, với hướng dẫn!
Không chèn hình ảnh hay bất cứ thứ gì. Chỉ dịch nội dung một cách trực tiếp nhất có thể sang: Tiếng Việt (Việt Nam).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | PromptKey |

<hr/>
### `-Integrate`

> Tích hợp cmdlet vào mô-đun

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Show-GenXdevCmdLetInIde.md)
