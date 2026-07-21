# New-ModuleXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Tạo tệp trợ giúp MAML XML cho bất kỳ mô-đun PowerShell nào.

## Description

Tạo tệp trợ giúp XML MAML cho bất kỳ mô-đun PowerShell nào bằng cách trích xuất siêu dữ liệu từ tất cả các lệnh ghép ngắn trong mô-đun bằng Get-CmdletMetaData và tạo cả ModuleName.dll-Help.xml (cho lệnh ghép ngắn C#) và ModuleName-help.xml (cho

## Syntax

```powershell
New-ModuleXmlHelp -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Force] [-Language <String>] [-LinkPrefix <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Tên của mô-đun PowerShell để tạo trợ giúp |
| `-Language` | String | — | — | Named | `'en-US'` | Thẻ ngôn ngữ BCP 47 cho phần trợ giúp đã tạo (ví dụ: en-US, nl-NL, de-DE) |
| `-Force` | SwitchParameter | — | — | Named | — | Ghi đè các tệp XML trợ giúp hiện có mà không cần nhắc nhở |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | @{response=Skip LLM translation; keep help in source language} |
| `-Model` | String | — | — | Named | — | Mã định danh hoặc mẫu mô hình để sử dụng cho các bản dịch AI |
| `-ApiEndpoint` | String | — | — | Named | — | Điểm cuối API URL cho các bản dịch AI |
| `-ApiKey` | String | — | — | Named | — | Khóa API cho bản dịch AI được xác thực |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Cho biết LLM không hỗ trợ lược đồ JSON |
| `-LinkPrefix` | String | — | — | Named | — | Tiền tố URL cho liên kết Phiên bản Trực tuyến trong mỗi liên kết liên quan của cmdlet (ví dụ: https://github.com/genXdev/genXdev/blob/main/Docs/en-US/) |
| `-TranslationInstructions` | String | — | — | Named | — | Tìm kiếm chuỗi ký tự có thể in được trong tệp nhị phân. |

## Examples

### New-ModuleXmlHelp -ModuleName 'Pester'

```powershell
New-ModuleXmlHelp -ModuleName 'Pester'
```

Tạo tệp XML trợ giúp tiếng Anh cho mô-đun Pester trong en-US.

### New-ModuleXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force  -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'

```powershell
New-ModuleXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force  -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'
```

Tạo tệp trợ giúp XML tiếng Hà Lan cho GenXdev, ghi đè các tệp hiện có.

### New-ModuleXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-ModuleXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

Hiển thị những tệp nào sẽ được tạo ra mà không thực sự ghi chúng.

### New-ModuleXmlHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/blob/main/Docs/en-US/' -Force

```powershell
New-ModuleXmlHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/blob/main/Docs/en-US/' -Force
```

Tạo tệp XML trợ giúp tiếng Anh với URL Phiên bản Trực tuyến cho mỗi lệnh ghép ngắn trỏ đến tài liệu Markdown trên GitHub. Get-Help <cmdlet> -Online sẽ mở trình duyệt.

## Parameter Details

### `-ModuleName <String>`

> Tên của mô-đun PowerShell để tạo trợ giúp

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

> Thẻ ngôn ngữ BCP 47 cho phần trợ giúp đã tạo (ví dụ: en-US, nl-NL, de-DE)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'en-US'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Ghi đè các tệp XML trợ giúp hiện có mà không cần nhắc nhở

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> @{response=Skip LLM translation; keep help in source language}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LinkPrefix <String>`

> Tiền tố URL cho liên kết Phiên bản Trực tuyến trong mỗi liên kết liên quan của cmdlet (ví dụ: https://github.com/genXdev/genXdev/blob/main/Docs/en-US/)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> Tìm kiếm chuỗi ký tự có thể in được trong tệp nhị phân.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `IO.FileInfo[]`

## Related Links

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-GenXdevCmdlet.md)
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
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Show-GenXdevCmdLetInIde.md)
