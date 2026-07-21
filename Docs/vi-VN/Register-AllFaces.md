# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces`

## Synopsis

> Cập nhật tất cả hồ sơ nhận dạng khuôn mặt từ các tệp hình ảnh trong thư mục faces.

## Description

Chức năng này cập nhật cơ sở dữ liệu nhận diện khuôn mặt với tất cả hình ảnh được tìm thấy trong thư mục khuôn mặt được chỉ định. Quy trình bao gồm:
1. Đảm bảo dịch vụ nhận diện khuôn mặt đang chạy
2. Xử lý tất cả hình ảnh trong thư mục của mỗi người, đăng ký tất cả khuôn mặt cho người đó với một định danh duy nhất (tên thư mục) trong một thao tác hàng loạt
3. Hỗ trợ logic thử lại cho các đăng ký thất bại

Thư mục của mỗi người có thể chứa nhiều hình ảnh và tất cả hình ảnh sẽ được đăng ký dưới cùng một định danh (tên người) trong một lệnh gọi API duy nhất, loại bỏ nhu cầu thêm hậu tố _1, _2, v.v.

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Thư mục chứa hình ảnh khuôn mặt được sắp xếp theo thư mục của từng người. Nếu không được chỉ định, sử dụng tùy chọn thư mục faces đã được cấu hình. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | Số lần thử lại tối đa cho các đăng ký thất bại |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Tên cho container Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Tên của ổ đĩa Docker dùng để lưu trữ liên tục |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Số cổng cho dịch vụ DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Thời gian tối đa tính bằng giây để chờ kiểm tra tình trạng dịch vụ |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Khoảng thời gian tính bằng giây giữa các lần kiểm tra tình trạng sức khỏe |
| `-ImageName` | String | — | — | 7 | — | Tên hình ảnh Docker tùy chỉnh để sử dụng |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Bỏ qua khởi tạo Docker Desktop (được sử dụng khi đã được gọi bởi hàm cha) |
| `-Force` | SwitchParameter | — | — | Named | — | Buộc đăng ký lại tất cả khuôn mặt |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | Đổi tên các tệp hình ảnh không thành công không thể xử lý do không tìm thấy khuôn mặt |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Buộc xây dựng lại container Docker và xóa dữ liệu hiện có |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Sử dụng phiên bản tăng tốc GPU (yêu cầu GPU NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Hiển thị cửa sổ Docker Desktop trong quá trình khởi tạo |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, chỉ sử dụng phiên (không duy trì các thay đổi vào cơ sở dữ liệu tùy chọn). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, hãy xóa các tùy chọn ưu tiên phiên hiện tại trước khi sử dụng. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn đến cơ sở dữ liệu tùy chọn để sử dụng cho đường dẫn gốc của các khuôn mặt đã biết. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nếu được chỉ định, bỏ qua logic phiên khi truy xuất đường dẫn gốc của các khuôn mặt đã biết. |

## Examples

### Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `     -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `     -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3

```powershell
Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `
    -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `
    -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3
```

### Register-AllFaces Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"

```powershell
Register-AllFaces
Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"
```

### updatefaces -RenameFailed ##############################################################################

```powershell
updatefaces -RenameFailed
##############################################################################
```

## Parameter Details

### `-FacesDirectory <String>`

> Thư mục chứa hình ảnh khuôn mặt được sắp xếp theo thư mục của từng người. Nếu không được chỉ định, sử dụng tùy chọn thư mục faces đã được cấu hình.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> Số lần thử lại tối đa cho các đăng ký thất bại

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Tên cho container Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `'deepstack_face_recognition'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> Tên của ổ đĩa Docker dùng để lưu trữ liên tục

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `'deepstack_face_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Số cổng cho dịch vụ DeepStack

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `5000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Thời gian tối đa tính bằng giây để chờ kiểm tra tình trạng dịch vụ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Khoảng thời gian tính bằng giây giữa các lần kiểm tra tình trạng sức khỏe

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Tên hình ảnh Docker tùy chỉnh để sử dụng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Bỏ qua khởi tạo Docker Desktop (được sử dụng khi đã được gọi bởi hàm cha)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Buộc đăng ký lại tất cả khuôn mặt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RenameFailed`

> Đổi tên các tệp hình ảnh không thành công không thể xử lý do không tìm thấy khuôn mặt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceRebuild`

> Buộc xây dựng lại container Docker và xóa dữ liệu hiện có

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseGPU`

> Sử dụng phiên bản tăng tốc GPU (yêu cầu GPU NVIDIA)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Hiển thị cửa sổ Docker Desktop trong quá trình khởi tạo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Nếu được chỉ định, chỉ sử dụng phiên (không duy trì các thay đổi vào cơ sở dữ liệu tùy chọn).

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

> Nếu được chỉ định, hãy xóa các tùy chọn ưu tiên phiên hiện tại trước khi sử dụng.

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

> Đường dẫn đến cơ sở dữ liệu tùy chọn để sử dụng cho đường dẫn gốc của các khuôn mặt đã biết.

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

> Nếu được chỉ định, bỏ qua logic phiên khi truy xuất đường dẫn gốc của các khuôn mặt đã biết.

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

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageEnhancement.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Unregister-Face.md)
