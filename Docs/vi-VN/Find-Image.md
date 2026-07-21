# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages`, `li`

## Synopsis

> Tìm kiếm tệp hình ảnh và siêu dữ liệu trong các thư mục được chỉ định với khả năng lọc và tùy chọn hiển thị thư viện dựa trên trình duyệt.

## Description

Tìm kiếm các tệp hình ảnh (jpg, jpeg, png, gif, bmp, webp, tiff, tif) trong thư mục được chỉ định và các thư mục con của nó. Đối với mỗi hình ảnh, kiểm tra các tệp description.json, keywords.json, people.json và objects.json liên quan để lấy siêu dữ liệu. Có thể lọc hình ảnh dựa trên kết quả khớp từ khóa, nhận dạng khuôn mặt và phát hiện đối tượng, sau đó trả về kết quả dưới dạng đối tượng. Sử dụng -ShowInBrowser để hiển thị kết quả trong bố cục dạng lưới xây trên trình duyệt.

Logic tham số:
- Trong mỗi loại tham số (Từ khóa, Người, Đối tượng, v.v.): Sử dụng logic OR
  Ví dụ: -Keywords "cat","dog" tìm hình ảnh có EITHER mèo HOẶC chó
- Giữa các loại tham số khác nhau: Sử dụng logic AND
  Ví dụ: -Keywords "cat" -People "John" tìm hình ảnh có cả mèo VÀ John
- Tham số phạm vi EXIF: Cung cấp giá trị [min, max] để lọc phạm vi
- Tham số chuỗi: Hỗ trợ khớp ký tự đại diện với * và ?

Hàm tìm kiếm qua các thư mục hình ảnh và kiểm tra các luồng dữ liệu thay thế chứa siêu dữ liệu ở định dạng JSON. Nó có thể khớp từ khóa bằng cách sử dụng mẫu ký tự đại diện, lọc cho những người cụ thể và tìm kiếm các đối tượng được phát hiện. Theo mặc định, trả về các đối tượng dữ liệu hình ảnh. Sử dụng -ShowInBrowser để hiển thị trong trình duyệt web.

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Sẽ khớp với bất kỳ loại siêu dữ liệu nào có thể có. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Mảng các đường dẫn thư mục để tìm kiếm hình ảnh |
| `-Language` | String | — | — | Named | — | Ngôn ngữ cho mô tả và từ khóa. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | Văn bản mô tả để tìm kiếm, cho phép ký tự đại diện. |
| `-Keywords` | String[] | — | — | Named | `@()` | Các từ khóa cần tìm, cho phép ký tự đại diện. |
| `-People` | String[] | — | — | Named | `@()` | Người cần tìm, cho phép ký tự đại diện. |
| `-Objects` | String[] | — | — | Named | `@()` | Các đối tượng cần tìm, cho phép ký tự đại diện. |
| `-Scenes` | String[] | — | — | Named | `@()` | Các danh mục cảnh cần tìm, được phép sử dụng ký tự đại diện. |
| `-PictureType` | String[] | — | — | Named | `@()` | Loại ảnh để lọc (ví dụ: 'ban ngày', 'buổi tối', 'trong nhà', v.v.). Hỗ trợ ký tự đại diện. |
| `-StyleType` | String[] | — | — | Named | `@()` | Loại kiểu để lọc theo (ví dụ: 'casual', 'formal', v.v.). Hỗ trợ ký tự đại diện. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Tổng thể tâm trạng để lọc (ví dụ: 'bình tĩnh', 'vui vẻ', 'buồn bã', v.v.). Hỗ trợ ký tự đại diện. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | Bộ lọc theo nhà sản xuất máy ảnh trong metadata EXIF của ảnh. Hỗ trợ ký tự đại diện. |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | Lọc theo tên máy ảnh trong thông tin EXIF của ảnh. Hỗ trợ ký tự đại diện. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | Lọc theo phạm vi vĩ độ GPS trong siêu dữ liệu EXIF của ảnh. |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | Lọc theo phạm vi kinh độ GPS trong siêu dữ liệu EXIF của ảnh. |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | Lọc theo phạm vi độ cao GPS trong siêu dữ liệu EXIF của ảnh (tính bằng mét). |
| `-GeoLocation` | Double[] | — | — | Named | — | Tọa độ địa lý [vĩ độ, kinh độ] để tìm kiếm gần đó. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Khoảng cách tối đa tính bằng mét từ GeoLocation để tìm kiếm hình ảnh. |
| `-MetaExposureTime` | Double[] | — | — | Named | — | Lọc theo khoảng thời gian phơi sáng trong dữ liệu EXIF của ảnh (tính bằng giây). |
| `-MetaFNumber` | Double[] | — | — | Named | — | Lọc theo dải số F (khẩu độ) trong siêu dữ liệu EXIF của ảnh. |
| `-MetaISO` | Int32[] | — | — | Named | — | Lọc theo dải ISO trong siêu dữ liệu EXIF của ảnh. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | Lọc theo dải tiêu cự trong metadata EXIF của ảnh (tính bằng mm). |
| `-MetaWidth` | Int32[] | — | — | Named | — | Lọc theo phạm vi chiều rộng ảnh tính bằng pixel từ siêu dữ liệu EXIF. |
| `-MetaHeight` | Int32[] | — | — | Named | — | Lọc theo phạm vi chiều cao ảnh tính bằng pixel từ siêu dữ liệu EXIF. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | Lọc theo ngày chụp từ metadata EXIF. Có thể là một khoảng ngày. |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Tiêu đề cho bộ sưu tập |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Mô tả cho thư viện ảnh |
| `-AcceptLang` | String | — | — | Named | `$null` | Đặt tiêu đề http ngôn ngữ chấp nhận của trình duyệt |
| `-KeysToSend` | String[] | — | — | Named | — | Các tổ hợp phím để gửi đến cửa sổ trình duyệt, hãy xem tài liệu về lệnh ghép ngắn GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Thoát các ký tự điều khiển và bổ trợ khi gửi phím |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Ngăn chặn việc đưa tiêu điểm bàn phím trở lại PowerShell sau khi gửi phím |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Sử dụng Shift+Enter thay vì Enter khi gửi phím |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Độ trễ giữa các chuỗi đầu vào khác nhau tính bằng mili giây khi gửi phím |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Tập trung cửa sổ trình duyệt sau khi mở |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt lên nền trước sau khi mở |
| `-Maximize` | SwitchParameter | — | — | Named | — | Phóng to cửa sổ sau khi định vị |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Khôi phục cửa sổ về trạng thái bình thường sau khi định vị |
| `-Monitor` | Int32 | — | — | Named | `-2` | Màn hình sẽ sử dụng, 0 = mặc định, -1 là bỏ qua, -2 = Màn hình phụ đã định cấu hình, mặc định là `Global:DefaultSecondaryMonitor` hoặc 2 nếu không tìm thấy |
| `-Width` | Int32 | — | — | Named | `-1` | Chiều rộng ban đầu của cửa sổ trình duyệt web |
| `-Height` | Int32 | — | — | Named | `-1` | Chiều cao ban đầu của cửa sổ trình duyệt web |
| `-X` | Int32 | — | — | Named | `-999999` | Vị trí X ban đầu của cửa sổ trình duyệt web |
| `-Y` | Int32 | — | — | Named | `-999999` | Vị trí Y ban đầu của cửa sổ trình duyệt web |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Nhúng hình ảnh dưới dạng base64. |
| `-NoFallback` | SwitchParameter | — | — | Named | — | Chuyển đổi để vô hiệu hóa hành vi dự phòng. |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | Chuyển đổi để bỏ qua khởi tạo và xây dựng lại cơ sở dữ liệu. |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Tìm kiếm trên tất cả các ổ đĩa có sẵn |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Không đệ quy vào các thư mục con |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Theo các liên kết tượng trưng và điểm nối trong quá trình duyệt thư mục. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Độ sâu đệ quy tối đa cho duyệt thư mục. 0 có nghĩa là không giới hạn. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Độ sâu đệ quy tối đa để tiếp tục tìm kiếm lên trên cây cho các tìm kiếm tương đối, trong khi không tìm thấy mục nào. 0 có nghĩa là vô hiệu hóa. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Kích thước tệp tối đa (tính bằng byte) để đưa vào kết quả. 0 có nghĩa là không giới hạn. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Kích thước tệp tối thiểu (tính bằng byte) để đưa vào kết quả. 0 nghĩa là không có giới hạn tối thiểu. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Chỉ bao gồm các tệp được sửa đổi sau ngày/giờ này (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Chỉ bao gồm các tệp đã được sửa đổi trước ngày/giờ này (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Các thuộc tính tệp để bỏ qua (ví dụ: Hệ thống, Ẩn hoặc Không có). |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Lọc các hình ảnh có chứa nội dung khỏa thân. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Lọc các hình ảnh không chứa nội dung khỏa thân. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Lọc các hình ảnh có chứa nội dung rõ ràng. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Lọc các hình ảnh không chứa nội dung khiêu dâm. |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | Hiển thị kết quả tìm kiếm trong một thư viện ảnh dựa trên trình duyệt. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Trả về dữ liệu hình ảnh dưới dạng đối tượng. Khi được sử dụng cùng với '-ShowInBrowser', vừa hiển thị thư viện vừa trả về các đối tượng. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Loại bỏ khung cửa sổ và thanh tiêu đề để có giao diện sạch sẽ hơn |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt cạnh PowerShell trên cùng một màn hình |
| `-Interactive` | SwitchParameter | — | — | Named | — | Sẽ kết nối với trình duyệt và thêm các nút bổ sung như Chỉnh sửa và Xóa. Chỉ có hiệu quả khi được sử dụng với -ShowInBrowser. |
| `-Private` | SwitchParameter | — | — | Named | — | Mở trong chế độ duyệt web riêng tư/ẩn danh |
| `-Force` | SwitchParameter | — | — | Named | — | Buộc kích hoạt cổng gỡ lỗi, dừng các trình duyệt hiện có nếu cần |
| `-Edge` | SwitchParameter | — | — | Named | — | Mở trong Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Mở trong Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Mở trong Microsoft Edge hoặc Google Chrome, tùy thuộc vào trình duyệt mặc định. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mở trong Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Sử dụng trình duyệt được quản lý bởi Playwright thay vì trình duyệt được cài đặt trên hệ điều hành |
| `-Webkit` | SwitchParameter | — | — | Named | — | Mở trình duyệt WebKit do Playwright quản lý. Ngụ ý -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Chạy trình duyệt mà không có cửa sổ hiển thị |
| `-All` | SwitchParameter | — | — | Named | — | Mở trong tất cả các trình duyệt hiện đại đã đăng ký |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Mở chế độ toàn màn hình |
| `-Left` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở phía bên trái màn hình |
| `-Right` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở bên phải màn hình |
| `-Top` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở phía trên cùng của màn hình |
| `-Bottom` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở cạnh dưới màn hình |
| `-Centered` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở giữa màn hình |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ẩn các điều khiển trình duyệt |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Ngăn chặn việc tải tiện ích mở rộng trình duyệt |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Tắt trình chặn cửa sổ bật lên |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Khôi phục tiêu điểm của cửa sổ PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Không tái sử dụng cửa sổ trình duyệt hiện có, thay vào đó, hãy tạo một cửa sổ mới |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | ('Chỉ trả về HTML đã được tạo thay vì hiển thị nó trong trình duyệt.') |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Chỉ hiển thị ảnh trong một hình chữ nhật bo tròn, không có chữ bên dưới. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sử dụng cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Xóa các cài đặt thay thế được lưu trong phiên cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Không sử dụng các cài đặt thay thế được lưu trong phiên cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Tự động cuộn trang với tốc độ này (số pixel mỗi giây, null để tắt) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Hoạt ảnh các hình chữ nhật (đối tượng/khuôn mặt) trong phạm vi hiển thị, lặp lại mỗi 300ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Buộc bố cục một cột (căn giữa, 1/3 chiều rộng màn hình) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Tiền tố để thêm vào trước mỗi đường dẫn ảnh (ví dụ: cho URL từ xa) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | Tỷ lệ tin cậy tối thiểu (0.0-1.0) để lọc người, cảnh và đối tượng theo độ tin cậy. Chỉ trả về dữ liệu cho người, cảnh và đối tượng có độ tin cậy lớn hơn hoặc bằng giá trị này. |

## Examples

### Find-Image -Keywords "cat","dog" -Name "C:\Photos\*" Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

```powershell
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.
```

### findimages cat,dog "C:\Photos" Same as above using the alias and positional parameters.

```powershell
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.
```

### Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser Searches for photos containing John OR Jane and displays them in a web gallery.

```powershell
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*" Searches for images that contain vacation keywords AND John as a person AND beach objects. All three criteria must be met (AND logic between parameter types).

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).
```

### Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*" Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8. EXIF parameters use range filtering with [min, max] values.

```powershell
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.
```

### Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

```powershell
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.
```

### findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

```powershell
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*" Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.
```

### Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

```powershell
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.
```

### Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

```powershell
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.
```

### Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*" Searches for daylight photos with a calm/peaceful mood and returns the image objects.

```powershell
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.
```

### findimages -StyleType "casual" -HasNudity -Name "C:\Art\*" Searches for casual style images that contain nudity and returns the data objects.

```powershell
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.
```

### Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*" Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.

```powershell
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
```

## Parameter Details

### `-Any <String[]>`

> Sẽ khớp với bất kỳ loại siêu dữ liệu nào có thể có.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Name <String[]>`

> Mảng các đường dẫn thư mục để tìm kiếm hình ảnh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('.\')` |
| **Accept pipeline input?** | False |
| **Aliases** | `imagespath`, `directories`, `imgdirs`, `imagedirectory`, `ImageDirectories` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Ngôn ngữ cho mô tả và từ khóa.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DescriptionSearch <String[]>`

> Văn bản mô tả để tìm kiếm, cho phép ký tự đại diện.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Keywords <String[]>`

> Các từ khóa cần tìm, cho phép ký tự đại diện.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-People <String[]>`

> Người cần tìm, cho phép ký tự đại diện.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Objects <String[]>`

> Các đối tượng cần tìm, cho phép ký tự đại diện.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Scenes <String[]>`

> Các danh mục cảnh cần tìm, được phép sử dụng ký tự đại diện.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PictureType <String[]>`

> Loại ảnh để lọc (ví dụ: 'ban ngày', 'buổi tối', 'trong nhà', v.v.). Hỗ trợ ký tự đại diện.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StyleType <String[]>`

> Loại kiểu để lọc theo (ví dụ: 'casual', 'formal', v.v.). Hỗ trợ ký tự đại diện.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OverallMood <String[]>`

> Tổng thể tâm trạng để lọc (ví dụ: 'bình tĩnh', 'vui vẻ', 'buồn bã', v.v.). Hỗ trợ ký tự đại diện.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaCameraMake <String[]>`

> Bộ lọc theo nhà sản xuất máy ảnh trong metadata EXIF của ảnh. Hỗ trợ ký tự đại diện.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaCameraModel <String[]>`

> Lọc theo tên máy ảnh trong thông tin EXIF của ảnh. Hỗ trợ ký tự đại diện.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSLatitude <Double[]>`

> Lọc theo phạm vi vĩ độ GPS trong siêu dữ liệu EXIF của ảnh.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSLongitude <Double[]>`

> Lọc theo phạm vi kinh độ GPS trong siêu dữ liệu EXIF của ảnh.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSAltitude <Double[]>`

> Lọc theo phạm vi độ cao GPS trong siêu dữ liệu EXIF của ảnh (tính bằng mét).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoLocation <Double[]>`

> Tọa độ địa lý [vĩ độ, kinh độ] để tìm kiếm gần đó.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoDistanceInMeters <Double>`

> Khoảng cách tối đa tính bằng mét từ GeoLocation để tìm kiếm hình ảnh.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaExposureTime <Double[]>`

> Lọc theo khoảng thời gian phơi sáng trong dữ liệu EXIF của ảnh (tính bằng giây).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaFNumber <Double[]>`

> Lọc theo dải số F (khẩu độ) trong siêu dữ liệu EXIF của ảnh.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaISO <Int32[]>`

> Lọc theo dải ISO trong siêu dữ liệu EXIF của ảnh.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaFocalLength <Double[]>`

> Lọc theo dải tiêu cự trong metadata EXIF của ảnh (tính bằng mm).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaWidth <Int32[]>`

> Lọc theo phạm vi chiều rộng ảnh tính bằng pixel từ siêu dữ liệu EXIF.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaHeight <Int32[]>`

> Lọc theo phạm vi chiều cao ảnh tính bằng pixel từ siêu dữ liệu EXIF.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaDateTaken <DateTime[]>`

> Lọc theo ngày chụp từ metadata EXIF. Có thể là một khoảng ngày.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
| **Default value** | `('Hover over images to see face recognition ' +
            'and object detection data')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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

> Các tổ hợp phím để gửi đến cửa sổ trình duyệt, hãy xem tài liệu về lệnh ghép ngắn GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Thoát các ký tự điều khiển và bổ trợ khi gửi phím

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

> Ngăn chặn việc đưa tiêu điểm bàn phím trở lại PowerShell sau khi gửi phím

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

> Sử dụng Shift+Enter thay vì Enter khi gửi phím

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
### `-Monitor <Int32>`

> Màn hình sẽ sử dụng, 0 = mặc định, -1 là bỏ qua, -2 = Màn hình phụ đã định cấu hình, mặc định là `Global:DefaultSecondaryMonitor` hoặc 2 nếu không tìm thấy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
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
### `-EmbedImages`

> Nhúng hình ảnh dưới dạng base64.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoFallback`

> Chuyển đổi để vô hiệu hóa hành vi dự phòng.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NeverRebuild`

> Chuyển đổi để bỏ qua khởi tạo và xây dựng lại cơ sở dữ liệu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> Tìm kiếm trên tất cả các ổ đĩa có sẵn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Không đệ quy vào các thư mục con

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Theo các liên kết tượng trưng và điểm nối trong quá trình duyệt thư mục.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> Độ sâu đệ quy tối đa cho duyệt thư mục. 0 có nghĩa là không giới hạn.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSearchUpDepth <Int32>`

> Độ sâu đệ quy tối đa để tiếp tục tìm kiếm lên trên cây cho các tìm kiếm tương đối, trong khi không tìm thấy mục nào. 0 có nghĩa là vô hiệu hóa.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> Kích thước tệp tối đa (tính bằng byte) để đưa vào kết quả. 0 có nghĩa là không giới hạn.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> Kích thước tệp tối thiểu (tính bằng byte) để đưa vào kết quả. 0 nghĩa là không có giới hạn tối thiểu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <DateTime>`

> Chỉ bao gồm các tệp được sửa đổi sau ngày/giờ này (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <DateTime>`

> Chỉ bao gồm các tệp đã được sửa đổi trước ngày/giờ này (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> Các thuộc tính tệp để bỏ qua (ví dụ: Hệ thống, Ẩn hoặc Không có).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasNudity`

> Lọc các hình ảnh có chứa nội dung khỏa thân.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoNudity`

> Lọc các hình ảnh không chứa nội dung khỏa thân.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasExplicitContent`

> Lọc các hình ảnh có chứa nội dung rõ ràng.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoExplicitContent`

> Lọc các hình ảnh không chứa nội dung khiêu dâm.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowInBrowser`

> Hiển thị kết quả tìm kiếm trong một thư viện ảnh dựa trên trình duyệt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `show`, `s` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Trả về dữ liệu hình ảnh dưới dạng đối tượng. Khi được sử dụng cùng với '-ShowInBrowser', vừa hiển thị thư viện vừa trả về các đối tượng.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Loại bỏ khung cửa sổ và thanh tiêu đề để có giao diện sạch sẽ hơn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Đặt cửa sổ trình duyệt cạnh PowerShell trên cùng một màn hình

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Interactive`

> Sẽ kết nối với trình duyệt và thêm các nút bổ sung như Chỉnh sửa và Xóa. Chỉ có hiệu quả khi được sử dụng với -ShowInBrowser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `i`, `editimages` |
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

> Buộc kích hoạt cổng gỡ lỗi, dừng các trình duyệt hiện có nếu cần

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

> Mở trong Microsoft Edge hoặc Google Chrome, tùy thuộc vào trình duyệt mặc định.

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

> Sử dụng trình duyệt được quản lý bởi Playwright thay vì trình duyệt được cài đặt trên hệ điều hành

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

> Không tái sử dụng cửa sổ trình duyệt hiện có, thay vào đó, hãy tạo một cửa sổ mới

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyReturnHtml`

> ('Chỉ trả về HTML đã được tạo thay vì hiển thị nó trong trình duyệt.')

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowOnlyPictures`

> Chỉ hiển thị ảnh trong một hình chữ nhật bo tròn, không có chữ bên dưới.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoMetadata`, `OnlyPictures` |
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

> Xóa các cài đặt thay thế được lưu trong phiên cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v.

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

> Không sử dụng các cài đặt thay thế được lưu trong phiên cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
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
### `-MinConfidenceRatio <Double>`

> Tỷ lệ tin cậy tối thiểu (0.0-1.0) để lọc người, cảnh và đối tượng theo độ tin cậy. Chỉ trả về dữ liệu cho người, cảnh và đối tượng có độ tin cậy lớn hơn hoặc bằng giá trị này.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-DiplomaticSpeak.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageKeywordUpdate.md)
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
