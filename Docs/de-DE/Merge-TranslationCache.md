# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Verwaltet den persistenten Übersetzungs-Cache mit gebündelten Datenträgerschreibvorgängen pro Sprache.

## Description

Verwaltet einen modulweit gültigen In-Memory-Übersetzungscache für Get-TextTranslation.
Der Cache ist aufgeteilt in sprachspezifische JSON-Dateien unter
$env:LOCALAPPDATA\GenXdev.PowerShell\. Aufrufe zum Hinzufügen von Einträgen werden gebündelt —
Schreibvorgänge auf die Festplatte erfolgen nur alle 100 Mutationen pro Sprache oder wenn -PersistNow
aufgerufen wird. -PersistNow löscht auch den In-Memory-Cache, um unbegrenztes Wachstum
über Verarbeitungschargen hinweg zu verhindern.

## Syntax

```powershell
Merge-TranslationCache [-GetCache] [<CommonParameters>]

Merge-TranslationCache -Key <String> -Language <String> -Value <String> [<CommonParameters>]

Merge-TranslationCache -PersistNow [<CommonParameters>]

Merge-TranslationCache -ClearCache [<CommonParameters>]

Merge-TranslationCache -PurgeFromCache [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-GetCache` | SwitchParameter | — | — | Named | — | Geben Sie die In-Memory-Cache-Hashtabelle zurück *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | BCP-47-Sprachcode für den Cacheeintrag *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | Der zu cachende Quelltext *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | .PARAMETER WarningAction
Bestimmt, wie das Cmdlet auf ein Warnereignis reagiert. Zulässige Werte für diesen Parameter:
- Continue
- Inquire
- SilentlyContinue
- Stop
- Ignore
- Suspend *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Alle geänderten Caches auf Datenträger schreiben und Arbeitsspeicher leeren *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Cache im Arbeitsspeicher leeren und alle Datenträgerdateien löschen *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Entfernt nicht übersetzte Einträge aus allen Sprachcaches auf der Festplatte *(Parameter set: )* |

## Examples

### $cache = Merge-TranslationCache -GetCache

```powershell
$cache = Merge-TranslationCache -GetCache
```

### Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'

```powershell
Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'
```

### Merge-TranslationCache -PersistNow

```powershell
Merge-TranslationCache -PersistNow
```

### Merge-TranslationCache -PurgeFromCache

```powershell
Merge-TranslationCache -PurgeFromCache
```

## Parameter Details

### `-GetCache`

> Geben Sie die In-Memory-Cache-Hashtabelle zurück

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Get |

<hr/>
### `-Language <String>`

> BCP-47-Sprachcode für den Cacheeintrag

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Key <String>`

> Der zu cachende Quelltext

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Value <String>`

> .PARAMETER WarningAction
Bestimmt, wie das Cmdlet auf ein Warnereignis reagiert. Zulässige Werte für diesen Parameter:
- Continue
- Inquire
- SilentlyContinue
- Stop
- Ignore
- Suspend

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-PersistNow`

> Alle geänderten Caches auf Datenträger schreiben und Arbeitsspeicher leeren

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Persist |

<hr/>
### `-ClearCache`

> Cache im Arbeitsspeicher leeren und alle Datenträgerdateien löschen

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Clear |

<hr/>
### `-PurgeFromCache`

> Entfernt nicht übersetzte Einträge aus allen Sprachcaches auf der Festplatte

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Purge |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-WinMerge.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/de-DE/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/de-DE/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/de-DE/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/de-DE/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-DeepLinkImageFile.md)
