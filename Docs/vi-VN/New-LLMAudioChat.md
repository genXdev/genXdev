# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat`

## Synopsis

> Tạo một phiên trò chuyện âm thanh tương tác với mô hình LLM.

## Description

Khởi tạo cuộc trò chuyện dựa trên giọng nói với mô hình ngôn ngữ, hỗ trợ đầu vào và đầu ra âm thanh. Chức năng này xử lý ghi âm, phiên âm, truy vấn mô hình và phản hồi chuyển văn bản thành giọng nói. Hỗ trợ nhiều mô hình ngôn ngữ và các tùy chọn cấu hình khác nhau bao gồm quản lý cửa sổ, tăng tốc GPU và các tính năng xử lý âm thanh nâng cao.

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-ShowToolChainInvocations] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Văn bản truy vấn ban đầu để gửi đến mô hình |
| `-Instructions` | String | — | — | 1 | — | .PARAMETER PartitionKeys
Chỉ định khóa phân vùng của đối tượng MongoDB. Nếu đối tượng nguồn là một bộ sưu tập MongoDB, tham số này chỉ ra khóa phân vùng. Nếu đối tượng nguồn là một tài liệu MongoDB, tham số này chỉ ra các trường sẽ được sử dụng cho khóa phân vùng. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Mảng các đường dẫn tệp để đính kèm |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | Loại mô hình Whisper sẽ sử dụng, mặc định là LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | Nhiệt độ cho nhận dạng đầu vào âm thanh (0.0-1.0) |
| `-Temperature` | Double | — | — | Named | `-1` | Nhiệt độ cho độ ngẫu nhiên của phản hồi (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | Tham số nhiệt độ để kiểm soát tính ngẫu nhiên của phản hồi. |
| `-LanguageIn` | String | — | — | Named | — | Đặt ngôn ngữ cần phát hiện |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Số lượng luồng CPU để sử dụng, mặc định là 0 (tự động) |
| `-SuppressRegex` | String | — | — | Named | `$null` | Biểu thức chính quy để loại bỏ các token khỏi đầu ra |
| `-AudioContextSize` | Int32 | — | — | Named | — | Kích thước của bối cảnh âm thanh |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | Ngưỡng phát hiện im lặng (0..32767, mặc định là 30) |
| `-LengthPenalty` | Single | — | — | Named | — | Hình phạt độ dài |
| `-EntropyThreshold` | Single | — | — | Named | — | Ngưỡng entropy |
| `-LogProbThreshold` | Single | — | — | Named | — | Ngưỡng xác suất log |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Không có ngưỡng giọng nói |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Loại truy vấn LLM |
| `-Model` | String | — | — | Named | — | Mã định danh hoặc mẫu mô hình để sử dụng cho các hoạt động AI |
| `-ImageDetail` | String | — | — | Named | `'low'` | Chi tiết mức độ hình ảnh |
| `-ApiEndpoint` | String | — | — | Named | — | Điểm cuối API URL cho các thao tác AI |
| `-ApiKey` | String | — | — | Named | — | Khóa API cho các hoạt động AI đã xác thực |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Cho biết LLM không hỗ trợ lược đồ JSON |
| `-ShowToolChainInvocations` | SwitchParameter | — | — | Named | — | Hiển thị các lời gọi chuỗi công cụ trong bảng điều khiển |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Thời gian chờ tính bằng giây cho các thao tác AI |
| `-ResponseFormat` | String | — | — | Named | `$null` | Lược đồ JSON cho định dạng đầu ra được yêu cầu |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | Chỉ xuất ra các khối markup của các loại đã chỉ định |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Mảng các định nghĩa lệnh PowerShell để sử dụng làm công cụ |
| `-Functions` | ScriptBlock[] | — | — | Named | — | Mảng ScriptBlock của các công cụ chức năng để hiển thị cho LLM (chuyển tiếp đến Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Mảng tên hàm công cụ không yêu cầu xác nhận (truyền trực tiếp tới Invoke-LLMQuery) |
| `-ChatMode` | String | — | — | Named | — | Chế độ trò chuyện cho truy vấn LLM (chuyển tiếp đến Invoke-LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Độ dài tối đa của lệnh gọi lại công cụ (chuyển tiếp đến Invoke-LLMQuery) |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Important! When using the `-RemoveSelf` parameter, you must be an enterprise administrator. Without the `-Confirm` parameter, the function will ask for confirmation before removing the user from all groups except for the Domain Users group. To suppress confirmation, you should supply the `-Force` parameter. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Important! When using the `-RemoveSelf` parameter, you must be an enterprise administrator. Without the `-Confirm` parameter, the function will ask for confirmation before removing the user from all groups except for the Domain Users group. To suppress confirmation, you should supply the `-Force` parameter. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .TỔNG QUAN
Dùng lệnh ghép này để chèn, xóa, sửa đổi hoặc liệt kê thông tin cấu hình trong tệp Web.config của máy chủ IIS.
Lệnh ghép này cho phép bạn định cấu hình trong cây cấu hình IIS. Bạn có thể dùng tham số -Get, -Set, -Add và -Clear để chỉ định hành động. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Tắt chuyển văn bản thành giọng nói cho các câu trả lời AI |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Tắt chức năng chuyển văn bản thành giọng nói cho các phản hồi suy nghĩ của AI |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Không sử dụng phát hiện im lặng để tự động dừng ghi âm. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Có sử dụng tính năng thu âm màn hình thay vì đầu vào micrô không |
| `-AudioDevice` | String | — | — | Named | — | Tên thiết bị âm thanh hoặc GUID (hỗ trợ ký tự đại diện, chọn kết quả khớp đầu tiên) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Sử dụng cả máy tính để bàn và thiết bị ghi âm |
| `-NoContext` | SwitchParameter | — | — | Named | — | Không sử dụng ngữ cảnh |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Sử dụng chiến lược lấy mẫu tìm kiếm chùm |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Có nên loại bỏ văn bản đã nhận dạng khỏi đầu ra |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Không lưu phiên trong bộ nhớ đệm phiên |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .NAME
    Get-MyService

.SYNOPSIS
    Truy xuất các dịch vụ trên máy tính cục bộ hoặc từ xa.

.DESCRIPTION
    Lệnh ghép ngắn Get-MyService lấy các đối tượng đại diện cho các dịch vụ trên máy tính cục bộ hoặc máy tính từ xa, bao gồm cả dịch vụ đang chạy và đã dừng. Bạn có thể chỉ định tên dịch vụ hoặc tên hiển thị cho các dịch vụ bạn muốn lấy.

.PARAMETER ComputerName
    Chỉ định một hoặc nhiều máy tính từ xa. Mặc định là máy tính cục bộ.
    Nhập tên NETBIOS, địa chỉ IP hoặc tên miền đầy đủ của máy tính từ xa.

.PARAMETER Name
    Chỉ định tên dịch vụ của các dịch vụ cần lấy. Ký tự đại diện được chấp nhận.

.PARAMETER DependentServices
    Cho biết lệnh ghép ngắn này chỉ lấy các dịch vụ phụ thuộc vào dịch vụ được chỉ định.

.PARAMETER RequiredServices
    Cho biết lệnh ghép ngắn này chỉ lấy các dịch vụ mà dịch vụ được chỉ định phụ thuộc vào.

.EXAMPLE
    Get-MyService -Name wmi*
    Lệnh này lấy các dịch vụ có tên bắt đầu bằng wmi.

.EXAMPLE
    Get-MyService -Name wmi*,s* -ComputerName Server01,Server02
    Lệnh này lấy các dịch vụ bắt đầu bằng wmi hoặc s trên máy tính Server01 và Server02.

.INPUTS
    System.String[]
    Bạn có thể đưa các chuỗi vào lệnh ghép ngắn này.

.OUTPUTS
    System.ServiceProcess.ServiceController
    Lệnh ghép ngắn này trả về các đối tượng đại diện cho các dịch vụ. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sử dụng các thiết lập thay thế được lưu trữ trong phiên làm việc cho sở thích AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Xóa các thiết lập thay thế được lưu trong phiên cho tùy chọn AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Chỉ lưu cài đặt vào tùy chọn liên tục mà không ảnh hưởng đến phiên làm việc |

## Examples

### New-LLMAudioChat -Query "Tell me about PowerShell" `     -Model "qwen2.5-14b-instruct" `     -Temperature 0.7

```powershell
New-LLMAudioChat -Query "Tell me about PowerShell" `
    -Model "qwen2.5-14b-instruct" `
    -Temperature 0.7
```

### llmaudiochat "What's the weather?" -DontSpeak

```powershell
llmaudiochat "What's the weather?" -DontSpeak
```

## Parameter Details

### `-Query <String>`

> Văn bản truy vấn ban đầu để gửi đến mô hình

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> .PARAMETER PartitionKeys
Chỉ định khóa phân vùng của đối tượng MongoDB. Nếu đối tượng nguồn là một bộ sưu tập MongoDB, tham số này chỉ ra khóa phân vùng. Nếu đối tượng nguồn là một tài liệu MongoDB, tham số này chỉ ra các trường sẽ được sử dụng cho khóa phân vùng.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> Mảng các đường dẫn tệp để đính kèm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <String>`

> Loại mô hình Whisper sẽ sử dụng, mặc định là LargeV3Turbo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'SmallEn'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Nhiệt độ cho nhận dạng đầu vào âm thanh (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Nhiệt độ cho độ ngẫu nhiên của phản hồi (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> Tham số nhiệt độ để kiểm soát tính ngẫu nhiên của phản hồi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.01` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> Đặt ngôn ngữ cần phát hiện

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Language` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Số lượng luồng CPU để sử dụng, mặc định là 0 (tự động)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Biểu thức chính quy để loại bỏ các token khỏi đầu ra

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Kích thước của bối cảnh âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> Ngưỡng phát hiện im lặng (0..32767, mặc định là 30)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `30` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Single>`

> Hình phạt độ dài

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Single>`

> Ngưỡng entropy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Single>`

> Ngưỡng xác suất log

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Single>`

> Không có ngưỡng giọng nói

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Loại truy vấn LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'ToolUse'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Mã định danh hoặc mẫu mô hình để sử dụng cho các hoạt động AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Chi tiết mức độ hình ảnh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'low'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> Điểm cuối API URL cho các thao tác AI

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

> Khóa API cho các hoạt động AI đã xác thực

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
### `-ShowToolChainInvocations`

> Hiển thị các lời gọi chuỗi công cụ trong bảng điều khiển

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Thời gian chờ tính bằng giây cho các thao tác AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> Lược đồ JSON cho định dạng đầu ra được yêu cầu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> Chỉ xuất ra các khối markup của các loại đã chỉ định

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Mảng các định nghĩa lệnh PowerShell để sử dụng làm công cụ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <ScriptBlock[]>`

> Mảng ScriptBlock của các công cụ chức năng để hiển thị cho LLM (chuyển tiếp đến Invoke-LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Mảng tên hàm công cụ không yêu cầu xác nhận (truyền trực tiếp tới Invoke-LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatMode <String>`

> Chế độ trò chuyện cho truy vấn LLM (chuyển tiếp đến Invoke-LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `chat` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Độ dài tối đa của lệnh gọi lại công cụ (chuyển tiếp đến Invoke-LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> Important! When using the `-RemoveSelf` parameter, you must be an enterprise administrator. Without the `-Confirm` parameter, the function will ask for confirmation before removing the user from all groups except for the Domain Users group. To suppress confirmation, you should supply the `-Force` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> Important! When using the `-RemoveSelf` parameter, you must be an enterprise administrator. Without the `-Confirm` parameter, the function will ask for confirmation before removing the user from all groups except for the Domain Users group. To suppress confirmation, you should supply the `-Force` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> .TỔNG QUAN
Dùng lệnh ghép này để chèn, xóa, sửa đổi hoặc liệt kê thông tin cấu hình trong tệp Web.config của máy chủ IIS.
Lệnh ghép này cho phép bạn định cấu hình trong cây cấu hình IIS. Bạn có thể dùng tham số -Get, -Set, -Add và -Clear để chỉ định hành động.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> Tắt chuyển văn bản thành giọng nói cho các câu trả lời AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> Tắt chức năng chuyển văn bản thành giọng nói cho các phản hồi suy nghĩ của AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> Không sử dụng phát hiện im lặng để tự động dừng ghi âm.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Có sử dụng tính năng thu âm màn hình thay vì đầu vào micrô không

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioDevice <String>`

> Tên thiết bị âm thanh hoặc GUID (hỗ trợ ký tự đại diện, chọn kết quả khớp đầu tiên)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAndRecordingDevice`

> Sử dụng cả máy tính để bàn và thiết bị ghi âm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> Không sử dụng ngữ cảnh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Sử dụng chiến lược lấy mẫu tìm kiếm chùm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> Có nên loại bỏ văn bản đã nhận dạng khỏi đầu ra

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> Không lưu phiên trong bộ nhớ đệm phiên

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> .NAME
    Get-MyService

.SYNOPSIS
    Truy xuất các dịch vụ trên máy tính cục bộ hoặc từ xa.

.DESCRIPTION
    Lệnh ghép ngắn Get-MyService lấy các đối tượng đại diện cho các dịch vụ trên máy tính cục bộ hoặc máy tính từ xa, bao gồm cả dịch vụ đang chạy và đã dừng. Bạn có thể chỉ định tên dịch vụ hoặc tên hiển thị cho các dịch vụ bạn muốn lấy.

.PARAMETER ComputerName
    Chỉ định một hoặc nhiều máy tính từ xa. Mặc định là máy tính cục bộ.
    Nhập tên NETBIOS, địa chỉ IP hoặc tên miền đầy đủ của máy tính từ xa.

.PARAMETER Name
    Chỉ định tên dịch vụ của các dịch vụ cần lấy. Ký tự đại diện được chấp nhận.

.PARAMETER DependentServices
    Cho biết lệnh ghép ngắn này chỉ lấy các dịch vụ phụ thuộc vào dịch vụ được chỉ định.

.PARAMETER RequiredServices
    Cho biết lệnh ghép ngắn này chỉ lấy các dịch vụ mà dịch vụ được chỉ định phụ thuộc vào.

.EXAMPLE
    Get-MyService -Name wmi*
    Lệnh này lấy các dịch vụ có tên bắt đầu bằng wmi.

.EXAMPLE
    Get-MyService -Name wmi*,s* -ComputerName Server01,Server02
    Lệnh này lấy các dịch vụ bắt đầu bằng wmi hoặc s trên máy tính Server01 và Server02.

.INPUTS
    System.String[]
    Bạn có thể đưa các chuỗi vào lệnh ghép ngắn này.

.OUTPUTS
    System.ServiceProcess.ServiceController
    Lệnh ghép ngắn này trả về các đối tượng đại diện cho các dịch vụ.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Sử dụng các thiết lập thay thế được lưu trữ trong phiên làm việc cho sở thích AI

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

> Xóa các thiết lập thay thế được lưu trong phiên cho tùy chọn AI

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

> Chỉ lưu cài đặt vào tùy chọn liên tục mà không ảnh hưởng đến phiên làm việc

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-GenXdevMCPToken.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-DeepLinkImageFile.md)
