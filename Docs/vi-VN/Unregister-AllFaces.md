# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Xóa tất cả các khuôn mặt đã đăng ký khỏi hệ thống nhận dạng khuôn mặt DeepStack.

## Description

Hàm này xóa tất cả khuôn mặt đã đăng ký khỏi cơ sở dữ liệu nhận dạng khuôn mặt của DeepStack bằng cách loại bỏ tất cả các tệp khuôn mặt khỏi thư mục kho dữ liệu và khởi động lại dịch vụ để tải lại danh sách khuôn mặt trống. Đây là một thao tác phá hủy không thể hoàn tác và sẽ xóa vĩnh viễn tất cả dữ liệu khuôn mặt đã đăng ký.

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Bỏ qua lời nhắc xác nhận khi xóa tất cả khuôn mặt đã đăng ký |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Bỏ qua khởi tạo Docker Desktop (được sử dụng khi đã được gọi bởi hàm cha) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Buộc xây dựng lại container Docker và xóa dữ liệu hiện có |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Sử dụng phiên bản tăng tốc GPU (yêu cầu GPU NVIDIA) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Tên cho container Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | Tên của ổ đĩa Docker dùng để lưu trữ liên tục |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Số cổng cho dịch vụ DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Thời gian tối đa tính bằng giây để chờ kiểm tra tình trạng dịch vụ |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Khoảng thời gian tính bằng giây giữa các lần kiểm tra tình trạng sức khỏe |
| `-ImageName` | String | — | — | 5 | — | Tên hình ảnh Docker tùy chỉnh để sử dụng |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Hiển thị cửa sổ Docker Desktop trong quá trình khởi tạo |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

Loại bỏ tất cả các khuôn mặt đã đăng ký với lời nhắc xác nhận.

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

Xóa tất cả các khuôn mặt đã đăng ký mà không có xác nhận.

### unregall -Force

```powershell
unregall -Force
```

Sử dụng bí danh để xóa tất cả các khuôn mặt mà không cần xác nhận.

## Parameter Details

### `-Force`

> Bỏ qua lời nhắc xác nhận khi xóa tất cả khuôn mặt đã đăng ký

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
### `-ContainerName <String>`

> Tên cho container Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
| **Position?** | 1 |
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
| **Position?** | 2 |
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
| **Position?** | 3 |
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
| **Position?** | 4 |
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
| **Position?** | 5 |
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
## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Register-Face.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Unregister-Face.md)
