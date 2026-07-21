# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration`

## Synopsis

> Cập nhật siêu dữ liệu hình ảnh với mô tả và từ khóa do AI tạo ra.

## Description

Hàm Invoke-ImageKeywordUpdate phân tích hình ảnh bằng AI để tạo mô tả, từ khóa và siêu dữ liệu khác. Nó tạo một tệp JSON đồng hành cho mỗi hình ảnh chứa thông tin này. Hàm có thể chỉ xử lý hình ảnh mới hoặc cập nhật siêu dữ liệu hiện có, và hỗ trợ quét thư mục đệ quy.

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSupportForJsonSchema <String>] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Các đường dẫn thư mục chứa ảnh cần xử lý |
| `-Recurse` | SwitchParameter | — | — | Named | — | Xử lý hình ảnh trong thư mục chỉ định và tất cả thư mục con |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Chỉ xử lý những hình ảnh chưa có tệp siêu dữ liệu khuôn mặt |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Sẽ thử lại việc cập nhật từ khóa hình ảnh đã thất bại trước đó |
| `-Language` | String | — | — | Named | — | Ngôn ngữ cho mô tả và từ khóa được tạo ra |
| `-FacesDirectory` | String | — | — | Named | — | Thư mục chứa hình ảnh khuôn mặt được sắp xếp theo thư mục của từng người. Nếu không được chỉ định, sử dụng tùy chọn thư mục faces đã được cấu hình. |
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
| `-NoContext` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, sẽ vô hiệu hóa việc sử dụng ngữ cảnh. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Độ dài tối đa của cuộc gọi lại cho các lệnh gọi công cụ. |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru để trả về các đối tượng có cấu trúc thay vì xuất ra bảng điều khiển |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Phát hiện các thay đổi trong thư mục khuôn mặt và đăng ký lại khuôn mặt nếu cần |

## Examples

### Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew

```powershell
Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew
```

### updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"

```powershell
updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"
```

## Parameter Details

### `-ImageDirectories <String[]>`

> Các đường dẫn thư mục chứa ảnh cần xử lý

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('.\')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> Xử lý hình ảnh trong thư mục chỉ định và tất cả thư mục con

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyNew`

> Chỉ xử lý những hình ảnh chưa có tệp siêu dữ liệu khuôn mặt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryFailed`

> Sẽ thử lại việc cập nhật từ khóa hình ảnh đã thất bại trước đó

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
### `-FacesDirectory <String>`

> Thư mục chứa hình ảnh khuôn mặt được sắp xếp theo thư mục của từng người. Nếu không được chỉ định, sử dụng tùy chọn thư mục faces đã được cấu hình.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
### `-PassThru`

> PassThru để trả về các đối tượng có cấu trúc thay vì xuất ra bảng điều khiển

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoUpdateFaces`

> Phát hiện các thay đổi trong thư mục khuôn mặt và đăng ký lại khuôn mặt nếu cần

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
