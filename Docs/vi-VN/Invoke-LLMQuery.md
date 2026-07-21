# Invoke-LLMQuery

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `qllm`, `llm`

## Synopsis

> Gửi truy vấn đến một API Hoàn thành Trò chuyện Ngôn ngữ Lớn tương thích với OpenAI và xử lý các phản hồi.

## Description

Hàm này gửi các truy vấn đến API hoàn tất trò chuyện Ngôn ngữ Lớn tương thích với OpenAI và xử lý các phản hồi. Nó hỗ trợ đầu vào văn bản và hình ảnh, xử lý các lệnh gọi hàm công cụ và có thể hoạt động ở nhiều chế độ trò chuyện khác nhau bao gồm văn bản và âm thanh.

Hàm cung cấp hỗ trợ toàn diện cho tương tác LLM bao gồm:
- Xử lý đầu vào văn bản và hình ảnh
- Gọi hàm công cụ và thực thi lệnh
- Chế độ trò chuyện tương tác (văn bản và âm thanh)
- Khởi tạo và cấu hình mô hình
- Định dạng và xử lý phản hồi
- Quản lý phiên và bộ nhớ đệm
- Định vị cửa sổ và kiểm soát hiển thị

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilterForJsonOutput] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-QuietToolChainInvocations] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | Tắt máy tính từ xa.

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
    PowerShell 4.0 trở lên. |
| `-Instructions` | String | — | — | 1 | — | .PARAMETER PartitionKeys
Chỉ định khóa phân vùng của đối tượng MongoDB. Nếu đối tượng nguồn là một bộ sưu tập MongoDB, tham số này chỉ ra khóa phân vùng. Nếu đối tượng nguồn là một tài liệu MongoDB, tham số này chỉ ra các trường sẽ được sử dụng cho khóa phân vùng. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Mảng các đường dẫn tệp để đính kèm |
| `-ResponseFormat` | String | — | — | Named | — | Lược đồ JSON cho định dạng đầu ra được yêu cầu |
| `-Temperature` | Double | — | — | Named | `-1` | Nhiệt độ cho độ ngẫu nhiên của phản hồi (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Mảng các định nghĩa hàm |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Mảng các định nghĩa lệnh PowerShell để sử dụng làm công cụ |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Các công cụ không yêu cầu xác nhận của người dùng |
| `-QuietToolChainInvocations` | SwitchParameter | — | — | Named | — | Ngăn chặn đầu ra Write-Host trong các lần gọi chuỗi công cụ trung gian |
| `-ImageDetail` | String | — | — | Named | `'low'` | Chi tiết mức độ hình ảnh |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Loại truy vấn LLM |
| `-Model` | String | — | — | Named | — | Mã định danh hoặc mẫu mô hình để sử dụng cho các hoạt động AI |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | Điểm cuối API URL cho các thao tác AI |
| `-ApiKey` | String | — | — | Named | — | Khóa API cho các hoạt động AI đã xác thực |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Cho biết LLM không hỗ trợ lược đồ JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Thời gian chờ tính bằng giây cho các thao tác AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-AudioTemperature` | Double | — | — | Named | — | Nhiệt độ cho sự ngẫu nhiên của việc tạo âm thanh |
| `-TemperatureResponse` | Double | — | — | Named | — | Nhiệt độ cho tính ngẫu nhiên của phản hồi (trò chuyện thoại) |
| `-Language` | String | — | — | Named | — | Mã ngôn ngữ hoặc tên cho cuộc trò chuyện âm thanh |
| `-CpuThreads` | Int32 | — | — | Named | — | Số luồng CPU để sử dụng cho trò chuyện âm thanh |
| `-SuppressRegex` | String | — | — | Named | — | Biểu thức chính quy để loại bỏ một số đầu ra nhất định trong chat âm thanh |
| `-AudioContextSize` | Int32 | — | — | Named | — | Kích thước ngữ cảnh âm thanh cho trò chuyện âm thanh |
| `-SilenceThreshold` | Double | — | — | Named | — | Ngưỡng im lặng cho cuộc trò chuyện âm thanh |
| `-LengthPenalty` | Double | — | — | Named | — | Hình phạt độ dài cho phản hồi trò chuyện âm thanh |
| `-EntropyThreshold` | Double | — | — | Named | — | Ngưỡng entropy cho trò chuyện âm thanh |
| `-LogProbThreshold` | Double | — | — | Named | — | Ngưỡng xác suất log cho cuộc trò chuyện âm thanh |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Không có ngưỡng giọng nói cho cuộc trò chuyện âm thanh |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Đừng nói phản hồi bằng giọng nói |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | không nên nói suy nghĩ bằng giọng nói |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Tắt VOX (kích hoạt bằng giọng nói) cho cuộc trò chuyện âm thanh |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Sử dụng tính năng thu âm màn hình để trò chuyện âm thanh |
| `-NoContext` | SwitchParameter | — | — | Named | — | Tắt ngữ cảnh cho cuộc trò chuyện âm thanh |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Sử dụng chiến lược lấy mẫu beam search cho trò chuyện âm thanh |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .DESCRIPTION
Lệnh ghép này (cmdlet) tạo một máy ảo mới. Bạn có thể chỉ định tên máy ảo và các cài đặt khác bằng cách sử dụng các tham số. Theo mặc định, máy ảo được tạo với bộ nhớ 512 MB, một bộ xử lý ảo và một kết nối mạng tới mạng ảo mặc định.

Trong chế độ bảo dưỡng của máy chủ, bạn có thể tạo máy ảo ở trạng thái tắt hoặc đang chạy. Nếu bạn tạo máy ảo ở trạng thái đang chạy, quá trình tạo sẽ không thành công trừ khi máy chủ có đủ tài nguyên.

Lưu ý: Bạn phải có quyền quản trị trên máy chủ Hyper-V để tạo máy ảo. Để chạy các lệnh ghép Hyper-V, hãy khởi chạy Windows PowerShell với tư cách quản trị viên. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Important! When using the `-RemoveSelf` parameter, you must be an enterprise administrator. Without the `-Confirm` parameter, the function will ask for confirmation before removing the user from all groups except for the Domain Users group. To suppress confirmation, you should supply the `-Force` parameter. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Loại trừ các tiến trình suy nghĩ khỏi lịch sử hội thoại |
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
| `-FilterForJsonOutput` | SwitchParameter | — | — | Named | — | Trích xuất đối tượng JSON hoặc mảng ngoài cùng từ phản hồi, loại bỏ các dấu hiệu markdown và văn bản xung quanh. Tự động bật khi -ResponseFormat được thiết lập; sử dụng công tắc này để buộc nó cho các cuộc gọi văn bản thuần túy mong đợi đầu ra JSON. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | Chỉ xuất ra các khối markup của các loại đã chỉ định |
| `-ChatMode` | String | — | — | Named | — | Bật chế độ trò chuyện |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Được sử dụng nội bộ, để chỉ gọi chế độ trò chuyện một lần sau khi gọi llm |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Không lưu phiên trong bộ nhớ đệm phiên |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sử dụng các thiết lập thay thế được lưu trữ trong phiên làm việc cho sở thích AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Xóa các thiết lập thay thế được lưu trong phiên cho tùy chọn AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Chỉ lưu cài đặt vào tùy chọn liên tục mà không ảnh hưởng đến phiên làm việc |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | Độ dài tối đa của đầu ra cuộc gọi công cụ tính bằng ký tự. Đầu ra vượt quá độ dài này sẽ bị cắt bớt kèm theo thông báo cảnh báo. Mặc định là 100000 ký tự. |

## Examples

### Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7

```powershell
Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7
```

Gửi một truy vấn toán học đơn giản đến mô hình qwen với nhiệt độ được chỉ định.

### qllm "What is 2+2?" -Model "qwen"

```powershell
qllm "What is 2+2?" -Model "qwen"
```

Sử dụng bí danh để gửi truy vấn với các tham số mặc định.

### Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"

```powershell
Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"
```

Gửi một truy vấn kèm tệp đính kèm hình ảnh để phân tích.

### llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"

```powershell
llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"
```

Bắt đầu một phiên trò chuyện văn bản tương tác với mô hình đã chỉ định.

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
| **Accept pipeline input?** | False |
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
### `-ResponseFormat <String>`

> Lược đồ JSON cho định dạng đầu ra được yêu cầu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-Functions <Collections.Hashtable[]>`

> Mảng các định nghĩa hàm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-NoConfirmationToolFunctionNames <String[]>`

> Các công cụ không yêu cầu xác nhận của người dùng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-QuietToolChainInvocations`

> Ngăn chặn đầu ra Write-Host trong các lần gọi chuỗi công cụ trung gian

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
### `-LLMQueryType <String>`

> Loại truy vấn LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'SimpleIntelligence'` |
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
### `-Gpu <Int32>`

> The `-Gpu` parameter.

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
### `-AudioTemperature <Double>`

> Nhiệt độ cho sự ngẫu nhiên của việc tạo âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> Nhiệt độ cho tính ngẫu nhiên của phản hồi (trò chuyện thoại)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Mã ngôn ngữ hoặc tên cho cuộc trò chuyện âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Số luồng CPU để sử dụng cho trò chuyện âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Biểu thức chính quy để loại bỏ một số đầu ra nhất định trong chat âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Kích thước ngữ cảnh âm thanh cho trò chuyện âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> Ngưỡng im lặng cho cuộc trò chuyện âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> Hình phạt độ dài cho phản hồi trò chuyện âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> Ngưỡng entropy cho trò chuyện âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> Ngưỡng xác suất log cho cuộc trò chuyện âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> Không có ngưỡng giọng nói cho cuộc trò chuyện âm thanh

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

> Đừng nói phản hồi bằng giọng nói

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

> không nên nói suy nghĩ bằng giọng nói

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

> Tắt VOX (kích hoạt bằng giọng nói) cho cuộc trò chuyện âm thanh

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

> Sử dụng tính năng thu âm màn hình để trò chuyện âm thanh

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

> Tắt ngữ cảnh cho cuộc trò chuyện âm thanh

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

> Sử dụng chiến lược lấy mẫu beam search cho trò chuyện âm thanh

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

> .DESCRIPTION
Lệnh ghép này (cmdlet) tạo một máy ảo mới. Bạn có thể chỉ định tên máy ảo và các cài đặt khác bằng cách sử dụng các tham số. Theo mặc định, máy ảo được tạo với bộ nhớ 512 MB, một bộ xử lý ảo và một kết nối mạng tới mạng ảo mặc định.

Trong chế độ bảo dưỡng của máy chủ, bạn có thể tạo máy ảo ở trạng thái tắt hoặc đang chạy. Nếu bạn tạo máy ảo ở trạng thái đang chạy, quá trình tạo sẽ không thành công trừ khi máy chủ có đủ tài nguyên.

Lưu ý: Bạn phải có quyền quản trị trên máy chủ Hyper-V để tạo máy ảo. Để chạy các lệnh ghép Hyper-V, hãy khởi chạy Windows PowerShell với tư cách quản trị viên.

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

> Loại trừ các tiến trình suy nghĩ khỏi lịch sử hội thoại

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
### `-FilterForJsonOutput`

> Trích xuất đối tượng JSON hoặc mảng ngoài cùng từ phản hồi, loại bỏ các dấu hiệu markdown và văn bản xung quanh. Tự động bật khi -ResponseFormat được thiết lập; sử dụng công tắc này để buộc nó cho các cuộc gọi văn bản thuần túy mong đợi đầu ra JSON.

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
| **Default value** | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatMode <String>`

> Bật chế độ trò chuyện

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `chat` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce`

> Được sử dụng nội bộ, để chỉ gọi chế độ trò chuyện một lần sau khi gọi llm

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
### `-MaxToolcallBackLength <Int32>`

> Độ dài tối đa của đầu ra cuộc gọi công cụ tính bằng ký tự. Đầu ra vượt quá độ dài này sẽ bị cắt bớt kèm theo thông báo cảnh báo. Mặc định là 100000 ký tự.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `100000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Update-AllImageMetaData.md)
