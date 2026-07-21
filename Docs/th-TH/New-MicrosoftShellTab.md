# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x`

## Synopsis

> สร้างแท็บ Windows Terminal ใหม่ที่รัน PowerShell.

## Description

เปิดแท็บใหม่ของ Windows Terminal โดยจำลองการใช้แป้นพิมพ์ลัด Ctrl+Shift+T
ฟังก์ชันนี้จะนำหน้าต่าง PowerShell มาอยู่เบื้องหน้า ส่งการกดแป้นพิมพ์
ร่วมกัน และอาจปิดแท็บปัจจุบันหลังจากหน่วงเวลา

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | เปิดแท็บปัจจุบันไว้หลังจากสร้างแท็บใหม่ |

## Examples

### New-MicrosoftShellTab -DontCloseThisTab Creates a new terminal tab while keeping the current tab open.

```powershell
New-MicrosoftShellTab -DontCloseThisTab
Creates a new terminal tab while keeping the current tab open.
```

### x Creates a new terminal tab and closes the current one after 3 seconds.

```powershell
x
Creates a new terminal tab and closes the current one after 3 seconds.
```

## Parameter Details

### `-DontCloseThisTab`

> เปิดแท็บปัจจุบันไว้หลังจากสร้างแท็บใหม่

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-IsSpeaking.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/UtcNow.md)
