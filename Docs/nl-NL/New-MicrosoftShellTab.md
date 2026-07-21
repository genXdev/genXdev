# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x`

## Synopsis

> Maakt een nieuw Windows Terminal-tabblad aan met PowerShell.

## Description

Opent een nieuw Windows Terminal-tabblad door de sneltoets Ctrl+Shift+T te simuleren.
De functie brengt het PowerShell-venster naar de voorgrond, verzendt de toetscombinatie
en sluit optioneel het huidige tabblad na een vertraging.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | Huidig tabblad open houden na het maken van een nieuw tabblad |

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

> Huidig tabblad open houden na het maken van een nieuw tabblad

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-IsSpeaking.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/UtcNow.md)
