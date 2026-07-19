# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say

## Synopsis

> Converts text to speech using Microsoft Edge's neural TTS engine.

## Description

Utilise le moteur de synthèse vocale neuronale de Microsoft Edge (via EdgeTTS.DotNet) pour convertir du texte en parole avec des voix naturelles. Cette fonction offre des capacités flexibles de synthèse vocale avec prise en charge de différentes voix, locales, ajustements de prosodie (débit, volume, hauteur) et options de lecture synchrones/asynchrones. Elle peut traiter à la fois des chaînes uniques et des tableaux de texte.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Texte à prononcer *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Name of the voice to use for speech |
| `-Locale` | String | — | — | Named | `$null` | L'identifiant de la locale à utiliser, par exemple 'fr-FR' |
| `-Rate` | String | — | — | Named | `$null` | Vitesse de parole, ex. "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Niveau de volume, par ex. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Décalage de hauteur, p. ex. « +0Hz », « -10Hz », « +20Hz » |
| `-PassThru` | SwitchParameter | — | — | Named | — | The text being spoken to the pipeline is: "Output the text being spoken to the pipeline" |
| `-Wait` | SwitchParameter | — | — | Named | — | Attendre la fin du discours avant de continuer |

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

## Related Links

- [Start-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)
