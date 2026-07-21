# Get-ImageDetectedObjects

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Phát hiện và phân loại các đối tượng trong ảnh tải lên bằng DeepStack.

## Description

Hàm này phân tích một tệp hình ảnh để phát hiện và phân loại lên đến 80 loại đối tượng khác nhau. Nó sử dụng API phát hiện đối tượng DeepStack cục bộ chạy trên một cổng có thể cấu hình và trả về các phân loại đối tượng kèm tọa độ hộp giới hạn và điểm số tin cậy. Hàm hỗ trợ tăng tốc GPU, ngưỡng tin cậy tùy chỉnh và quản lý container Docker.

## Syntax

```powershell
Get-ImageDetectedObjects -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Đường dẫn cục bộ đến tệp hình ảnh cần phân tích |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.5` | Ngưỡng độ tin cậy tối thiểu (0.0-1.0). Mặc định là 0.5 |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Tên cho container Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | Tên của ổ đĩa Docker dùng để lưu trữ liên tục |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Số cổng cho dịch vụ DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Thời gian tối đa tính bằng giây để chờ kiểm tra tình trạng dịch vụ |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Khoảng thời gian tính bằng giây giữa các lần kiểm tra tình trạng sức khỏe |
| `-ImageName` | String | — | — | Named | — | Tên hình ảnh Docker tùy chỉnh để sử dụng |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Bỏ qua khởi tạo Docker (được sử dụng khi đã được gọi bởi hàm cha) |
| `-Force` | SwitchParameter | — | — | Named | — | Buộc xây dựng lại container Docker và xóa dữ liệu hiện có |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Sử dụng phiên bản tăng tốc GPU (yêu cầu GPU NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Hiển thị cửa sổ Docker Desktop trong quá trình khởi tạo |

## Examples

### Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `                          -ConfidenceThreshold 0.5 `                          -ServicePort 5000

```powershell
Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `
                         -ConfidenceThreshold 0.5 `
                         -ServicePort 5000
```

Phát hiện các đối tượng trong hình ảnh được chỉ định với tên tham số đầy đủ.

### Get-ImageDetectedObjects "C:\photos\street.jpg"

```powershell
Get-ImageDetectedObjects "C:\photos\street.jpg"
```

Phát hiện đối tượng sử dụng tham số vị trí và cài đặt mặc định.

## Parameter Details

### `-ImagePath <String>`

> Đường dẫn cục bộ đến tệp hình ảnh cần phân tích

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConfidenceThreshold <Double>`

> Ngưỡng độ tin cậy tối thiểu (0.0-1.0). Mặc định là 0.5

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Tên cho container Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Unregister-Face.md)
