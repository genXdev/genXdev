# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Converte texto em fala usando o mecanismo neural TTS da Microsoft Edge.

## Description

Utiliza o mecanismo neural TTS do Microsoft Edge (via EdgeTTS.DotNet) para converter texto em fala com vozes com som natural. Esta função oferece capacidades flexíveis de conversão de texto em fala com suporte para diferentes vozes, localidades, ajustes de prosódia (velocidade, volume, tom) e opções de reprodução síncrona/assíncrona. Pode processar tanto strings únicas quanto matrizes de texto.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Texto a ser falado *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Nome da voz a ser usada para fala |
| `-Locale` | String | — | — | Named | `$null` | O ID da localidade do idioma a ser usado, por exemplo, 'pt-BR' |
| `-Rate` | String | — | — | Named | `$null` | Taxa de fala, ex.: "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Nível de volume, por exemplo: "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Deslocamento de tom, ex.: "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Saída do texto sendo falado para o pipeline |
| `-Wait` | SwitchParameter | — | — | Named | — | Aguardar a fala terminar antes de continuar |

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

> Texto a ser falado

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

> Nome da voz a ser usada para fala

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

> O ID da localidade do idioma a ser usado, por exemplo, 'pt-BR'

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

> Taxa de fala, ex.: "+0%", "-20%", "+50%"

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

> Nível de volume, por exemplo: "+0%", "-25%", "+100%"

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

> Deslocamento de tom, ex.: "+0Hz", "-10Hz", "+20Hz"

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

> Saída do texto sendo falado para o pipeline

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

> Aguardar a fala terminar antes de continuar

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/UtcNow.md)
