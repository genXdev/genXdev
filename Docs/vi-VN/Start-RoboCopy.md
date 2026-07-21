# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Cung cấp một trình bao bọc PowerShell cho tiện ích Sao chép Mạnh mẽ (RoboCopy) của Microsoft.

## Description

Một trình bao bọc toàn diện cho tiện ích dòng lệnh RoboCopy cung cấp khả năng sao chép thư mục và tệp tin mạnh mẽ. Hàm này hiển thị bộ tính năng mở rộng của RoboCopy thông qua các tham số thân thiện với PowerShell trong khi vẫn duy trì hầu hết chức năng mạnh mẽ của nó.

Các tính năng chính:
- Đồng bộ hóa thư mục với các tùy chọn mirror
- Hỗ trợ đường dẫn cực dài (>256 ký tự)
- Bảo tồn cài đặt bảo mật
- Xử lý thuộc tính tệp nâng cao
- Quản lý liên kết tượng trưng và điểm junction
- Chế độ giám sát để đồng bộ hóa liên tục
- Tối ưu hóa hiệu suất cho tệp lớn
- Hỗ trợ nén mạng
- Chế độ khôi phục cho thiết bị lỗi

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | Thư mục, đường dẫn tệp, hoặc thư mục+mặt nạ tìm kiếm |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | Thư mục đích để đặt các tệp và thư mục đã sao chép vào.
            Nếu thư mục này chưa tồn tại, tất cả các thư mục còn thiếu sẽ được tạo.
            Giá trị mặc định = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Mặt nạ tìm kiếm tùy chọn để chọn các tệp cần sao chép.
            Giá trị mặc định = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Đồng bộ hóa nội dung của các thư mục đã chỉ định, cũng sẽ xóa mọi tệp và thư mục trong đích không tồn tại trong nguồn |
| `-Move` | SwitchParameter | — | — | Named | — | Thay vì sao chép, sẽ di chuyển tất cả tệp từ nguồn đến đích |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Cũng sẽ sao chép thông tin sở hữu, bộ mô tả bảo mật và thông tin kiểm tra của các tệp và thư mục |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Chỉ sao chép các tệp từ nguồn và bỏ qua các thư mục con (không đệ quy) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Không sao chép thư mục nếu chúng sẽ trống *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Chỉ tạo cây thư mục *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Chỉ tạo cây thư mục và tệp có độ dài bằng không |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Không sao chép liên kết tượng trưng, điểm nối hoặc nội dung mà chúng trỏ đến |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Không sao chép liên kết tượng trưng của tệp nhưng theo dõi các điểm kết nối thư mục |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Thay vì sao chép nội dung mà liên kết tượng trưng trỏ đến, hãy sao chép chính các liên kết đó |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Không sao chép junction thư mục (liên kết tượng trưng cho thư mục) hoặc nội dung mà chúng trỏ đến *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | thay vì sao chép nội dung mà các điểm liên kết (junctions) trỏ tới, hãy sao chép chính các điểm liên kết đó *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Sẽ sao chép tất cả các tệp ngay cả khi chúng cũ hơn các tệp trong đích |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Chỉ sao chép các tệp có thuộc tính lưu trữ được đặt |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Ngoài việc chỉ sao chép các tệp có thuộc tính lưu trữ được đặt, sau đó sẽ đặt lại thuộc tính này trên nguồn |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Loại trừ bất kỳ tệp nào khớp với bất kỳ tên/đường dẫn/ký tự đại diện nào sau đây 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Loại trừ bất kỳ thư mục nào khớp với bất kỳ tên/đường dẫn/ký tự đại diện nào *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Chỉ sao chép các tệp có tất cả các thuộc tính này được thiết lập [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Loại trừ các tệp có bất kỳ thuộc tính nào sau đây được đặt [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Sẽ thiết lập các thuộc tính đã cho cho các tệp đã sao chép [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Sẽ xóa các thuộc tính đã cho khỏi các tệp được sao chép [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Chỉ sao chép n cấp trên cùng của cây thư mục nguồn *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Bỏ qua các tệp có kích thước nhỏ hơn n byte |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Bỏ qua các tệp lớn hơn n byte |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Bỏ qua các tệp không có ít nhất: n ngày tuổi hoặc được tạo trước ngày n (nếu n < 1900 thì n = n ngày, nếu không thì n = ngày YYYYMMDD) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Bỏ qua các tệp cũ hơn: n ngày HOẶC được tạo sau ngày n (nếu n < 1900 thì n = n ngày, nếu không n = ngày YYYYMMDD) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Bỏ qua các tệp được truy cập trong vòng: n ngày qua HOẶC trước ngày n (nếu n < 1900 thì n = n ngày, nếu không n = ngày YYYYMMDD) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Bỏ qua các tệp chưa được truy cập trong: n ngày HOẶC sau ngày n (nếu n < 1900 thì n = n ngày, nếu không n = ngày YYYYMMDD) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Sẽ tạm dừng và thử lại ngay khi xảy ra lỗi I/O trong quá trình sao chép |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Sẽ duy trì hoạt động sau khi sao chép và sao chép các thay đổi bổ sung sau ngưỡng mặc định là 10 phút |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Chạy lại sau n phút nếu thay đổi |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Chạy lại khi có nhiều hơn n thay đổi được thấy |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Giờ chạy - thời gian có thể bắt đầu các bản sao mới, thời gian bắt đầu, phạm vi 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Giờ chạy - thời gian có thể khởi tạo bản sao mới, thời gian kết thúc, phạm vi 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Nếu được chỉ định, logging cũng sẽ được thực hiện vào tệp đã chỉ định |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Thay vì thêm vào tệp nhật ký đã chỉ định, hãy ghi đè lên nó. |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Bao gồm tất cả tên thư mục đã quét trong đầu ra |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Bao gồm tất cả tên tệp đã quét trong đầu ra, kể cả các tệp bị bỏ qua |
| `-Unicode` | SwitchParameter | — | — | Named | — | Xuất trạng thái dưới dạng UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Bật tối ưu hóa cho việc sao chép tệp tin lớn |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Tối ưu hóa hiệu suất bằng cách sao chép đa luồng |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Nếu có thể, hãy sử dụng nén khi sao chép tệp giữa các máy chủ để tiết kiệm băng thông và thời gian |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Khi được đặt, sẽ sử dụng đối sánh dấu thời gian mili giây thay vì dung sai 2 giây mặc định |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Ghi đè, loại bỏ hoặc thêm bất kỳ tham số robocopy nào đã chỉ định.

Cách sử dụng:

Thêm hoặc thay thế tham số:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Loại bỏ tham số:

    -Override -/Switch

Nhiều ghi đè:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> Thư mục, đường dẫn tệp, hoặc thư mục+mặt nạ tìm kiếm

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> Thư mục đích để đặt các tệp và thư mục đã sao chép vào.
            Nếu thư mục này chưa tồn tại, tất cả các thư mục còn thiếu sẽ được tạo.
            Giá trị mặc định = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> Mặt nạ tìm kiếm tùy chọn để chọn các tệp cần sao chép.
            Giá trị mặc định = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> Đồng bộ hóa nội dung của các thư mục đã chỉ định, cũng sẽ xóa mọi tệp và thư mục trong đích không tồn tại trong nguồn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> Thay vì sao chép, sẽ di chuyển tất cả tệp từ nguồn đến đích

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> Cũng sẽ sao chép thông tin sở hữu, bộ mô tả bảo mật và thông tin kiểm tra của các tệp và thư mục

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> Chỉ sao chép các tệp từ nguồn và bỏ qua các thư mục con (không đệ quy)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> Không sao chép thư mục nếu chúng sẽ trống

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> Chỉ tạo cây thư mục

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> Chỉ tạo cây thư mục và tệp có độ dài bằng không

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> Không sao chép liên kết tượng trưng, điểm nối hoặc nội dung mà chúng trỏ đến

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> Không sao chép liên kết tượng trưng của tệp nhưng theo dõi các điểm kết nối thư mục

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> Thay vì sao chép nội dung mà liên kết tượng trưng trỏ đến, hãy sao chép chính các liên kết đó

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> Không sao chép junction thư mục (liên kết tượng trưng cho thư mục) hoặc nội dung mà chúng trỏ đến

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> thay vì sao chép nội dung mà các điểm liên kết (junctions) trỏ tới, hãy sao chép chính các điểm liên kết đó

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> Sẽ sao chép tất cả các tệp ngay cả khi chúng cũ hơn các tệp trong đích

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> Chỉ sao chép các tệp có thuộc tính lưu trữ được đặt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> Ngoài việc chỉ sao chép các tệp có thuộc tính lưu trữ được đặt, sau đó sẽ đặt lại thuộc tính này trên nguồn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> Loại trừ bất kỳ tệp nào khớp với bất kỳ tên/đường dẫn/ký tự đại diện nào sau đây

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> Loại trừ bất kỳ thư mục nào khớp với bất kỳ tên/đường dẫn/ký tự đại diện nào

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> Chỉ sao chép các tệp có tất cả các thuộc tính này được thiết lập [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> Loại trừ các tệp có bất kỳ thuộc tính nào sau đây được đặt [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> Sẽ thiết lập các thuộc tính đã cho cho các tệp đã sao chép [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> Sẽ xóa các thuộc tính đã cho khỏi các tệp được sao chép [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> Chỉ sao chép n cấp trên cùng của cây thư mục nguồn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> Bỏ qua các tệp có kích thước nhỏ hơn n byte

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> Bỏ qua các tệp lớn hơn n byte

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> Bỏ qua các tệp không có ít nhất: n ngày tuổi hoặc được tạo trước ngày n (nếu n < 1900 thì n = n ngày, nếu không thì n = ngày YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> Bỏ qua các tệp cũ hơn: n ngày HOẶC được tạo sau ngày n (nếu n < 1900 thì n = n ngày, nếu không n = ngày YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> Bỏ qua các tệp được truy cập trong vòng: n ngày qua HOẶC trước ngày n (nếu n < 1900 thì n = n ngày, nếu không n = ngày YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> Bỏ qua các tệp chưa được truy cập trong: n ngày HOẶC sau ngày n (nếu n < 1900 thì n = n ngày, nếu không n = ngày YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> Sẽ tạm dừng và thử lại ngay khi xảy ra lỗi I/O trong quá trình sao chép

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> Sẽ duy trì hoạt động sau khi sao chép và sao chép các thay đổi bổ sung sau ngưỡng mặc định là 10 phút

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> Chạy lại sau n phút nếu thay đổi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> Chạy lại khi có nhiều hơn n thay đổi được thấy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> Giờ chạy - thời gian có thể bắt đầu các bản sao mới, thời gian bắt đầu, phạm vi 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> Giờ chạy - thời gian có thể khởi tạo bản sao mới, thời gian kết thúc, phạm vi 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> Nếu được chỉ định, logging cũng sẽ được thực hiện vào tệp đã chỉ định

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> Thay vì thêm vào tệp nhật ký đã chỉ định, hãy ghi đè lên nó.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> Bao gồm tất cả tên thư mục đã quét trong đầu ra

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> Bao gồm tất cả tên tệp đã quét trong đầu ra, kể cả các tệp bị bỏ qua

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> Xuất trạng thái dưới dạng UNICODE

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> Bật tối ưu hóa cho việc sao chép tệp tin lớn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> Tối ưu hóa hiệu suất bằng cách sao chép đa luồng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> Nếu có thể, hãy sử dụng nén khi sao chép tệp giữa các máy chủ để tiết kiệm băng thông và thời gian

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> Khi được đặt, sẽ sử dụng đối sánh dấu thời gian mili giây thay vì dung sai 2 giây mặc định

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> Ghi đè, loại bỏ hoặc thêm bất kỳ tham số robocopy nào đã chỉ định.

Cách sử dụng:

Thêm hoặc thay thế tham số:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Loại bỏ tham số:

    -Override -/Switch

Nhiều ghi đè:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

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
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-TextFileAtomic.md)
