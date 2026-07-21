# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x`

## Synopsis

> Erstellt einen neuen Windows Terminal-Tab, der PowerShell ausführt.

## Description

Öffnet einen neuen Windows Terminal-Tab durch Simulation der Tastenkombination Strg+Umschalt+T.
Die Funktion bringt das PowerShell-Fenster in den Vordergrund, sendet die Tastenkombination und schließt optional den aktuellen Tab nach einer Verzögerung.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | Aktuellen Tab nach dem Erstellen eines neuen Tabs geöffnet lassen |

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

> Aktuellen Tab nach dem Erstellen eines neuen Tabs geöffnet lassen

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-IsSpeaking.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/de-DE/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/de-DE/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/de-DE/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/de-DE/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/de-DE/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/de-DE/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/de-DE/UtcNow.md)
