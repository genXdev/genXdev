# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> Mở một truy vấn tìm kiếm kho lưu trữ Github trong trình duyệt web hoặc thực hiện các tìm kiếm nâng cao thông qua GitHub REST API hỗ trợ tất cả các bộ định lượng và danh mục tìm kiếm có sẵn (kho lưu trữ, mã, vấn đề, người dùng, cam kết, thảo luận, chủ đề, wiki).

## Description

Mở một truy vấn tìm kiếm kho lưu trữ Github trong trình duyệt web với nhiều tùy chọn tùy chỉnh mở rộng hoặc thực hiện tìm kiếm API nâng cao. Hàm này cung cấp giao diện mạnh mẽ để truy cập nhanh các kho lưu trữ Github từ PowerShell với hỗ trợ nhiều trình duyệt, vị trí cửa sổ, lọc ngôn ngữ và tự động hóa bàn phím, hoặc truy xuất dữ liệu có cấu trúc qua API. Các tính năng chính:

Hỗ trợ nhiều truy vấn tìm kiếm với đầu vào qua pipeline
Lọc theo ngôn ngữ cụ thể với tự động bản địa hóa
Hỗ trợ đa trình duyệt (Edge, Chrome, Firefox)
Định vị cửa sổ nâng cao và chọn màn hình
Chế độ duyệt web riêng tư/ẩn danh
Chế độ ứng dụng để duyệt web không bị phân tâm
Tự động hóa bàn phím và quản lý tiêu điểm
Tùy chọn trả về URL để sử dụng theo chương trình
Tìm kiếm API nâng cao với bộ lọc, sắp xếp, phân trang
Hỗ trợ tất cả các loại tìm kiếm GitHub
Xác thực với token truy cập cá nhân
Thực thi công việc bất đồng bộ cho tìm kiếm API
Đầu ra JSON thô hoặc đối tượng có cấu trúc

Hàm tự động xây dựng URL tìm kiếm Github cho chế độ web hoặc điểm cuối API cho chế độ API và chuyển tất cả các tham số liên quan đến trình duyệt đến hàm Open-Webbrowser cơ bản để có hành vi nhất quán.

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Các truy vấn tìm kiếm cần thực hiện trên Github. Hỗ trợ nhiều truy vấn và đầu vào pipeline để tìm kiếm hàng loạt. Mỗi truy vấn sẽ được mã hóa URL và sử dụng để tìm kiếm trên Github. |
| `-Type` | String | — | — | Named | `'Code'` | Danh mục chính để tìm kiếm. Mặc định là 'Mã'. |
| `-In` | String[] | — | — | Named | — | (Các) trường cần tìm kiếm. Chỉ các tùy chọn hợp lệ cho Loại đã chọn mới được chấp nhận. |
| `-User` | String | — | — | Named | — | Giới hạn tìm kiếm trong tài nguyên của người dùng (kho lưu trữ, mã, vấn đề, v.v.). |
| `-Org` | String | — | — | Named | — | Giới hạn tìm kiếm trong một tổ chức. |
| `-Repo` | String | — | — | Named | — | Giới hạn tìm kiếm vào một kho lưu trữ được đặt tên ('chủ_sở_hữu/kho_lưu_trữ'). |
| `-Path` | String | — | — | Named | — | Giới hạn tìm kiếm mã nguồn vào các đường dẫn tệp hoặc thư mục cụ thể (hỗ trợ ký tự đại diện theo Cú pháp Tìm kiếm GitHub). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Lọc kết quả theo tên tệp (không phải đường dẫn). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Giới hạn tìm kiếm mã nguồn theo phần mở rộng tệp. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Lọc theo ngôn ngữ lập trình. |
| `-Size` | String | — | — | Named | — | Kích thước tệp/kho. Hỗ trợ cú pháp số và phạm vi (xem ví dụ). |
| `-State` | String | — | — | Named | — | Đối với các vấn đề/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: giới hạn các vấn đề được tạo bởi một người dùng cụ thể. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Issues/PR: chỉ giới hạn cho người dùng được gán. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR: phải được gắn nhãn với tất cả các chuỗi đã chỉ định. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR: phải thiếu một số siêu dữ liệu nhất định (ví dụ: nhãn, mốc). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Trường sắp xếp (phụ thuộc vào Loại). Ví dụ: "sao", "rẽ nhánh", "cập nhật", v.v. |
| `-Order` | String | — | — | Named | — | Thứ tự "tăng dần" hoặc "giảm dần" để sắp xếp. |
| `-PerPage` | Int32 | — | — | Named | `10` | Kích thước trang (tối đa 100). |
| `-Page` | Int32 | — | — | Named | `1` | 用于分页结果的页码。 |
| `-Token` | String | — | — | Named | — | Mã thông báo truy cập cá nhân hoặc OAuth của GitHub. Nếu không được cung cấp, sử dụng GITHUB_TOKEN hoặc biến môi trường. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Đặt tiêu đề http accept-lang của trình duyệt. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Độ trễ giữa các lần gửi các chuỗi phím khác nhau tính bằng mili giây. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Màn hình để hiển thị kết quả. 0 = mặc định, -1 = loại bỏ, -2 = thứ cấp. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | Chiều rộng ban đầu của cửa sổ trình duyệt. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | Chiều cao ban đầu của cửa sổ trình duyệt. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | Vị trí X ban đầu của cửa sổ trình duyệt. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | Vị trí Y ban đầu của cửa sổ trình duyệt. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Các tổ hợp phím để gửi tới cửa sổ trình duyệt, xem tài liệu hướng dẫn cho lệnh ghép ngắn GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Chỉ khớp kết quả phân biệt chữ hoa chữ thường (nếu được hỗ trợ). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Chạy tìm kiếm không đồng bộ dưới dạng một công việc PowerShell. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | .PARAMETER SubscriptionId
Chỉ định ID của gói đăng ký Azure chứa các tài nguyên lưu trữ. *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Sử dụng chế độ API thay vì mở trong trình duyệt web. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Mở trình duyệt ở chế độ duyệt web riêng tư/ẩn danh để tìm kiếm ẩn danh. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Buộc bật cổng gỡ lỗi, dừng các trình duyệt hiện có nếu cần. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Mở kết quả tìm kiếm trong trình duyệt Microsoft Edge. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Mở kết quả tìm kiếm trong trình duyệt Google Chrome. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Mở kết quả tìm kiếm trong Microsoft Edge hoặc Google Chrome, tùy thuộc vào trình duyệt mặc định. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mở kết quả tìm kiếm trong trình duyệt Mozilla Firefox. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Sử dụng trình duyệt do Playwright quản lý thay vì trình duyệt được cài đặt sẵn trong hệ điều hành |
| `-Webkit` | SwitchParameter | — | — | Named | — | Mở trình duyệt WebKit do Playwright quản lý. Ngụ ý -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Chạy trình duyệt mà không có cửa sổ hiển thị |
| `-All` | SwitchParameter | — | — | Named | — | Mở trong tất cả các trình duyệt hiện đại đã đăng ký |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Mở trình duyệt ở chế độ toàn màn hình. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở phía bên trái màn hình. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở bên phải màn hình. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở phía trên cùng của màn hình. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở phía dưới màn hình. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt ở trung tâm màn hình. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ẩn các điều khiển trình duyệt. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Ngăn chặn tải các tiện ích mở rộng của trình duyệt. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Tắt trình chặn cửa sổ bật lên trong trình duyệt. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Tập trung cửa sổ trình duyệt sau khi mở. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Đưa cửa sổ trình duyệt lên nền trước sau khi mở. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Phóng to cửa sổ sau khi định vị. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Khôi phục tiêu điểm cửa sổ PowerShell. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Không tái sử dụng cửa sổ trình duyệt hiện có, thay vào đó, hãy tạo một cửa sổ mới. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Trả về một đối tượng [System.Diagnostics.Process] của quá trình trình duyệt trong chế độ web hoặc đối tượng truy vấn trong chế độ API. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Đừng mở trình duyệt web, chỉ trả về URL. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Sau khi mở trình duyệt web, trả về URL. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Thoát các ký tự điều khiển khi gửi phím. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Ngăn chặn việc trả lại tiêu điểm bàn phím cho PowerShell sau khi gửi phím. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Sử dụng Shift+Enter để xuống dòng thay vì Enter thông thường. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Loại bỏ đường viền cửa sổ và thanh tiêu đề để có giao diện sạch sẽ hơn. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Đặt cửa sổ trình duyệt bên cạnh PowerShell trên cùng một màn hình. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sử dụng các cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Xóa cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Chỉ lưu cài đặt vào tùy chọn cố định mà không ảnh hưởng đến phiên làm việc. *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Parameter Details

### `-Query <String[]>`

> Các truy vấn tìm kiếm cần thực hiện trên Github. Hỗ trợ nhiều truy vấn và đầu vào pipeline để tìm kiếm hàng loạt. Mỗi truy vấn sẽ được mã hóa URL và sử dụng để tìm kiếm trên Github.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Queries` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Type <String>`

> Danh mục chính để tìm kiếm. Mặc định là 'Mã'.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Code'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-In <String[]>`

> (Các) trường cần tìm kiếm. Chỉ các tùy chọn hợp lệ cho Loại đã chọn mới được chấp nhận.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-User <String>`

> Giới hạn tìm kiếm trong tài nguyên của người dùng (kho lưu trữ, mã, vấn đề, v.v.).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Org <String>`

> Giới hạn tìm kiếm trong một tổ chức.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repo <String>`

> Giới hạn tìm kiếm vào một kho lưu trữ được đặt tên ('chủ_sở_hữu/kho_lưu_trữ').

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> Giới hạn tìm kiếm mã nguồn vào các đường dẫn tệp hoặc thư mục cụ thể (hỗ trợ ký tự đại diện theo Cú pháp Tìm kiếm GitHub).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Filename <String>`

> Lọc kết quả theo tên tệp (không phải đường dẫn).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Extension <String>`

> Giới hạn tìm kiếm mã nguồn theo phần mở rộng tệp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Language <String>`

> Lọc theo ngôn ngữ lập trình.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Size <String>`

> Kích thước tệp/kho. Hỗ trợ cú pháp số và phạm vi (xem ví dụ).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-State <String>`

> Đối với các vấn đề/PR.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Author <String>`

> Issues/PR: giới hạn các vấn đề được tạo bởi một người dùng cụ thể.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Assignee <String>`

> Issues/PR: chỉ giới hạn cho người dùng được gán.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Labels <String[]>`

> Issues/PR: phải được gắn nhãn với tất cả các chuỗi đã chỉ định.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-No <String[]>`

> Issues/PR: phải thiếu một số siêu dữ liệu nhất định (ví dụ: nhãn, mốc).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-SortBy <String>`

> Trường sắp xếp (phụ thuộc vào Loại). Ví dụ: "sao", "rẽ nhánh", "cập nhật", v.v.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Order <String>`

> Thứ tự "tăng dần" hoặc "giảm dần" để sắp xếp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerPage <Int32>`

> Kích thước trang (tối đa 100).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `10` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Int32>`

> 用于分页结果的页码。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> Mã thông báo truy cập cá nhân hoặc OAuth của GitHub. Nếu không được cung cấp, sử dụng GITHUB_TOKEN hoặc biến môi trường.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-AcceptLang <String>`

> Đặt tiêu đề http accept-lang của trình duyệt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Độ trễ giữa các lần gửi các chuỗi phím khác nhau tính bằng mili giây.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Monitor <Int32>`

> Màn hình để hiển thị kết quả. 0 = mặc định, -1 = loại bỏ, -2 = thứ cấp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Width <Int32>`

> Chiều rộng ban đầu của cửa sổ trình duyệt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Height <Int32>`

> Chiều cao ban đầu của cửa sổ trình duyệt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-X <Int32>`

> Vị trí X ban đầu của cửa sổ trình duyệt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Y <Int32>`

> Vị trí Y ban đầu của cửa sổ trình duyệt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-KeysToSend <String[]>`

> Các tổ hợp phím để gửi tới cửa sổ trình duyệt, xem tài liệu hướng dẫn cho lệnh ghép ngắn GenXdev\Send-Key.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-CaseSensitive`

> Chỉ khớp kết quả phân biệt chữ hoa chữ thường (nếu được hỗ trợ).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsJob`

> Chạy tìm kiếm không đồng bộ dưới dạng một công việc PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-RawResponse`

> .PARAMETER SubscriptionId
Chỉ định ID của gói đăng ký Azure chứa các tài nguyên lưu trữ.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Api`

> Sử dụng chế độ API thay vì mở trong trình duyệt web.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Private`

> Mở trình duyệt ở chế độ duyệt web riêng tư/ẩn danh để tìm kiếm ẩn danh.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Force`

> Buộc bật cổng gỡ lỗi, dừng các trình duyệt hiện có nếu cần.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Edge`

> Mở kết quả tìm kiếm trong trình duyệt Microsoft Edge.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chrome`

> Mở kết quả tìm kiếm trong trình duyệt Google Chrome.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chromium`

> Mở kết quả tìm kiếm trong Microsoft Edge hoặc Google Chrome, tùy thuộc vào trình duyệt mặc định.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Firefox`

> Mở kết quả tìm kiếm trong trình duyệt Mozilla Firefox.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
### `-FullScreen`

> Mở trình duyệt ở chế độ toàn màn hình.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Left`

> Đặt cửa sổ trình duyệt ở phía bên trái màn hình.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Right`

> Đặt cửa sổ trình duyệt ở bên phải màn hình.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Top`

> Đặt cửa sổ trình duyệt ở phía trên cùng của màn hình.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Bottom`

> Đặt cửa sổ trình duyệt ở phía dưới màn hình.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Centered`

> Đặt cửa sổ trình duyệt ở trung tâm màn hình.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ApplicationMode`

> Ẩn các điều khiển trình duyệt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBrowserExtensions`

> Ngăn chặn tải các tiện ích mở rộng của trình duyệt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-DisablePopupBlocker`

> Tắt trình chặn cửa sổ bật lên trong trình duyệt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-FocusWindow`

> Tập trung cửa sổ trình duyệt sau khi mở.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SetForeground`

> Đưa cửa sổ trình duyệt lên nền trước sau khi mở.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Maximize`

> Phóng to cửa sổ sau khi định vị.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-RestoreFocus`

> Khôi phục tiêu điểm cửa sổ PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NewWindow`

> Không tái sử dụng cửa sổ trình duyệt hiện có, thay vào đó, hãy tạo một cửa sổ mới.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PassThru`

> Trả về một đối tượng [System.Diagnostics.Process] của quá trình trình duyệt trong chế độ web hoặc đối tượng truy vấn trong chế độ API.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> Đừng mở trình duyệt web, chỉ trả về URL.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ReturnOnlyURL`

> Sau khi mở trình duyệt web, trả về URL.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyEscape`

> Thoát các ký tự điều khiển khi gửi phím.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Ngăn chặn việc trả lại tiêu điểm bàn phím cho PowerShell sau khi gửi phím.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyUseShiftEnter`

> Sử dụng Shift+Enter để xuống dòng thay vì Enter thông thường.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBorders`

> Loại bỏ đường viền cửa sổ và thanh tiêu đề để có giao diện sạch sẽ hơn.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SideBySide`

> Đặt cửa sổ trình duyệt bên cạnh PowerShell trên cùng một màn hình.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SessionOnly`

> Sử dụng các cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ClearSession`

> Xóa cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SkipSession`

> Chỉ lưu cài đặt vào tùy chọn cố định mà không ảnh hưởng đến phiên làm việc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-BuiltWithSiteInfo.md)
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
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-YoutubeQuery.md)
