# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Truy xuất siêu dữ liệu cho một lệnh GenXdev đã chỉ định, tùy chọn dịch văn bản trợ giúp sang ngôn ngữ khác.

## Description

Trích xuất và trả về siêu dữ liệu toàn diện về một cmdlet GenXdev bao gồm
phần tóm tắt, mô tả, tham số, ví dụ và thông tin trợ giúp khác.
Khi ngôn ngữ đích được chỉ định qua tham số -Language, văn bản trợ giúp
có thể được dịch bằng các dịch vụ dịch thuật dựa trên AI. Có thể cung cấp
hướng dẫn dịch tùy chỉnh để tinh chỉnh đầu ra dịch thuật.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Tên của cmdlet để truy xuất siêu dữ liệu |
| `-Language` | String | — | — | 1 | — | Thẻ ngôn ngữ BCP 47 để dịch văn bản trợ giúp (ví dụ: nl-NL, de-DE). Bỏ qua để bỏ qua dịch thuật. |
| `-TranslationInstructions` | String | — | — | 2 | — | Hướng dẫn tùy chỉnh cho mô hình dịch AI. Ghi đè các hướng dẫn dịch nhận biết siêu dữ liệu cmdlet mặc định. |
| `-Model` | String | — | — | 3 | — | Mã định danh hoặc mẫu mô hình để sử dụng cho các bản dịch AI |
| `-ApiEndpoint` | String | — | — | 4 | — | Điểm cuối API URL cho các bản dịch AI |
| `-ApiKey` | String | — | — | 5 | — | Khóa API cho bản dịch AI được xác thực |
| `-NoSupportForJsonSchema` | String | — | — | 6 | — | Cho biết LLM không hỗ trợ lược đồ JSON |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Bỏ qua bản dịch dựa trên LLM; giữ nguyên văn bản trợ giúp bằng ngôn ngữ gốc ngay cả khi -Language được chỉ định. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Truy xuất siêu dữ liệu cho lệnh ghép ngắn Find-Item bằng ngôn ngữ mặc định.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Truy xuất siêu dữ liệu cho lệnh ghép ngắn Find-Item với các bản dịch tiếng Hà Lan.

## Parameter Details

### `-Name <String>`

> Tên của cmdlet để truy xuất siêu dữ liệu

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Thẻ ngôn ngữ BCP 47 để dịch văn bản trợ giúp (ví dụ: nl-NL, de-DE). Bỏ qua để bỏ qua dịch thuật.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> Hướng dẫn tùy chỉnh cho mô hình dịch AI. Ghi đè các hướng dẫn dịch nhận biết siêu dữ liệu cmdlet mặc định.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Mã định danh hoặc mẫu mô hình để sử dụng cho các bản dịch AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> Điểm cuối API URL cho các bản dịch AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> Khóa API cho bản dịch AI được xác thực

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Cho biết LLM không hỗ trợ lược đồ JSON

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> Bỏ qua bản dịch dựa trên LLM; giữ nguyên văn bản trợ giúp bằng ngôn ngữ gốc ngay cả khi -Language được chỉ định.

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/EnsureDefaultGenXdevRefactors.md)
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
