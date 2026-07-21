# Invoke-LLMQuery

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `qllm`, `llm`

## Synopsis

> Invia query a un'API di completamento chat per Large Language Model compatibile con OpenAI e elabora le risposte.

## Description

Questa funzione invia query a un'API di completamento chat per Large Language Model compatibile con OpenAI e elabora le risposte. Supporta input di testo e immagini, gestisce chiamate a funzioni strumento e può operare in varie modalità di chat, inclusi testo e audio.

La funzione fornisce supporto completo per l'interazione con LLM, tra cui:
- Elaborazione di input di testo e immagini
- Chiamata a funzioni strumento ed esecuzione di comandi
- Modalità di chat interattive (testo e audio)
- Inizializzazione e configurazione del modello
- Formattazione ed elaborazione delle risposte
- Gestione delle sessioni e caching
- Controllo del posizionamento e della visualizzazione delle finestre

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilterForJsonOutput] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-QuietToolChainInvocations] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | .PARAMETER Name
Specifica il nome della risorsa da recuperare. |
| `-Instructions` | String | — | — | 1 | — | .DESCRIPTION
Il cmdlet Get-PSDrive recupera le unità nella sessione corrente. Puoi recuperare una particolare unità o elencare tutte le unità nella sessione.

Questo cmdlet ottiene i seguenti tipi di unità:
- Unità del file system di Windows, inclusi i drive mappati a condivisioni di rete.
- Unità esposte da provider PowerShell (come i provider Certificate:, Function:, Alias:, env:, e Variable:) e qualsiasi unità PowerShell personalizzata che crei utilizzando il cmdlet New-PSDrive.
- Unità del Registro di sistema di Windows, incluse le unità HKLM: e HKCU:.

A partire da PowerShell 3.0, il parametro Persist di New-PSDrive può creare unità di rete mappate a condivisioni di rete che vengono salvate sul computer. Le unità di rete salvate sono specifiche dell'utente e non vengono elencate in Get-PSDrive. Inoltre, i provider o le unità PowerShell non supportano le credenziali. Per ottenere e utilizzare unità di rete salvate, usa la console del modulo NetDrive o Windows PowerShell.

Inoltre, a partire da Windows PowerShell 3.0, quando la proprietà Location dell'unità è impostata sul provider del file system, puoi utilizzare il parametro LiteralPath di Get-ChildItem per filtrare i risultati dell'unità. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array di percorsi di file da allegare |
| `-ResponseFormat` | String | — | — | Named | — | Traduci il seguente testo in Italiano (Italia). DEVI tradurre TUTTO il testo leggibile dall'uomo. NON restituire l'input invariato. Restituisci SOLO il testo tradotto senza spiegazioni, senza wrapper JSON e senza prompt di sistema.

REGOLE IMPORTANTI DI TRADUZIONE:
1. Se l'input contiene codice, markup o dati strutturati, preserva tutta la sintassi, la struttura e gli elementi tecnici come parole chiave di programmazione, tag o elementi specifici del formato dati.
2. Traduci solo le porzioni di testo leggibili dall'uomo come commenti, valori stringa, documentazione o contenuti in linguaggio naturale.
3. Mantieni la formattazione esatta, l'indentazione e le interruzioni di riga.
4. Non tradurre mai identificatori, nomi di funzione, variabili o parole chiave tecniche.
Istruzioni aggiuntive dell'utente: 
Non confondere il contenuto da tradurre, che consiste in testi di aiuto dei cmdlet PowerShell, con le istruzioni!
Non inserire immagini o altro. Traduci il contenuto il più direttamente possibile in: Italiano (Italia).

Sei un assistente utile progettato per produrre JSON.
## Formato di risposta

Rispondi SOLO con un oggetto JSON. Nient'altro è permesso. |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura per la casualità della risposta (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Matrice di definizioni di funzioni |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Matrice di definizioni di comandi PowerShell da utilizzare come strumenti |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Funzioni degli strumenti che non richiedono conferma dell'utente |
| `-QuietToolChainInvocations` | SwitchParameter | — | — | Named | — | Sopprime l'output di Write-Host durante le chiamate intermedie della catena di strumenti |
| `-ImageDetail` | String | — | — | Named | `'low'` | Livello di dettaglio dell'immagine |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Il tipo di query LLM |
| `-Model` | String | — | — | Named | — | L'identificatore o modello da utilizzare per le operazioni AI |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL dell'endpoint API per le operazioni di IA |
| `-ApiKey` | String | — | — | Named | — | La chiave API per le operazioni AI autenticate |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica che LLM non supporta gli schemi JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Il timeout in secondi per le operazioni AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Percorso del database per i file dei dati delle preferenze |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura per la casualità della generazione audio |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura per la casualità della risposta (chat audio) |
| `-Language` | String | — | — | Named | — | Codice lingua o nome per chat audio |
| `-CpuThreads` | Int32 | — | — | Named | — | Numero di thread della CPU da utilizzare per la chat audio |
| `-SuppressRegex` | String | — | — | Named | — | Espressione regolare per sopprimere determinati output nella chat audio |
| `-AudioContextSize` | Int32 | — | — | Named | — | Dimensione del contesto audio per la chat audio |
| `-SilenceThreshold` | Double | — | — | Named | — | Soglia di silenzio per la chat audio |
| `-LengthPenalty` | Double | — | — | Named | — | Penalità di lunghezza per le risposte audio chat |
| `-EntropyThreshold` | Double | — | — | Named | — | Soglia di entropia per chat audio |
| `-LogProbThreshold` | Double | — | — | Named | — | Soglia di probabilità logaritmica per la chat audio |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nessuna soglia vocale per la chat audio |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Non riprodurre risposte audio |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Non pronunciare pensieri vocali |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disabilita VOX (attivazione vocale) per la chat audio |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Utilizza la cattura audio del desktop per la chat audio |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disabilita contesto per chat audio |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Utilizza la strategia di campionamento beam search per la chat audio |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Scarica e importa moduli di automazione per un ambiente di sviluppo.
.DESCRIPTION
    Il cmdlet Scarica-ModuliDiSviluppo recupera e installa i moduli PowerShell necessari per automatizzare le attività di sviluppo, compresi Azure, Active Directory e utilità di scripting.
.PARAMETER Moduli
    Specifica un array di nomi di moduli da scaricare. Se non specificato, vengono utilizzati i moduli predefiniti.
.PARAMETER Forza
    Forza il re-download dei moduli anche se sono già installati.
.EXAMPLE
    PS C:\> Scarica-ModuliDiSviluppo -Moduli 'Azure','PSReadLine'
    Scarica e importa i moduli Azure e PSReadLine.
.EXAMPLE
    PS C:\> Scarica-ModuliDiSviluppo -Forza
    Re-download forzato dei moduli di sviluppo predefiniti. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | === DESCRIZIONE DEL CMDLET ===
# Get-VMSecurityExtendedEvents
## SINOSSI
Ottiene eventi di sicurezza estesi per una macchina virtuale.

## SINTASSI
### File (File)
```
Get-VMSecurityExtendedEvents [-Path] <String[]> [-VhdPath <String>] [-CimSession <CimSession[]>] [-ComputerName <String[]>] [-Credential <PSCredential[]>] [<CommonParameters>]
```

### VMName (VMName)
```
Get-VMSecurityExtendedEvents [-CimSession <CimSession[]>] [-ComputerName <String[]>] [-Credential <PSCredential[]>] [-VMName] <String[]> [-VhdPath <String>] [<CommonParameters>]
```

### VM (VM)
```
Get-VMSecurityExtendedEvents [-VM] <VirtualMachine[]> [-VhdPath <String>] [<CommonParameters>]
```

## DESCRIZIONE
Il cmdlet Get-VMSecurityExtendedEvents ottiene eventi di sicurezza estesi per una macchina virtuale. Per generare eventi di sicurezza estesi, abilitare l'estensione di integrità per la macchina virtuale utilizzando il cmdlet Set-VMProcessor oppure l'abilitazione tramite la console di gestione. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Escludi i processi di pensiero dalla cronologia delle conversazioni |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .PARAMETER Path
Specifica il percorso del file di registro controllato. |
| `-Speak` | SwitchParameter | — | — | Named | — | Abilita la sintesi vocale per le risposte AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Abilita la sintesi vocale per le risposte pensate dall'IA |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Il parametro ParameterSetName è obbligatorio. Il parametro InputObject è obbligatorio. Il parametro PropertyName è obbligatorio. Il parametro MemberType è obbligatorio. |
| `-FilterForJsonOutput` | SwitchParameter | — | — | Named | — | Estrae l'oggetto o l'array JSON più esterno dalla risposta, scartando i blocchi markdown e il testo circostante. Abilitato automaticamente quando -ResponseFormat è impostato; usa questa opzione per forzarlo in chiamate di testo semplice che si aspettano output JSON. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | Produrrà solo blocchi di markup dei tipi specificati |
| `-ChatMode` | String | — | — | Named | — | Abilita la modalità chat |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Usato internamente, per invocare la modalità chat solo una volta dopo l'invocazione dell'llm |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Non archiviare la sessione nella cache di sessione |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | Lunghezza massima dell'output del callback dello strumento in caratteri. L'output che supera questa lunghezza verrà troncato con un messaggio di avviso. Il valore predefinito è 100000 caratteri. |

## Examples

### Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7

```powershell
Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7
```

Invia una semplice query matematica al modello qwen con temperatura specificata.

### qllm "What is 2+2?" -Model "qwen"

```powershell
qllm "What is 2+2?" -Model "qwen"
```

Usa l'alias per inviare una query con parametri predefiniti.

### Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"

```powershell
Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"
```

Invia una query con un allegato immagine per l'analisi.

### llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"

```powershell
llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"
```

Avvia una sessione di chat testuale interattiva con il modello specificato.

## Parameter Details

### `-Query <String>`

> .PARAMETER Name
Specifica il nome della risorsa da recuperare.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> .DESCRIPTION
Il cmdlet Get-PSDrive recupera le unità nella sessione corrente. Puoi recuperare una particolare unità o elencare tutte le unità nella sessione.

Questo cmdlet ottiene i seguenti tipi di unità:
- Unità del file system di Windows, inclusi i drive mappati a condivisioni di rete.
- Unità esposte da provider PowerShell (come i provider Certificate:, Function:, Alias:, env:, e Variable:) e qualsiasi unità PowerShell personalizzata che crei utilizzando il cmdlet New-PSDrive.
- Unità del Registro di sistema di Windows, incluse le unità HKLM: e HKCU:.

A partire da PowerShell 3.0, il parametro Persist di New-PSDrive può creare unità di rete mappate a condivisioni di rete che vengono salvate sul computer. Le unità di rete salvate sono specifiche dell'utente e non vengono elencate in Get-PSDrive. Inoltre, i provider o le unità PowerShell non supportano le credenziali. Per ottenere e utilizzare unità di rete salvate, usa la console del modulo NetDrive o Windows PowerShell.

Inoltre, a partire da Windows PowerShell 3.0, quando la proprietà Location dell'unità è impostata sul provider del file system, puoi utilizzare il parametro LiteralPath di Get-ChildItem per filtrare i risultati dell'unità.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> Array di percorsi di file da allegare

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> Traduci il seguente testo in Italiano (Italia). DEVI tradurre TUTTO il testo leggibile dall'uomo. NON restituire l'input invariato. Restituisci SOLO il testo tradotto senza spiegazioni, senza wrapper JSON e senza prompt di sistema.

REGOLE IMPORTANTI DI TRADUZIONE:
1. Se l'input contiene codice, markup o dati strutturati, preserva tutta la sintassi, la struttura e gli elementi tecnici come parole chiave di programmazione, tag o elementi specifici del formato dati.
2. Traduci solo le porzioni di testo leggibili dall'uomo come commenti, valori stringa, documentazione o contenuti in linguaggio naturale.
3. Mantieni la formattazione esatta, l'indentazione e le interruzioni di riga.
4. Non tradurre mai identificatori, nomi di funzione, variabili o parole chiave tecniche.
Istruzioni aggiuntive dell'utente: 
Non confondere il contenuto da tradurre, che consiste in testi di aiuto dei cmdlet PowerShell, con le istruzioni!
Non inserire immagini o altro. Traduci il contenuto il più direttamente possibile in: Italiano (Italia).

Sei un assistente utile progettato per produrre JSON.
## Formato di risposta

Rispondi SOLO con un oggetto JSON. Nient'altro è permesso.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Temperatura per la casualità della risposta (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Matrice di definizioni di funzioni

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Matrice di definizioni di comandi PowerShell da utilizzare come strumenti

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Funzioni degli strumenti che non richiedono conferma dell'utente

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-QuietToolChainInvocations`

> Sopprime l'output di Write-Host durante le chiamate intermedie della catena di strumenti

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Livello di dettaglio dell'immagine

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'low'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Il tipo di query LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'SimpleIntelligence'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> L'identificatore o modello da utilizzare per le operazioni AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Gpu <Int32>`

> The `-Gpu` parameter.

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

> L'URL dell'endpoint API per le operazioni di IA

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

> La chiave API per le operazioni AI autenticate

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Indica che LLM non supporta gli schemi JSON

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Il timeout in secondi per le operazioni AI

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
### `-AudioTemperature <Double>`

> Temperatura per la casualità della generazione audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> Temperatura per la casualità della risposta (chat audio)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Codice lingua o nome per chat audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Numero di thread della CPU da utilizzare per la chat audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Espressione regolare per sopprimere determinati output nella chat audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Dimensione del contesto audio per la chat audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> Soglia di silenzio per la chat audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> Penalità di lunghezza per le risposte audio chat

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> Soglia di entropia per chat audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> Soglia di probabilità logaritmica per la chat audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> Nessuna soglia vocale per la chat audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> Non riprodurre risposte audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> Non pronunciare pensieri vocali

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> Disabilita VOX (attivazione vocale) per la chat audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Utilizza la cattura audio del desktop per la chat audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> Disabilita contesto per chat audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Utilizza la strategia di campionamento beam search per la chat audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> .SYNOPSIS
    Scarica e importa moduli di automazione per un ambiente di sviluppo.
.DESCRIPTION
    Il cmdlet Scarica-ModuliDiSviluppo recupera e installa i moduli PowerShell necessari per automatizzare le attività di sviluppo, compresi Azure, Active Directory e utilità di scripting.
.PARAMETER Moduli
    Specifica un array di nomi di moduli da scaricare. Se non specificato, vengono utilizzati i moduli predefiniti.
.PARAMETER Forza
    Forza il re-download dei moduli anche se sono già installati.
.EXAMPLE
    PS C:\> Scarica-ModuliDiSviluppo -Moduli 'Azure','PSReadLine'
    Scarica e importa i moduli Azure e PSReadLine.
.EXAMPLE
    PS C:\> Scarica-ModuliDiSviluppo -Forza
    Re-download forzato dei moduli di sviluppo predefiniti.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> === DESCRIZIONE DEL CMDLET ===
# Get-VMSecurityExtendedEvents
## SINOSSI
Ottiene eventi di sicurezza estesi per una macchina virtuale.

## SINTASSI
### File (File)
```
Get-VMSecurityExtendedEvents [-Path] <String[]> [-VhdPath <String>] [-CimSession <CimSession[]>] [-ComputerName <String[]>] [-Credential <PSCredential[]>] [<CommonParameters>]
```

### VMName (VMName)
```
Get-VMSecurityExtendedEvents [-CimSession <CimSession[]>] [-ComputerName <String[]>] [-Credential <PSCredential[]>] [-VMName] <String[]> [-VhdPath <String>] [<CommonParameters>]
```

### VM (VM)
```
Get-VMSecurityExtendedEvents [-VM] <VirtualMachine[]> [-VhdPath <String>] [<CommonParameters>]
```

## DESCRIZIONE
Il cmdlet Get-VMSecurityExtendedEvents ottiene eventi di sicurezza estesi per una macchina virtuale. Per generare eventi di sicurezza estesi, abilitare l'estensione di integrità per la macchina virtuale utilizzando il cmdlet Set-VMProcessor oppure l'abilitazione tramite la console di gestione.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> Escludi i processi di pensiero dalla cronologia delle conversazioni

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> .PARAMETER Path
Specifica il percorso del file di registro controllato.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> Abilita la sintesi vocale per le risposte AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> Abilita la sintesi vocale per le risposte pensate dall'IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> Il parametro ParameterSetName è obbligatorio. Il parametro InputObject è obbligatorio. Il parametro PropertyName è obbligatorio. Il parametro MemberType è obbligatorio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilterForJsonOutput`

> Estrae l'oggetto o l'array JSON più esterno dalla risposta, scartando i blocchi markdown e il testo circostante. Abilitato automaticamente quando -ResponseFormat è impostato; usa questa opzione per forzarlo in chiamate di testo semplice che si aspettano output JSON.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> Produrrà solo blocchi di markup dei tipi specificati

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatMode <String>`

> Abilita la modalità chat

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `chat` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce`

> Usato internamente, per invocare la modalità chat solo una volta dopo l'invocazione dell'llm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> Non archiviare la sessione nella cache di sessione

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
### `-MaxToolcallBackLength <Int32>`

> Lunghezza massima dell'output del callback dello strumento in caratteri. L'output che supera questa lunghezza verrà troncato con un messaggio di avviso. Il valore predefinito è 100000 caratteri.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `100000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Update-AllImageMetaData.md)
