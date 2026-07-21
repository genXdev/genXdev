# Assert-GenXdevTest

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `rungenxdevtests`

## Synopsis

> Thực thi kiểm thử đơn vị cho các mô-đun, mô-đun con hoặc lệnh ghép ngắn của GenXdev
với tính năng gỡ lỗi thông minh và giải quyết lỗi bằng AI.

## Description

Hàm này cung cấp một khung kiểm thử cho các mô-đun GenXdev,
cho phép thực thi kiểm thử đa cấp từ toàn bộ mô-đun đến từng lệnh ghép ngắn riêng lẻ.
Nó tích hợp PSScriptAnalyzer để phân tích mã tĩnh, Pester cho kiểm thử đơn vị,
và PSScriptAnalyzer để phân tích mã tĩnh. Hàm
bao gồm xử lý lỗi thông minh với khả năng giải quyết hỗ trợ bởi AI
và báo cáo tiến độ chi tiết cho quy trình phát triển.

## Syntax

```powershell
Assert-GenXdevTest [[-CmdletName] <String>] [[-TestFailedAction] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-AllowLongRunningTests] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [-SkipPesterTests] [-SkipPSAnalyzerTests] [-StackTraceVerbosity <String>] [-Verbosity <String>] [<CommonParameters>]

Assert-GenXdevTest [-IncludeScripts] [-SkipModuleImports] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Mẫu tìm kiếm để lọc cmdlets 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | Hành động thực hiện khi kiểm tra thất bại. Tùy chọn: Hỏi, Tiếp tục, Dừng, GiảiBằngAI, GhiLỗi, Ném |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | Biểu thức chính quy để khớp định nghĩa cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | Tên mô-đun GenXdev để tìm kiếm 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Bỏ qua tìm kiếm trong các đường dẫn mô-đun cục bộ |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Chỉ tìm kiếm trong các đường dẫn mô-đun đã được xuất bản |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Tìm kiếm trong tệp tập lệnh thay vì mô-đun |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Bao gồm thư mục scripts ngoài các mô-đun thông thường *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Chỉ trả về các tên module duy nhất |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Yêu cầu khớp chính xác tên lệnh ghép |
| `-Verbosity` | String | — | — | Named | `'Normal'` | Mức độ chi tiết đầu ra |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | Mức độ chi tiết của dấu vết ngăn xếp |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | Cũng chọn các bài kiểm tra đơn vị có thời gian chạy dài |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | Bỏ qua việc nhập các mô-đun GenXdev trước khi kiểm tra *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | Bỏ qua việc gọi các kiểm tra PSAnalyzer |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | Bỏ qua việc gọi các bài kiểm tra Pester |

## Examples

### Assert-GenXdevTest -ModuleName "GenXdev.AI" Executes all tests for the GenXdev.AI module including PSScriptAnalyzer and Pester tests.

```powershell
Assert-GenXdevTest -ModuleName "GenXdev.AI"
Executes all tests for the GenXdev.AI module including PSScriptAnalyzer and
Pester tests.
```

### Assert-GenXdevTest -SubModuleName "GenXdev.Coding.PowerShell.Modules" `     -TestFailedAction SolveWithAI Tests the specified sub-module and uses AI to automatically resolve any failures encountered during testing.

```powershell
Assert-GenXdevTest -SubModuleName "GenXdev.Coding.PowerShell.Modules" `
    -TestFailedAction SolveWithAI
Tests the specified sub-module and uses AI to automatically resolve any
failures encountered during testing.
```

### Assert-GenXdevTest -CmdletName "Get-GenXDevCmdlet" -Verbosity Detailed Tests the specific cmdlet with detailed output showing all test operations and results.

```powershell
Assert-GenXdevTest -CmdletName "Get-GenXDevCmdlet" -Verbosity Detailed
Tests the specific cmdlet with detailed output showing all test operations
and results.
```

### testcmdlet Assert-GenXdevTest Uses the alias to test the current cmdlet with default settings.

```powershell
testcmdlet Assert-GenXdevTest
Uses the alias to test the current cmdlet with default settings.
```

## Parameter Details

### `-CmdletName <String>`

> Mẫu tìm kiếm để lọc cmdlets

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-TestFailedAction <String>`

> Hành động thực hiện khi kiểm tra thất bại. Tùy chọn: Hỏi, Tiếp tục, Dừng, GiảiBằngAI, GhiLỗi, Ném

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'Continue'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefinitionMatches <String>`

> Biểu thức chính quy để khớp định nghĩa cmdlet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModuleName <String[]>`

> Tên mô-đun GenXdev để tìm kiếm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> Bỏ qua tìm kiếm trong các đường dẫn mô-đun cục bộ

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

> Chỉ tìm kiếm trong các đường dẫn mô-đun đã được xuất bản

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

> Tìm kiếm trong tệp tập lệnh thay vì mô-đun

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeScripts`

> Bao gồm thư mục scripts ngoài các mô-đun thông thường

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ModuleName |

<hr/>
### `-OnlyReturnModuleNames`

> Chỉ trả về các tên module duy nhất

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> Yêu cầu khớp chính xác tên lệnh ghép

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Verbosity <String>`

> Mức độ chi tiết đầu ra

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Normal'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StackTraceVerbosity <String>`

> Mức độ chi tiết của dấu vết ngăn xếp

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'FirstLine'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowLongRunningTests`

> Cũng chọn các bài kiểm tra đơn vị có thời gian chạy dài

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipModuleImports`

> Bỏ qua việc nhập các mô-đun GenXdev trước khi kiểm tra

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ModuleName |

<hr/>
### `-SkipPSAnalyzerTests`

> Bỏ qua việc gọi các kiểm tra PSAnalyzer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipPesterTests`

> Bỏ qua việc gọi các bài kiểm tra Pester

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
