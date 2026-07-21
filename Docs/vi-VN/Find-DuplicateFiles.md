# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf`

## Synopsis

> Tìm các tệp trùng lặp trên nhiều thư mục dựa trên tiêu chí có thể cấu hình.

## Description

Đệ quy tìm kiếm các tệp trùng lặp trong các thư mục được chỉ định. Các tệp được coi là trùng lặp nếu nội dung hoàn toàn giống nhau hoặc bắt đầu bằng cùng một nội dung (để so sánh một phần sử dụng công tắc -ComparePartial). Lệnh ghép sử dụng hàm băm nhanh của các byte đầu tiên của tệp để nhóm hiệu quả trước khi thực hiện so sánh toàn bộ nội dung. Kích thước của hàm băm nhanh này có thể được cấu hình bằng tham số -CompareByteLength, cho phép cân bằng giữa hiệu suất và độ chính xác trong phát hiện trùng lặp. Chỉ các tệp có độ dài tối thiểu bằng giá trị CompareByteLength này mới được xem xét để phát hiện trùng lặp; các tệp nhỏ hơn sẽ được nhóm dựa trên tên tệp.

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | Tên tệp hoặc mẫu để tìm kiếm. Mặc định là '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Tên tệp hoặc mẫu để tìm kiếm từ đầu vào đường ống. Mặc định là '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | Mẫu biểu thức chính quy để tìm kiếm trong nội dung *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Đường dẫn cơ sở để giải quyết các đường dẫn tương đối trong đầu ra |
| `-Category` | String[] | — | — | Named | — | Chỉ xuất các tệp thuộc các danh mục đã chọn |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Mức độ song song tối đa cho các tác vụ thư mục |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Tùy chọn: thời gian chờ hủy bỏ tính bằng giây |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Tìm kiếm trên tất cả các ổ đĩa có sẵn |
| `-Directory` | SwitchParameter | — | — | Named | — | Chỉ tìm kiếm các thư mục |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Bao gồm cả tệp và thư mục |
| `-PassThru` | SwitchParameter | — | — | Named | — | Xuất các mục khớp dưới dạng đối tượng |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Bao gồm các luồng dữ liệu thay thế trong kết quả tìm kiếm |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Không đệ quy vào các thư mục con |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Theo dõi liên kết tượng trưng và đường dẫn nối trong quá trình duyệt thư mục |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Bao gồm ổ đĩa quang |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Tùy chọn: tìm kiếm các ổ đĩa cụ thể |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Tùy chọn: tìm kiếm các ổ đĩa cụ thể |
| `-Root` | String[] | — | — | Named | `@()` | Tùy chọn: tìm kiếm các thư mục cụ thể |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Buộc tìm kiếm chỉ trong các thư mục gốc bằng cách loại bỏ các thành phần thư mục khỏi đầu vào Tên |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Bao gồm các tệp không phải văn bản khi tìm kiếm nội dung tệp |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Buộc chế độ không giám sát và sẽ không tạo liên kết |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Lấy hoặc đặt tính phân biệt chữ hoa chữ thường cho tệp và thư mục |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Khi được đặt, thực hiện tìm kiếm nội dung trong các luồng dữ liệu thay thế (ADS) |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Độ sâu đệ quy tối đa cho duyệt thư mục. 0 có nghĩa là không giới hạn. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Độ sâu đệ quy tối đa để tìm kiếm tiếp tục lên cây. 0 có nghĩa là tắt. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Kích thước tệp tối đa (tính bằng byte) để đưa vào kết quả. 0 có nghĩa là không giới hạn. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Kích thước tệp tối thiểu (tính bằng byte) để đưa vào kết quả. 0 nghĩa là không có giới hạn tối thiểu. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Chỉ bao gồm các tệp được sửa đổi sau ngày/giờ này (UTC) |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Chỉ bao gồm các tệp đã được sửa đổi trước ngày/giờ này (UTC) |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Các thuộc tính tệp để bỏ qua (ví dụ: Hệ thống, Ẩn hoặc Không có) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Loại trừ các tệp hoặc thư mục khớp với các mẫu ký tự đại diện này |
| `-AllMatches` | SwitchParameter | — | — | Named | — | Tìm kiếm nhiều hơn một kết quả khớp trong mỗi dòng văn bản *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Các kết quả khớp có phân biệt chữ hoa chữ thường *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Chụp các dòng ngữ cảnh xung quanh các kết quả khớp *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Tên văn hóa được sử dụng để so khớp mẫu *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Chỉ định mã hóa cho các tệp đích *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Chỉ kết quả khớp đầu tiên trên mỗi tệp được trả về *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Tắt tính năng tô sáng các chuỗi khớp trong đầu ra *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Tham số NotMatch tìm văn bản không khớp với mẫu *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Chỉ xuất ra các chuỗi khớp thay vì các đối tượng MatchInfo *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Sử dụng đối sánh chuỗi đơn giản thay vì regex *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | Sẽ trả về các tệp có kích thước khác nhau miễn là chúng có cùng tên tệp và nội dung, điều này phát hiện các tải xuống/sao chép bị hỏng |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | Nhanh chóng so sánh độ dài byte của các tệp, được sử dụng để lập chỉ mục nhanh và tìm kiếm các tệp trùng lặp, thao tác này sẽ không so sánh nội dung của các tệp |

## Examples

### Find duplicate text files in the Documents folder based on exact content: Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial

```powershell
Find duplicate text files in the Documents folder based on exact content:
Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial
```

### Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set: (Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose

```powershell
Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set:
(Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose
```

## Parameter Details

### `-Name <String[]>`

> Tên tệp hoặc mẫu để tìm kiếm. Mặc định là '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `SourceFolder` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Tên tệp hoặc mẫu để tìm kiếm từ đầu vào đường ống. Mặc định là '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> Mẫu biểu thức chính quy để tìm kiếm trong nội dung

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@('.*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> Đường dẫn cơ sở để giải quyết các đường dẫn tương đối trong đầu ra

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

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
### `-Directory`

> Chỉ tìm kiếm các thư mục

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> Bao gồm cả tệp và thư mục

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Xuất các mục khớp dưới dạng đối tượng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
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

> Tùy chọn: tìm kiếm các thư mục cụ thể

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> Buộc tìm kiếm chỉ trong các thư mục gốc bằng cách loại bỏ các thành phần thư mục khỏi đầu vào Tên

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Bao gồm các tệp không phải văn bản khi tìm kiếm nội dung tệp

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> Buộc chế độ không giám sát và sẽ không tạo liên kết

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Lấy hoặc đặt tính phân biệt chữ hoa chữ thường cho tệp và thư mục

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.MatchCasing]::PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Khi được đặt, thực hiện tìm kiếm nội dung trong các luồng dữ liệu thay thế (ADS)

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
### `-MaxSearchUpDepth <Int32>`

> Độ sâu đệ quy tối đa để tìm kiếm tiếp tục lên cây. 0 có nghĩa là tắt.

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

> Chỉ bao gồm các tệp được sửa đổi sau ngày/giờ này (UTC)

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

> Chỉ bao gồm các tệp đã được sửa đổi trước ngày/giờ này (UTC)

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

> Các thuộc tính tệp để bỏ qua (ví dụ: Hệ thống, Ẩn hoặc Không có)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Loại trừ các tệp hoặc thư mục khớp với các mẫu ký tự đại diện này

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\.git\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Tìm kiếm nhiều hơn một kết quả khớp trong mỗi dòng văn bản

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
### `-CaseSensitive`

> Các kết quả khớp có phân biệt chữ hoa chữ thường

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
### `-Context <Int32[]>`

> Chụp các dòng ngữ cảnh xung quanh các kết quả khớp

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

> Tên văn hóa được sử dụng để so khớp mẫu

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

> Chỉ định mã hóa cho các tệp đích

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'UTF8NoBOM'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> Chỉ kết quả khớp đầu tiên trên mỗi tệp được trả về

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
### `-NoEmphasis`

> Tắt tính năng tô sáng các chuỗi khớp trong đầu ra

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
### `-NotMatch`

> Tham số NotMatch tìm văn bản không khớp với mẫu

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
### `-Raw`

> Chỉ xuất ra các chuỗi khớp thay vì các đối tượng MatchInfo

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

> Sử dụng đối sánh chuỗi đơn giản thay vì regex

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
### `-ComparePartial`

> Sẽ trả về các tệp có kích thước khác nhau miễn là chúng có cùng tên tệp và nội dung, điều này phát hiện các tải xuống/sao chép bị hỏng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompareByteLength <Int32>`

> Nhanh chóng so sánh độ dài byte của các tệp, được sử dụng để lập chỉ mục nhanh và tìm kiếm các tệp trùng lặp, thao tác này sẽ không so sánh nội dung của các tệp

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `65536` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Expand-Path.md)
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
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-TextFileAtomic.md)
