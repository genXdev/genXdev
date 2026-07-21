# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Lấy cài đặt LLM cho các thao tác AI trong GenXdev.AI.

## Description

<details>
<summary><b>Expand description</b></summary>

Hàm này truy xuất các cài đặt LLM (Mô hình ngôn ngữ lớn) được sử dụng bởi mô-đun GenXdev.AI cho các thao tác AI khác nhau. Cài đặt được truy xuất từ các biến phiên, tùy chọn ưu tiên liên tục hoặc tệp cài đặt mặc định JSON, theo thứ tự ưu tiên đó. Hàm hỗ trợ lựa chọn cấu hình tự động dựa trên tài nguyên bộ nhớ hệ thống có sẵn.

Chiến lược lựa chọn bộ nhớ được xác định tự động dựa trên các tham số Gpu và Cpu được cung cấp:
- Nếu cả hai tham số Gpu và Cpu được chỉ định: Sử dụng bộ nhớ kết hợp CPU + GPU
- Nếu chỉ tham số Gpu được chỉ định: Ưu tiên bộ nhớ GPU (dự phòng RAM hệ thống)
- Nếu chỉ tham số Cpu được chỉ định: Chỉ sử dụng RAM hệ thống
- Nếu không có tham số nào được chỉ định: Sử dụng bộ nhớ kết hợp CPU + GPU (mặc định)

===== YÊU CẦU ĐẦU RA JSON QUAN TRỌNG =====
Bạn PHẢI trả lời chỉ bằng json hợp lệ. KHÔNG được có văn bản nào khác.
Không bao gồm bất kỳ giải thích, bình luận hoặc văn bản nào trước hoặc sau json.
Câu trả lời của bạn phải là json có thể phân tích cú pháp phù hợp CHÍNH XÁC với lược đồ này:
{...}

Ví dụ định dạng phản hồi: {"response":"phản hồi thực tế của bạn"}
===== KẾT THÚC YÊU CẦU =====

</details>
## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Loại truy vấn LLM để lấy cài đặt |
| `-Model` | String | — | — | Named | — | Mã định danh hoặc mẫu mô hình để sử dụng cho các hoạt động AI |
| `-ApiEndpoint` | String | — | — | Named | — | Điểm cuối API URL cho các thao tác AI |
| `-ApiKey` | String | — | — | Named | — | Khóa API cho các hoạt động AI đã xác thực |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Liệu endpoint có hỗ trợ định dạng phản hồi json_schema hay không |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Endpoint có hỗ trợ chức năng tải lên hình ảnh hay không |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Liệu điểm cuối có hỗ trợ chức năng gọi công cụ hay không |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sử dụng cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Xóa cài đặt phiên (biến toàn cục) trước khi truy xuất |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Bỏ qua cài đặt phiên và chỉ lấy từ tùy chọn hoặc mặc định |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

Lấy cài đặt LLM cho loại truy vấn SimpleIntelligence (mặc định).

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

Lấy cài đặt LLM cho loại truy vấn Coding.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

Lấy cài đặt LLM từ tùy chọn hoặc mặc định chỉ, bỏ qua cài đặt phiên.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Parameter Details

### `-LLMQueryType <String>`

> Loại truy vấn LLM để lấy cài đặt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
### `-NoSupportForJsonSchema`

> Liệu endpoint có hỗ trợ định dạng phản hồi json_schema hay không

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForImageUpload`

> Endpoint có hỗ trợ chức năng tải lên hình ảnh hay không

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForToolCalls`

> Liệu điểm cuối có hỗ trợ chức năng gọi công cụ hay không

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

> Sử dụng cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v.

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

> Xóa cài đặt phiên (biến toàn cục) trước khi truy xuất

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
### `-SkipSession`

> Bỏ qua cài đặt phiên và chỉ lấy từ tùy chọn hoặc mặc định

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-DeepLinkImageFile.md)
