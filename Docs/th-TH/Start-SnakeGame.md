# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> เริ่มเกมงูง่ายๆ ในคอนโซล

## Description

ฟังก์ชันนี้จะเริ่มต้นและรันเกมงูพื้นฐานภายในคอนโซลของ PowerShell ผู้เล่นควบคุมงูโดยใช้ปุ่มลูกศรหรือปุ่ม WASD เพื่อกินอาหารและทำให้งูยาวขึ้น ขณะที่หลีกเลี่ยงการชนกับกำแพงหรือตัวงูเอง เกมมีการปรับความเร็วแบบไดนามิกตามพื้นที่ว่างและความยาวของงู โดยค่าเริ่มต้น คอนโซลจะถูกล้างก่อนเริ่มเกม

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | ความยาวเริ่มต้นของงู (ค่าเริ่มต้น: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | ความเร็วของเกมในหน่วยมิลลิวินาทีระหว่างการเดินหมาก (ค่าเริ่มต้น: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | ป้องกันการล้างคอนโซลก่อนเริ่มเกม |
| `-WithMaze` | SwitchParameter | — | — | Named | — | วาดเขาวงกตภายในพื้นที่เล่นโดยใช้อักขระ ASCII สำหรับวาดผนังและเส้น คล้ายกับเส้นขอบ |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | แสดงเส้นทางที่สั้นที่สุดจากหัวงูไปยังอาหาร โดยใช้จุดสีเขียวเล็กๆ ตรงกลาง |
| `-MazeWidth` | Int32 | — | — | Named | `2` | ความกว้างของเส้นทางขั้นต่ำสำหรับเขาวงกต (1-10, ค่าเริ่มต้น: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

เริ่มเกม Snake ด้วยการตั้งค่าเริ่มต้น (5 ส่วน, ความเร็ว 300ms)

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

เริ่มเกมงูโดยไม่ต้องล้างหน้าจอ โดยมีงูที่สั้นกว่าและความเร็วที่เร็วกว่า

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

เริ่มเกมโดยใช้นามแฝงที่มีงูเริ่มต้นยาวขึ้น

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

เริ่มเกมงูที่มีเขาวงกตในสนามเล่น

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

เริ่มเกมงูที่มีเขาวงกต และแสดงเส้นทางที่สั้นที่สุดจากงูไปยังอาหารด้วยจุดสีเขียว

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

เริ่มเกมงูด้วยเขาวงกตที่มีทางเดินกว้างขึ้น (อย่างน้อย 5 ช่อง) เพื่อให้เคลื่อนที่ได้ง่ายขึ้น

## Parameter Details

### `-InitialLength <Int32>`

> ความยาวเริ่มต้นของงู (ค่าเริ่มต้น: 5)

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

> ความเร็วของเกมในหน่วยมิลลิวินาทีระหว่างการเดินหมาก (ค่าเริ่มต้น: 300)

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

> ป้องกันการล้างคอนโซลก่อนเริ่มเกม

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

> วาดเขาวงกตภายในพื้นที่เล่นโดยใช้อักขระ ASCII สำหรับวาดผนังและเส้น คล้ายกับเส้นขอบ

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

> แสดงเส้นทางที่สั้นที่สุดจากหัวงูไปยังอาหาร โดยใช้จุดสีเขียวเล็กๆ ตรงกลาง

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

> ความกว้างของเส้นทางขั้นต่ำสำหรับเขาวงกต (1-10, ค่าเริ่มต้น: 2)

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/UtcNow.md)
