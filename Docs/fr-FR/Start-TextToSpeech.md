# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Convertit le texte en parole en utilisant le moteur de synthèse vocale neuronale de Microsoft Edge.

## Description

Utilise le moteur TTS neuronal de Microsoft Edge (via EdgeTTS.DotNet) pour convertir du texte en parole avec des voix naturelles. Cette fonction offre des capacités flexibles de synthèse vocale prenant en charge différentes voix, locales, ajustements de prosodie (débit, volume, hauteur) et options de lecture synchrones/asynchrones. Elle peut traiter à la fois des chaînes uniques et des tableaux de texte.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Texte à prononcer *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Nom de la voix à utiliser pour la synthèse vocale |
| `-Locale` | String | — | — | Named | `$null` | L'identifiant de la langue à utiliser, par exemple 'fr-FR' |
| `-Rate` | String | — | — | Named | `$null` | Vitesse de parole, ex. "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Niveau de volume, p. ex. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Décalage de hauteur, p. ex. "+0 Hz", "-10 Hz", "+20 Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Afficher le texte prononcé dans le pipeline |
| `-Wait` | SwitchParameter | — | — | Named | — | Attendez que la parole se termine avant de continuer |

## Examples

### Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait

```powershell
Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait
```

### "Hello World" | say

```powershell
"Hello World" | say
```

### say "Hello World" -Rate "+50%" -Pitch "-5Hz"

```powershell
say "Hello World" -Rate "+50%" -Pitch "-5Hz"
```

## Parameter Details

### `-Lines <String[]>`

> Texte à prononcer

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | strings |

<hr/>
### `-VoiceName <String>`

> Nom de la voix à utiliser pour la synthèse vocale

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Locale <String>`

> L'identifiant de la langue à utiliser, par exemple 'fr-FR'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Rate <String>`

> Vitesse de parole, ex. "+0%", "-20%", "+50%"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Volume <String>`

> Niveau de volume, p. ex. "+0%", "-25%", "+100%"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Pitch <String>`

> Décalage de hauteur, p. ex. "+0 Hz", "-10 Hz", "+20 Hz"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Afficher le texte prononcé dans le pipeline

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Wait`

> Attendez que la parole se termine avant de continuer

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNow.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRsecondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRsidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRUtcNow.md)
