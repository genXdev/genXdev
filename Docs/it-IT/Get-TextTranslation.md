# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate`

## Synopsis

> Traduce il testo in un'altra lingua utilizzando l'IA.

## Description

Questa funzione traduce il testo in input in una lingua target specificata utilizzando modelli di IA. Può accettare input direttamente tramite parametri, dalla pipeline o dagli appunti di sistema. La funzione preserva la formattazione e lo stile durante la traduzione.

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | ===== REQUISITO DI OUTPUT JSON CRITICO =====
Devi rispondere SOLO con JSON valido. Nessun altro testo è consentito.
Non includere spiegazioni, commenti o testo prima o dopo il JSON.
La tua risposta deve essere un JSON parsabile che rispetti ESATTAMENTE questo schema:
{...}

Formato di risposta di esempio: {"response":"la tua risposta effettiva qui"}
===== FINE DEL REQUISITO ===== |
| `-Instructions` | String | — | — | 1 | — | Non confondere il contenuto da tradurre (testi di help dei cmdlet PowerShell) con le istruzioni!
Non inserire immagini o altro. Traduci il contenuto in modo il più diretto possibile in: Italiano (Italia).

Sei un assistente progettato per produrre JSON.
## Formato di risposta
Rispondi SOLO con un oggetto JSON. Nessun altro testo è consentito. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array di percorsi di file da allegare |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura per la casualità della risposta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Livello di dettaglio dell'immagine |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Matrice di definizioni di funzioni |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Matrice di definizioni di comandi PowerShell da utilizzare come strumenti |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Elenco di comandi che non richiedono conferma |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | Il tipo di query LLM |
| `-Model` | String | — | — | Named | — | L'identificatore o modello da utilizzare per le operazioni AI |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL dell'endpoint API per le operazioni di IA |
| `-ApiKey` | String | — | — | Named | — | La chiave API per le operazioni AI autenticate |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica che LLM non supporta gli schemi JSON |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Percorso del database per i file dei dati delle preferenze |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copia il testo migliorato negli appunti |
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
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Non archiviare la sessione nella cache di sessione |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Consentire l'uso degli strumenti AI predefiniti durante l'elaborazione |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura per la casualità della risposta audio (passata all'LLM) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura per la generazione della risposta (passata al LLM) |
| `-Language` | String | — | — | Named | — | it-IT |
| `-CpuThreads` | Int32 | — | — | Named | — | Numero di thread CPU da utilizzare (passato al LLM) |
| `-SuppressRegex` | String | — | — | Named | — | Espressione regolare per sopprimere l'output (passato al LLM) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Dimensione del contesto audio per l'elaborazione (passato all'LLM) |
| `-SilenceThreshold` | Double | — | — | Named | — | Soglia di silenzio per il rilevamento audio (passata al LLM) |
| `-LengthPenalty` | Double | — | — | Named | — | Penalità di lunghezza per la generazione di sequenze (passata al LLM) |
| `-EntropyThreshold` | Double | — | — | Named | — | Soglia di entropia per il filtraggio dell'output (passata all'LLM) |
| `-LogProbThreshold` | Double | — | — | Named | — | Soglia di probabilità logaritmica per il filtraggio dell'output (passata al LLM) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nessuna soglia vocale per il rilevamento audio (passata al LLM) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disabilita l'output vocale (passato al LLM) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disabilita l'output vocale per i pensieri (passati all'LLM) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disabilita VOX (attivazione vocale) (passato all'LLM) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Utilizza la cattura audio del desktop (passato al LLM) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disabilita l'uso del contesto (passato al LLM) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Abilita la strategia di campionamento beam search (passata al LLM) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .NAME
    Get-ChildItem

.SYNOPSIS
    Recupera elementi da una o più posizioni specificate.

.DESCRIPTION
    Il cmdlet Get-ChildItem ottiene gli elementi in una o più posizioni specificate. Se l'elemento è un contenitore, ottiene gli elementi al suo interno, noti come elementi figlio. È possibile utilizzare il parametro -Recurse per ottenere gli elementi in tutti i contenitori figlio.

    Una posizione può essere un file system, come un percorso locale di directory, una directory UNC (\\Server\Share) o un percorso di provider diverso dal file system, come un registro di sistema, un archivio certificati o un database PowerShell (.\) supportato da un provider PowerShell. Inoltre, è possibile utilizzare le variabili di supporto di PowerShell, come $HOME, $PSHOME e $PSScriptRoot, per rappresentare posizioni comuni.

    Get-ChildItem può elencare file e directory in un file system. Per filtrare l'output in base alle proprietà, utilizzare il parametro -Filter. Per eseguire ulteriori operazioni di formattazione, utilizzare i cmdlet ForEach-Object, Where-Object, Sort-Object e Group-Object.

.PARAMETER Path
    Specifica un percorso di una posizione. Get-ChildItem ottiene gli elementi figlio nella posizione specificata. Questo parametro supporta caratteri jolly. Il valore predefinito è la directory corrente (.).

.PARAMETER Filter
    Specifica un filtro per qualificare il parametro Path. Il provider FileSystem è l'unico provider PowerShell installato che supporta l'uso di filtri. È possibile utilizzare il linguaggio dei filtri di FileSystem per filtrare rapidamente i file in base alle proprietà, come la data di modifica o l'estensione. Per ulteriori informazioni, vedere about_Providers e about_Language_Keywords.

.PARAMETER Include
    Specifica, come matrice di stringhe, un elemento o elementi che questo cmdlet include nell'operazione. Il valore di questo parametro qualifica il parametro Path. Immettere un elemento o un modello di percorso, come "*.txt". I caratteri jolly sono consentiti. Il parametro Include è efficace solo quando il comando include il contenuto di un elemento, ad esempio C:\*\*.txt, dove il carattere jolly specifica il contenuto della directory C:.

.PARAMETER Exclude
    Specifica, come matrice di stringhe, un elemento o elementi che questo cmdlet esclude dall'operazione. Il valore di questo parametro qualifica il parametro Path. Immettere un elemento o un modello di percorso, come "*.txt". I caratteri jolly sono consentiti.

.PARAMETER Recurse
    Indica che questo cmdlet ottiene gli elementi nelle posizioni e in tutte le posizioni figlio delle posizioni specificate.

.PARAMETER Depth
    Specifica il numero di livelli da includere nell'operazione di ricorsione. Questo parametro è disponibile solo con il provider FileSystem. Specificare un valore di Depth per limitare la ricorsione a un numero specifico di livelli di sottodirectory. Questo parametro funziona insieme a -Recurse.

.PARAMETER Force
    Indica che questo cmdlet ottiene elementi che non possono essere altrimenti ottenuti dal cmdlet, ad esempio elementi nascosti o di sistema, a seconda del provider. Per impostazione predefinita, Get-ChildItem non ottiene elementi nascosti o di sistema.

.PARAMETER Name
    Recupera solo i nomi degli elementi nella posizione. L'output è una stringa che può essere inviata tramite pipe ad altri comandi.

.PARAMETER Attributes
    Utilizzato con il provider FileSystem per filtrare gli elementi che hanno attributi specifici. Supporta i valori: Archive, Compressed, Device, Directory, Encrypted, Hidden, Normal, NotContentIndexed, Offline, ReadOnly, ReparsePoint, SparseFile, System, Temporary. Per escludere un attributo, utilizzare il prefisso '!' o il trattino '-'. Per specificare più attributi, separarli con virgole.

.PARAMETER Directory
    Restituisce solo le directory in una posizione.

.PARAMETER File
    Restituisce solo i file in una posizione.

.PARAMETER Hidden
    Restituisce solo gli elementi nascosti.

.PARAMETER System
    Restituisce solo gli elementi di sistema.

.PARAMETER ReadOnly
    Restituisce solo gli elementi di sola lettura.

.OUTPUTS
    System.Object
    Get-ChildItem restituisce oggetti per ogni elemento recuperato. Il tipo di oggetto dipende dal provider.

.EXAMPLE
    PS> Get-ChildItem
    Recupera tutti gli elementi nella directory corrente.

.EXAMPLE
    PS> Get-ChildItem -Path C:\Windows -Recurse
    Recupera tutti gli elementi nella directory C:\Windows e in tutte le sue sottodirectory.

.EXAMPLE
    PS> Get-ChildItem -Path C:\*.txt -Include *.txt,*.log
    Recupera tutti i file .txt e .log nella directory C:.

.LINK
    about_Providers
    about_Paths
    ForEach-Object
    Where-Object |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .DESCRIPTION
Il cmdlet ConvertFrom-SecureString converte un oggetto SecureString in una stringa standard crittografata. Può anche convertire un SecureString in un SecureString esportabile che può essere archiviato in un file per un uso futuro da parte di Windows, quando si utilizza l'opzione -SecureKey. Il cmdlet utilizza lo standard Advanced Encryption Standard (AES) per la crittografia.

La stringa crittografata può essere riconvertita in un SecureString utilizzando il cmdlet ConvertTo-SecureString.

Per impostazione predefinita, ConvertFrom-SecureString legge un SecureString dalla pipeline o dalla riga di comando e lo converte in una stringa standard crittografata. Utilizza la chiave di crittografia predefinita di Windows.

Se si specificano i parametri -SecureKey o -Key, il cmdlet utilizza la tecnica AES per produrre un SecureString esportabile. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtra per tipi di blocco di markup (passati al LLM) |
| `-NoCache` | SwitchParameter | — | — | Named | — | Trasforma in grassetto il testo specificato in una stringa. |
| `-ClearCache` | SwitchParameter | — | — | Named | — | Cancellare l'intera cache di traduzione per tutte le lingue |

## Examples

### Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"

```powershell
Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"
```

### "Bonjour" | translate -Language "English"

```powershell
"Bonjour" | translate -Language "English"
```

## Parameter Details

### `-Text <String>`

> ===== REQUISITO DI OUTPUT JSON CRITICO =====
Devi rispondere SOLO con JSON valido. Nessun altro testo è consentito.
Non includere spiegazioni, commenti o testo prima o dopo il JSON.
La tua risposta deve essere un JSON parsabile che rispetti ESATTAMENTE questo schema:
{...}

Formato di risposta di esempio: {"response":"la tua risposta effettiva qui"}
===== FINE DEL REQUISITO =====

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

> Non confondere il contenuto da tradurre (testi di help dei cmdlet PowerShell) con le istruzioni!
Non inserire immagini o altro. Traduci il contenuto in modo il più diretto possibile in: Italiano (Italia).

Sei un assistente progettato per produrre JSON.
## Formato di risposta
Rispondi SOLO con un oggetto JSON. Nessun altro testo è consentito.

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
| **Position?** | Named |
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
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Elenco di comandi che non richiedono conferma

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMType <String>`

> Il tipo di query LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'TextTranslation'` |
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

> Copia il testo migliorato negli appunti

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
### `-AllowDefaultTools`

> Consentire l'uso degli strumenti AI predefiniti durante l'elaborazione

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
### `-AudioTemperature <Double>`

> Temperatura per la casualità della risposta audio (passata all'LLM)

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

> Temperatura per la generazione della risposta (passata al LLM)

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

> it-IT

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

> Numero di thread CPU da utilizzare (passato al LLM)

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

> Espressione regolare per sopprimere l'output (passato al LLM)

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

> Dimensione del contesto audio per l'elaborazione (passato all'LLM)

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

> Soglia di silenzio per il rilevamento audio (passata al LLM)

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

> Penalità di lunghezza per la generazione di sequenze (passata al LLM)

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

> Soglia di entropia per il filtraggio dell'output (passata all'LLM)

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

> Soglia di probabilità logaritmica per il filtraggio dell'output (passata al LLM)

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

> Nessuna soglia vocale per il rilevamento audio (passata al LLM)

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

> Disabilita l'output vocale (passato al LLM)

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

> Disabilita l'output vocale per i pensieri (passati all'LLM)

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

> Disabilita VOX (attivazione vocale) (passato all'LLM)

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

> Utilizza la cattura audio del desktop (passato al LLM)

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

> Disabilita l'uso del contesto (passato al LLM)

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

> Abilita la strategia di campionamento beam search (passata al LLM)

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

> .NAME
    Get-ChildItem

.SYNOPSIS
    Recupera elementi da una o più posizioni specificate.

.DESCRIPTION
    Il cmdlet Get-ChildItem ottiene gli elementi in una o più posizioni specificate. Se l'elemento è un contenitore, ottiene gli elementi al suo interno, noti come elementi figlio. È possibile utilizzare il parametro -Recurse per ottenere gli elementi in tutti i contenitori figlio.

    Una posizione può essere un file system, come un percorso locale di directory, una directory UNC (\\Server\Share) o un percorso di provider diverso dal file system, come un registro di sistema, un archivio certificati o un database PowerShell (.\) supportato da un provider PowerShell. Inoltre, è possibile utilizzare le variabili di supporto di PowerShell, come $HOME, $PSHOME e $PSScriptRoot, per rappresentare posizioni comuni.

    Get-ChildItem può elencare file e directory in un file system. Per filtrare l'output in base alle proprietà, utilizzare il parametro -Filter. Per eseguire ulteriori operazioni di formattazione, utilizzare i cmdlet ForEach-Object, Where-Object, Sort-Object e Group-Object.

.PARAMETER Path
    Specifica un percorso di una posizione. Get-ChildItem ottiene gli elementi figlio nella posizione specificata. Questo parametro supporta caratteri jolly. Il valore predefinito è la directory corrente (.).

.PARAMETER Filter
    Specifica un filtro per qualificare il parametro Path. Il provider FileSystem è l'unico provider PowerShell installato che supporta l'uso di filtri. È possibile utilizzare il linguaggio dei filtri di FileSystem per filtrare rapidamente i file in base alle proprietà, come la data di modifica o l'estensione. Per ulteriori informazioni, vedere about_Providers e about_Language_Keywords.

.PARAMETER Include
    Specifica, come matrice di stringhe, un elemento o elementi che questo cmdlet include nell'operazione. Il valore di questo parametro qualifica il parametro Path. Immettere un elemento o un modello di percorso, come "*.txt". I caratteri jolly sono consentiti. Il parametro Include è efficace solo quando il comando include il contenuto di un elemento, ad esempio C:\*\*.txt, dove il carattere jolly specifica il contenuto della directory C:.

.PARAMETER Exclude
    Specifica, come matrice di stringhe, un elemento o elementi che questo cmdlet esclude dall'operazione. Il valore di questo parametro qualifica il parametro Path. Immettere un elemento o un modello di percorso, come "*.txt". I caratteri jolly sono consentiti.

.PARAMETER Recurse
    Indica che questo cmdlet ottiene gli elementi nelle posizioni e in tutte le posizioni figlio delle posizioni specificate.

.PARAMETER Depth
    Specifica il numero di livelli da includere nell'operazione di ricorsione. Questo parametro è disponibile solo con il provider FileSystem. Specificare un valore di Depth per limitare la ricorsione a un numero specifico di livelli di sottodirectory. Questo parametro funziona insieme a -Recurse.

.PARAMETER Force
    Indica che questo cmdlet ottiene elementi che non possono essere altrimenti ottenuti dal cmdlet, ad esempio elementi nascosti o di sistema, a seconda del provider. Per impostazione predefinita, Get-ChildItem non ottiene elementi nascosti o di sistema.

.PARAMETER Name
    Recupera solo i nomi degli elementi nella posizione. L'output è una stringa che può essere inviata tramite pipe ad altri comandi.

.PARAMETER Attributes
    Utilizzato con il provider FileSystem per filtrare gli elementi che hanno attributi specifici. Supporta i valori: Archive, Compressed, Device, Directory, Encrypted, Hidden, Normal, NotContentIndexed, Offline, ReadOnly, ReparsePoint, SparseFile, System, Temporary. Per escludere un attributo, utilizzare il prefisso '!' o il trattino '-'. Per specificare più attributi, separarli con virgole.

.PARAMETER Directory
    Restituisce solo le directory in una posizione.

.PARAMETER File
    Restituisce solo i file in una posizione.

.PARAMETER Hidden
    Restituisce solo gli elementi nascosti.

.PARAMETER System
    Restituisce solo gli elementi di sistema.

.PARAMETER ReadOnly
    Restituisce solo gli elementi di sola lettura.

.OUTPUTS
    System.Object
    Get-ChildItem restituisce oggetti per ogni elemento recuperato. Il tipo di oggetto dipende dal provider.

.EXAMPLE
    PS> Get-ChildItem
    Recupera tutti gli elementi nella directory corrente.

.EXAMPLE
    PS> Get-ChildItem -Path C:\Windows -Recurse
    Recupera tutti gli elementi nella directory C:\Windows e in tutte le sue sottodirectory.

.EXAMPLE
    PS> Get-ChildItem -Path C:\*.txt -Include *.txt,*.log
    Recupera tutti i file .txt e .log nella directory C:.

.LINK
    about_Providers
    about_Paths
    ForEach-Object
    Where-Object

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

> .DESCRIPTION
Il cmdlet ConvertFrom-SecureString converte un oggetto SecureString in una stringa standard crittografata. Può anche convertire un SecureString in un SecureString esportabile che può essere archiviato in un file per un uso futuro da parte di Windows, quando si utilizza l'opzione -SecureKey. Il cmdlet utilizza lo standard Advanced Encryption Standard (AES) per la crittografia.

La stringa crittografata può essere riconvertita in un SecureString utilizzando il cmdlet ConvertTo-SecureString.

Per impostazione predefinita, ConvertFrom-SecureString legge un SecureString dalla pipeline o dalla riga di comando e lo converte in una stringa standard crittografata. Utilizza la chiave di crittografia predefinita di Windows.

Se si specificano i parametri -SecureKey o -Key, il cmdlet utilizza la tecnica AES per produrre un SecureString esportabile.

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

> Filtra per tipi di blocco di markup (passati al LLM)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoCache`

> Trasforma in grassetto il testo specificato in una stringa.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearCache`

> Cancellare l'intera cache di traduzione per tutte le lingue

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-SpeechToText.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Test-DeepLinkImageFile.md)
