# Remove-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Xóa cấu hình đồng nghiệp VPN WireGuard.

## Description

Chức năng này xóa cấu hình đồng đẳng WireGuard VPN khỏi máy chủ đang chạy trong container Docker. Nó xóa các tệp cấu hình của đồng đẳng và cập nhật máy chủ WireGuard để ngừng chấp nhận kết nối từ đồng đẳng này. Chức năng xác minh sự tồn tại của đồng đẳng trước khi xóa và cung cấp các lời nhắc xác nhận trừ khi tham số Force được chỉ định.

## Syntax

```powershell
Remove-WireGuardPeer -PeerName <String> [-Bottom] [-Centered] [-ClearSession] [-ContainerName <String>] [-FocusWindow] [-Force] [-Fullscreen] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-Height <Int32>] [-ImageName <String>] [-Left] [-NoBorders] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-ServicePort <Int32>] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-TimeZone <String>] [-VolumeName <String>] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Tên của đối tác ngang hàng cần xóa |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Tên cho container Docker |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | Tên của ổ đĩa Docker dùng để lưu trữ liên tục |
| `-ServicePort` | Int32 | — | — | Named | `51839` | Số cổng cho dịch vụ WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Thời gian tối đa tính bằng giây để chờ kiểm tra tình trạng dịch vụ |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Khoảng thời gian tính bằng giây giữa các lần kiểm tra tình trạng sức khỏe |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Tên hình ảnh Docker tùy chỉnh để sử dụng |
| `-PUID` | String | — | — | Named | `'1000'` | ID người dùng cho quyền trong vùng chứa |
| `-PGID` | String | — | — | Named | `'1000'` | ID nhóm cho quyền trong vùng chứa |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Múi giờ sử dụng cho container |
| `-Force` | SwitchParameter | — | — | Named | — | Xóa bắt buộc mà không cần xác nhận |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Bỏ qua khởi tạo Docker khi được gọi bởi hàm cha |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Hiển thị cửa sổ Docker Desktop trong quá trình khởi tạo |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Loại bỏ các đường viền của cửa sổ |
| `-Width` | Int32 | — | — | Named | `-1` | Chiều rộng ban đầu của cửa sổ |
| `-Height` | Int32 | — | — | Named | `-1` | Chiều cao ban đầu của cửa sổ |
| `-Left` | SwitchParameter | — | — | Named | — | Đặt cửa sổ ở phía bên trái màn hình |
| `-Right` | SwitchParameter | — | — | Named | — | Đặt cửa sổ ở phía bên phải màn hình |
| `-Bottom` | SwitchParameter | — | — | Named | — | Đặt cửa sổ ở phía dưới màn hình |
| `-Centered` | SwitchParameter | — | — | Named | — | Đặt cửa sổ ở giữa màn hình |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Phóng to cửa sổ |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Khôi phục tiêu điểm của cửa sổ PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Sẽ đặt cửa sổ toàn màn hình trên một màn hình khác với Powershell, hoặc đặt cạnh nhau với Powershell trên cùng một màn hình |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Lấy tiêu điểm cửa sổ sau khi mở |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Đưa cửa sổ lên nền trước sau khi mở |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Thoát các ký tự điều khiển và bộ điều chỉnh khi gửi phím |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Giữ tiêu điểm bàn phím trên cửa sổ đích khi gửi phím |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Sử dụng Shift+Enter thay vì Enter khi gửi khóa |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Độ trễ giữa các chuỗi đầu vào khác nhau tính bằng mili giây khi gửi phím |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sử dụng các thiết lập thay thế được lưu trữ trong phiên làm việc cho sở thích AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Xóa các thiết lập thay thế được lưu trong phiên cho tùy chọn AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Chỉ lưu cài đặt vào tùy chọn liên tục mà không ảnh hưởng đến phiên làm việc |

## Examples

### Remove-WireGuardPeer -PeerName "MyPhone"

```powershell
Remove-WireGuardPeer -PeerName "MyPhone"
```

Xóa peer có tên "MyPhone" với lời nhắc xác nhận.

### Remove-WireGuardPeer -PeerName "Tablet" -Force

```powershell
Remove-WireGuardPeer -PeerName "Tablet" -Force
```

Xóa đồng nghiệp có tên "Tablet" mà không có lời nhắc xác nhận.

### Remove-WireGuardPeer "WorkLaptop"

```powershell
Remove-WireGuardPeer "WorkLaptop"
```

Loại bỏ đối tác bằng cách sử dụng cú pháp tham số vị trí.

## Parameter Details

### `-PeerName <String>`

> Tên của đối tác ngang hàng cần xóa

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
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
| **Position?** | Named |
| **Default value** | `'wireguard'` |
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
| **Default value** | `'wireguard_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Số cổng cho dịch vụ WireGuard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `51839` |
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
| **Default value** | `'linuxserver/wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PUID <String>`

> ID người dùng cho quyền trong vùng chứa

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PGID <String>`

> ID nhóm cho quyền trong vùng chứa

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeZone <String>`

> Múi giờ sử dụng cho container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Xóa bắt buộc mà không cần xác nhận

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Bỏ qua khởi tạo Docker khi được gọi bởi hàm cha

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
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Loại bỏ các đường viền của cửa sổ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Chiều rộng ban đầu của cửa sổ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Chiều cao ban đầu của cửa sổ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Đặt cửa sổ ở phía bên trái màn hình

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> Đặt cửa sổ ở phía bên phải màn hình

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> Đặt cửa sổ ở phía dưới màn hình

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Đặt cửa sổ ở giữa màn hình

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fullscreen`

> Phóng to cửa sổ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Khôi phục tiêu điểm của cửa sổ PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Sẽ đặt cửa sổ toàn màn hình trên một màn hình khác với Powershell, hoặc đặt cạnh nhau với Powershell trên cùng một màn hình

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Lấy tiêu điểm cửa sổ sau khi mở

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Đưa cửa sổ lên nền trước sau khi mở

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Thoát các ký tự điều khiển và bộ điều chỉnh khi gửi phím

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Giữ tiêu điểm bàn phím trên cửa sổ đích khi gửi phím

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Sử dụng Shift+Enter thay vì Enter khi gửi khóa

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Độ trễ giữa các chuỗi đầu vào khác nhau tính bằng mili giây khi gửi phím

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
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
## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-WireGuardStatus.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Reset-WireGuardConfiguration.md)
