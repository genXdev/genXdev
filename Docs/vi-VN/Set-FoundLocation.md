# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> Tìm tệp hoặc thư mục khớp đầu tiên và đặt vị trí đến đó.

## Description

Cmdlet này sẽ giúp bạn thay đổi thư mục nhanh chóng bằng cách sử dụng các cụm từ tìm kiếm để tìm thư mục hoặc tệp khớp đầu tiên (tùy chọn) và thay đổi thư mục đến đó. Hỗ trợ lọc nâng cao theo nội dung, thuộc tính tệp, kích thước, ngày sửa đổi và nhiều tiêu chí khác.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Tên tệp hoặc mẫu để tìm kiếm. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Tên tệp hoặc mẫu để tìm kiếm từ đầu vào đường ống. Mặc định là '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Mẫu biểu thức chính quy để tìm kiếm trong nội dung tập tin *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Chỉ xuất các tệp thuộc các danh mục đã chọn |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Mức độ song song tối đa cho các tác vụ thư mục |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Tùy chọn: thời gian chờ hủy bỏ tính bằng giây |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Tìm kiếm trên tất cả các ổ đĩa có sẵn |
| `-File` | SwitchParameter | — | — | Named | — | Chỉ tìm kiếm tên tệp và chuyển sang thư mục chứa tệp đầu tiên được tìm thấy |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Bao gồm khớp tên tệp và chuyển đến thư mục của tệp đầu tiên được tìm thấy |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Bao gồm các luồng dữ liệu thay thế trong kết quả tìm kiếm |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Không đệ quy vào các thư mục con |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Theo dõi liên kết tượng trưng và đường dẫn nối trong quá trình duyệt thư mục |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Bao gồm ổ đĩa quang |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Tùy chọn: tìm kiếm các ổ đĩa cụ thể |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Tùy chọn: tìm kiếm các ổ đĩa cụ thể |
| `-Root` | String[] | — | — | Named | `@()` | Tùy chọn: tìm kiếm các thư mục cơ sở cụ thể kết hợp với Tên đã cung cấp |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Bao gồm các tệp không phải văn bản (tệp nhị phân, hình ảnh, v.v.) khi tìm kiếm nội dung tệp. |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Lấy hoặc đặt tính phân biệt chữ hoa chữ thường cho tệp và thư mục |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Khi được thiết lập, thực hiện tìm kiếm nội dung trong các luồng dữ liệu thay thế (ADS). Khi không được thiết lập, xuất thông tin tệp ADS mà không tìm kiếm nội dung của chúng. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Độ sâu đệ quy tối đa cho duyệt thư mục. 0 có nghĩa là không giới hạn. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Kích thước tệp tối đa (tính bằng byte) để đưa vào kết quả. 0 có nghĩa là không giới hạn. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Kích thước tệp tối thiểu (tính bằng byte) để đưa vào kết quả. 0 nghĩa là không có giới hạn tối thiểu. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Chỉ bao gồm các tệp được sửa đổi sau ngày/giờ này (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Chỉ bao gồm các tệp đã được sửa đổi trước ngày/giờ này (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Các thuộc tính tệp để bỏ qua (ví dụ: Hệ thống, Ẩn hoặc Không có). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Loại trừ các tệp hoặc thư mục khớp với các mẫu ký tự đại diện này (ví dụ: *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Cho biết rằng các kết quả khớp lệnh cmdlet có phân biệt chữ hoa chữ thường. Theo mặc định, các kết quả khớp không phân biệt chữ hoa chữ thường. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Chỉ định tên văn hóa để khớp với mẫu đã chỉ định. Tham số Culture phải được sử dụng cùng với tham số SimpleMatch. Hành vi mặc định sử dụng văn hóa của không gian chạy PowerShell hiện tại (phiên). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Chỉ định loại mã hóa cho tệp đích. Giá trị mặc định là utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Tham số NotMatch tìm văn bản không khớp với mẫu đã chỉ định. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Cho biết rằng lệnh ghép sử dụng một kết quả khớp đơn giản thay vì một kết quả khớp biểu thức chính quy. Trong một kết quả khớp đơn giản, Select-String tìm kiếm đầu vào cho văn bản trong tham số Pattern. Nó không diễn giải giá trị của tham số Pattern như một câu lệnh biểu thức chính quy. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Sử dụng Push-Location thay vì Set-Location và đẩy vị trí vào ngăn xếp vị trí |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Khi được đặt, chỉ các tên khớp chính xác mới được xem xét. Theo mặc định, đối sánh ký tự đại diện được sử dụng trừ khi Tên chứa các ký tự đại diện. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

Các thay đổi đối với thư mục đầu tiên khớp với mẫu '*.Console'.

### lcd *.Console

```powershell
lcd *.Console
```

Thay đổi vào thư mục đầu tiên khớp với mẫu '*.Console' bằng cách sử dụng bí danh.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

Thay đổi thư mục chứa tệp PowerShell đầu tiên có chứa từ 'function'.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Thay đổi thư mục chứa tệp đầu tiên có 'test' trong tên của nó.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

Chuyển đến thư mục chứa tệp đầu tiên có nội dung khớp với mẫu '1.\d+.2025'.

## Parameter Details

### `-Name <String>`

> Tên tệp hoặc mẫu để tìm kiếm.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-InputObject <Object>`

> Tên tệp hoặc mẫu để tìm kiếm từ đầu vào đường ống. Mặc định là '*'

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | InputObject |

<hr/>
### `-Content <String[]>`

> Mẫu biểu thức chính quy để tìm kiếm trong nội dung tập tin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@(".*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-Category <String[]>`

> Chỉ xuất các tệp thuộc các danh mục đã chọn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> Mức độ song song tối đa cho các tác vụ thư mục

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Tùy chọn: thời gian chờ hủy bỏ tính bằng giây

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
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
### `-File`

> Chỉ tìm kiếm tên tệp và chuyển sang thư mục chứa tệp đầu tiên được tìm thấy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filename` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DirectoriesAndFiles`

> Bao gồm khớp tên tệp và chuyển đến thư mục của tệp đầu tiên được tìm thấy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `FilesAndDirectories` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Bao gồm các luồng dữ liệu thay thế trong kết quả tìm kiếm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
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
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Theo dõi liên kết tượng trưng và đường dẫn nối trong quá trình duyệt thư mục

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> Bao gồm ổ đĩa quang

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> Tùy chọn: tìm kiếm các ổ đĩa cụ thể

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> Tùy chọn: tìm kiếm các ổ đĩa cụ thể

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> Tùy chọn: tìm kiếm các thư mục cơ sở cụ thể kết hợp với Tên đã cung cấp

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Bao gồm các tệp không phải văn bản (tệp nhị phân, hình ảnh, v.v.) khi tìm kiếm nội dung tệp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Lấy hoặc đặt tính phân biệt chữ hoa chữ thường cho tệp và thư mục

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.MatchCasing]::PlatformDefault)` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Khi được thiết lập, thực hiện tìm kiếm nội dung trong các luồng dữ liệu thay thế (ADS). Khi không được thiết lập, xuất thông tin tệp ADS mà không tìm kiếm nội dung của chúng.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
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
| **Default value** | `(
            [System.IO.FileAttributes]::System)` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Loại trừ các tệp hoặc thư mục khớp với các mẫu ký tự đại diện này (ví dụ: *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@("*\\.git\\*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseSensitive`

> Cho biết rằng các kết quả khớp lệnh cmdlet có phân biệt chữ hoa chữ thường. Theo mặc định, các kết quả khớp không phân biệt chữ hoa chữ thường.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> Chỉ định tên văn hóa để khớp với mẫu đã chỉ định. Tham số Culture phải được sử dụng cùng với tham số SimpleMatch. Hành vi mặc định sử dụng văn hóa của không gian chạy PowerShell hiện tại (phiên).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> Chỉ định loại mã hóa cho tệp đích. Giá trị mặc định là utf8NoBOM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"UTF8NoBOM"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> Tham số NotMatch tìm văn bản không khớp với mẫu đã chỉ định.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> Cho biết rằng lệnh ghép sử dụng một kết quả khớp đơn giản thay vì một kết quả khớp biểu thức chính quy. Trong một kết quả khớp đơn giản, Select-String tìm kiếm đầu vào cho văn bản trong tham số Pattern. Nó không diễn giải giá trị của tham số Pattern như một câu lệnh biểu thức chính quy.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Push`

> Sử dụng Push-Location thay vì Set-Location và đẩy vị trí vào ngăn xếp vị trí

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> Khi được đặt, chỉ các tên khớp chính xác mới được xem xét. Theo mặc định, đối sánh ký tự đại diện được sử dụng trừ khi Tên chứa các ký tự đại diện.

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Rename-InProject.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-TextFileAtomic.md)
