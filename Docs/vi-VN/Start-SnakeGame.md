# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Bắt đầu trò chơi Rắn đơn giản trong bảng điều khiển.

## Description

Hàm này khởi tạo và chạy một trò chơi Rắn săn mồi cơ bản trong giao diện dòng lệnh PowerShell. Người chơi điều khiển con rắn bằng các phím mũi tên hoặc phím WASD, với mục tiêu ăn thức ăn và lớn dần lên trong khi tránh va chạm vào tường hoặc chính nó. Trò chơi có tính năng điều chỉnh tốc độ linh hoạt dựa trên không gian có sẵn và độ dài của rắn. Theo mặc định, màn hình giao diện dòng lệnh được xóa trước khi bắt đầu.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Chiều dài ban đầu của con rắn (mặc định: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Tốc độ trò chơi tính bằng mili giây giữa các nước đi (mặc định: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Ngăn không cho xóa màn hình trước khi bắt đầu trò chơi |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Vẽ một mê cung trong vùng chơi sử dụng các ký tự vẽ ASCII cho tường và đường kẻ, tương tự như đường viền |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Hiển thị đường đi ngắn nhất từ đầu rắn đến thức ăn bằng các chấm nhỏ màu xanh lục ở trung tâm |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Chiều rộng đường đi tối thiểu cho mê cung (1-10, mặc định: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Bắt đầu trò chơi Snake với các cài đặt mặc định (5 đoạn, tốc độ 300ms).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Khởi động trò chơi Rắn săn mồi mà không xóa màn hình, với rắn ngắn hơn và tốc độ nhanh hơn.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Bắt đầu trò chơi bằng cách sử dụng bí danh với một con rắn ban đầu dài hơn.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Khởi động trò chơi Snake với mê cung trong khu vực chơi.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Bắt đầu trò chơi Snake với mê cung và hiển thị đường đi ngắn nhất từ con rắn đến thức ăn bằng các chấm xanh.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Khởi động trò chơi Rắn săn mồi với mê cung có các lối đi rộng hơn (tối thiểu 5 ô) để dễ dàng di chuyển.

## Parameter Details

### `-InitialLength <Int32>`

> Chiều dài ban đầu của con rắn (mặc định: 5)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speed <Int32>`

> Tốc độ trò chơi tính bằng mili giây giữa các nước đi (mặc định: 300)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `300` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoClear`

> Ngăn không cho xóa màn hình trước khi bắt đầu trò chơi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithMaze`

> Vẽ một mê cung trong vùng chơi sử dụng các ký tự vẽ ASCII cho tường và đường kẻ, tương tự như đường viền

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowRoute`

> Hiển thị đường đi ngắn nhất từ đầu rắn đến thức ăn bằng các chấm nhỏ màu xanh lục ở trung tâm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MazeWidth <Int32>`

> Chiều rộng đường đi tối thiểu cho mê cung (1-10, mặc định: 2)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `2` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/UtcNow.md)
