# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Phân tích nội dung hình ảnh bằng khả năng thị giác AI

## Description

Xử lý hình ảnh bằng khả năng thị giác AI để phân tích nội dung và trả lời truy vấn về hình ảnh. Chức năng hỗ trợ nhiều tham số phân tích bao gồm kiểm soát nhiệt độ để điều chỉnh độ ngẫu nhiên của phản hồi và giới hạn token cho độ dài đầu ra.

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | Chuỗi truy vấn để phân tích hình ảnh |
| `-ImagePath` | String | ✅ | — | 1 | — | Đường dẫn đến tệp hình ảnh để phân tích |
| `-Instructions` | String | — | — | 2 | — | .PARAMETER PartitionKeys
Chỉ định khóa phân vùng của đối tượng MongoDB. Nếu đối tượng nguồn là một bộ sưu tập MongoDB, tham số này chỉ ra khóa phân vùng. Nếu đối tượng nguồn là một tài liệu MongoDB, tham số này chỉ ra các trường sẽ được sử dụng cho khóa phân vùng. |
| `-ResponseFormat` | String | — | — | Named | `$null` | Lược đồ JSON cho định dạng đầu ra được yêu cầu |
| `-Temperature` | Double | — | — | Named | `-1` | Nhiệt độ cho độ ngẫu nhiên của phản hồi (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Chi tiết mức độ hình ảnh |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | Loại truy vấn LLM |
| `-Model` | String | — | — | Named | — | Mã định danh hoặc mẫu mô hình để sử dụng cho các hoạt động AI |
| `-ApiEndpoint` | String | — | — | Named | — | Điểm cuối API URL cho các thao tác AI |
| `-ApiKey` | String | — | — | Named | — | Khóa API cho các hoạt động AI đã xác thực |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Cho biết LLM không hỗ trợ lược đồ JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Thời gian chờ tính bằng giây cho các thao tác AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Important! When using the `-RemoveSelf` parameter, you must be an enterprise administrator. Without the `-Confirm` parameter, the function will ask for confirmation before removing the user from all groups except for the Domain Users group. To suppress confirmation, you should supply the `-Force` parameter. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sử dụng các thiết lập thay thế được lưu trữ trong phiên làm việc cho sở thích AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Xóa các thiết lập thay thế được lưu trong phiên cho tùy chọn AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Chỉ lưu cài đặt vào tùy chọn liên tục mà không ảnh hưởng đến phiên làm việc |
| `-Functions` | String[] | — | — | Named | — | Chỉ định các hàm để sử dụng cho hoạt động AI. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Chỉ định các lệnh ghép được hiển thị cho hoạt động AI. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Chỉ định tên hàm công cụ không yêu cầu xác nhận. |
| `-AudioTemperature` | Double | — | — | Named | — | Nhiệt độ cho việc tạo phản hồi âm thanh. |
| `-TemperatureResponse` | Double | — | — | Named | — | Nhiệt độ cho việc tạo phản hồi. |
| `-Language` | String | — | — | Named | — | Ngôn ngữ cho mô tả và từ khóa được tạo ra |
| `-CpuThreads` | Int32 | — | — | Named | — | Số lượng luồng CPU để sử dụng. |
| `-SuppressRegex` | String | — | — | Named | — | Biểu thức chính quy để loại bỏ đầu ra. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Kích thước ngữ cảnh âm thanh để xử lý. |
| `-SilenceThreshold` | Double | — | — | Named | — | Ngưỡng im lặng cho xử lý âm thanh. |
| `-LengthPenalty` | Double | — | — | Named | — | Hình phạt độ dài cho việc tạo chuỗi. |
| `-EntropyThreshold` | Double | — | — | Named | — | Ngưỡng entropy để lọc đầu ra. |
| `-LogProbThreshold` | Double | — | — | Named | — | Ngưỡng xác suất log cho việc lọc đầu ra. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Không có ngưỡng giọng nói để phát hiện âm thanh. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, không được phát ra đầu ra. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, không nói lên suy nghĩ của mô hình. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, sẽ vô hiệu hóa VOX. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, hãy sử dụng tính năng thu âm màn hình. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, sẽ vô hiệu hóa việc sử dụng ngữ cảnh. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, sử dụng chiến lược lấy mẫu tìm kiếm chùm. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, chỉ trả về phản hồi. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, không thêm suy nghĩ vào lịch sử. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Tiếp tục cuộc trò chuyện cuối cùng. |
| `-Speak` | SwitchParameter | — | — | Named | — | Sau đây là bản dịch tiếng Việt của các văn bản trợ giúp cmdlet PowerShell: (Xin lưu ý rằng do không có văn bản đầu vào cụ thể, tôi sẽ cung cấp một ví dụ dịch thuật chung dựa trên các hướng dẫn đã cho)

Đối với mỗi cmdlet, tên cmdlet và các tham số kỹ thuật được giữ nguyên, chỉ dịch các mô tả và văn bản tự nhiên.

Ví dụ:
- Get-Service: Lấy danh sách các dịch vụ trên máy tính.
- -Name: Chỉ định tên của dịch vụ cần lấy.
- -ComputerName: Chỉ định tên máy tính để lấy dịch vụ từ xa.

Xin vui lòng cung cấp văn bản cụ thể để tôi có thể dịch chính xác. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Nói lên suy nghĩ của mô hình. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Tổng quan về Get-Process
Lấy các tiến trình đang chạy trên máy tính cục bộ hoặc máy tính từ xa.

Cú pháp
Get-Process
    [[-Name] <String[]>]
    [-ComputerName <String[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]

Get-Process
    -Id <Int32[]>
    [-ComputerName <String[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]

Get-Process
    [[-Name] <String[]>]
    -InputObject <Process[]>
    [-ComputerName <String[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]

Mô tả
Lệnh ghép ngắn Get-Process lấy các tiến trình trên máy tính cục bộ hoặc máy tính từ xa.

Không có tham số, lệnh ghép ngắn này sẽ lấy tất cả các tiến trình trên máy tính cục bộ. Bạn cũng có thể chỉ định một tiến trình cụ thể theo tên tiến trình, ID tiến trình (PID), hoặc thông qua đối tượng tiến trình. Lệnh ghép ngắn này cũng có thể lấy thông tin chi tiết như các mô-đun và thông tin phiên bản tệp mà một tiến trình đã tải. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Bộ lọc cho các loại khối đánh dấu. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, chỉ trò chuyện một lần. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Vô hiệu hóa bộ nhớ đệm phiên. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Độ dài tối đa của cuộc gọi lại cho các lệnh gọi công cụ. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Buộc hiển thị lời nhắc đồng ý ngay cả khi đã thiết lập tùy chọn cho việc cài đặt gói ImageSharp. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Tự động đồng ý cài đặt phần mềm bên thứ ba và đặt cờ vĩnh viễn cho các gói ImageSharp. |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

Phân tích một hình ảnh với giới hạn nhiệt độ và token cụ thể.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

Phân tích hình ảnh đơn giản sử dụng bí danh và tham số vị trí.

## Parameter Details

### `-Query <String>`

> Chuỗi truy vấn để phân tích hình ảnh

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImagePath <String>`

> Đường dẫn đến tệp hình ảnh để phân tích

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
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
| **Position?** | 2 |
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
### `-ImageDetail <String>`

> Chi tiết mức độ hình ảnh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'high'` |
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
| **Default value** | `'Pictures'` |
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
### `-Functions <String[]>`

> Chỉ định các hàm để sử dụng cho hoạt động AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <String[]>`

> Chỉ định các lệnh ghép được hiển thị cho hoạt động AI.

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

> Chỉ định tên hàm công cụ không yêu cầu xác nhận.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Nhiệt độ cho việc tạo phản hồi âm thanh.

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

> Nhiệt độ cho việc tạo phản hồi.

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

> Ngôn ngữ cho mô tả và từ khóa được tạo ra

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

> Số lượng luồng CPU để sử dụng.

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

> Biểu thức chính quy để loại bỏ đầu ra.

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

> Kích thước ngữ cảnh âm thanh để xử lý.

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

> Ngưỡng im lặng cho xử lý âm thanh.

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

> Hình phạt độ dài cho việc tạo chuỗi.

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

> Ngưỡng entropy để lọc đầu ra.

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

> Ngưỡng xác suất log cho việc lọc đầu ra.

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

> Không có ngưỡng giọng nói để phát hiện âm thanh.

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

> Nếu được chỉ định, không được phát ra đầu ra.

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

> Nếu được chỉ định, không nói lên suy nghĩ của mô hình.

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

> Nếu được chỉ định, sẽ vô hiệu hóa VOX.

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

> Nếu được chỉ định, hãy sử dụng tính năng thu âm màn hình.

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

> Nếu được chỉ định, sẽ vô hiệu hóa việc sử dụng ngữ cảnh.

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

> Nếu được chỉ định, sử dụng chiến lược lấy mẫu tìm kiếm chùm.

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

> Nếu được chỉ định, chỉ trả về phản hồi.

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

> Nếu được chỉ định, không thêm suy nghĩ vào lịch sử.

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

> Tiếp tục cuộc trò chuyện cuối cùng.

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

> Sau đây là bản dịch tiếng Việt của các văn bản trợ giúp cmdlet PowerShell: (Xin lưu ý rằng do không có văn bản đầu vào cụ thể, tôi sẽ cung cấp một ví dụ dịch thuật chung dựa trên các hướng dẫn đã cho)

Đối với mỗi cmdlet, tên cmdlet và các tham số kỹ thuật được giữ nguyên, chỉ dịch các mô tả và văn bản tự nhiên.

Ví dụ:
- Get-Service: Lấy danh sách các dịch vụ trên máy tính.
- -Name: Chỉ định tên của dịch vụ cần lấy.
- -ComputerName: Chỉ định tên máy tính để lấy dịch vụ từ xa.

Xin vui lòng cung cấp văn bản cụ thể để tôi có thể dịch chính xác.

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

> Nói lên suy nghĩ của mô hình.

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

> Tổng quan về Get-Process
Lấy các tiến trình đang chạy trên máy tính cục bộ hoặc máy tính từ xa.

Cú pháp
Get-Process
    [[-Name] <String[]>]
    [-ComputerName <String[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]

Get-Process
    -Id <Int32[]>
    [-ComputerName <String[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]

Get-Process
    [[-Name] <String[]>]
    -InputObject <Process[]>
    [-ComputerName <String[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]

Mô tả
Lệnh ghép ngắn Get-Process lấy các tiến trình trên máy tính cục bộ hoặc máy tính từ xa.

Không có tham số, lệnh ghép ngắn này sẽ lấy tất cả các tiến trình trên máy tính cục bộ. Bạn cũng có thể chỉ định một tiến trình cụ thể theo tên tiến trình, ID tiến trình (PID), hoặc thông qua đối tượng tiến trình. Lệnh ghép ngắn này cũng có thể lấy thông tin chi tiết như các mô-đun và thông tin phiên bản tệp mà một tiến trình đã tải.

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

> Bộ lọc cho các loại khối đánh dấu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce`

> Nếu được chỉ định, chỉ trò chuyện một lần.

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

> Vô hiệu hóa bộ nhớ đệm phiên.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Độ dài tối đa của cuộc gọi lại cho các lệnh gọi công cụ.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> Buộc hiển thị lời nhắc đồng ý ngay cả khi đã thiết lập tùy chọn cho việc cài đặt gói ImageSharp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> Tự động đồng ý cài đặt phần mềm bên thứ ba và đặt cờ vĩnh viễn cho các gói ImageSharp.

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
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-LLMTextTransformation.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Update-AllImageMetaData.md)
