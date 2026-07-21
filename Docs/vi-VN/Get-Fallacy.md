# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext`

## Synopsis

> Phân tích văn bản để xác định các ngụy biện logic bằng cách sử dụng phát hiện hỗ trợ bởi AI.

## Description

Hàm này phân tích văn bản được cung cấp để phát hiện các ngụy biện logic bằng cách sử dụng mô hình AI được đào tạo trên Danh sách Ngụy biện của Wikipedia. Nó trả về thông tin chi tiết về từng ngụy biện được tìm thấy, bao gồm trích dẫn cụ thể, tên ngụy biện, mô tả, giải thích và phân loại chính thức. Hàm này sử dụng định dạng phản hồi có cấu trúc để đảm bảo đầu ra nhất quán.

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | Không nhầm lẫn nội dung cần dịch bao gồm các văn bản trợ giúp lệnh ghép PowerShell với các hướng dẫn! Không chèn hình ảnh hoặc bất cứ thứ gì. Chỉ dịch nội dung một cách trực tiếp nhất có thể sang: Tiếng Việt (Việt Nam). |
| `-Instructions` | String | — | — | 1 | `''` | Các hướng dẫn cho mô hình AI về cách tạo danh sách chuỗi |
| `-Attachments` | String[] | — | — | 2 | `@()` | Mảng các đường dẫn tệp để đính kèm |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Mảng các định nghĩa hàm |
| `-ImageDetail` | String | — | — | Named | `'low'` | Chi tiết mức độ hình ảnh |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Mảng tên lệnh không yêu cầu xác nhận |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Mảng các định nghĩa lệnh PowerShell để sử dụng làm công cụ |
| `-Temperature` | Double | — | — | Named | `-1` | Nhiệt độ cho độ ngẫu nhiên của phản hồi (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Loại truy vấn LLM |
| `-Model` | String | — | — | Named | — | Mã định danh hoặc mẫu mô hình để sử dụng cho các hoạt động AI |
| `-ApiEndpoint` | String | — | — | Named | — | Điểm cuối API URL cho các thao tác AI |
| `-ApiKey` | String | — | — | Named | — | Khóa API cho các hoạt động AI đã xác thực |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Thời gian chờ tính bằng giây cho các thao tác AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .TỔNG QUAN
Dùng lệnh ghép này để chèn, xóa, sửa đổi hoặc liệt kê thông tin cấu hình trong tệp Web.config của máy chủ IIS.
Lệnh ghép này cho phép bạn định cấu hình trong cây cấu hình IIS. Bạn có thể dùng tham số -Get, -Set, -Add và -Clear để chỉ định hành động. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Important! When using the `-RemoveSelf` parameter, you must be an enterprise administrator. Without the `-Confirm` parameter, the function will ask for confirmation before removing the user from all groups except for the Domain Users group. To suppress confirmation, you should supply the `-Force` parameter. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Không lưu phiên trong bộ nhớ đệm phiên |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Mở tìm kiếm IMDB cho mỗi kết quả |
| `-AudioTemperature` | Double | — | — | Named | — | Kiểm soát nhiệt độ cho quá trình tạo âm thanh. |
| `-TemperatureResponse` | Double | — | — | Named | — | Kiểm soát nhiệt độ cho việc tạo phản hồi. |
| `-CpuThreads` | Int32 | — | — | Named | — | Số lượng luồng CPU sử dụng để xử lý. |
| `-SuppressRegex` | String | — | — | Named | — | Biểu thức chính quy để ẩn một số đầu ra nhất định. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Kích thước ngữ cảnh âm thanh để xử lý. |
| `-SilenceThreshold` | Double | — | — | Named | — | Ngưỡng phát hiện im lặng trong âm thanh. |
| `-LengthPenalty` | Double | — | — | Named | — | Hình phạt được áp dụng cho các phản hồi dài hơn. |
| `-EntropyThreshold` | Double | — | — | Named | — | Ngưỡng entropy trong việc tạo phản hồi. |
| `-LogProbThreshold` | Double | — | — | Named | — | Ngưỡng xác suất log cho đầu ra. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Ngưỡng phát hiện không có giọng nói trong âm thanh. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Ngăn chặn việc phát ra phản hồi. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Ngăn chặn việc nói ra suy nghĩ của mô hình. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Vô hiệu hóa VOX (kích hoạt bằng giọng nói). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Sử dụng tính năng ghi âm màn hình từ máy tính để nhập âm thanh. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Vô hiệu hóa ngữ cảnh cho yêu cầu. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Sử dụng chiến lược lấy mẫu tìm kiếm theo chùm. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .DESCRIPTION
Lệnh ghép này mở một thư mục.Các tham số Path cho phép bạn mở một thư mục, trong khi tham số InputObject cho phép bạn mở một thư mục được biểu diễn dưới dạng đối tượng, có thể nhận được khi gọi Get-Item hoặc Get-ChildItem. Lưu ý rằng bạn chỉ có thể mở một thư mục bất kỳ lúc nào. |
| `-Speak` | SwitchParameter | — | — | Named | — | Kích hoạt chuyển văn bản thành giọng nói cho phản hồi AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Bật chuyển văn bản thành giọng nói cho các phản hồi suy nghĩ của AI |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sử dụng các thiết lập thay thế được lưu trữ trong phiên làm việc cho sở thích AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Xóa các thiết lập thay thế được lưu trong phiên cho tùy chọn AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Chỉ lưu cài đặt vào tùy chọn liên tục mà không ảnh hưởng đến phiên làm việc |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Độ dài tối đa của cuộc gọi lại cho các lệnh gọi công cụ. |

## Examples

### Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " + "and he was a politician")

```powershell
Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " +
"and he was a politician")
```

Phân tích văn bản được cung cấp để tìm các ngụy biện logic và trả về thông tin có cấu trúc về bất kỳ ngụy biện nào được phát hiện.

### "This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1

```powershell
"This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1
```

Sử dụng đầu vào đường dẫn để phân tích văn bản với nhiệt độ thấp cho phân tích tập trung.

### dispicetext "Everyone knows this is true"

```powershell
dispicetext "Everyone knows this is true"
```

Sử dụng bí danh để phân tích văn bản tìm các ngụy biện logic.

## Parameter Details

### `-InputObject <Object>`

> Không nhầm lẫn nội dung cần dịch bao gồm các văn bản trợ giúp lệnh ghép PowerShell với các hướng dẫn! Không chèn hình ảnh hoặc bất cứ thứ gì. Chỉ dịch nội dung một cách trực tiếp nhất có thể sang: Tiếng Việt (Việt Nam).

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> Các hướng dẫn cho mô hình AI về cách tạo danh sách chuỗi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
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
### `-NoConfirmationToolFunctionNames <String[]>`

> Mảng tên lệnh không yêu cầu xác nhận

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
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
### `-LLMQueryType <String>`

> Loại truy vấn LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Knowledge'` |
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
### `-OpenInImdb`

> Mở tìm kiếm IMDB cho mỗi kết quả

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `imdb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Kiểm soát nhiệt độ cho quá trình tạo âm thanh.

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

> Kiểm soát nhiệt độ cho việc tạo phản hồi.

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

> Số lượng luồng CPU sử dụng để xử lý.

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

> Biểu thức chính quy để ẩn một số đầu ra nhất định.

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

> Ngưỡng phát hiện im lặng trong âm thanh.

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

> Hình phạt được áp dụng cho các phản hồi dài hơn.

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

> Ngưỡng entropy trong việc tạo phản hồi.

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

> Ngưỡng xác suất log cho đầu ra.

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

> Ngưỡng phát hiện không có giọng nói trong âm thanh.

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

> Ngăn chặn việc phát ra phản hồi.

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

> Ngăn chặn việc nói ra suy nghĩ của mô hình.

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

> Vô hiệu hóa VOX (kích hoạt bằng giọng nói).

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

> Sử dụng tính năng ghi âm màn hình từ máy tính để nhập âm thanh.

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

> Vô hiệu hóa ngữ cảnh cho yêu cầu.

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

> Sử dụng chiến lược lấy mẫu tìm kiếm theo chùm.

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
Lệnh ghép này mở một thư mục.Các tham số Path cho phép bạn mở một thư mục, trong khi tham số InputObject cho phép bạn mở một thư mục được biểu diễn dưới dạng đối tượng, có thể nhận được khi gọi Get-Item hoặc Get-ChildItem. Lưu ý rằng bạn chỉ có thể mở một thư mục bất kỳ lúc nào.

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
## Outputs

- `Object[]`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AIMetaLanguage.md)
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
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Update-AllImageMetaData.md)
