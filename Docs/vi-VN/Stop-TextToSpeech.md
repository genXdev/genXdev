# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> Ngay lập tức dừng mọi đầu ra chuyển văn bản thành giọng nói đang diễn ra.

## Description

Dừng tất cả các hoạt động tổng hợp giọng nói đang hoạt động và đang xếp hàng bằng cách hủy cả các thao tác giọng nói tiêu chuẩn và tùy chỉnh. Điều này tạo ra sự im lặng ngay lập tức cho bất kỳ hoạt động chuyển văn bản thành giọng nói nào đang diễn ra.

## Syntax

```powershell
Stop-TextToSpeech [<CommonParameters>]
```

## Examples

### PS C:\> Stop-TextToSpeech Immediately stops any ongoing speech

```powershell
PS C:\> Stop-TextToSpeech
Immediately stops any ongoing speech
```

### PS C:\> say "Hello world"; sst Starts speaking but gets interrupted immediately

```powershell
PS C:\> say "Hello world"; sst
Starts speaking but gets interrupted immediately
```

## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/UtcNow.md)
