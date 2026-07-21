# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Pobiera ustawienia LLM dla operacji AI w GenXdev.AI.

## Description

Ta funkcja pobiera ustawienia LLM (Large Language Model) używane przez moduł GenXdev.AI do różnych operacji AI. Ustawienia są pobierane z zmiennych sesji, preferencji trwałych lub domyślnego pliku ustawień JSON, zgodnie z tą kolejnością pierwszeństwa. Funkcja obsługuje automatyczny wybór konfiguracji na podstawie dostępnych zasobów pamięci systemowej.

Strategia wyboru pamięci jest określana automatycznie na podstawie podanych parametrów Gpu i Cpu:
- Jeśli określono oba parametry Gpu i Cpu: Używana jest łączna pamięć CPU + GPU
- Jeśli określono tylko parametr Gpu: Preferowana jest pamięć GPU (z rezerwowym użyciem pamięci RAM systemu)
- Jeśli określono tylko parametr Cpu: Używana jest tylko pamięć RAM systemu
- Jeśli nie określono żadnego parametru: Używana jest łączna pamięć CPU + GPU (domyślnie)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Typ zapytania LLM do pobrania ustawień |
| `-Model` | String | — | — | Named | — | Identyfikator modelu lub wzorzec używany do operacji AI |
| `-ApiEndpoint` | String | — | — | Named | — | Adres URL punktu końcowego API dla operacji AI |
| `-ApiKey` | String | — | — | Named | — | Klucz API do uwierzytelnionych operacji AI |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Czy punkt końcowy nie obsługuje formatu odpowiedzi json_schema |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Czy punkt końcowy nie obsługuje funkcji przesyłania obrazów |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Czy punkt końcowy nie obsługuje funkcji wywoływania narzędzi |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI, takich jak język, kolekcje obrazów itp. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść ustawienia sesji (zmienną globalną) przed pobraniem |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ścieżka do bazy danych plików preferencji |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Pomiń ustawienia sesji i pobierz tylko z preferencji lub ustawień domyślnych |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

Pobiera ustawienia LLM dla typu zapytania SimpleIntelligence (domyślny).

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

Pobiera ustawienia LLM dla typu zapytania programistycznego.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

Pobiera ustawienia LLM z preferencji lub wartości domyślnych, ignorując ustawienia sesji.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Parameter Details

### `-LLMQueryType <String>`

> Typ zapytania LLM do pobrania ustawień

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'SimpleIntelligence'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Identyfikator modelu lub wzorzec używany do operacji AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> Adres URL punktu końcowego API dla operacji AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> Klucz API do uwierzytelnionych operacji AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema`

> Czy punkt końcowy nie obsługuje formatu odpowiedzi json_schema

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForImageUpload`

> Czy punkt końcowy nie obsługuje funkcji przesyłania obrazów

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForToolCalls`

> Czy punkt końcowy nie obsługuje funkcji wywoływania narzędzi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI, takich jak język, kolekcje obrazów itp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Wyczyść ustawienia sesji (zmienną globalną) przed pobraniem

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Ścieżka do bazy danych plików preferencji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Pomiń ustawienia sesji i pobierz tylko z preferencji lub ustawień domyślnych

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-DeepLinkImageFile.md)
