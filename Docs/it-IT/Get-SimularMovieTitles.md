# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Trova titoli di film simili basati su proprietà comuni.

## Description

Analizza i film forniti per trovare proprietà comuni e restituisce un elenco di 10 titoli di film simili. Utilizza l'IA per identificare modelli e temi comuni tra i film di input al fine di suggerire raccomandazioni pertinenti.

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-All] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Headless] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Webkit] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | Array di titoli di film da analizzare per somiglianze |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | Il tipo di query LLM |
| `-Model` | String | — | — | Named | — | L'identificatore o modello da utilizzare per le operazioni AI |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL dell'endpoint API per le operazioni di IA |
| `-ApiKey` | String | — | — | Named | — | La chiave API per le operazioni AI autenticate |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica che LLM non supporta gli schemi JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Il timeout in secondi per le operazioni AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Percorso del database per i file dei dati delle preferenze |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura per la casualità della risposta (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Apre le ricerche IMDB per ogni risultato |
| `-Language` | String | — | — | Named | — | Lingua per la ricerca IMDB o la sessione del browser |
| `-Monitor` | Int32 | — | — | Named | `-1` | Monitora l'indice o il nome per il posizionamento della finestra del browser |
| `-Width` | Int32 | — | — | Named | `-1` | Larghezza della finestra del browser in pixel |
| `-Height` | Int32 | — | — | Named | `-1` | Altezza della finestra del browser in pixel |
| `-AcceptLang` | String | — | — | Named | — | Intestazione HTTP Accept-Language per la sessione del browser |
| `-Private` | SwitchParameter | — | — | Named | — | Aprire il browser in modalità privata/anonima |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utilizza Google Chrome per la sessione del browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Utilizza Chromium per la sessione del browser |
| `-Firefox` | SwitchParameter | — | — | Named | — | Utilizza Mozilla Firefox per la sessione del browser |
| `-Left` | Int32 | — | — | Named | — | Posizione sinistra della finestra del browser in pixel |
| `-Right` | Int32 | — | — | Named | — | Posizione destra della finestra del browser in pixel |
| `-Bottom` | Int32 | — | — | Named | — | Posizione inferiore della finestra del browser in pixel |
| `-Centered` | SwitchParameter | — | — | Named | — | Apri la finestra del browser centrata sullo schermo |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Aprire il browser in modalità schermo intero |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Apri browser in modalità applicazione (interfaccia minima) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Disabilita le estensioni del browser per la sessione |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disabilita il blocco dei popup nella sessione del browser |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Mettere a fuoco la finestra del browser dopo l'apertura |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Imposta la finestra del browser in primo piano dopo l'apertura |
| `-Maximize` | SwitchParameter | — | — | Named | — | Massimizzare la finestra del browser dopo l'apertura |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Ripristina il focus sulla finestra precedente dopo aver chiuso il browser |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Apri ogni risultato IMDB in una nuova finestra del browser |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Restituisce l'URL dopo aver aperto la ricerca IMDB |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | @ |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Inviare il tasto Escape al browser dopo l'apertura |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantenere il focus della tastiera nel browser dopo l'invio dei tasti |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Usa Shift+Invio quando invii i tasti al browser |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Ritardo in millisecondi tra l'invio dei tasti al browser |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Aprire la finestra del browser senza bordi |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Usa il browser gestito da Playwright invece del browser installato nel sistema operativo |
| `-Webkit` | SwitchParameter | — | — | Named | — | Apre il browser WebKit gestito da Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Esegui il browser senza una finestra visibile |
| `-All` | SwitchParameter | — | — | Named | — | Si apre in tutti i browser moderni registrati |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Apri le finestre del browser affiancate per ogni risultato |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione |
| `-Instructions` | String | — | — | Named | — | Istruzioni per il modello AI su come generare l'elenco di stringhe |
| `-Attachments` | String[] | — | — | Named | — | Array di percorsi di file da allegare |
| `-ImageDetail` | String | — | — | Named | — | Livello di dettaglio dell'immagine per l'elaborazione delle immagini. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Matrice di definizioni di funzioni che possono essere chiamate dal modello AI durante l'elaborazione. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array di definizioni di comandi PowerShell da utilizzare come strumenti che l'IA può invocare. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Elenco dei nomi di comando che non richiedono conferma prima dell'esecuzione. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura per la generazione audio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura per la generazione della risposta. |
| `-CpuThreads` | Int32 | — | — | Named | — | Numero di thread CPU da utilizzare. |
| `-SuppressRegex` | String | — | — | Named | — | Espressione regolare per sopprimere alcuni output. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Dimensione del contesto audio per l'elaborazione. |
| `-SilenceThreshold` | Double | — | — | Named | — | Soglia di silenzio per l'elaborazione audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalità di lunghezza per la generazione di sequenze. |
| `-EntropyThreshold` | Double | — | — | Named | — | Soglia di entropia per il filtraggio dell'output. |
| `-LogProbThreshold` | Double | — | — | Named | — | Soglia di probabilità logaritmica per il filtraggio dell'output. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nessuna soglia vocale per il rilevamento audio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disabilita l'output vocale. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disabilita l'output del discorso mentale. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disabilita VOX (attivazione vocale). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Utilizza la cattura audio del desktop. |
| `-NoContext` | SwitchParameter | — | — | Named | — | .SYNOPSIS
   Disabilita l'utilizzo del contesto.

.DESCRIPTION
   Il cmdlet Disable-ContextUsage disabilita l'utilizzo del contesto per il cmdlet specificato. Quando il contesto è disabilitato, il cmdlet non utilizzerà le informazioni di contesto per determinare il comportamento.

.PARAMETER Name
   Specifica il nome del cmdlet per cui disabilitare l'utilizzo del contesto.

.EXAMPLE
   Disable-ContextUsage -Name Get-Process
   Disabilita l'utilizzo del contesto per il cmdlet Get-Process.

.INPUTS
   System.String
   È possibile inviare tramite pipeline una stringa contenente il nome del cmdlet.

.OUTPUTS
   Nessuno

.NOTES
   Questo cmdlet è disponibile solo in Windows PowerShell 5.0 e versioni successive. |
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
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Di seguito sono restituite solo le risposte. |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Se specificato, copia l'elenco di stringhe risultante negli appunti di sistema dopo l'elaborazione. |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Il cmdlet ConvertFrom-SecureString converte oggetti SecureString crittografati in stringhe standard crittografate. Può essere utilizzato con ConvertTo-SecureString per convertire stringhe crittografate in SecureString. Se si specificano i parametri -Key o -SecureKey, viene utilizzato l'algoritmo Advanced Encryption Standard (AES). Se non si specificano parametri aggiuntivi, viene utilizzata l'API di protezione dati di Windows (DPAPI). Il cmdlet restituisce una stringa crittografata in formato standard. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .PARAMETER Path
Specifica il percorso del file di registro controllato. |
| `-Speak` | SwitchParameter | — | — | Named | — | Abilita la sintesi vocale per le risposte AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Abilita la sintesi vocale per le risposte pensate dall'IA |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Non archiviare la sessione nella cache di sessione |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Abilita gli strumenti predefiniti per il modello AI. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .PARAMETER InputObject
Consente di specificare gli oggetti da aggiungere al contatore. Immettere una variabile che contiene gli oggetti o un comando o un'espressione che ottiene gli oggetti. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtra per tipi specifici di blocchi di markup. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Lunghezza massima del callback per le chiamate degli strumenti. |

## Examples

### Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb

```powershell
Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb
```

### moremovietitle "The Matrix","Inception" -imdb

```powershell
moremovietitle "The Matrix","Inception" -imdb
```

## Parameter Details

### `-Movies <String[]>`

> Array di titoli di film da analizzare per somiglianze

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Il tipo di query LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
### `-Language <String>`

> Lingua per la ricerca IMDB o la sessione del browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Monitora l'indice o il nome per il posizionamento della finestra del browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Larghezza della finestra del browser in pixel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Altezza della finestra del browser in pixel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Intestazione HTTP Accept-Language per la sessione del browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Aprire il browser in modalità privata/anonima

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Utilizza Google Chrome per la sessione del browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Utilizza Chromium per la sessione del browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Utilizza Mozilla Firefox per la sessione del browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Posizione sinistra della finestra del browser in pixel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Posizione destra della finestra del browser in pixel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Posizione inferiore della finestra del browser in pixel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Apri la finestra del browser centrata sullo schermo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> Aprire il browser in modalità schermo intero

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Apri browser in modalità applicazione (interfaccia minima)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> Disabilita le estensioni del browser per la sessione

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> Disabilita il blocco dei popup nella sessione del browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Mettere a fuoco la finestra del browser dopo l'apertura

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Imposta la finestra del browser in primo piano dopo l'apertura

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Massimizzare la finestra del browser dopo l'apertura

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Ripristina il focus sulla finestra precedente dopo aver chiuso il browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> Apri ogni risultato IMDB in una nuova finestra del browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> Restituisce l'URL dopo aver aperto la ricerca IMDB

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> @

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Inviare il tasto Escape al browser dopo l'apertura

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Mantenere il focus della tastiera nel browser dopo l'invio dei tasti

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Usa Shift+Invio quando invii i tasti al browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Ritardo in millisecondi tra l'invio dei tasti al browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Aprire la finestra del browser senza bordi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> Usa il browser gestito da Playwright invece del browser installato nel sistema operativo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Apre il browser WebKit gestito da Playwright. Implica -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> Esegui il browser senza una finestra visibile

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> Si apre in tutti i browser moderni registrati

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Apri le finestre del browser affiancate per ogni risultato

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
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
### `-Instructions <String>`

> Istruzioni per il modello AI su come generare l'elenco di stringhe

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Livello di dettaglio dell'immagine per l'elaborazione delle immagini.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Matrice di definizioni di funzioni che possono essere chiamate dal modello AI durante l'elaborazione.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Array di definizioni di comandi PowerShell da utilizzare come strumenti che l'IA può invocare.

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

> Elenco dei nomi di comando che non richiedono conferma prima dell'esecuzione.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Temperatura per la generazione audio.

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

> Temperatura per la generazione della risposta.

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

> Numero di thread CPU da utilizzare.

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

> Soglia di silenzio per l'elaborazione audio.

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

> Penalità di lunghezza per la generazione di sequenze.

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

> Soglia di entropia per il filtraggio dell'output.

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

> Soglia di probabilità logaritmica per il filtraggio dell'output.

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

> Nessuna soglia vocale per il rilevamento audio.

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

> Disabilita l'output vocale.

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

> Disabilita l'output del discorso mentale.

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

> Utilizza la cattura audio del desktop.

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

> .SYNOPSIS
   Disabilita l'utilizzo del contesto.

.DESCRIPTION
   Il cmdlet Disable-ContextUsage disabilita l'utilizzo del contesto per il cmdlet specificato. Quando il contesto è disabilitato, il cmdlet non utilizzerà le informazioni di contesto per determinare il comportamento.

.PARAMETER Name
   Specifica il nome del cmdlet per cui disabilitare l'utilizzo del contesto.

.EXAMPLE
   Disable-ContextUsage -Name Get-Process
   Disabilita l'utilizzo del contesto per il cmdlet Get-Process.

.INPUTS
   System.String
   È possibile inviare tramite pipeline una stringa contenente il nome del cmdlet.

.OUTPUTS
   Nessuno

.NOTES
   Questo cmdlet è disponibile solo in Windows PowerShell 5.0 e versioni successive.

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

> Di seguito sono restituite solo le risposte.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetClipboard`

> Se specificato, copia l'elenco di stringhe risultante negli appunti di sistema dopo l'elaborazione.

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

> Il cmdlet ConvertFrom-SecureString converte oggetti SecureString crittografati in stringhe standard crittografate. Può essere utilizzato con ConvertTo-SecureString per convertire stringhe crittografate in SecureString. Se si specificano i parametri -Key o -SecureKey, viene utilizzato l'algoritmo Advanced Encryption Standard (AES). Se non si specificano parametri aggiuntivi, viene utilizzata l'API di protezione dati di Windows (DPAPI). Il cmdlet restituisce una stringa crittografata in formato standard.

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

> Abilita gli strumenti predefiniti per il modello AI.

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

> .PARAMETER InputObject
Consente di specificare gli oggetti da aggiungere al contatore. Immettere una variabile che contiene gli oggetti o un comando o un'espressione che ottiene gli oggetti.

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

> Filtra per tipi specifici di blocchi di markup.

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
