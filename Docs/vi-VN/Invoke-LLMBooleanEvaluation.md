# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `equalstrue`

## Synopsis

> Đánh giá một câu bằng AI để xác định xem câu đó đúng hay sai.

## Description

Hàm này sử dụng các mô hình AI để đánh giá các tuyên bố và xác định giá trị chân lý của chúng. Nó có thể chấp nhận đầu vào trực tiếp thông qua tham số, từ pipeline hoặc từ clipboard hệ thống. Hàm trả về kết quả boolean cùng với mức độ tin cậy và lý luận từ mô hình AI.

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Tên lệnh ghép ngắn: Get-ChildItem
Tên lệnh ghép: Microsoft.PowerShell.Management\Get-ChildItem |
| `-Instructions` | String | — | — | 1 | `''` | Hướng dẫn cho mô hình AI về cách đánh giá tuyên bố |
| `-Attachments` | String[] | — | — | 2 | `@()` | Mảng các đường dẫn tệp để đính kèm |
| `-Temperature` | Double | — | — | Named | `-1` | Nhiệt độ cho độ ngẫu nhiên của phản hồi (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Chi tiết mức độ hình ảnh |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Mảng các định nghĩa hàm |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Mảng các định nghĩa lệnh PowerShell để sử dụng làm công cụ |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Mảng tên lệnh không yêu cầu xác nhận |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Loại truy vấn LLM |
| `-Model` | String | — | — | Named | — | Mã định danh hoặc mẫu mô hình để sử dụng cho các hoạt động AI |
| `-ApiEndpoint` | String | — | — | Named | — | Điểm cuối API URL cho các thao tác AI |
| `-ApiKey` | String | — | — | Named | — | Khóa API cho các hoạt động AI đã xác thực |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Cho biết LLM không hỗ trợ lược đồ JSON |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Sao chép kết quả vào bảng tạm |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Important! When using the `-RemoveSelf` parameter, you must be an enterprise administrator. Without the `-Confirm` parameter, the function will ask for confirmation before removing the user from all groups except for the Domain Users group. To suppress confirmation, you should supply the `-Force` parameter. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | PS C:\> Get-Help -Name Get-Service -Full

TÊN
    Get-Service

TÓM TẮT
    Lấy các dịch vụ trên máy tính cục bộ hoặc máy tính từ xa.

CÚ PHÁP
    Get-Service [[-Name] <String[]>] [-ComputerName <String[]>] [-DependentServices] [-Exclude <String[]>] [-Include <String[]>] [-RequiredServices] [<CommonParameters>]

    Get-Service -DisplayName <String[]> [-ComputerName <String[]>] [-DependentServices] [-Exclude <String[]>] [-Include <String[]>] [-RequiredServices] [<CommonParameters>]

    Get-Service [-InputObject <ServiceController[]>] [-ComputerName <String[]>] [-DependentServices] [-Exclude <String[]>] [-Include <String[]>] [-RequiredServices] [<CommonParameters>]

MÔ TẢ
    Lệnh ghép Get-Service lấy các đối tượng đại diện cho các dịch vụ trên máy tính cục bộ và trên máy tính từ xa, bao gồm cả trạng thái chạy và dừng của các dịch vụ. Bạn có thể chỉ định các dịch vụ bằng tên dịch vụ hoặc tên hiển thị, hoặc bạn có thể chuyển các đối tượng dịch vụ xuống Get-Service.

VÍ DỤ
    Ví dụ 1: Lấy tất cả các dịch vụ trên máy tính cục bộ
        PS C:\> Get-Service

    Lệnh này lấy tất cả các dịch vụ trên máy tính cục bộ. Nó hoạt động như thể bạn đã nhập Get-Service *. Hành vi mặc định của Get-Service là hiển thị tất cả các dịch vụ.

    Ví dụ 2: Lấy các dịch vụ bắt đầu bằng một từ viết tắt
        PS C:\> Get-Service -Name "wmi*" -ComputerName "Server01"

    Lệnh này lấy các dịch vụ bắt đầu bằng wmi trên máy tính có tên là Server01.

    Ví dụ 3: Lấy các dịch vụ hiển thị bao gồm một từ
        PS C:\> Get-Service -DisplayName "*network*" -ComputerName "Server01", "Server02"

    Lệnh này lấy các dịch vụ có tên hiển thị bao gồm từ "network" trên hai máy tính từ xa.

    Ví dụ 4: Lấy các dịch vụ bắt đầu bằng một từ và loại trừ các dịch vụ khác
        PS C:\> Get-Service -Name "wm*" -Exclude "WinRM"

    Lệnh này lấy các dịch vụ bắt đầu bằng wm, ngoại trừ dịch vụ WinRM.

    Ví dụ 5: Lấy các dịch vụ hiện đang dừng
        PS C:\> Get-Service | Where-Object {$_.Status -eq "Stopped"}

    Lệnh này chỉ lấy các dịch vụ có trạng thái là Đã dừng. Nó sử dụng lệnh ghép Where-Object để lọc kết quả từ Get-Service.

THAM SỐ
    -ComputerName <String[]>
        Chỉ định các máy tính để lấy dịch vụ. Giá trị mặc định là máy tính cục bộ.

        Nhập tên NetBIOS, địa chỉ IP hoặc tên miền đầy đủ (FQDN) của một hoặc nhiều máy tính từ xa. Để chỉ định máy tính cục bộ, nhập tên máy tính, dấu chấm (.) hoặc 'localhost'.

        Tham số này không dựa vào Windows PowerShell Remoting. Bạn có thể sử dụng tham số ComputerName của Get-Service ngay cả khi máy tính của bạn chưa được cấu hình để chạy các lệnh từ xa.

    -DependentServices <SwitchParameter>
        Chỉ ra rằng lệnh này chỉ lấy các dịch vụ phụ thuộc vào dịch vụ đã chỉ định. Theo mặc định, Get-Service lấy tất cả các dịch vụ.

    -DisplayName <String[]>
        Chỉ định tên hiển thị của các dịch vụ sẽ được lấy. Ký tự đại diện được cho phép.

    -Exclude <String[]>
        Loại trừ một hoặc nhiều dịch vụ khỏi kết quả. Ký tự đại diện được cho phép.

    -Include <String[]>
        Chỉ bao gồm một hoặc nhiều dịch vụ trong kết quả. Ký tự đại diện được cho phép.

    -InputObject <ServiceController[]>
        Chỉ định các đối tượng ServiceController đại diện cho các dịch vụ sẽ được lấy. Nhập một biến chứa các đối tượng hoặc gõ lệnh hoặc biểu thức lấy các đối tượng.

    -Name <String[]>
        Chỉ định tên dịch vụ của các dịch vụ sẽ được lấy. Ký tự đại diện được cho phép.

        Tên dịch vụ được hiển thị trong cột Tên của đầu ra từ Get-Service. Nó khác với tên hiển thị, được hiển thị trong cột Tên hiển thị.

    -RequiredServices <SwitchParameter>
        Chỉ ra rằng lệnh này chỉ lấy các dịch vụ mà dịch vụ này yêu cầu. Tham số này lấy các dịch vụ mà trạng thái của dịch vụ này phụ thuộc vào.

    <CommonParameters>
        Lệnh ghép này hỗ trợ các Tham số chung: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable và OutVariable. Để biết thêm thông tin, hãy xem about_CommonParameters.

ĐẦU VÀO
    System.ServiceProcess.ServiceController
        Bạn có thể chuyển một đối tượng dịch vụ tới Get-Service.

ĐẦU RA
    System.ServiceProcess.ServiceController
        Get-Service trả về các đối tượng đại diện cho các dịch vụ.

GHI CHÚ
    Bạn cũng có thể tham khảo Get-Service theo bí danh tích hợp sẵn của nó, 'gsv'. Để biết thêm thông tin, hãy xem about_Aliases.

    Get-Service chỉ có thể lấy các dịch vụ khi người dùng hiện tại có quyền truy cập vào chúng. Nếu lệnh không tìm thấy dịch vụ nào, Get-Service có thể hiển thị thông báo lỗi.

    Để tìm tên dịch vụ và tên hiển thị của từng dịch vụ trên hệ thống của bạn, hãy gõ Get-Service. Tên dịch vụ xuất hiện trong cột Tên và tên hiển thị xuất hiện trong cột Tên hiển thị.

    Trong PowerShell 3.0, lệnh ghép Get-Service đã được cập nhật để bao gồm các tham số DependentServices và RequiredServices. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .TỔNG QUAN
Dùng lệnh ghép này để chèn, xóa, sửa đổi hoặc liệt kê thông tin cấu hình trong tệp Web.config của máy chủ IIS.
Lệnh ghép này cho phép bạn định cấu hình trong cây cấu hình IIS. Bạn có thể dùng tham số -Get, -Set, -Add và -Clear để chỉ định hành động. |
| `-Speak` | SwitchParameter | — | — | Named | — | Kích hoạt chuyển văn bản thành giọng nói cho phản hồi AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Bật chuyển văn bản thành giọng nói cho các phản hồi suy nghĩ của AI |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Không lưu phiên trong bộ nhớ đệm phiên |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Cho phép AI sử dụng các công cụ và khả năng mặc định |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sử dụng các thiết lập thay thế được lưu trữ trong phiên làm việc cho sở thích AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Xóa các thiết lập thay thế được lưu trong phiên cho tùy chọn AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Chỉ lưu cài đặt vào tùy chọn liên tục mà không ảnh hưởng đến phiên làm việc |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | MỘT TẬP TIN CHỨA CÁC GIÁ TRỊ CÓ THỂ LẶP LẠI CHO TRÌNH TRỢ GIÚP NÀY. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Lọc cho các loại khối đánh dấu cụ thể |
| `-AudioTemperature` | Double | — | — | Named | — | Nhiệt độ cho sự ngẫu nhiên của phản hồi âm thanh |
| `-TemperatureResponse` | Double | — | — | Named | — | Nhiệt độ cho việc tạo phản hồi |
| `-Language` | String | — | — | Named | — | Ngôn ngữ hoặc mã cho phản hồi |
| `-CpuThreads` | Int32 | — | — | Named | — | Số luồng CPU để sử dụng cho xử lý |
| `-SuppressRegex` | String | — | — | Named | — | Biểu thức chính quy để loại bỏ khỏi đầu ra |
| `-AudioContextSize` | Int32 | — | — | Named | — | Kích thước ngữ cảnh âm thanh để xử lý |
| `-SilenceThreshold` | Double | — | — | Named | — | Ngưỡng im lặng để phát hiện âm thanh |
| `-LengthPenalty` | Double | — | — | Named | — | Hình phạt độ dài cho việc tạo chuỗi |
| `-EntropyThreshold` | Double | — | — | Named | — | Ngưỡng entropy để lọc đầu ra |
| `-LogProbThreshold` | Double | — | — | Named | — | Ngưỡng xác suất log để lọc đầu ra |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Không có ngưỡng giọng nói để phát hiện âm thanh |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Tắt đầu ra giọng nói |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Tắt đầu ra giọng nói cho suy nghĩ |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Tắt VOX (kích hoạt bằng giọng nói) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Sử dụng tính năng thu âm từ máy tính để bàn làm đầu vào |
| `-NoContext` | SwitchParameter | — | — | Named | — | Không sử dụng ngữ cảnh trong truy vấn |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Sử dụng chiến lược lấy mẫu tìm kiếm chùm |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .PARAMETER TaskCollection
Chỉ định bộ sưu tập nhiệm vụ mà lịch biểu được đặt làm mặc định.

Loại: Microsoft.TeamFoundation.Framework.Server.TeamFoundationTaskCollection |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Examples

### Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"

```powershell
Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"
```

### "Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation

```powershell
"Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation
```

### equalstrue "2 + 2 = 4" ##############################################################################

```powershell
equalstrue "2 + 2 = 4"
##############################################################################
```

## Parameter Details

### `-Text <String>`

> Tên lệnh ghép ngắn: Get-ChildItem
Tên lệnh ghép: Microsoft.PowerShell.Management\Get-ChildItem

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> Hướng dẫn cho mô hình AI về cách đánh giá tuyên bố

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
| **Default value** | `'low'` |
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
| **Default value** | `@()` |
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
### `-SetClipboard`

> Sao chép kết quả vào bảng tạm

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

> PS C:\> Get-Help -Name Get-Service -Full

TÊN
    Get-Service

TÓM TẮT
    Lấy các dịch vụ trên máy tính cục bộ hoặc máy tính từ xa.

CÚ PHÁP
    Get-Service [[-Name] <String[]>] [-ComputerName <String[]>] [-DependentServices] [-Exclude <String[]>] [-Include <String[]>] [-RequiredServices] [<CommonParameters>]

    Get-Service -DisplayName <String[]> [-ComputerName <String[]>] [-DependentServices] [-Exclude <String[]>] [-Include <String[]>] [-RequiredServices] [<CommonParameters>]

    Get-Service [-InputObject <ServiceController[]>] [-ComputerName <String[]>] [-DependentServices] [-Exclude <String[]>] [-Include <String[]>] [-RequiredServices] [<CommonParameters>]

MÔ TẢ
    Lệnh ghép Get-Service lấy các đối tượng đại diện cho các dịch vụ trên máy tính cục bộ và trên máy tính từ xa, bao gồm cả trạng thái chạy và dừng của các dịch vụ. Bạn có thể chỉ định các dịch vụ bằng tên dịch vụ hoặc tên hiển thị, hoặc bạn có thể chuyển các đối tượng dịch vụ xuống Get-Service.

VÍ DỤ
    Ví dụ 1: Lấy tất cả các dịch vụ trên máy tính cục bộ
        PS C:\> Get-Service

    Lệnh này lấy tất cả các dịch vụ trên máy tính cục bộ. Nó hoạt động như thể bạn đã nhập Get-Service *. Hành vi mặc định của Get-Service là hiển thị tất cả các dịch vụ.

    Ví dụ 2: Lấy các dịch vụ bắt đầu bằng một từ viết tắt
        PS C:\> Get-Service -Name "wmi*" -ComputerName "Server01"

    Lệnh này lấy các dịch vụ bắt đầu bằng wmi trên máy tính có tên là Server01.

    Ví dụ 3: Lấy các dịch vụ hiển thị bao gồm một từ
        PS C:\> Get-Service -DisplayName "*network*" -ComputerName "Server01", "Server02"

    Lệnh này lấy các dịch vụ có tên hiển thị bao gồm từ "network" trên hai máy tính từ xa.

    Ví dụ 4: Lấy các dịch vụ bắt đầu bằng một từ và loại trừ các dịch vụ khác
        PS C:\> Get-Service -Name "wm*" -Exclude "WinRM"

    Lệnh này lấy các dịch vụ bắt đầu bằng wm, ngoại trừ dịch vụ WinRM.

    Ví dụ 5: Lấy các dịch vụ hiện đang dừng
        PS C:\> Get-Service | Where-Object {$_.Status -eq "Stopped"}

    Lệnh này chỉ lấy các dịch vụ có trạng thái là Đã dừng. Nó sử dụng lệnh ghép Where-Object để lọc kết quả từ Get-Service.

THAM SỐ
    -ComputerName <String[]>
        Chỉ định các máy tính để lấy dịch vụ. Giá trị mặc định là máy tính cục bộ.

        Nhập tên NetBIOS, địa chỉ IP hoặc tên miền đầy đủ (FQDN) của một hoặc nhiều máy tính từ xa. Để chỉ định máy tính cục bộ, nhập tên máy tính, dấu chấm (.) hoặc 'localhost'.

        Tham số này không dựa vào Windows PowerShell Remoting. Bạn có thể sử dụng tham số ComputerName của Get-Service ngay cả khi máy tính của bạn chưa được cấu hình để chạy các lệnh từ xa.

    -DependentServices <SwitchParameter>
        Chỉ ra rằng lệnh này chỉ lấy các dịch vụ phụ thuộc vào dịch vụ đã chỉ định. Theo mặc định, Get-Service lấy tất cả các dịch vụ.

    -DisplayName <String[]>
        Chỉ định tên hiển thị của các dịch vụ sẽ được lấy. Ký tự đại diện được cho phép.

    -Exclude <String[]>
        Loại trừ một hoặc nhiều dịch vụ khỏi kết quả. Ký tự đại diện được cho phép.

    -Include <String[]>
        Chỉ bao gồm một hoặc nhiều dịch vụ trong kết quả. Ký tự đại diện được cho phép.

    -InputObject <ServiceController[]>
        Chỉ định các đối tượng ServiceController đại diện cho các dịch vụ sẽ được lấy. Nhập một biến chứa các đối tượng hoặc gõ lệnh hoặc biểu thức lấy các đối tượng.

    -Name <String[]>
        Chỉ định tên dịch vụ của các dịch vụ sẽ được lấy. Ký tự đại diện được cho phép.

        Tên dịch vụ được hiển thị trong cột Tên của đầu ra từ Get-Service. Nó khác với tên hiển thị, được hiển thị trong cột Tên hiển thị.

    -RequiredServices <SwitchParameter>
        Chỉ ra rằng lệnh này chỉ lấy các dịch vụ mà dịch vụ này yêu cầu. Tham số này lấy các dịch vụ mà trạng thái của dịch vụ này phụ thuộc vào.

    <CommonParameters>
        Lệnh ghép này hỗ trợ các Tham số chung: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable và OutVariable. Để biết thêm thông tin, hãy xem about_CommonParameters.

ĐẦU VÀO
    System.ServiceProcess.ServiceController
        Bạn có thể chuyển một đối tượng dịch vụ tới Get-Service.

ĐẦU RA
    System.ServiceProcess.ServiceController
        Get-Service trả về các đối tượng đại diện cho các dịch vụ.

GHI CHÚ
    Bạn cũng có thể tham khảo Get-Service theo bí danh tích hợp sẵn của nó, 'gsv'. Để biết thêm thông tin, hãy xem about_Aliases.

    Get-Service chỉ có thể lấy các dịch vụ khi người dùng hiện tại có quyền truy cập vào chúng. Nếu lệnh không tìm thấy dịch vụ nào, Get-Service có thể hiển thị thông báo lỗi.

    Để tìm tên dịch vụ và tên hiển thị của từng dịch vụ trên hệ thống của bạn, hãy gõ Get-Service. Tên dịch vụ xuất hiện trong cột Tên và tên hiển thị xuất hiện trong cột Tên hiển thị.

    Trong PowerShell 3.0, lệnh ghép Get-Service đã được cập nhật để bao gồm các tham số DependentServices và RequiredServices.

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
### `-AllowDefaultTools`

> Cho phép AI sử dụng các công cụ và khả năng mặc định

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
### `-OutputMarkdownBlocksOnly`

> MỘT TẬP TIN CHỨA CÁC GIÁ TRỊ CÓ THỂ LẶP LẠI CHO TRÌNH TRỢ GIÚP NÀY.

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

> Lọc cho các loại khối đánh dấu cụ thể

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Nhiệt độ cho sự ngẫu nhiên của phản hồi âm thanh

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
### `-Language <String>`

> Ngôn ngữ hoặc mã cho phản hồi

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

> Số luồng CPU để sử dụng cho xử lý

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

> Biểu thức chính quy để loại bỏ khỏi đầu ra

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
### `-SilenceThreshold <Double>`

> Ngưỡng im lặng để phát hiện âm thanh

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
### `-EntropyThreshold <Double>`

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
### `-LogProbThreshold <Double>`

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
### `-NoSpeechThreshold <Double>`

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
### `-DontSpeak`

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
### `-DontSpeakThoughts`

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
### `-NoVOX`

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
### `-UseDesktopAudioCapture`

> Sử dụng tính năng thu âm từ máy tính để bàn làm đầu vào

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

> Không sử dụng ngữ cảnh trong truy vấn

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

> .PARAMETER TaskCollection
Chỉ định bộ sưu tập nhiệm vụ mà lịch biểu được đặt làm mặc định.

Loại: Microsoft.TeamFoundation.Framework.Server.TeamFoundationTaskCollection

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

> The `-MaxToolcallBackLength` parameter.

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

- `Boolean`

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
