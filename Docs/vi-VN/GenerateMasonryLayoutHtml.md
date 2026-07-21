# GenerateMasonryLayoutHtml

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Tạo một bố cục thư viện ảnh responsive kiểu masonry từ dữ liệu ảnh.

## Description

Tạo một thư viện HTML tương tác với bố cục lưới masonry đáp ứng để hiển thị ảnh. Các tính năng bao gồm:
- Bố cục lưới đáp ứng, thích ứng với kích thước màn hình
- Chú thích ảnh hiển thị mô tả và từ khóa
- Chức năng sao chép đường dẫn ảnh khi nhấp
- Thiết kế hiện đại, sạch sẽ với hiệu ứng di chuột

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | Mảng các đối tượng hình ảnh với đường dẫn, từ khóa và mô tả |
| `-FilePath` | String | — | — | 1 | `$null` | Đường dẫn đầu ra cho tệp HTML được tạo |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Tiêu đề cho bộ sưu tập |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | Mô tả cho thư viện ảnh |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | Việc chỉnh sửa có được bật hay không |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | Cho phép xóa hay không |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | Nhúng hình ảnh dưới dạng URL dữ liệu base64 thay vì URL file:// để có tính di động tốt hơn |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Chỉ hiển thị ảnh trong hình chữ nhật bo tròn, không có văn bản bên dưới. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Tự động cuộn trang với tốc độ này (số pixel mỗi giây, null để tắt) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Hoạt ảnh các hình chữ nhật (đối tượng/khuôn mặt) trong phạm vi hiển thị, lặp lại mỗi 300ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Buộc bố cục một cột (căn giữa, 1/3 chiều rộng màn hình) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Tiền tố để thêm vào trước mỗi đường dẫn ảnh (ví dụ: cho URL từ xa) |
| `-PageSize` | Int32 | — | — | Named | `20` | Số lượng hình ảnh cần tải mỗi trang (để tải động) |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | Số lượng hình ảnh tối đa để tải cho chế độ in |
| `-RootMargin` | String | — | — | Named | `'1200px'` | IntersectionObserver rootMargin cho kích hoạt cuộn vô hạn (ví dụ: "1200px") |
| `-Threshold` | Double | — | — | Named | `0.1` | Ngưỡng IntersectionObserver cho kích hoạt cuộn vô hạn |

## Examples

### Create gallery from image array and save to file $images = @(     @{         path = "C:\photos\sunset.jpg"         keywords = @("nature", "sunset", "landscape")         description = @{             short_description = "Mountain sunset"             long_description = "Beautiful sunset over mountain range"         }     } ) GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"

```powershell
Create gallery from image array and save to file
$images = @(
    @{
        path = "C:\photos\sunset.jpg"
        keywords = @("nature", "sunset", "landscape")
        description = @{
            short_description = "Mountain sunset"
            long_description = "Beautiful sunset over mountain range"
        }
    }
)
GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"
```

### Generate HTML string without saving $html = GenerateMasonryLayoutHtml $images

```powershell
Generate HTML string without saving
$html = GenerateMasonryLayoutHtml $images
```

## Parameter Details

### `-Images <Object>`

> Mảng các đối tượng hình ảnh với đường dẫn, từ khóa và mô tả

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilePath <String>`

> Đường dẫn đầu ra cho tệp HTML được tạo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Title <String>`

> Tiêu đề cho bộ sưu tập

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Photo Gallery'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> Mô tả cho thư viện ảnh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Hover over images to see face recognition, object detection, and scene classification data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CanEdit`

> Việc chỉnh sửa có được bật hay không

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CanDelete`

> Cho phép xóa hay không

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EmbedImages`

> Nhúng hình ảnh dưới dạng URL dữ liệu base64 thay vì URL file:// để có tính di động tốt hơn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowOnlyPictures`

> Chỉ hiển thị ảnh trong hình chữ nhật bo tròn, không có văn bản bên dưới.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoMetadata`, `OnlyPictures` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScrollPixelsPerSecond <Int32>`

> Tự động cuộn trang với tốc độ này (số pixel mỗi giây, null để tắt)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoAnimateRectangles`

> Hoạt ảnh các hình chữ nhật (đối tượng/khuôn mặt) trong phạm vi hiển thị, lặp lại mỗi 300ms

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleColumnMode`

> Buộc bố cục một cột (căn giữa, 1/3 chiều rộng màn hình)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageUrlPrefix <String>`

> Tiền tố để thêm vào trước mỗi đường dẫn ảnh (ví dụ: cho URL từ xa)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PageSize <Int32>`

> Số lượng hình ảnh cần tải mỗi trang (để tải động)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `20` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxPrintImages <Int32>`

> Số lượng hình ảnh tối đa để tải cho chế độ in

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `50` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RootMargin <String>`

> IntersectionObserver rootMargin cho kích hoạt cuộn vô hạn (ví dụ: "1200px")

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'1200px'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Threshold <Double>`

> Ngưỡng IntersectionObserver cho kích hoạt cuộn vô hạn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/EnsureNuGetAssembly.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/WriteFileOutput.md)
