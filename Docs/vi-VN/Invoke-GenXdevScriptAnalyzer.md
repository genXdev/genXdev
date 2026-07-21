# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Gọi PowerShell Script Analyzer để phân tích các tập lệnh PowerShell nhằm kiểm tra sự tuân thủ và các phương pháp hay nhất.

## Description

Hàm này cung cấp một lớp bao bọc xung quanh PSScriptAnalyzer để phân tích các tập lệnh PowerShell nhằm tìm ra các vấn đề tuân thủ, vi phạm thực hành tốt nhất và các lỗi tiềm ẩn. Nó hỗ trợ cả phân tích dựa trên tệp và phân tích tập lệnh dựa trên chuỗi với các quy tắc và cài đặt có thể tùy chỉnh.

## Syntax

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptFilePath <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer -ScriptDefinition <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer [-EnableExit] [-Fix] [-Recurse] [-ReportSummary] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ScriptFilePath` | String | ✅ | — | 0 | — | Chỉ định đường dẫn đến tệp tập lệnh. *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | Chỉ định định nghĩa tập lệnh dưới dạng chuỗi. *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | Chỉ định rằng công cụ sẽ thoát khi có lỗi. |
| `-Fix` | SwitchParameter | — | — | Named | — | Cho phép tự động sửa các vi phạm. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Xử lý tệp đệ quy. |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | Báo cáo một bản tóm tắt sau khi phân tích. |

## Examples

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"
```

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix
```

## Parameter Details

### `-ScriptFilePath <String>`

> Chỉ định đường dẫn đến tệp tập lệnh.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Path`, `FullName` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Path |

<hr/>
### `-ScriptDefinition <String>`

> Chỉ định định nghĩa tập lệnh dưới dạng chuỗi.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Script |

<hr/>
### `-EnableExit`

> Chỉ định rằng công cụ sẽ thoát khi có lỗi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fix`

> Cho phép tự động sửa các vi phạm.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> Xử lý tệp đệ quy.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReportSummary`

> Báo cáo một bản tóm tắt sau khi phân tích.

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
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-GenXdevPSFormatter.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Show-GenXdevCmdLetInIde.md)
