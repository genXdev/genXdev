# Show-GenXdevCmdlet

> **Module:** GenXdev | **Type:** Function | **Aliases:** `cmds`

## Synopsis

> Hiển thị các mô-đun PowerShell GenXdev cùng với các lệnh ghép ngắn và bí danh của chúng.

## Description

Liệt kê tất cả các mô-đun GenXdev PowerShell đã cài đặt và các lệnh ghép ngắn cũng như bí danh liên quan của chúng. Sử dụng Get-GenXDevCmdlet để truy xuất thông tin lệnh ghép ngắn và tùy chọn vị trí tập lệnh của chúng. Cung cấp các tùy chọn lọc và hiển thị khác nhau.

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Mẫu tìm kiếm để lọc cmdlets 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Biểu thức chính quy để khớp định nghĩa cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Tên mô-đun GenXdev để tìm kiếm 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Bỏ qua tìm kiếm trong các đường dẫn mô-đun cục bộ |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Chỉ tìm kiếm trong các đường dẫn mô-đun đã được xuất bản |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Tìm kiếm trong tệp tập lệnh thay vì mô-đun |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Bao gồm thư mục scripts ngoài các mô-đun thông thường *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Chỉ trả về các tên module duy nhất |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Thực hiện khớp chính xác thay vì khớp ký tự đại diện |
| `-Online` | SwitchParameter | — | — | Named | — | Mở tài liệu GitHub thay vì đầu ra bảng điều khiển |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | Khi được chỉ định, chỉ hiển thị bí danh của các lệnh ghép ngắn |
| `-ShowTable` | SwitchParameter | — | — | Named | — | Hiển thị kết quả dưới dạng bảng |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Examples

### Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable Lists all cmdlets starting with "Get" in the Console module as a table

```powershell
Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable
Lists all cmdlets starting with "Get" in the Console module as a table
```

### cmds get -m console Lists all cmdlets starting with "Get" in the Console module

```powershell
cmds get -m console
Lists all cmdlets starting with "Get" in the Console module
```

### Show-GenXdevCmdlet -OnlyReturnModuleNames Returns only unique module names

```powershell
Show-GenXdevCmdlet -OnlyReturnModuleNames
Returns only unique module names
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
### `-DefinitionMatches <String>`

> Biểu thức chính quy để khớp định nghĩa cmdlet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
| **Position?** | 2 |
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

> Thực hiện khớp chính xác thay vì khớp ký tự đại diện

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Online`

> Mở tài liệu GitHub thay vì đầu ra bảng điều khiển

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAliases`

> Khi được chỉ định, chỉ hiển thị bí danh của các lệnh ghép ngắn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `aliases`, `nonboring`, `notlame`, `handyonces` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowTable`

> Hiển thị kết quả dưới dạng bảng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `table`, `grid` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> The `-PassThru` parameter.

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

- `Collections.ArrayList`
- `Void`

## Related Links

- [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXDevCmdlet.md)
