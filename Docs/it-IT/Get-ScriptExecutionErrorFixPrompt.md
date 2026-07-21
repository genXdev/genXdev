# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt`

## Synopsis

> Cattura messaggi di errore da vari flussi e utilizza LLM per suggerire correzioni.

## Description

Questo cmdlet cattura messaggi di errore da vari flussi di PowerShell (input pipeline, verbose, informativo, errore e avviso) e formula un prompt strutturato per un LLM che analizzi e suggerisca correzioni. Quindi invoca la query LLM e restituisce la soluzione suggerita.

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoSupportForJsonSchema <String>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | Lo script da eseguire e analizzare per errori |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura per la casualità della risposta (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Il tipo di query LLM |
| `-Model` | String | — | — | Named | — | L'identificatore o modello da utilizzare per le operazioni AI |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL dell'endpoint API per le operazioni di IA |
| `-ApiKey` | String | — | — | Named | — | La chiave API per le operazioni AI autenticate |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica che LLM non supporta gli schemi JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Il timeout in secondi per le operazioni AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Percorso del database per i file dei dati delle preferenze |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Matrice di definizioni di funzioni |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | Matrice di definizioni di comandi PowerShell da utilizzare come strumenti |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Elenco di comandi che non richiedono conferma |
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
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione |
| `-Attachments` | Object | — | — | Named | — | Allegati da includere nella query LLM. |
| `-ImageDetail` | Object | — | — | Named | — | Livello di dettaglio dell'immagine per la query LLM. |
| `-TTLSeconds` | Object | — | — | Named | — | Tempo di vita (TTL) in secondi per la query LLM. |
| `-IncludeThoughts` | Object | — | — | Named | — | .PARAMETER Esempio
Specifica un parametro di esempio.

.PARAMETER Esempio2
Specifica un secondo parametro di esempio. |
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | .PARAMETER TipoClient
Specifica il tipo di client per il quale questo cmdlet crea regole client e input. I valori validi sono: Console, GUI, VisualizzazionePowerShell. |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | .PARAMETER Nome
Specifica il nome della macchina virtuale.

.PARAMETER Stato
Specifica lo stato desiderato della macchina virtuale.

.Esempio
PS C:\> Set-VMState -Nome "VM01" -Stato "In esecuzione"

.Esempio
PS C:\> Set-VMState -Nome "VM02" -Stato "Arrestata" |
| `-ChatOnce` | Object | — | — | Named | — | .PARAMETER <NomeParametro>
Breve descrizione del parametro. Prima di digitare il nome del parametro nella riga di comando, inserire un trattino.
Dopo il nome del parametro, aggiungere uno spazio e quindi digitare il valore del parametro. |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | Lunghezza massima del callback dello strumento per la query LLM. |
| `-AudioTemperature` | Object | — | — | Named | — | Temperatura per la generazione audio. |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperatura per la generazione della risposta. |
| `-Language` | Object | — | — | Named | — | Linguaggio per la query LLM. |
| `-CpuThreads` | Object | — | — | Named | — | Numero di thread CPU da utilizzare. |
| `-SuppressRegex` | Object | — | — | Named | — | Espressione regolare per sopprimere l'output. |
| `-AudioContextSize` | Object | — | — | Named | — | Dimensione del contesto audio per la query LLM. |
| `-SilenceThreshold` | Object | — | — | Named | — | Soglia di silenzio per l'elaborazione audio. |
| `-LengthPenalty` | Object | — | — | Named | — | Penalità di lunghezza per l'output LLM. |
| `-EntropyThreshold` | Object | — | — | Named | — | Soglia di entropia per l'output LLM. |
| `-LogProbThreshold` | Object | — | — | Named | — | Soglia di probabilità logaritmica per l'output LLM. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Nessuna soglia vocale per l'elaborazione audio. |
| `-DontSpeak` | Object | — | — | Named | — | Non riprodurre audio in uscita. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Il cmdlet Format-Table formatta l'output di un comando come una tabella con le proprietà selezionate dell'oggetto in ogni colonna. Il tipo di oggetto determina il layout e le proprietà visualizzate predefinite, ma è possibile selezionare le proprietà da visualizzare. Per ulteriori informazioni sulla formattazione, vedere about_Format.ps1xml. |
| `-NoVOX` | Object | — | — | Named | — | Disabilita VOX per l'uscita audio. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Utilizza la cattura audio del desktop. |
| `-NoContext` | Object | — | — | Named | — | .PARAMETER Path
Specifica il percorso del file di registro. |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | .SYNOPSIS
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
| `-OnlyResponses` | Object | — | — | Named | — | .DESCRIPTION
Il cmdlet Get-NetConnectionProfile recupera le informazioni sul profilo di connessione di rete associate a una o più connessioni di rete fisiche e virtuali.

Un profilo di connessione di rete è un tipo di connessione di rete come Ethernet, Wi-Fi o cellulare. Per impostare il profilo di connessione, utilizzare il cmdlet Set-NetConnectionProfile.

I parametri per questo cmdlet possono essere usati per eseguire query per un profilo di connessione di rete specifico. È opportuno utilizzare il parametro associato più specifico per recuperare un profilo di connessione di rete. Ad esempio, un amministratore di rete potrebbe voler selezionare un profilo di connessione di rete in base alla scheda di rete, allo stato di autenticazione, allo stato di connessione di rete, al nome della rete o al livello di categoria di rete. Se non vengono specificati parametri, il cmdlet recupera tutti i profili di connessione di rete disponibili.

Per ottenere un collegamento a un profilo di connessione di rete per la scheda di rete specifica, utilizzare il cmdlet Get-NetAdapter per recuperare l'oggetto NetAdapter, quindi passarlo al cmdlet Get-NetConnectionProfile specificando l'oggetto NetAdapter come valore del parametro InputObject. |

## Examples

### $errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {     My-ScriptThatFails }

```powershell
$errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {
    My-ScriptThatFails
}
```

### getfixprompt { Get-ChildItem -NotExistingParameter } ##############################################################################

```powershell
getfixprompt { Get-ChildItem -NotExistingParameter }
##############################################################################
```

## Parameter Details

### `-Script <ScriptBlock>`

> Lo script da eseguire e analizzare per errori

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
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
| **Default value** | `'Coding'` |
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
| **Default value** | `$null` |
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
### `-Attachments <Object>`

> Allegati da includere nella query LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <Object>`

> Livello di dettaglio dell'immagine per la query LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TTLSeconds <Object>`

> Tempo di vita (TTL) in secondi per la query LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts <Object>`

> .PARAMETER Esempio
Specifica un parametro di esempio.

.PARAMETER Esempio2
Specifica un secondo parametro di esempio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly <Object>`

> .PARAMETER TipoClient
Specifica il tipo di client per il quale questo cmdlet crea regole client e input. I valori validi sono: Console, GUI, VisualizzazionePowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <Object>`

> .PARAMETER Nome
Specifica il nome della macchina virtuale.

.PARAMETER Stato
Specifica lo stato desiderato della macchina virtuale.

.Esempio
PS C:\> Set-VMState -Nome "VM01" -Stato "In esecuzione"

.Esempio
PS C:\> Set-VMState -Nome "VM02" -Stato "Arrestata"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce <Object>`

> .PARAMETER <NomeParametro>
Breve descrizione del parametro. Prima di digitare il nome del parametro nella riga di comando, inserire un trattino.
Dopo il nome del parametro, aggiungere uno spazio e quindi digitare il valore del parametro.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Object>`

> Lunghezza massima del callback dello strumento per la query LLM.

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
### `-TemperatureResponse <Object>`

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
### `-Language <Object>`

> Linguaggio per la query LLM.

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
### `-SuppressRegex <Object>`

> Espressione regolare per sopprimere l'output.

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

> Dimensione del contesto audio per la query LLM.

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
### `-LengthPenalty <Object>`

> Penalità di lunghezza per l'output LLM.

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

> Soglia di entropia per l'output LLM.

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

> Soglia di probabilità logaritmica per l'output LLM.

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

> Nessuna soglia vocale per l'elaborazione audio.

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

> Non riprodurre audio in uscita.

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

> Il cmdlet Format-Table formatta l'output di un comando come una tabella con le proprietà selezionate dell'oggetto in ogni colonna. Il tipo di oggetto determina il layout e le proprietà visualizzate predefinite, ma è possibile selezionare le proprietà da visualizzare. Per ulteriori informazioni sulla formattazione, vedere about_Format.ps1xml.

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

> Disabilita VOX per l'uscita audio.

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
### `-NoContext <Object>`

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
### `-WithBeamSearchSamplingStrategy <Object>`

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
### `-OnlyResponses <Object>`

> .DESCRIPTION
Il cmdlet Get-NetConnectionProfile recupera le informazioni sul profilo di connessione di rete associate a una o più connessioni di rete fisiche e virtuali.

Un profilo di connessione di rete è un tipo di connessione di rete come Ethernet, Wi-Fi o cellulare. Per impostare il profilo di connessione, utilizzare il cmdlet Set-NetConnectionProfile.

I parametri per questo cmdlet possono essere usati per eseguire query per un profilo di connessione di rete specifico. È opportuno utilizzare il parametro associato più specifico per recuperare un profilo di connessione di rete. Ad esempio, un amministratore di rete potrebbe voler selezionare un profilo di connessione di rete in base alla scheda di rete, allo stato di autenticazione, allo stato di connessione di rete, al nome della rete o al livello di categoria di rete. Se non vengono specificati parametri, il cmdlet recupera tutti i profili di connessione di rete disponibili.

Per ottenere un collegamento a un profilo di connessione di rete per la scheda di rete specifica, utilizzare il cmdlet Get-NetAdapter per recuperare l'oggetto NetAdapter, quindi passarlo al cmdlet Get-NetConnectionProfile specificando l'oggetto NetAdapter come valore del parametro InputObject.

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
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-Fallacy.md)
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
