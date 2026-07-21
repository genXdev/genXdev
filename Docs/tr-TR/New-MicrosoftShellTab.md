# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x`

## Synopsis

> PowerShell çalıştıran yeni bir Windows Terminal sekmesi oluşturur.

## Description

Ctrl+Shift+T klavye kısayolunu simüle ederek yeni bir Windows Terminal sekmesi açar.
İşlev, PowerShell penceresini ön plana getirir, tuş kombinasyonunu gönderir
ve isteğe bağlı olarak bir gecikmeden sonra geçerli sekmeyi kapatır.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | Yeni sekme oluşturulduktan sonra mevcut sekmeyi açık tut |

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

> Yeni sekme oluşturulduktan sonra mevcut sekmeyi açık tut

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-IsSpeaking.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/UtcNow.md)
