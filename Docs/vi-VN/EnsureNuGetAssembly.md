# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Tải xuống và nạp các assembly .NET từ các gói NuGet dựa trên khóa hoặc ID của gói.

## Description

Hàm này đảm bảo rằng các assembly package NuGet được chỉ định được tải xuống và nạp vào phiên PowerShell hiện tại. Nó hỗ trợ tự động phát hiện và nạp với dự phòng sang tệp kê khai JSON để ghi đè cấu hình, xử lý các trường hợp ngoại lệ như các phụ thuộc giả (ví dụ: SQLite). Việc cài đặt sử dụng độc quyền dòng lệnh dotnet để quản lý package đáng tin cậy và nạp trực tiếp các assembly từ bộ nhớ đệm NuGet toàn cục mà không sao chép. Nạp chậm kiểm tra xem kiểu đã có sẵn chưa trước khi tiếp tục.

## Syntax

```powershell
EnsureNuGetAssembly -PackageKey <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-Destination <String>] [-ForceConsent] [-ForceLatest] [-ManifestPath <String>] [-Publisher <String>] [-TypeName <String>] [-Version <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PackageKey` | String | ✅ | — | 0 | — | Khóa gói từ packages.json hoặc NuGet PackageId trực tiếp. |
| `-ManifestPath` | String | — | — | Named | — | Đường dẫn đến packages.json; mặc định là thư mục gốc của module nếu bỏ qua. |
| `-Version` | String | — | — | Named | — | Phiên bản cụ thể; nếu bỏ qua, dùng phiên bản cao nhất từ JSON hoặc mới nhất. |
| `-TypeName` | String | — | — | Named | — | TypeName để xác minh việc tải. |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | Chuyển sang phiên bản mới nhất nếu phiên bản chính xác không thành công. |
| `-Destination` | String | — | — | Named | — | Đường dẫn cài đặt tùy chỉnh; mặc định là bộ nhớ đệm cục bộ hoặc toàn cầu. |
| `-Description` | String | — | — | Named | — | Mô tả tùy chọn về phần mềm và mục đích của nó để xin phép. |
| `-Publisher` | String | — | — | Named | — | Nhà xuất bản hoặc nhà cung cấp tùy chọn của phần mềm để xin phép. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Buộc hiển thị lời nhắc ngay cả khi tùy chọn đã được đặt thành đồng ý. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Tự động đồng ý cài đặt phần mềm của bên thứ ba và đặt cờ vĩnh viễn. |

## Examples

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation
```

## Parameter Details

### `-PackageKey <String>`

> Khóa gói từ packages.json hoặc NuGet PackageId trực tiếp.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ManifestPath <String>`

> Đường dẫn đến packages.json; mặc định là thư mục gốc của module nếu bỏ qua.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Version <String>`

> Phiên bản cụ thể; nếu bỏ qua, dùng phiên bản cao nhất từ JSON hoặc mới nhất.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TypeName <String>`

> TypeName để xác minh việc tải.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceLatest`

> Chuyển sang phiên bản mới nhất nếu phiên bản chính xác không thành công.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Destination <String>`

> Đường dẫn cài đặt tùy chỉnh; mặc định là bộ nhớ đệm cục bộ hoặc toàn cầu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> Mô tả tùy chọn về phần mềm và mục đích của nó để xin phép.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Publisher <String>`

> Nhà xuất bản hoặc nhà cung cấp tùy chọn của phần mềm để xin phép.

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

> Buộc hiển thị lời nhắc ngay cả khi tùy chọn đã được đặt thành đồng ý.

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

> Tự động đồng ý cài đặt phần mềm của bên thứ ba và đặt cờ vĩnh viễn.

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

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/EnsureGenXdev.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/GenerateMasonryLayoutHtml.md)
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
