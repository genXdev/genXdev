# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Imposta le impostazioni LLM per le operazioni AI in GenXdev.AI.

## Description

Questo        [int] $TimeoutSeconds,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indica se l\'endpoint non supporta il formato di risposta json_schema'
        )]
        [switch] $NoSupportForJsonSchema,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indica se l\'endpoint non supporta la funzionalità di caricamento immagini'
        )]
        [switch] $NoSupportForImageUpload,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indica se l\'endpoint non supporta la funzionalità di chiamata degli strumenti'
        )]
        [switch] $NoSupportForToolCalls,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Salva le impostazioni solo nella sessione corrente senza ' +
                'persistenza')
        )]
        [switch] $SessionOnly,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Cancella le impostazioni alternative memorizzate nella sessione per le ' +
                'preferenze AI')
        )]
        [switch] $ClearSession,recupera le impostazioni LLM (Large Language Model) utilizzate dal
modulo GenXdev.AI per varie operazioni di AI. Le impostazioni possono essere memorizzate in modo persistente
nelle preferenze (predefinito), solo nella sessione corrente (usando -SessionOnly), o
cancellate dalla sessione (usando -ClearSession). La funzione verifica che almeno
un parametro di impostazione venga fornito, a meno che non si stiano cancellando le impostazioni della sessione.

## Syntax

```powershell
Set-AILLMSettings -LLMQueryType <String> [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [-ClearSession] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | ✅ | — | 0 | — | Il tipo di query LLM |
| `-Model` | String | — | — | 1 | — | L'identificatore o modello da utilizzare per le operazioni AI |
| `-ApiEndpoint` | String | — | — | 7 | — | L'URL dell'endpoint API per le operazioni di IA |
| `-ApiKey` | String | — | — | 8 | — | La chiave API per le operazioni AI autenticate |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Se l'endpoint non supporta il formato di risposta json_schema |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Indica se l'endpoint non supporta la funzionalità di caricamento delle immagini. |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Se l'endpoint non supporta la funzionalità di chiamata degli strumenti |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Percorso del database per i file dei dati delle preferenze |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione |

## Examples

### Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"

```powershell
Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"
```

Imposta persistentemente le impostazioni LLM per il tipo di query di programmazione nelle preferenze.

### Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly

```powershell
Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly
```

Imposta le impostazioni LLM per SimpleIntelligence solo per la sessione corrente.

### Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession

```powershell
Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession
```

Cancella le impostazioni LLM della sessione per il tipo di query Immagini senza influenzare le preferenze permanenti.

### Set-AILLMSettings "Coding" "*Qwen*14B*"

```powershell
Set-AILLMSettings "Coding" "*Qwen*14B*"
```

Imposta le impostazioni LLM per il tipo di query Coding utilizzando parametri posizionali.

## Parameter Details

### `-LLMQueryType <String>`

> Il tipo di query LLM

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> L'identificatore o modello da utilizzare per le operazioni AI

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

> L'URL dell'endpoint API per le operazioni di IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> La chiave API per le operazioni AI autenticate

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 8 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema`

> Se l'endpoint non supporta il formato di risposta json_schema

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

> Indica se l'endpoint non supporta la funzionalità di caricamento delle immagini.

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

> Se l'endpoint non supporta la funzionalità di chiamata degli strumenti

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

> Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI

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

> Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI

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

> Percorso del database per i file dei dati delle preferenze

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

> Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Receive-RealTimeSpeechToText.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Test-DeepLinkImageFile.md)
