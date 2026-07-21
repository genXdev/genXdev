# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat`

## Synopsis

> Avvia una sessione di chat testuale interattiva con funzionalità di IA.

## Description

Avvia una sessione di chat interattiva con funzionalità AI, consentendo agli utenti di aggiungere o rimuovere funzioni di PowerShell durante la conversazione ed eseguire comandi PowerShell. Questa funzione fornisce un'interfaccia completa per conversazioni basate su AI con ampia integrazione di strumenti e opzioni di personalizzazione.

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoSupportForJsonSchema <String>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-ShowToolChainInvocations] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | .PARAMETER Name
Specifica il nome della risorsa da recuperare. *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | .DESCRIPTION
Il cmdlet Get-PSDrive recupera le unità nella sessione corrente. Puoi recuperare una particolare unità o elencare tutte le unità nella sessione.

Questo cmdlet ottiene i seguenti tipi di unità:
- Unità del file system di Windows, inclusi i drive mappati a condivisioni di rete.
- Unità esposte da provider PowerShell (come i provider Certificate:, Function:, Alias:, env:, e Variable:) e qualsiasi unità PowerShell personalizzata che crei utilizzando il cmdlet New-PSDrive.
- Unità del Registro di sistema di Windows, incluse le unità HKLM: e HKCU:.

A partire da PowerShell 3.0, il parametro Persist di New-PSDrive può creare unità di rete mappate a condivisioni di rete che vengono salvate sul computer. Le unità di rete salvate sono specifiche dell'utente e non vengono elencate in Get-PSDrive. Inoltre, i provider o le unità PowerShell non supportano le credenziali. Per ottenere e utilizzare unità di rete salvate, usa la console del modulo NetDrive o Windows PowerShell.

Inoltre, a partire da Windows PowerShell 3.0, quando la proprietà Location dell'unità è impostata sul provider del file system, puoi utilizzare il parametro LiteralPath di Get-ChildItem per filtrare i risultati dell'unità. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array di percorsi di file da allegare |
| `-Temperature` | Double | — | — | 3 | `-1` | Temperatura per la casualità della risposta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Livello di dettaglio dell'immagine |
| `-ResponseFormat` | String | — | — | Named | `$null` | Traduci il seguente testo in Italiano (Italia). DEVI tradurre TUTTO il testo leggibile dall'uomo. NON restituire l'input invariato. Restituisci SOLO il testo tradotto senza spiegazioni, senza wrapper JSON e senza prompt di sistema.

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
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Il tipo di query LLM |
| `-Model` | String | — | — | Named | — | L'identificatore o modello da utilizzare per le operazioni AI |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL dell'endpoint API per le operazioni di IA |
| `-ApiKey` | String | — | — | Named | — | La chiave API per le operazioni AI autenticate |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica che LLM non supporta gli schemi JSON |
| `-ShowToolChainInvocations` | SwitchParameter | — | — | Named | — | Mostra le invocazioni della catena di strumenti nella console |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Il timeout in secondi per le operazioni AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Percorso del database per i file dei dati delle preferenze |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Matrice di definizioni di comandi PowerShell da utilizzare come strumenti |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | Produrrà solo blocchi di markup dei tipi specificati |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | === DESCRIZIONE DEL CMDLET ===
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
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .PARAMETER Path
Specifica il percorso del file di registro controllato. |
| `-Speak` | SwitchParameter | — | — | Named | — | Abilita la sintesi vocale per le risposte AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Abilita la sintesi vocale per le risposte pensate dall'IA |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Il parametro ParameterSetName è obbligatorio. Il parametro InputObject è obbligatorio. Il parametro PropertyName è obbligatorio. Il parametro MemberType è obbligatorio. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Usato internamente, per invocare la modalità chat solo una volta dopo l'invocazione dell'llm *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Non archiviare la sessione nella cache di sessione |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Nomi delle funzioni dello strumento che non dovrebbero richiedere conferma |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Lunghezza massima per le risposte di callback dello strumento |
| `-AudioTemperature` | Object | — | — | Named | — | Temperatura per la generazione audio |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperatura per la generazione della risposta |
| `-Language` | Object | — | — | Named | — | Lingua per il modello o l'output |
| `-CpuThreads` | Object | — | — | Named | — | Numero di thread della CPU da utilizzare |
| `-SuppressRegex` | Object | — | — | Named | — | Espressione regolare per sopprimere l'output |
| `-AudioContextSize` | Object | — | — | Named | — | Dimensioni del contesto audio per l'elaborazione |
| `-SilenceThreshold` | Object | — | — | Named | — | Soglia di silenzio per l'elaborazione audio |
| `-LengthPenalty` | Object | — | — | Named | — | Penalità di lunghezza per la generazione di sequenze |
| `-EntropyThreshold` | Object | — | — | Named | — | Soglia di entropia per il filtro dell'output |
| `-LogProbThreshold` | Object | — | — | Named | — | Soglia di probabilità logaritmica per il filtraggio dell'output |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Nessuna soglia di discorso per il rilevamento audio |
| `-DontSpeak` | Object | — | — | Named | — | Disattiva l'uscita vocale |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Disabilita l'output vocale per i pensieri |
| `-NoVOX` | Object | — | — | Named | — | Disattiva VOX (attivazione vocale) |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Utilizza la cattura audio del desktop |
| `-NoContext` | Object | — | — | Named | — | Disabilita l'uso del contesto |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Usa la strategia di campionamento beam search |
| `-OnlyResponses` | Object | — | — | Named | — | Il cmdlet Stop-DiskEstimation arresta la stima attiva della modalità di stima della capacità su un volume DataONTAP. Se non viene specificato alcun parametro, il cmdlet interrompe la stima per tutti i volumi attivi. |

## Examples

### New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `     -Instructions "You are a helpful AI assistant"

```powershell
New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `
    -Instructions "You are a helpful AI assistant"
```

### llmchat "Tell me a joke" -Speak -IncludeThoughts

```powershell
llmchat "Tell me a joke" -Speak -IncludeThoughts
```

## Parameter Details

### `-Query <String>`

> .PARAMETER Name
Specifica il nome della risorsa da recuperare.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

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
### `-Temperature <Double>`

> Temperatura per la casualità della risposta (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `-1` |
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
| **Default value** | `$null` |
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
| **Default value** | `'ToolUse'` |
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
### `-ShowToolChainInvocations`

> Mostra le invocazioni della catena di strumenti nella console

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
### `-MarkupBlocksTypeFilter <String[]>`

> Produrrà solo blocchi di markup dei tipi specificati

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` |
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
### `-NoConfirmationToolFunctionNames <String[]>`

> Nomi delle funzioni dello strumento che non dovrebbero richiedere conferma

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Lunghezza massima per le risposte di callback dello strumento

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Object>`

> Temperatura per la generazione audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Object>`

> Temperatura per la generazione della risposta

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <Object>`

> Lingua per il modello o l'output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Object>`

> Numero di thread della CPU da utilizzare

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <Object>`

> Espressione regolare per sopprimere l'output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Object>`

> Dimensioni del contesto audio per l'elaborazione

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Object>`

> Soglia di silenzio per l'elaborazione audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Object>`

> Penalità di lunghezza per la generazione di sequenze

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Object>`

> Soglia di entropia per il filtro dell'output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Object>`

> Soglia di probabilità logaritmica per il filtraggio dell'output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Object>`

> Nessuna soglia di discorso per il rilevamento audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak <Object>`

> Disattiva l'uscita vocale

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts <Object>`

> Disabilita l'output vocale per i pensieri

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX <Object>`

> Disattiva VOX (attivazione vocale)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture <Object>`

> Utilizza la cattura audio del desktop

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext <Object>`

> Disabilita l'uso del contesto

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy <Object>`

> Usa la strategia di campionamento beam search

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses <Object>`

> Il cmdlet Stop-DiskEstimation arresta la stima attiva della modalità di stima della capacità su un volume DataONTAP. Se non viene specificato alcun parametro, il cmdlet interrompe la stima per tutti i volumi attivi.

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-LLMAudioChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Test-DeepLinkImageFile.md)
