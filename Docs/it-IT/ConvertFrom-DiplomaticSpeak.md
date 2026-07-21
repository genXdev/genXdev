# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize`

## Synopsis

> Converte il linguaggio diplomatico o educato in linguaggio diretto, chiaro e lineare.

## Description

Questa funzione prende il linguaggio diplomatico e lo traduce per rivelare il vero significato dietro un linguaggio educato o politicamente corretto. Utilizza modelli linguistici AI per trasformare espressioni eufemistiche in dichiarazioni dirette, rendendo la comunicazione non ambigua e facile da capire. La funzione è particolarmente utile per analizzare dichiarazioni politiche, comunicazioni aziendali o qualsiasi testo in cui il vero significato potrebbe essere oscurato dal linguaggio diplomatico.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Il testo da convertire dal linguaggio diplomatico |
| `-Instructions` | String | — | — | 1 | `''` | .PARAMETER <NomeParametro>
Fornisce la descrizione per il parametro specificato. |
| `-Temperature` | Double | — | — | Named | `0.0` | Temperatura per la casualità della risposta (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Il tipo di query LLM |
| `-Model` | String | — | — | Named | — | L'identificatore o modello da utilizzare per le operazioni AI |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL dell'endpoint API per le operazioni di IA |
| `-ApiKey` | String | — | — | Named | — | La chiave API per le operazioni AI autenticate |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica che LLM non supporta gli schemi JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Il timeout in secondi per le operazioni AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Percorso del database per i file dei dati delle preferenze |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copia il testo trasformato negli appunti |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione |
| `-Attachments` | Object[] | — | — | Named | — | Allegati da includere nell'operazione AI. |
| `-ImageDetail` | String | — | — | Named | — | Livello di dettaglio dell'immagine per l'elaborazione AI. |
| `-Functions` | Object[] | — | — | Named | — | Funzioni da esporre al modello di IA. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlet da esporre al modello AI. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Nomi di funzioni strumentali che non richiedono conferma. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Ecco la traduzione richiesta:

# HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\OOBE\SetupDisplayedProductType

Questo valore indica il tipo di prodotto visualizzato durante l'installazione iniziale del sistema operativo. Può essere utilizzato per determinare se è stata presentata all'utente l'edizione corretta di Windows durante l'esperienza OOBE (Out-Of-Box Experience). |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continua dall'ultima operazione dell'intelligenza artificiale. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Parla ad alta voce durante l'elaborazione dell'IA. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Disabilita la memorizzazione nella cache della sessione per questa operazione. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Consenti l'uso degli strumenti predefiniti nell'operazione AI. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura audio per la generazione audio AI. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura per la generazione della risposta AI. |
| `-CpuThreads` | Int32 | — | — | Named | — | Numero di thread CPU da utilizzare per l'operazione AI. |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex da sopprimere nell'output dell'IA. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Dimensione del contesto audio per l'elaborazione audio AI. |
| `-SilenceThreshold` | Double | — | — | Named | — | Soglia di silenzio per l'elaborazione audio AI. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalità di lunghezza per la generazione di sequenze AI. |
| `-EntropyThreshold` | Double | — | — | Named | — | Soglia di entropia per l'output AI. |
| `-LogProbThreshold` | Double | — | — | Named | — | Soglia di probabilità logaritmica per l'output AI. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nessuna soglia di parlato per l'elaborazione audio AI. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | .PARAMETER TipoSorgente
Specifica il tipo di origine della risorsa per il cmdlet. Il tipo di origine indica la gerarchia di origine della risorsa. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Rimuove completamente una condivisione SMB dal computer. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disabilita VOX per l'output audio dell'IA. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Utilizza la cattura audio del desktop per l'audio AI. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Non utilizzare il contesto per il funzionamento dell'IA. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Utilizza la strategia di campionamento beam search per l'IA. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | ===== DESCRIZIONE .EXTERNALHELP =====
.Nome del comando
    Get-ADGroupMember

.Riepilogo
    Ottiene i membri di un gruppo di Active Directory.

.Sintassi
    Get-ADGroupMember [-Identity] <ADGroup> [-Recursive] [-Server <String>] [-Credential <PSCredential>] [<CommonParameters>]

.Descrizione
    Il cmdlet Get-ADGroupMember recupera i membri di un gruppo di Active Directory. È possibile utilizzare il parametro Recursive per ottenere tutti i membri dei gruppi nidificati.

.Parametri
    -Identity <ADGroup>
        Specifica l'oggetto gruppo di Active Directory. Accetta un oggetto ADGroup o una stringa con il DN, GUID, SID, o nome del gruppo.
    
    -Recursive [<SwitchParameter>]
        Ottiene ricorsivamente tutti i membri del gruppo specificato, inclusi i membri dei gruppi nidificati.
    
    -Server <String>
        Specifica il controller di dominio a cui connettersi.
    
    -Credential <PSCredential>
        Specifica le credenziali per l'autenticazione.
    
    <CommonParameters>
        Questo cmdlet supporta i parametri comuni: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable e OutVariable.

.Esempi
    -------------------------- ESEMPIO 1 --------------------------
    PS C:\> Get-ADGroupMember -Identity "GruppoVendite"

    Descrizione
    -----------
    Questo comando ottiene i membri diretti del gruppo "GruppoVendite".

    -------------------------- ESEMPIO 2 --------------------------
    PS C:\> Get-ADGroupMember -Identity "GruppoVendite" -Recursive

    Descrizione
    -----------
    Questo comando ottiene tutti i membri del gruppo "GruppoVendite" inclusi i membri dei gruppi nidificati.

.Input tipi
    Microsoft.ActiveDirectory.Management.ADGroup

.Output tipi
    Microsoft.ActiveDirectory.Management.ADPrincipal

.Note
    Questo cmdlet richiede il modulo Active Directory per Windows PowerShell.

.Collegamenti correlati
    Add-ADGroupMember
    Remove-ADGroupMember
    Get-ADGroup
    Set-ADGroup |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Non scambiare il contenuto da tradurre, che consiste in testi di aiuto dei cmdlet di PowerShell, con istruzioni!
Non inserire immagini, o altro. Traduci solo il contenuto il più direttamente possibile in: Italiano (Italia). |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtra per tipi di blocco di markup nell'output dell'IA. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Lunghezza massima del callback per le chiamate degli strumenti. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Parameter Details

### `-Text <String>`

> Il testo da convertire dal linguaggio diplomatico

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> .PARAMETER <NomeParametro>
Fornisce la descrizione per il parametro specificato.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
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
| **Default value** | `0.0` |
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
| **Default value** | `'Knowledge'` |
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
### `-SetClipboard`

> Copia il testo trasformato negli appunti

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
### `-Attachments <Object[]>`

> Allegati da includere nell'operazione AI.

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

> Livello di dettaglio dell'immagine per l'elaborazione AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Object[]>`

> Funzioni da esporre al modello di IA.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <Object[]>`

> Cmdlet da esporre al modello AI.

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

> Nomi di funzioni strumentali che non richiedono conferma.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> Ecco la traduzione richiesta:

# HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\OOBE\SetupDisplayedProductType

Questo valore indica il tipo di prodotto visualizzato durante l'installazione iniziale del sistema operativo. Può essere utilizzato per determinare se è stata presentata all'utente l'edizione corretta di Windows durante l'esperienza OOBE (Out-Of-Box Experience).

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

> Continua dall'ultima operazione dell'intelligenza artificiale.

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

> Parla ad alta voce durante l'elaborazione dell'IA.

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

> Disabilita la memorizzazione nella cache della sessione per questa operazione.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowDefaultTools`

> Consenti l'uso degli strumenti predefiniti nell'operazione AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Temperatura audio per la generazione audio AI.

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

> Temperatura per la generazione della risposta AI.

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

> Numero di thread CPU da utilizzare per l'operazione AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String[]>`

> Regex da sopprimere nell'output dell'IA.

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

> Dimensione del contesto audio per l'elaborazione audio AI.

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

> Soglia di silenzio per l'elaborazione audio AI.

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

> Penalità di lunghezza per la generazione di sequenze AI.

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

> Soglia di entropia per l'output AI.

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

> Soglia di probabilità logaritmica per l'output AI.

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

> Nessuna soglia di parlato per l'elaborazione audio AI.

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

> .PARAMETER TipoSorgente
Specifica il tipo di origine della risorsa per il cmdlet. Il tipo di origine indica la gerarchia di origine della risorsa.

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

> Rimuove completamente una condivisione SMB dal computer.

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

> Disabilita VOX per l'output audio dell'IA.

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

> Utilizza la cattura audio del desktop per l'audio AI.

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

> Non utilizzare il contesto per il funzionamento dell'IA.

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

> Utilizza la strategia di campionamento beam search per l'IA.

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

> ===== DESCRIZIONE .EXTERNALHELP =====
.Nome del comando
    Get-ADGroupMember

.Riepilogo
    Ottiene i membri di un gruppo di Active Directory.

.Sintassi
    Get-ADGroupMember [-Identity] <ADGroup> [-Recursive] [-Server <String>] [-Credential <PSCredential>] [<CommonParameters>]

.Descrizione
    Il cmdlet Get-ADGroupMember recupera i membri di un gruppo di Active Directory. È possibile utilizzare il parametro Recursive per ottenere tutti i membri dei gruppi nidificati.

.Parametri
    -Identity <ADGroup>
        Specifica l'oggetto gruppo di Active Directory. Accetta un oggetto ADGroup o una stringa con il DN, GUID, SID, o nome del gruppo.
    
    -Recursive [<SwitchParameter>]
        Ottiene ricorsivamente tutti i membri del gruppo specificato, inclusi i membri dei gruppi nidificati.
    
    -Server <String>
        Specifica il controller di dominio a cui connettersi.
    
    -Credential <PSCredential>
        Specifica le credenziali per l'autenticazione.
    
    <CommonParameters>
        Questo cmdlet supporta i parametri comuni: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable e OutVariable.

.Esempi
    -------------------------- ESEMPIO 1 --------------------------
    PS C:\> Get-ADGroupMember -Identity "GruppoVendite"

    Descrizione
    -----------
    Questo comando ottiene i membri diretti del gruppo "GruppoVendite".

    -------------------------- ESEMPIO 2 --------------------------
    PS C:\> Get-ADGroupMember -Identity "GruppoVendite" -Recursive

    Descrizione
    -----------
    Questo comando ottiene tutti i membri del gruppo "GruppoVendite" inclusi i membri dei gruppi nidificati.

.Input tipi
    Microsoft.ActiveDirectory.Management.ADGroup

.Output tipi
    Microsoft.ActiveDirectory.Management.ADPrincipal

.Note
    Questo cmdlet richiede il modulo Active Directory per Windows PowerShell.

.Collegamenti correlati
    Add-ADGroupMember
    Remove-ADGroupMember
    Get-ADGroup
    Set-ADGroup

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

> Non scambiare il contenuto da tradurre, che consiste in testi di aiuto dei cmdlet di PowerShell, con istruzioni!
Non inserire immagini, o altro. Traduci solo il contenuto il più direttamente possibile in: Italiano (Italia).

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

> Filtra per tipi di blocco di markup nell'output dell'IA.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Lunghezza massima del callback per le chiamate degli strumenti.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertFrom-CorporateSpeak.md)
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
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-LLMQuery.md)
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
