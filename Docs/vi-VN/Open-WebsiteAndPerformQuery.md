# Open-WebsiteAndPerformQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `owaq`

## Synopsis

> Mở một trang web trong trình duyệt web và thực hiện một hoặc nhiều truy vấn.

## Description

Hàm này mở một trang web bằng URL trong trình duyệt web mặc định, nhập một hoặc nhiều truy vấn và gửi chúng. Nó hỗ trợ các tùy chọn chọn màn hình rộng và định vị cửa sổ thông qua hàm Open-Webbrowser cơ bản.

Hàm tự động sao chép mỗi truy vấn vào clipboard và gửi đến cửa sổ trình duyệt bằng tự động hóa bàn phím. Nó lưu giữ nội dung clipboard ban đầu và khôi phục lại sau khi tất cả các truy vấn được xử lý.

## Syntax

```powershell
Open-WebsiteAndPerformQuery -Url <String> -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByPropertyName) | 0 | — | URL của trang web cần mở |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 1 | — | Truy vấn cần thực thi. |
| `-Language` | String | — | — | 2 | — | Ngôn ngữ của kết quả tìm kiếm được trả về |
| `-Private` | SwitchParameter | — | — | Named | — | Mở trong chế độ duyệt web riêng tư/ẩn danh |
| `-Force` | SwitchParameter | — | — | Named | — | Buộc bật cổng gỡ lỗi, dừng các trình duyệt đang chạy nếu cần |
| `-Edge` | SwitchParameter | — | — | Named | — | Mở trong Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Mở trong Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Mở trong Microsoft Edge hoặc Google Chrome, tùy thuộc vào trình duyệt mặc định |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mở trong Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Sử dụng trình duyệt do Playwright quản lý thay vì trình duyệt được cài đặt sẵn trong hệ điều hành |
| `-Webkit` | SwitchParameter | — | — | Named | — | Mở trình duyệt WebKit do Playwright quản lý. Ngụ ý -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Chạy trình duyệt mà không có cửa sổ hiển thị |
| `-All` | SwitchParameter | — | — | Named | — | Mở trong tất cả các trình duyệt hiện đại đã đăng ký |
| `-Monitor` | Int32 | — | — | Named | `-2` | Màn hình để sử dụng, 0 = mặc định, -1 là loại bỏ, -2 = Màn hình phụ đã cấu hình, mặc định là -1, không có định vị |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Mở chế độ toàn màn hình |
| `-Width` | Int32 | — | — | Named | `-1` | Chiều rộng ban đầu của cửa sổ trình duyệt web |
| `-Height` | Int32 | — | — | Named | `-1` | Chiều cao ban đầu của cửa sổ trình duyệt web |
| `-X` | Int32 | — | — | Named | `-999999` | Vị trí X ban đầu của cửa sổ trình duyệt web |
| `-Y` | Int32 | — | — | Named | `-999999` | Vị trí Y ban đầu của cửa sổ trình duyệt web |
| `-Left` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở phía bên trái màn hình |
| `-Right` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở bên phải màn hình |
| `-Top` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở phía trên cùng của màn hình |
| `-Bottom` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở cạnh dưới màn hình |
| `-Centered` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở giữa màn hình |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ẩn các điều khiển trình duyệt |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Ngăn chặn việc tải tiện ích mở rộng trình duyệt |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Tắt trình chặn cửa sổ bật lên |
| `-AcceptLang` | String | — | — | Named | `$null` | Đặt tiêu đề http ngôn ngữ chấp nhận của trình duyệt |
| `-KeysToSend` | String[] | — | — | Named | — | Các tổ hợp phím cần gửi đến cửa sổ Trình duyệt, xem tài liệu về lệnh ghép GenXdev\Send-Key |
| `-Maximize` | SwitchParameter | — | — | Named | — | Phóng to cửa sổ sau khi định vị |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Khôi phục cửa sổ về trạng thái bình thường sau khi định vị |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Khôi phục tiêu điểm của cửa sổ PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Không sử dụng lại cửa sổ trình duyệt hiện có, thay vào đó, hãy tạo một cửa sổ mới |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Tập trung cửa sổ trình duyệt sau khi mở |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt lên nền trước sau khi mở |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Thoát các ký tự điều khiển khi gửi phím |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Giữ tiêu điểm bàn phím trên cửa sổ đích khi gửi phím |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Sử dụng Shift+Enter thay vì Enter khi gửi khóa |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `500` | Thời gian trễ giữa các lần gửi các chuỗi phím khác nhau tính bằng mili giây |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Loại bỏ các đường viền của cửa sổ trình duyệt |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sử dụng các thiết lập thay thế được lưu trữ trong phiên làm việc cho sở thích AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Xóa các thiết lập thay thế được lưu trong phiên cho tùy chọn AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Chỉ lưu cài đặt vào tùy chọn liên tục mà không ảnh hưởng đến phiên làm việc |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở chế độ toàn màn hình trên màn hình khác với PowerShell, hoặc cạnh nhau với PowerShell trên cùng một màn hình. |

## Examples

### Open-WebsiteAndPerformQuery -Url "https://www.google.com" -Queries "PowerShell"

```powershell
Open-WebsiteAndPerformQuery -Url "https://www.google.com" -Queries "PowerShell"
```

Mở Google và tìm kiếm "PowerShell".

### owaq google.com "PowerShell tutorials" -Monitor 0

```powershell
owaq google.com "PowerShell tutorials" -Monitor 0
```

Mở Google và tìm kiếm "hướng dẫn PowerShell" trên màn hình mặc định.

## Parameter Details

### `-Url <String>`

> URL của trang web cần mở

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Value`, `u`, `uri`, `link`, `address`, `site`, `FullName`, `Website`, `WebsiteUrl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Queries <String[]>`

> Truy vấn cần thực thi.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Ngôn ngữ của kết quả tìm kiếm được trả về

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Mở trong chế độ duyệt web riêng tư/ẩn danh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Buộc bật cổng gỡ lỗi, dừng các trình duyệt đang chạy nếu cần

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Mở trong Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Mở trong Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Mở trong Microsoft Edge hoặc Google Chrome, tùy thuộc vào trình duyệt mặc định

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Mở trong Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> Sử dụng trình duyệt do Playwright quản lý thay vì trình duyệt được cài đặt sẵn trong hệ điều hành

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Mở trình duyệt WebKit do Playwright quản lý. Ngụ ý -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> Chạy trình duyệt mà không có cửa sổ hiển thị

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> Mở trong tất cả các trình duyệt hiện đại đã đăng ký

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Màn hình để sử dụng, 0 = mặc định, -1 là loại bỏ, -2 = Màn hình phụ đã cấu hình, mặc định là -1, không có định vị

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> Mở chế độ toàn màn hình

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Chiều rộng ban đầu của cửa sổ trình duyệt web

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

> Chiều cao ban đầu của cửa sổ trình duyệt web

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Vị trí X ban đầu của cửa sổ trình duyệt web

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> Vị trí Y ban đầu của cửa sổ trình duyệt web

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Đặt cửa sổ trình duyệt ở phía bên trái màn hình

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

> Đặt cửa sổ trình duyệt ở bên phải màn hình

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> Đặt cửa sổ trình duyệt ở phía trên cùng của màn hình

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

> Đặt cửa sổ trình duyệt ở cạnh dưới màn hình

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

> Đặt cửa sổ trình duyệt ở giữa màn hình

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Ẩn các điều khiển trình duyệt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> Ngăn chặn việc tải tiện ích mở rộng trình duyệt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> Tắt trình chặn cửa sổ bật lên

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Đặt tiêu đề http ngôn ngữ chấp nhận của trình duyệt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Các tổ hợp phím cần gửi đến cửa sổ Trình duyệt, xem tài liệu về lệnh ghép GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Phóng to cửa sổ sau khi định vị

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> Khôi phục cửa sổ về trạng thái bình thường sau khi định vị

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-NewWindow`

> Không sử dụng lại cửa sổ trình duyệt hiện có, thay vào đó, hãy tạo một cửa sổ mới

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Tập trung cửa sổ trình duyệt sau khi mở

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

> Đặt cửa sổ trình duyệt lên nền trước sau khi mở

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

> Thoát các ký tự điều khiển khi gửi phím

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

> Thời gian trễ giữa các lần gửi các chuỗi phím khác nhau tính bằng mili giây

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `500` |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Loại bỏ các đường viền của cửa sổ trình duyệt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
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
### `-SideBySide`

> Đặt cửa sổ trình duyệt ở chế độ toàn màn hình trên màn hình khác với PowerShell, hoặc cạnh nhau với PowerShell trên cùng một màn hình.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-BuiltWithSiteInfo.md)
- [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-GithubQuery.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-WaybackMachineSiteInfo.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-YoutubeQuery.md)
