# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x`

## Synopsis

> Creates a new Windows Terminal tab running PowerShell.

## Description

Opens a new Windows Terminal tab by simulating the keyboard shortcut Ctrl+Shift+T.
The function brings the PowerShell window to the foreground, sends the keystroke
combination, and optionally closes the current tab after a delay.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | Keep current tab open after creating new tab |

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

> Keep current tab open after creating new tab

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-IsSpeaking.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/UtcNow.md)
