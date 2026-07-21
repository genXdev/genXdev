# Unregister-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Xóa một khuôn mặt đã đăng ký theo mã định danh của nó khỏi DeepStack.

## Description

Hàm này xóa một khuôn mặt khỏi hệ thống nhận dạng khuôn mặt DeepStack bằng cách sử dụng định danh duy nhất của nó. Nó giao tiếp với điểm cuối API để xóa vĩnh viễn dữ liệu khuôn mặt đã đăng ký khỏi hệ thống.

## Syntax

```powershell
Unregister-Face -Identifier <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Số định danh duy nhất của khuôn mặt cần xóa khỏi hệ thống DeepStack |
| `-ContainerName` | String | — | — | 1 | `'deepstack_face_recognition'` | Tên cho container Docker |
| `-VolumeName` | String | — | — | 2 | `'deepstack_face_data'` | Tên của ổ đĩa Docker dùng để lưu trữ liên tục |
| `-ServicePort` | Int32 | — | — | 3 | `5000` | Số cổng cho dịch vụ DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 4 | `60` | Thời gian tối đa tính bằng giây để chờ kiểm tra tình trạng dịch vụ |
| `-HealthCheckInterval` | Int32 | — | — | 5 | `3` | Khoảng thời gian tính bằng giây giữa các lần kiểm tra tình trạng sức khỏe |
| `-ImageName` | String | — | — | 6 | — | Tên hình ảnh Docker tùy chỉnh để sử dụng |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Bỏ qua khởi tạo Docker (được sử dụng khi đã được gọi bởi hàm cha) |
| `-Force` | SwitchParameter | — | — | Named | — | Buộc xây dựng lại container Docker và xóa dữ liệu hiện có |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Sử dụng phiên bản tăng tốc GPU (yêu cầu GPU NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Hiển thị cửa sổ Docker Desktop trong quá trình khởi tạo |

## Examples

### Unregister-Face -Identifier "JohnDoe" -NoDockerInitialize $false `     -ContainerName "deepstack_face_recognition" -ServicePort 5000

```powershell
Unregister-Face -Identifier "JohnDoe" -NoDockerInitialize $false `
    -ContainerName "deepstack_face_recognition" -ServicePort 5000
```

### rface "JohnDoe"

```powershell
rface "JohnDoe"
```

## Parameter Details

### `-Identifier <String>`

> Số định danh duy nhất của khuôn mặt cần xóa khỏi hệ thống DeepStack

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Tên cho container Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
| **Position?** | 2 |
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
| **Position?** | 3 |
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
| **Position?** | 4 |
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
| **Position?** | 5 |
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
| **Position?** | 6 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Bỏ qua khởi tạo Docker (được sử dụng khi đã được gọi bởi hàm cha)

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

> Buộc xây dựng lại container Docker và xóa dữ liệu hiện có

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
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
## Outputs

- `Boolean`

## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Unregister-AllFaces.md)
