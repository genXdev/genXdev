# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext`

## Synopsis

> Analizza il testo per identificare fallacie logiche utilizzando il rilevamento basato sull'intelligenza artificiale.

## Description

Questa funzione analizza il testo fornito per rilevare fallacie logiche utilizzando un modello di intelligenza artificiale addestrato sull'elenco delle fallacie di Wikipedia. Restituisce informazioni dettagliate su ciascuna fallacia trovata, inclusa la citazione specifica, il nome della fallacia, la descrizione, la spiegazione e la classificazione formale. La funzione utilizza un formato di risposta strutturato per garantire un output coerente.

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | Testo da analizzare per trovare errori logici in |
| `-Instructions` | String | — | — | 1 | `''` | Istruzioni per il modello AI su come generare l'elenco di stringhe |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array di percorsi di file da allegare |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Matrice di definizioni di funzioni |
| `-ImageDetail` | String | — | — | Named | `'low'` | Livello di dettaglio dell'immagine |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Elenco di comandi che non richiedono conferma |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Matrice di definizioni di comandi PowerShell da utilizzare come strumenti |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura per la casualità della risposta (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Il tipo di query LLM |
| `-Model` | String | — | — | Named | — | L'identificatore o modello da utilizzare per le operazioni AI |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL dell'endpoint API per le operazioni di IA |
| `-ApiKey` | String | — | — | Named | — | La chiave API per le operazioni AI autenticate |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Il timeout in secondi per le operazioni AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Percorso del database per i file dei dati delle preferenze |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .PARAMETER Path
Specifica il percorso del file di registro controllato. |
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
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Non archiviare la sessione nella cache di sessione |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Apre le ricerche IMDB per ogni risultato |
| `-AudioTemperature` | Double | — | — | Named | — | Controlla la temperatura per la generazione audio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Controlla la temperatura per la generazione della risposta. |
| `-CpuThreads` | Int32 | — | — | Named | — | Numero di thread della CPU da utilizzare per l'elaborazione. |
| `-SuppressRegex` | String | — | — | Named | — | Espressione regolare per sopprimere alcuni output. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Dimensione del contesto audio per l'elaborazione. |
| `-SilenceThreshold` | Double | — | — | Named | — | Soglia per rilevare il silenzio nell'audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalità applicata alle risposte più lunghe. |
| `-EntropyThreshold` | Double | — | — | Named | — | Soglia per l'entropia nella generazione della risposta. |
| `-LogProbThreshold` | Double | — | — | Named | — | Soglia di probabilità logaritmica per l'output. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Soglia per rilevare assenza di voce nell'audio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Impedisce la pronuncia della risposta. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Impedisce di esprimere i pensieri del modello. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disabilita VOX (attivazione vocale). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Utilizza la cattura audio del desktop per l'input. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disabilita il contesto per la richiesta. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Il cmdlet Get-ChildItem ottiene gli elementi e gli elementi figlio in una o più posizioni specificate.

.DESCRIPTION
    Il cmdlet Get-ChildItem ottiene gli elementi in una o più posizioni specificate. Se l'elemento è un contenitore, ottiene gli elementi al suo interno, noti come elementi figlio. È possibile utilizzare il parametro Recurse per ottenere elementi in tutte le sottocartelle figlio.

    Get-ChildItem non visualizza i nomi di directory vuote. Quando un comando Get-ChildItem include il parametro Depth o Recurse, le directory vuote vengono omesse dall'output.

    Le posizioni sono esposte al cmdlet tramite provider. I provider consentono di visualizzare diversi tipi di dati come se fossero un file system. Per ulteriori informazioni, vedere about_Providers.

.PARAMETER Path
    Specifica un percorso di una o più posizioni. I caratteri jolly sono consentiti. La posizione predefinita è la directory corrente (.).

.PARAMETER LiteralPath
    Specifica un percorso di una o più posizioni. A differenza del parametro Path, il valore di LiteralPath viene utilizzato esattamente come viene digitato. Nessun carattere viene interpretato come carattere jolly. Se il percorso include caratteri di escape, racchiuderlo tra virgolette singole. Le virgolette singole indicano a PowerShell di non interpretare alcun carattere come sequenza di escape.

.PARAMETER Filter
    Specifica un filtro nel formato del provider. Il valore di questo parametro qualifica il parametro Path. La sintassi esatta del filtro e se è supportato dipende dal provider. Il filtro è più efficiente di altri parametri, poiché il provider applica il filtro durante il recupero degli oggetti, anziché fare filtrare gli oggetti dopo che sono stati recuperati da PowerShell.

.PARAMETER Include
    Specifica, come array di stringhe, un elemento o elementi da includere nell'operazione. Il valore di questo parametro qualifica il parametro Path. Immettere un pattern di percorso o un elemento, ad esempio "*.txt". I caratteri jolly sono consentiti. Il parametro Include è efficace solo quando il comando include il parametro Recurse o quando il percorso conduce al contenuto di una directory, come C:\Windows\*, dove il carattere jolly specifica il contenuto della directory C:\Windows.

.PARAMETER Exclude
    Specifica, come array di stringhe, un elemento o elementi esclusi dall'operazione. Il valore di questo parametro qualifica il parametro Path. Immettere un pattern di percorso o un elemento, ad esempio "*.txt". I caratteri jolly sono consentiti. Il parametro Exclude è efficace solo quando il comando include il parametro Recurse o quando il percorso conduce al contenuto di una directory, come C:\Windows\*, dove il carattere jolly specifica il contenuto della directory C:\Windows.

.PARAMETER Recurse
    Ottiene elementi nelle posizioni specificate e in tutti gli elementi figlio delle posizioni. Nella directory file system, per impostazione predefinita, Get-ChildItem ottiene solo l'elemento e il suo contenuto di primo livello. Impostando il parametro Recurse, si ottengono tutti gli elementi presenti in tutte le sottodirectory di una directory.

.PARAMETER Depth
    Questo parametro è stato aggiunto in PowerShell 5.0 e consente di limitare la ricorsione per un comando Get-ChildItem che utilizza il parametro Recurse. Per impostazione predefinita, Recursiveness è illimitato. È possibile impostare il parametro Depth su un numero intero compreso tra 1 e il numero di directory in esame. Per limitare la ricorsione alla directory specificata dal comando, utilizzare Depth 1.

    Nota: i cmdlet FileSystem provider e Registry provider utilizzano Depth. Per altri provider, Depth non è disponibile. Per un elenco di provider e la loro disponibilità di funzionalità, vedere about_Providers.

.PARAMETER Force
    Consente al cmdlet di ottenere elementi che altrimenti non sarebbero accessibili all'utente, come elementi nascosti o di sistema. L'implementazione varia da provider a provider. Per ulteriori informazioni, vedere about_Providers. Anche l'utilizzo di Force non tenta di modificare le autorizzazioni dell'utente.

.PARAMETER Name
    Recupera solo i nomi degli elementi nelle posizioni. Se si utilizza questo parametro, il cmdlet restituisce solo l'oggetto stringa, anziché restituire l'oggetto con le proprietà e i metodi.

.PARAMETER UseTransaction
    Include il comando nella transazione attiva. Questo parametro è valido solo quando una transazione è in corso. Per ulteriori informazioni, vedere about_Transactions.

.PARAMETER Attributes
    Ottiene file e cartelle con gli attributi specificati. Questo parametro supporta tutti gli attributi e consente operazioni complesse come Filter, Include ed Exclude. Ad esempio, quanto segue ottiene solo i file normalmente compressi: Get-ChildItem -Attributes !Directory+Compressed

    I valori supportati per questo parametro includono: Archive, Compressed, Device, Directory, Encrypted, Hidden, IntegrityStream, NoScrubData, NotContentIndexed, Offline, ReadOnly, ReparsePoint, SparseFile, System, Temporary. Per ottenere informazioni sugli attributi, vedere la sezione sulla creazione di attributi in about_FileSystem_Provider.

    È possibile utilizzare i seguenti operatori: ! per NOT, + per AND e , per OR. Non utilizzare spazi tra operatori e attributi.

    Per maggiore precisione, utilizzare gli attributi di proprietà: Mode, Owner, Group. Per informazioni dettagliate, vedere il cmdlet Get-ChildItem in about_FileSystem_Provider.

.PARAMETER Directory
    Ottiene solo le directory (cartelle). Questo parametro è equivalente a utilizzare il parametro Attributes con il valore Directory. Funziona quando il percorso specifica un elemento in qualsiasi provider.

    Questo parametro è stato introdotto in Windows PowerShell 3.0.

.PARAMETER File
    Ottiene solo i file. Questo parametro è equivalente a utilizzare il parametro Attributes con il valore !Directory. Funziona quando il percorso specifica un elemento in qualsiasi provider.

    Questo parametro è stato introdotto in Windows PowerShell 3.0.

.PARAMETER Hidden
    Ottiene solo file e cartelle nascosti. Per impostazione predefinita, Get-ChildItem non visualizza gli elementi nascosti. Utilizzare il parametro Force per visualizzare gli elementi nascosti.

    È possibile utilizzare questo parametro da solo o in combinazione con i parametri Directory, File o ReadOnly.

    Questo parametro è stato introdotto in Windows PowerShell 3.0.

.PARAMETER ReadOnly
    Ottiene solo i file e le cartelle di sola lettura.

    È possibile utilizzare questo parametro da solo o in combinazione con i parametri Directory, File o Hidden.

    Questo parametro è stato introdotto in Windows PowerShell 3.0.

.PARAMETER System
    Ottiene solo i file e le cartelle di sistema.

    È possibile utilizzare questo parametro da solo o in combinazione con i parametri Directory, File, Hidden o ReadOnly.

    Questo parametro è stato introdotto in Windows PowerShell 3.0.

.INPUTS
    System.String
    È possibile reindirizzare una stringa che contiene un percorso a Get-ChildItem.

.OUTPUTS
    System.Object, System.String
    Il tipo di oggetto restituito dipende dal provider.

.NOTES
    I cmdlet Get-ChildItem sono supportati dai provider. Per un elenco dei provider e delle relative descrizioni, vedere about_Providers.

     Per utilizzare un provider diverso da FileSystem, il percorso deve iniziare con il nome del provider seguito da due punti.

    È possibile fare riferimento a Get-ChildItem con il suo alias predefinito, "ls" (per sistemi Linux/Unix) o "dir" (per sistemi Windows).

    Il parametro Depth è disponibile solo in PowerShell 5.0 e versioni successive.

.EXAMPLE
    PS C:\> Get-ChildItem

    Ottiene il contenuto della directory corrente.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\*

    Ottiene il contenuto della directory C:\Windows.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Recurse -Depth 3

    Ottiene il contenuto della directory C:\Windows\System32 e delle sue sottodirectory fino a 3 livelli di profondità.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Include *.dll

    Ottiene tutti i file .dll nella directory C:\Windows\System32.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Exclude *.dll

    Ottiene tutti gli elementi nella directory C:\Windows\System32 eccetto i file .dll.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Attributes !Directory+Compressed

    Ottiene solo i file nella directory C:\Windows\System32 con l'attributo compresso.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Name

    Recupera solo i nomi degli elementi nella directory C:\Windows\System32.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Recurse -Force

    Recupera tutti gli elementi nella directory C:\Windows\System32, inclusi quelli nascosti e di sistema.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Attributes Directory

    Ottiene solo le directory nella directory C:\Windows\System32.

.LINK
    about_Providers
    about_FileSystem_Provider
    about_Transactions
    Get-Item
    Get-ChildItem
    Get-Content
    Set-Content
    Add-Content
    Clear-Content
    Remove-Item
    Move-Item
    Copy-Item
    Rename-Item
    New-Item
    ForEach-Object
    Where-Object |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .PARAMETER Path
Specifica il percorso del file di registro. |
| `-Speak` | SwitchParameter | — | — | Named | — | Abilita la sintesi vocale per le risposte AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Abilita la sintesi vocale per le risposte pensate dall'IA |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Lunghezza massima del callback per le chiamate degli strumenti. |

## Examples

### Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " + "and he was a politician")

```powershell
Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " +
"and he was a politician")
```

Analizza il testo fornito per individuare fallacie logiche e restituisce informazioni strutturate su eventuali fallacie rilevate.

### "This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1

```powershell
"This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1
```

Utilizza l'input della pipeline per analizzare il testo con una bassa temperatura per un'analisi focalizzata.

### dispicetext "Everyone knows this is true"

```powershell
dispicetext "Everyone knows this is true"
```

Usa l'alias per analizzare il testo alla ricerca di fallacie logiche.

## Parameter Details

### `-InputObject <Object>`

> Testo da analizzare per trovare errori logici in

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> Istruzioni per il modello AI su come generare l'elenco di stringhe

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
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
### `-OpenInImdb`

> Apre le ricerche IMDB per ogni risultato

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `imdb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Controlla la temperatura per la generazione audio.

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

> Controlla la temperatura per la generazione della risposta.

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

> Numero di thread della CPU da utilizzare per l'elaborazione.

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

> Espressione regolare per sopprimere alcuni output.

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

> Dimensione del contesto audio per l'elaborazione.

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

> Soglia per rilevare il silenzio nell'audio.

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

> Penalità applicata alle risposte più lunghe.

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

> Soglia per l'entropia nella generazione della risposta.

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

> Soglia di probabilità logaritmica per l'output.

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

> Soglia per rilevare assenza di voce nell'audio.

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

> Impedisce la pronuncia della risposta.

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

> Impedisce di esprimere i pensieri del modello.

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

> Disabilita VOX (attivazione vocale).

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

> Utilizza la cattura audio del desktop per l'input.

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

> Disabilita il contesto per la richiesta.

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

> .SYNOPSIS
    Il cmdlet Get-ChildItem ottiene gli elementi e gli elementi figlio in una o più posizioni specificate.

.DESCRIPTION
    Il cmdlet Get-ChildItem ottiene gli elementi in una o più posizioni specificate. Se l'elemento è un contenitore, ottiene gli elementi al suo interno, noti come elementi figlio. È possibile utilizzare il parametro Recurse per ottenere elementi in tutte le sottocartelle figlio.

    Get-ChildItem non visualizza i nomi di directory vuote. Quando un comando Get-ChildItem include il parametro Depth o Recurse, le directory vuote vengono omesse dall'output.

    Le posizioni sono esposte al cmdlet tramite provider. I provider consentono di visualizzare diversi tipi di dati come se fossero un file system. Per ulteriori informazioni, vedere about_Providers.

.PARAMETER Path
    Specifica un percorso di una o più posizioni. I caratteri jolly sono consentiti. La posizione predefinita è la directory corrente (.).

.PARAMETER LiteralPath
    Specifica un percorso di una o più posizioni. A differenza del parametro Path, il valore di LiteralPath viene utilizzato esattamente come viene digitato. Nessun carattere viene interpretato come carattere jolly. Se il percorso include caratteri di escape, racchiuderlo tra virgolette singole. Le virgolette singole indicano a PowerShell di non interpretare alcun carattere come sequenza di escape.

.PARAMETER Filter
    Specifica un filtro nel formato del provider. Il valore di questo parametro qualifica il parametro Path. La sintassi esatta del filtro e se è supportato dipende dal provider. Il filtro è più efficiente di altri parametri, poiché il provider applica il filtro durante il recupero degli oggetti, anziché fare filtrare gli oggetti dopo che sono stati recuperati da PowerShell.

.PARAMETER Include
    Specifica, come array di stringhe, un elemento o elementi da includere nell'operazione. Il valore di questo parametro qualifica il parametro Path. Immettere un pattern di percorso o un elemento, ad esempio "*.txt". I caratteri jolly sono consentiti. Il parametro Include è efficace solo quando il comando include il parametro Recurse o quando il percorso conduce al contenuto di una directory, come C:\Windows\*, dove il carattere jolly specifica il contenuto della directory C:\Windows.

.PARAMETER Exclude
    Specifica, come array di stringhe, un elemento o elementi esclusi dall'operazione. Il valore di questo parametro qualifica il parametro Path. Immettere un pattern di percorso o un elemento, ad esempio "*.txt". I caratteri jolly sono consentiti. Il parametro Exclude è efficace solo quando il comando include il parametro Recurse o quando il percorso conduce al contenuto di una directory, come C:\Windows\*, dove il carattere jolly specifica il contenuto della directory C:\Windows.

.PARAMETER Recurse
    Ottiene elementi nelle posizioni specificate e in tutti gli elementi figlio delle posizioni. Nella directory file system, per impostazione predefinita, Get-ChildItem ottiene solo l'elemento e il suo contenuto di primo livello. Impostando il parametro Recurse, si ottengono tutti gli elementi presenti in tutte le sottodirectory di una directory.

.PARAMETER Depth
    Questo parametro è stato aggiunto in PowerShell 5.0 e consente di limitare la ricorsione per un comando Get-ChildItem che utilizza il parametro Recurse. Per impostazione predefinita, Recursiveness è illimitato. È possibile impostare il parametro Depth su un numero intero compreso tra 1 e il numero di directory in esame. Per limitare la ricorsione alla directory specificata dal comando, utilizzare Depth 1.

    Nota: i cmdlet FileSystem provider e Registry provider utilizzano Depth. Per altri provider, Depth non è disponibile. Per un elenco di provider e la loro disponibilità di funzionalità, vedere about_Providers.

.PARAMETER Force
    Consente al cmdlet di ottenere elementi che altrimenti non sarebbero accessibili all'utente, come elementi nascosti o di sistema. L'implementazione varia da provider a provider. Per ulteriori informazioni, vedere about_Providers. Anche l'utilizzo di Force non tenta di modificare le autorizzazioni dell'utente.

.PARAMETER Name
    Recupera solo i nomi degli elementi nelle posizioni. Se si utilizza questo parametro, il cmdlet restituisce solo l'oggetto stringa, anziché restituire l'oggetto con le proprietà e i metodi.

.PARAMETER UseTransaction
    Include il comando nella transazione attiva. Questo parametro è valido solo quando una transazione è in corso. Per ulteriori informazioni, vedere about_Transactions.

.PARAMETER Attributes
    Ottiene file e cartelle con gli attributi specificati. Questo parametro supporta tutti gli attributi e consente operazioni complesse come Filter, Include ed Exclude. Ad esempio, quanto segue ottiene solo i file normalmente compressi: Get-ChildItem -Attributes !Directory+Compressed

    I valori supportati per questo parametro includono: Archive, Compressed, Device, Directory, Encrypted, Hidden, IntegrityStream, NoScrubData, NotContentIndexed, Offline, ReadOnly, ReparsePoint, SparseFile, System, Temporary. Per ottenere informazioni sugli attributi, vedere la sezione sulla creazione di attributi in about_FileSystem_Provider.

    È possibile utilizzare i seguenti operatori: ! per NOT, + per AND e , per OR. Non utilizzare spazi tra operatori e attributi.

    Per maggiore precisione, utilizzare gli attributi di proprietà: Mode, Owner, Group. Per informazioni dettagliate, vedere il cmdlet Get-ChildItem in about_FileSystem_Provider.

.PARAMETER Directory
    Ottiene solo le directory (cartelle). Questo parametro è equivalente a utilizzare il parametro Attributes con il valore Directory. Funziona quando il percorso specifica un elemento in qualsiasi provider.

    Questo parametro è stato introdotto in Windows PowerShell 3.0.

.PARAMETER File
    Ottiene solo i file. Questo parametro è equivalente a utilizzare il parametro Attributes con il valore !Directory. Funziona quando il percorso specifica un elemento in qualsiasi provider.

    Questo parametro è stato introdotto in Windows PowerShell 3.0.

.PARAMETER Hidden
    Ottiene solo file e cartelle nascosti. Per impostazione predefinita, Get-ChildItem non visualizza gli elementi nascosti. Utilizzare il parametro Force per visualizzare gli elementi nascosti.

    È possibile utilizzare questo parametro da solo o in combinazione con i parametri Directory, File o ReadOnly.

    Questo parametro è stato introdotto in Windows PowerShell 3.0.

.PARAMETER ReadOnly
    Ottiene solo i file e le cartelle di sola lettura.

    È possibile utilizzare questo parametro da solo o in combinazione con i parametri Directory, File o Hidden.

    Questo parametro è stato introdotto in Windows PowerShell 3.0.

.PARAMETER System
    Ottiene solo i file e le cartelle di sistema.

    È possibile utilizzare questo parametro da solo o in combinazione con i parametri Directory, File, Hidden o ReadOnly.

    Questo parametro è stato introdotto in Windows PowerShell 3.0.

.INPUTS
    System.String
    È possibile reindirizzare una stringa che contiene un percorso a Get-ChildItem.

.OUTPUTS
    System.Object, System.String
    Il tipo di oggetto restituito dipende dal provider.

.NOTES
    I cmdlet Get-ChildItem sono supportati dai provider. Per un elenco dei provider e delle relative descrizioni, vedere about_Providers.

     Per utilizzare un provider diverso da FileSystem, il percorso deve iniziare con il nome del provider seguito da due punti.

    È possibile fare riferimento a Get-ChildItem con il suo alias predefinito, "ls" (per sistemi Linux/Unix) o "dir" (per sistemi Windows).

    Il parametro Depth è disponibile solo in PowerShell 5.0 e versioni successive.

.EXAMPLE
    PS C:\> Get-ChildItem

    Ottiene il contenuto della directory corrente.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\*

    Ottiene il contenuto della directory C:\Windows.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Recurse -Depth 3

    Ottiene il contenuto della directory C:\Windows\System32 e delle sue sottodirectory fino a 3 livelli di profondità.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Include *.dll

    Ottiene tutti i file .dll nella directory C:\Windows\System32.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Exclude *.dll

    Ottiene tutti gli elementi nella directory C:\Windows\System32 eccetto i file .dll.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Attributes !Directory+Compressed

    Ottiene solo i file nella directory C:\Windows\System32 con l'attributo compresso.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Name

    Recupera solo i nomi degli elementi nella directory C:\Windows\System32.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Recurse -Force

    Recupera tutti gli elementi nella directory C:\Windows\System32, inclusi quelli nascosti e di sistema.

.EXAMPLE
    PS C:\> Get-ChildItem -Path C:\Windows\System32 -Attributes Directory

    Ottiene solo le directory nella directory C:\Windows\System32.

.LINK
    about_Providers
    about_FileSystem_Provider
    about_Transactions
    Get-Item
    Get-ChildItem
    Get-Content
    Set-Content
    Add-Content
    Clear-Content
    Remove-Item
    Move-Item
    Copy-Item
    Rename-Item
    New-Item
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
### `-OnlyResponses`

> .PARAMETER Path
Specifica il percorso del file di registro.

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

- `Object[]`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AIMetaLanguage.md)
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
