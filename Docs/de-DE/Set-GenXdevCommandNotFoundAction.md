# Set-GenXdevCommandNotFoundAction

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Richtet eine benutzerdefinierte Behandlung für nicht gefundene Befehle ein, optional mit KI-Unterstützung.

## Description

Konfiguriert PowerShell so, dass unbekannte Befehle entweder durch Navigieren zu Verzeichnissen oder durch Verwendung von KI zur Interpretation der Benutzerabsicht behandelt werden. Der Handler versucht zuerst einen vorhandenen Handler für nicht gefundene Befehle, prüft dann, ob der Befehl ein gültiger Pfad zur Navigation ist. Die KI-Auflösung ist nur aktiviert, wenn der Schalter -UseAIResolve explizit angegeben wird.

## Syntax

```powershell
Set-GenXdevCommandNotFoundAction [[-LLMQueryType] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-NoPrompt] [-UseAIResolve] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'Coding'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | 1 | — | Die Modellkennung oder das Muster, das für KI-Operationen verwendet werden soll |
| `-ApiEndpoint` | String | — | — | 2 | — | Der API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | 3 | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-NoSupportForJsonSchema` | String | — | — | 4 | — | Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat |
| `-UseAIResolve` | SwitchParameter | — | — | Named | — | Aktivieren Sie die KI-gestützte Auflösung unbekannter Befehle. |
| `-NoPrompt` | SwitchParameter | — | — | Named | — | Überspringe die Absichtseingabe und verwende den Befehlsnamen direkt als KI-Abfrage (erfordert -UseAIResolve). |

## Examples

### Set-GenXdevCommandNotFoundAction -UseAIResolve

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve
```

Ermöglicht die KI-Auflösung mit interaktiver Eingabeaufforderung für unbekannte Befehle.

### Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt
```

Ermöglicht die KI-Auflösung, bei der der unbekannte Befehl direkt an die KI gesendet wird, ohne den Benutzer zu fragen, was er gemeint hat.

## Parameter Details

### `-LLMQueryType <String>`

> Der Typ der LLM-Abfrage

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Die Modellkennung oder das Muster, das für KI-Operationen verwendet werden soll

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> Der API-Endpunkt-URL für KI-Operationen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> Der API-Schlüssel für authentifizierte KI-Operationen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseAIResolve`

> Aktivieren Sie die KI-gestützte Auflösung unbekannter Befehle.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoPrompt`

> Überspringe die Absichtseingabe und verwende den Befehlsnamen direkt als KI-Abfrage (erfordert -UseAIResolve).

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/de-DE/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/de-DE/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/de-DE/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/de-DE/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/de-DE/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-AILLMSettings.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-DeepLinkImageFile.md)
