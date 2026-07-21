# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat`

## Synopsis

> Bắt đầu một phiên trò chuyện văn bản tương tác với khả năng AI.

## Description

Khởi tạo một phiên trò chuyện tương tác với khả năng AI, cho phép người dùng thêm hoặc xóa các hàm PowerShell trong quá trình trò chuyện và thực thi các lệnh PowerShell. Hàm này cung cấp một giao diện toàn diện cho các cuộc trò chuyện hỗ trợ AI với khả năng tích hợp công cụ và tùy chỉnh mở rộng.

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoSupportForJsonSchema <String>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-ShowToolChainInvocations] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Tắt máy tính từ xa.

Có thể tùy chọn khởi động lại, đăng xuất, hoặc ghi lại các sự kiện cụ thể trong nhật ký hệ thống.

Các tham số xác thực như -Credential có thể được sử dụng để chỉ định thông tin đăng nhập thay thế. Sử dụng tên máy tính cục bộ hoặc tên NetBIOS nếu không thể xác thực thông qua DNS.

Ví dụ:
    PS> Stop-Computer -ComputerName Server01, Server02 -Reason 'Bảo trì phần cứng' -Force

    Lệnh này tắt máy tính Server01 và Server02 với lý do 'Bảo trì phần cứng' và buộc đóng các ứng dụng đang chạy.

Tham số:
    -ComputerName <String[]>
        Chỉ định các máy tính cần tắt. Mặc định là máy tính cục bộ.
        Có thể sử dụng tên NetBIOS, địa chỉ IP hoặc tên miền đầy đủ (FQDN).

    -Credential <PSCredential>
        Chỉ định thông tin đăng nhập để thực hiện hành động trên máy tính từ xa.

    -Force
        Buộc tắt máy tính ngay lập tức, mà không hỏi xác nhận.

    -Reason <String>
        Lý do tắt máy, được ghi lại trong nhật ký hệ thống.

Các giá trị trả về:
    Không có.

Ghi chú:
    Yêu cầu quyền quản trị viên trên máy tính đích.

Lịch sử phiên bản:
    PowerShell 4.0 trở lên. *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | .PARAMETER PartitionKeys
Chỉ định khóa phân vùng của đối tượng MongoDB. Nếu đối tượng nguồn là một bộ sưu tập MongoDB, tham số này chỉ ra khóa phân vùng. Nếu đối tượng nguồn là một tài liệu MongoDB, tham số này chỉ ra các trường sẽ được sử dụng cho khóa phân vùng. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Mảng các đường dẫn tệp để đính kèm |
| `-Temperature` | Double | — | — | 3 | `-1` | Nhiệt độ cho độ ngẫu nhiên của phản hồi (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Chi tiết mức độ hình ảnh |
| `-ResponseFormat` | String | — | — | Named | `$null` | Lược đồ JSON cho định dạng đầu ra được yêu cầu |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Loại truy vấn LLM |
| `-Model` | String | — | — | Named | — | Mã định danh hoặc mẫu mô hình để sử dụng cho các hoạt động AI |
| `-ApiEndpoint` | String | — | — | Named | — | Điểm cuối API URL cho các thao tác AI |
| `-ApiKey` | String | — | — | Named | — | Khóa API cho các hoạt động AI đã xác thực |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Cho biết LLM không hỗ trợ lược đồ JSON |
| `-ShowToolChainInvocations` | SwitchParameter | — | — | Named | — | Hiển thị các lời gọi chuỗi công cụ trong bảng điều khiển |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Thời gian chờ tính bằng giây cho các thao tác AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Mảng các định nghĩa lệnh PowerShell để sử dụng làm công cụ |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | Chỉ xuất ra các khối markup của các loại đã chỉ định |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Important! When using the `-RemoveSelf` parameter, you must be an enterprise administrator. Without the `-Confirm` parameter, the function will ask for confirmation before removing the user from all groups except for the Domain Users group. To suppress confirmation, you should supply the `-Force` parameter. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Important! When using the `-RemoveSelf` parameter, you must be an enterprise administrator. Without the `-Confirm` parameter, the function will ask for confirmation before removing the user from all groups except for the Domain Users group. To suppress confirmation, you should supply the `-Force` parameter. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .TỔNG QUAN
Dùng lệnh ghép này để chèn, xóa, sửa đổi hoặc liệt kê thông tin cấu hình trong tệp Web.config của máy chủ IIS.
Lệnh ghép này cho phép bạn định cấu hình trong cây cấu hình IIS. Bạn có thể dùng tham số -Get, -Set, -Add và -Clear để chỉ định hành động. |
| `-Speak` | SwitchParameter | — | — | Named | — | Kích hoạt chuyển văn bản thành giọng nói cho phản hồi AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Bật chuyển văn bản thành giọng nói cho các phản hồi suy nghĩ của AI |
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
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Được sử dụng nội bộ, để chỉ gọi chế độ trò chuyện một lần sau khi gọi llm *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Không lưu phiên trong bộ nhớ đệm phiên |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sử dụng các thiết lập thay thế được lưu trữ trong phiên làm việc cho sở thích AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Xóa các thiết lập thay thế được lưu trong phiên cho tùy chọn AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Chỉ lưu cài đặt vào tùy chọn liên tục mà không ảnh hưởng đến phiên làm việc |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Tên các hàm công cụ không cần xác nhận |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Độ dài tối đa cho phản hồi gọi công cụ |
| `-AudioTemperature` | Object | — | — | Named | — | Nhiệt độ cho việc tạo âm thanh |
| `-TemperatureResponse` | Object | — | — | Named | — | Nhiệt độ cho việc tạo phản hồi |
| `-Language` | Object | — | — | Named | — | Ngôn ngữ cho mô hình hoặc đầu ra |
| `-CpuThreads` | Object | — | — | Named | — | Số lượng luồng CPU để sử dụng |
| `-SuppressRegex` | Object | — | — | Named | — | Biểu thức chính quy để loại bỏ đầu ra |
| `-AudioContextSize` | Object | — | — | Named | — | Kích thước ngữ cảnh âm thanh để xử lý |
| `-SilenceThreshold` | Object | — | — | Named | — | Ngưỡng im lặng cho xử lý âm thanh |
| `-LengthPenalty` | Object | — | — | Named | — | Hình phạt độ dài cho việc tạo chuỗi |
| `-EntropyThreshold` | Object | — | — | Named | — | Ngưỡng entropy để lọc đầu ra |
| `-LogProbThreshold` | Object | — | — | Named | — | Ngưỡng xác suất log để lọc đầu ra |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Không có ngưỡng giọng nói để phát hiện âm thanh |
| `-DontSpeak` | Object | — | — | Named | — | Tắt đầu ra giọng nói |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Tắt đầu ra giọng nói cho suy nghĩ |
| `-NoVOX` | Object | — | — | Named | — | Tắt VOX (kích hoạt bằng giọng nói) |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Sử dụng tính năng thu âm màn hình máy tính |
| `-NoContext` | Object | — | — | Named | — | Tắt sử dụng ngữ cảnh |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Sử dụng chiến lược lấy mẫu tìm kiếm chùm |
| `-OnlyResponses` | Object | — | — | Named | — | .PARAMETER File
Chỉ định đường dẫn đến tệp đầu vào.

.PARAMETER Encoding
Chỉ định kiểu mã hóa ký tự của tệp đầu vào. Các giá trị chấp nhận được: ASCII, UTF8, UTF7, UTF32, Unicode, BigEndianUnicode, Default, và Oem.

.PARAMETER Delimiter
Chỉ định dấu phân cách được sử dụng để phân tách các trường. Mặc định là dấu phẩy (,). |

## Examples

### New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `     -Instructions "You are a helpful AI assistant"

```powershell
New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `
    -Instructions "You are a helpful AI assistant"
```

### llmchat "Tell me a joke" -Speak -IncludeThoughts

```powershell
llmchat "Tell me a joke" -Speak -IncludeThoughts
```

## Parameter Details

### `-Query <String>`

> Tắt máy tính từ xa.

Có thể tùy chọn khởi động lại, đăng xuất, hoặc ghi lại các sự kiện cụ thể trong nhật ký hệ thống.

Các tham số xác thực như -Credential có thể được sử dụng để chỉ định thông tin đăng nhập thay thế. Sử dụng tên máy tính cục bộ hoặc tên NetBIOS nếu không thể xác thực thông qua DNS.

Ví dụ:
    PS> Stop-Computer -ComputerName Server01, Server02 -Reason 'Bảo trì phần cứng' -Force

    Lệnh này tắt máy tính Server01 và Server02 với lý do 'Bảo trì phần cứng' và buộc đóng các ứng dụng đang chạy.

Tham số:
    -ComputerName <String[]>
        Chỉ định các máy tính cần tắt. Mặc định là máy tính cục bộ.
        Có thể sử dụng tên NetBIOS, địa chỉ IP hoặc tên miền đầy đủ (FQDN).

    -Credential <PSCredential>
        Chỉ định thông tin đăng nhập để thực hiện hành động trên máy tính từ xa.

    -Force
        Buộc tắt máy tính ngay lập tức, mà không hỏi xác nhận.

    -Reason <String>
        Lý do tắt máy, được ghi lại trong nhật ký hệ thống.

Các giá trị trả về:
    Không có.

Ghi chú:
    Yêu cầu quyền quản trị viên trên máy tính đích.

Lịch sử phiên bản:
    PowerShell 4.0 trở lên.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

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
### `-Temperature <Double>`

> Nhiệt độ cho độ ngẫu nhiên của phản hồi (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `-1` |
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
| **Default value** | *(none)* |
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
| **Default value** | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` |
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
### `-Speak`

> Kích hoạt chuyển văn bản thành giọng nói cho phản hồi AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> Bật chuyển văn bản thành giọng nói cho các phản hồi suy nghĩ của AI

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
### `-NoConfirmationToolFunctionNames <String[]>`

> Tên các hàm công cụ không cần xác nhận

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Độ dài tối đa cho phản hồi gọi công cụ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Object>`

> Nhiệt độ cho việc tạo âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Object>`

> Nhiệt độ cho việc tạo phản hồi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <Object>`

> Ngôn ngữ cho mô hình hoặc đầu ra

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Object>`

> Số lượng luồng CPU để sử dụng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <Object>`

> Biểu thức chính quy để loại bỏ đầu ra

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Object>`

> Kích thước ngữ cảnh âm thanh để xử lý

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Object>`

> Ngưỡng im lặng cho xử lý âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Object>`

> Hình phạt độ dài cho việc tạo chuỗi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Object>`

> Ngưỡng entropy để lọc đầu ra

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Object>`

> Ngưỡng xác suất log để lọc đầu ra

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Object>`

> Không có ngưỡng giọng nói để phát hiện âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak <Object>`

> Tắt đầu ra giọng nói

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts <Object>`

> Tắt đầu ra giọng nói cho suy nghĩ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX <Object>`

> Tắt VOX (kích hoạt bằng giọng nói)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture <Object>`

> Sử dụng tính năng thu âm màn hình máy tính

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext <Object>`

> Tắt sử dụng ngữ cảnh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy <Object>`

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
### `-OnlyResponses <Object>`

> .PARAMETER File
Chỉ định đường dẫn đến tệp đầu vào.

.PARAMETER Encoding
Chỉ định kiểu mã hóa ký tự của tệp đầu vào. Các giá trị chấp nhận được: ASCII, UTF8, UTF7, UTF32, Unicode, BigEndianUnicode, Default, và Oem.

.PARAMETER Delimiter
Chỉ định dấu phân cách được sử dụng để phân tách các trường. Mặc định là dấu phẩy (,).

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-LLMAudioChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-DeepLinkImageFile.md)
