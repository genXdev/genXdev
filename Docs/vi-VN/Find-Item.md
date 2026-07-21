# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> Tìm kiếm tệp và thư mục với các tùy chọn lọc nâng cao.

## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Tên tệp hoặc mẫu để tìm kiếm. Mặc định là '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Tên tệp hoặc mẫu để tìm kiếm. Mặc định là '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Mẫu biểu thức chính quy để tìm kiếm trong nội dung *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Đường dẫn cơ sở để giải quyết các đường dẫn tương đối trong đầu ra |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Mức độ song song tối đa cho các tác vụ thư mục |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Tùy chọn: thời gian chờ hủy bỏ tính bằng giây |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Tìm kiếm trên tất cả các ổ đĩa có sẵn |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Chỉ tìm kiếm các thư mục |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Bao gồm cả tệp và thư mục |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Xuất các mục khớp dưới dạng đối tượng |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Bao gồm các luồng dữ liệu thay thế trong kết quả tìm kiếm |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Không đệ quy vào các thư mục con |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Theo dõi liên kết tượng trưng và đường dẫn nối trong quá trình duyệt thư mục |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Bao gồm ổ đĩa quang |
| `-SearchDrives` | String[] | — | — | Named | — | Tùy chọn: tìm kiếm các ổ đĩa cụ thể |
| `-DriveLetter` | Char[] | — | — | Named | — | Tùy chọn: tìm kiếm các ổ đĩa cụ thể |
| `-Root` | String[] | — | — | Named | — | Tùy chọn: tìm kiếm các thư mục cụ thể |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Buộc tìm kiếm chỉ trong các thư mục gốc bằng cách loại bỏ các thành phần thư mục khỏi đầu vào Tên |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Bao gồm các tệp không phải văn bản khi tìm kiếm nội dung tệp |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Buộc chế độ không giám sát và sẽ không tạo liên kết |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Lấy hoặc đặt tính phân biệt chữ hoa chữ thường cho tệp và thư mục |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Khi được thiết lập, thực hiện tìm kiếm nội dung trong các luồng dữ liệu thay thế (ADS). Khi không được thiết lập, xuất thông tin tệp ADS mà không tìm kiếm nội dung của chúng. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Độ sâu đệ quy tối đa cho duyệt thư mục. 0 có nghĩa là không giới hạn. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Độ sâu đệ quy tối đa để tiếp tục tìm kiếm lên trên cây cho các tìm kiếm tương đối, trong khi không tìm thấy mục nào. 0 có nghĩa là vô hiệu hóa. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Kích thước tệp tối đa (tính bằng byte) để đưa vào kết quả. 0 có nghĩa là không giới hạn. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Kích thước tệp tối thiểu (tính bằng byte) để đưa vào kết quả. 0 nghĩa là không có giới hạn tối thiểu. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Chỉ bao gồm các tệp được sửa đổi sau ngày/giờ này (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Chỉ bao gồm các tệp đã được sửa đổi trước ngày/giờ này (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Các thuộc tính tệp để bỏ qua (ví dụ: Hệ thống, Ẩn hoặc Không có). |
| `-Exclude` | String[] | — | — | Named | — | Loại trừ các tệp hoặc thư mục khớp với các mẫu ký tự đại diện này (ví dụ: *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Chỉ ra rằng lệnh ghép tìm kiếm nhiều hơn một kết quả trùng khớp trong mỗi dòng văn bản. Nếu không có tham số này, Select-String chỉ tìm kết quả trùng khớp đầu tiên trong mỗi dòng văn bản. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Cho biết rằng các kết quả khớp lệnh cmdlet có phân biệt chữ hoa chữ thường. Theo mặc định, các kết quả khớp không phân biệt chữ hoa chữ thường. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Chụp số dòng được chỉ định trước và sau dòng khớp với mẫu. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Chỉ định tên văn hóa để khớp với mẫu đã chỉ định. Tham số Culture phải được sử dụng cùng với tham số SimpleMatch. Hành vi mặc định sử dụng văn hóa của không gian chạy PowerShell hiện tại (phiên). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Chỉ định loại mã hóa cho tệp đích. Hỗ trợ các giá trị tương thích với Select-String và mã hóa .NET mở rộng. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Chỉ phiên bản đầu tiên của văn bản khớp được trả về từ mỗi tệp đầu vào. Đây là cách hiệu quả nhất để lấy danh sách các tệp có nội dung khớp với biểu thức chính quy. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Tắt tính năng tô sáng các chuỗi khớp trong đầu ra. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | Tham số NotMatch tìm văn bản không khớp với mẫu đã chỉ định. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Cho biết rằng cmdlet trả về một phản hồi đơn giản thay vì một đối tượng MatchInfo. Giá trị trả về là $true nếu tìm thấy mẫu hoặc $null nếu không tìm thấy mẫu. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Khiến cho cmdlet chỉ xuất ra các chuỗi khớp, thay vì các đối tượng MatchInfo. Điều này tạo ra hành vi tương tự nhất với lệnh grep của Unix hoặc findstr.exe của Windows. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Cho biết rằng lệnh ghép sử dụng một kết quả khớp đơn giản thay vì một kết quả khớp biểu thức chính quy. Trong một kết quả khớp đơn giản, Select-String tìm kiếm đầu vào cho văn bản trong tham số Pattern. Nó không diễn giải giá trị của tham số Pattern như một câu lệnh biểu thức chính quy. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Tìm các tệp có chứa một từ cụ thể
Tìm kiếm tất cả các tệp trong thư mục hiện tại và các thư mục con có chứa từ "dịch thuật".

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Tìm tệp JavaScript có chuỗi phiên bản
Tìm kiếm tệp JavaScript chứa chuỗi phiên bản theo định dạng "Phiên bản == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Liệt kê tất cả thư mục
Tìm tất cả thư mục trong thư mục hiện tại và các thư mục con của nó.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Tìm tệp XML và chuyển các đối tượng
Tìm tất cả các tệp .xml và chuyển kết quả dưới dạng các đối tượng qua pipeline.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Bao gồm các luồng dữ liệu thay thế
Tìm kiếm tất cả các tệp và bao gồm các luồng dữ liệu thay thế của chúng trong kết quả.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Tìm kiếm trên tất cả các ổ đĩa
Tìm tất cả các tệp PDF trên tất cả các ổ đĩa khả dụng.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Thời gian chờ tùy chỉnh và xử lý song song
Tìm kiếm tệp nhật ký với thời gian chờ 5 phút và xử lý song song có giới hạn.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Đầu vào đường ống
Truyền các đường dẫn tệp từ Get-ChildItem để tìm kiếm các tệp chứa "lỗi".

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Giới hạn độ sâu đệ quy
Tìm kiếm tệp văn bản nhưng giới hạn đệ quy đến 2 cấp thư mục.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Lọc theo kích thước tệp
Tìm các tệp lớn hơn 1MB nhưng nhỏ hơn 10MB.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Lọc theo ngày sửa đổi
Tìm các tệp đã sửa đổi sau ngày 1 tháng 1 năm 2025.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Loại trừ các mẫu cụ thể
Tìm kiếm tất cả các tệp nhưng loại trừ các tệp tạm thời và thư mục bin.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Tìm kiếm các ổ đĩa cụ thể
Tìm kiếm các tệp .docx chỉ trên ổ đĩa C: và D:.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Tìm kiếm nội dung phân biệt chữ hoa chữ thường
Tìm kiếm các tệp chứa "Error" (phân biệt chữ hoa chữ thường) trong nội dung của chúng.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Tìm kiếm nội dung luồng dữ liệu thay thế
Tìm kiếm các tệp có luồng dữ liệu thay thế chứa "bí mật".

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Tìm tất cả các kết quả khớp trên mỗi dòng
Tìm kiếm tất cả các lần xuất hiện của "function" trong mỗi dòng, không chỉ kết quả khớp đầu tiên.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Hiển thị ngữ cảnh xung quanh kết quả khớp
Hiển thị 2 dòng trước và 3 dòng sau mỗi kết quả khớp để hiểu rõ hơn.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Chỉ lấy các chuỗi khớp
Trả về các chuỗi văn bản khớp thay vì các đối tượng khớp đầy đủ.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Kiểm tra boolean đơn giản
Trả về true/false thay vì chi tiết khớp để kiểm tra mẫu tồn tại.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Chỉ tìm kết quả khớp đầu tiên trong mỗi tệp
Dừng tại kết quả khớp đầu tiên trong mỗi tệp để liệt kê tệp hiệu quả.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

So khớp chuỗi ký tự
Tìm kiếm văn bản chính xác mà không cần diễn giải regex bằng cách sử dụng SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Tìm tệp không chứa mẫu
Sử dụng NotMatch để tìm các tệp không chứa mẫu đã chỉ định.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Chỉ định mã hóa tệp
Tìm kiếm tệp có mã hóa cụ thể để xử lý văn bản chính xác.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

So sánh văn bản văn hóa
Sử dụng kết hợp đơn giản phù hợp với văn hóa cho văn bản quốc tế.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Tìm kiếm nội dung phức tạp với bộ lọc tệp
Kết hợp bộ lọc kích thước tệp, ngày tháng và nội dung để tìm kiếm chính xác.

## Parameter Details

### `-Name <String[]>`

> Tên tệp hoặc mẫu để tìm kiếm. Mặc định là '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Tên tệp hoặc mẫu để tìm kiếm. Mặc định là '*'

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
| **Position?** | 1 |
| **Default value** | *(none)* |
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
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

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
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Khi được thiết lập, thực hiện tìm kiếm nội dung trong các luồng dữ liệu thay thế (ADS). Khi không được thiết lập, xuất thông tin tệp ADS mà không tìm kiếm nội dung của chúng.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `None` |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Chỉ ra rằng lệnh ghép tìm kiếm nhiều hơn một kết quả trùng khớp trong mỗi dòng văn bản. Nếu không có tham số này, Select-String chỉ tìm kết quả trùng khớp đầu tiên trong mỗi dòng văn bản.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> Cho biết rằng các kết quả khớp lệnh cmdlet có phân biệt chữ hoa chữ thường. Theo mặc định, các kết quả khớp không phân biệt chữ hoa chữ thường.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> Chụp số dòng được chỉ định trước và sau dòng khớp với mẫu.

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

> Chỉ định loại mã hóa cho tệp đích. Hỗ trợ các giá trị tương thích với Select-String và mã hóa .NET mở rộng.

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
### `-List`

> Chỉ phiên bản đầu tiên của văn bản khớp được trả về từ mỗi tệp đầu vào. Đây là cách hiệu quả nhất để lấy danh sách các tệp có nội dung khớp với biểu thức chính quy.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> Tắt tính năng tô sáng các chuỗi khớp trong đầu ra.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> Cho biết rằng cmdlet trả về một phản hồi đơn giản thay vì một đối tượng MatchInfo. Giá trị trả về là $true nếu tìm thấy mẫu hoặc $null nếu không tìm thấy mẫu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> Khiến cho cmdlet chỉ xuất ra các chuỗi khớp, thay vì các đối tượng MatchInfo. Điều này tạo ra hành vi tương tự nhất với lệnh grep của Unix hoặc findstr.exe của Windows.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Find-DuplicateFiles.md)
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
