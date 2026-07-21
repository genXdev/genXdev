# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x`

## Synopsis

> Membuat tab Terminal Windows baru yang menjalankan PowerShell.

## Description

Membuka tab baru Windows Terminal dengan mensimulasikan pintasan keyboard Ctrl+Shift+T.
Fungsi ini membawa jendela PowerShell ke latar depan, mengirimkan kombinasi tombol,
 dan secara opsional menutup tab saat ini setelah penundaan.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | Tetap buka tab saat ini setelah membuat tab baru |

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

> Tetap buka tab saat ini setelah membuat tab baru

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-IsSpeaking.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/UtcNow.md)
