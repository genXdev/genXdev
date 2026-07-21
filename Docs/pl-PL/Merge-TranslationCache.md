# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Zarządza trwałym cache tłumaczeń z wsadowymi zapisami na dysk dla każdego języka.

## Description

Utrzymuje modułową pamięć podręczną tłumaczeń w zakresie skryptu dla Get-TextTranslation. Pamięć podręczna jest podzielona na osobne pliki JSON dla każdego języka w $env:LOCALAPPDATA\GenXdev.PowerShell\. Wywołania dodające wpisy są grupowane — zapisy na dysk występują tylko co 100 mutacji na język lub po wywołaniu -PersistNow. -PersistNow czyści również pamięć podręczną, aby zapobiec niekontrolowanemu wzrostowi podczas przetwarzania wsadowego.

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
| `-GetCache` | SwitchParameter | — | — | Named | — | Zwróć tabelę mieszania pamięci podręcznej w pamięci *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | Kod języka BCP 47 dla wpisu w pamięci podręcznej *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | Tekst źródłowy do buforowania *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | Tekst do przetłumaczenia *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Zapisz wszystkie brudne bufory na dysk i wyczyść pamięć *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Wyczyść pamięć podręczną w pamięci i usuń wszystkie pliki dyskowe *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Usuń nieprzetłumaczone wpisy ze wszystkich pamięci podręcznych języków na dysku *(Parameter set: )* |

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

> Zwróć tabelę mieszania pamięci podręcznej w pamięci

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

> Kod języka BCP 47 dla wpisu w pamięci podręcznej

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

> Tekst źródłowy do buforowania

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

> Tekst do przetłumaczenia

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

> Zapisz wszystkie brudne bufory na dysk i wyczyść pamięć

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

> Wyczyść pamięć podręczną w pamięci i usuń wszystkie pliki dyskowe

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

> Usuń nieprzetłumaczone wpisy ze wszystkich pamięci podręcznych języków na dysku

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-WinMerge.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-DeepLinkImageFile.md)
