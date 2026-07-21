# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize`

## Synopsis

> Converteert diplomatieke of tactvolle taal naar directe, duidelijke en ongezouten taal.

## Description

Deze functie neemt diplomatieke taal en vertaalt het om de ware
betekenis achter beleefd of politiek correct taalgebruik te onthullen. Het maakt gebruik van AI-taalmodelen
om eufemismen om te zetten in directe uitspraken, waardoor communicatie
eenduidig en gemakkelijk te begrijpen wordt. De functie is vooral
nuttig voor het analyseren van politieke verklaringen, zakelijke communicatie of elke tekst
waar de echte betekenis verhuld kan zijn door diplomatiek taalgebruik.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | De tekst om te zetten van diplomatiek taalgebruik |
| `-Instructions` | String | — | — | 1 | `''` | .SYNOPSIS
Ontvangt de status van de geschiedenis van de metagegevensarchief.

.DESCRIPTION
De cmdlet Get-AzMetadataArchiveHistoryStatus ontvangt de status van de geschiedenis van de metagegevensarchief. |
| `-Temperature` | Double | — | — | Named | `0.0` | Temperatuur voor respons willekeurigheid (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | De modelidentificatie of het patroon dat moet worden gebruikt voor AI-bewerkingen |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-bewerkingen |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geverifieerde AI-operaties |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Geeft aan dat LLM geen ondersteuning heeft voor JSON-schema's |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out in seconden voor AI-operaties |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Kopieer de getransformeerde tekst naar het klembord |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden |
| `-Attachments` | Object[] | — | — | Named | — | Bijlagen om op te nemen in de AI-bewerking. |
| `-ImageDetail` | String | — | — | Named | — | Niveau van beelddetail voor AI-verwerking. |
| `-Functions` | Object[] | — | — | Named | — | Functies beschikbaar voor het AI-model. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlets om bloot te stellen aan het AI-model. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Namen van toolfuncties die geen bevestiging vereisen. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Zet geen gedachten in de AI-geschiedenis. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Ga verder vanaf de laatste AI-operatie. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Spreek gedachten hardop uit tijdens AI-verwerking. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Schakel sessiecaching uit voor deze bewerking. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Sta gebruik van standaardtools in AI-bewerkingen toe. |
| `-AudioTemperature` | Double | — | — | Named | — | Audio temperatuur voor AI audio generatie. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor het genereren van AI-antwoorden. |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads dat moet worden gebruikt voor AI-bewerking. |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex om te onderdrukken in AI-uitvoer. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audiocontextgrootte voor AI-audioverwerking. |
| `-SilenceThreshold` | Double | — | — | Named | — | Stille-drempel voor AI-audioverwerking. |
| `-LengthPenalty` | Double | — | — | Named | — | Lengtestraf voor AI-reeksgeneratie. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor AI-uitvoer. |
| `-LogProbThreshold` | Double | — | — | Named | — | Drempelwaarde voor logkans van AI-uitvoer. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen spraakdrempel voor AI-audioverwerking. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | PS C:\> Get-Help Get-ChildItem |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | .PARAMETER Name
Hiermee wordt een unieke id voor de resource opgegeven. Deze naam is uniek binnen een resourcegroep. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Schakel VOX uit voor AI-audio-uitvoer. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Gebruik desktopaudiocaptuur voor AI-audio. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Dit is een cmdlet die wordt gebruikt om bestanden en mappen te beheren. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Gebruik beam search sampling strategie voor AI. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Zet alleen antwoorden van AI terug. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Dit cmdlet verbindt een externe PowerShell-sessie.
.DESCRIPTION
    Het Enter-PSSession cmdlet start een interactieve sessie met een externe computer. Tijdens de sessie worden de typt opdrachten uitgevoerd op de externe computer, alsof u rechtstreeks op de externe computer typt. Er kan slechts één interactieve sessie tegelijk actief zijn.
    Als u een permanente verbinding met één externe computer wilt maken, gebruikt u de PSSession-cmdlets in plaats van Enter-PSSession. Voor meer informatie typt u: Get-Help about_PSSessions.
    U kunt de computernaam of een sessieobject opgeven of een nieuw of bestaand PSSession-object gebruiken. In tegenstelling tot de sessie die wordt gemaakt wanneer u de ComputerName-parameter gebruikt, kunt u met de sessie die door de PSSession wordt gemaakt, de verbinding met meer flexibiliteit beheren.
.PARAMETER ComputerName
    Hiermee geeft u een computernaam op. Dit cmdlet start een interactieve sessie met de opgegeven externe computer. Voer één computernaam in. De standaardinstelling is de lokale computer.
    Typ de NetBIOS-naam, het IP-adres of de Fully Qualified Domain Name (FQDN) van één of meer computers in een comma-separated lijst. Om de lokale computer op te geven, typt u de computernaam, localhost of een punt (.).
    Deze parameter is niet afhankelijk van Windows PowerShell-remoting. U kunt deze parameter gebruiken in elke computer die de Windows PowerShell-remoting-technologie ondersteunt of een andere technologie zoals WS-Management.
.PARAMETER Session
    Hiermee geeft u een Windows PowerShell-sessie (PSSession) op die moet worden gebruikt voor de interactieve sessie. Deze parameter gebruikt een sessieobject. Voer ook een variabele in die het sessieobject bevat of een opdracht die het sessieobject maakt, zoals een Get-PSSession of New-PSSession opdracht.
    Wanneer u deze parameter gebruikt, maakt het cmdlet geen verbinding met een nieuwe sessie, maar wordt de opgegeven sessie gebruikt voor de interactieve sessie. Als u de sessie afsluit, wordt de PSSession gesloten.
    Wanneer u deze parameter gebruikt, kunt u de ComputerName of ApplicationName parameters niet gebruiken.
.PARAMETER SessionOption
    Hiermee stelt u geavanceerde opties in voor de sessie. Voer een SessionOption-object in, zoals een object dat u maakt met de New-PSSessionOption cmdlet, of een hash-tabel met de sleutels die u instelt.
    De standaardwaarden voor de opties worden bepaald door de waarde van de $PSSessionOption voorkeursvariabele, indien ingesteld. Anders worden de standaardwaarden bepaald door opties die zijn ingesteld in de sessieconfiguratie.
    Voor een beschrijving van de sessieopties, typt u: Get-Help New-PSSessionOption.
.PARAMETER Port
    Hiermee geeft u de beheerpoort op de externe computer op. Als u geen poort opgeeft, wordt de standaardpoort 5985 (de WinRM-poort voor HTTP) gebruikt.
    Gebruik deze parameter alleen als de externe computer een niet-standaard poort gebruikt. Voordat u een andere poort opgeeft, moet u ervoor zorgen dat de firewall op de externe computer is geconfigureerd om verkeer op die poort toe te staan.
.PARAMETER UseSSL
    Gebruik de Secure Sockets Layer (SSL)-protocol om een verbinding met de externe computer tot stand te brengen. Als deze parameter wordt gebruikt, wordt de WinRM-service SSL gebruikt om de externe computer te verifiëren op een manier die voldoet aan de SSL-vereisten.
    Als u een SSL-verbinding gebruikt, kan de waarde van de Port-parameter worden gewijzigd in 5986 (de WinRM-poort voor HTTPS).
.PARAMETER ConfigurationName
    Hiermee geeft u de sessieconfiguratie op die wordt gebruikt voor de interactieve sessie. Voer een configuratienaam in of de fully qualified resource URI voor een sessieconfiguratie. Als u alleen een configuratienaam opgeeft, wordt het volgende schema voor de URI gebruikt: http://schemas.microsoft.com/powershell/(ConfigurationName).
    Wanneer deze parameter wordt gebruikt, wordt het cmdlet alleen verbonden met sessies die de opgegeven sessieconfiguratie gebruiken.
.INPUTS
    System.String
        U kunt een computernaam naar Enter-PSSession pipen (invoer van de pijplijn).
    System.Management.Automation.Runspaces.PSSession
        U kunt een sessieobject naar Enter-PSSession pipen.
.OUTPUTS
    Geen
        Dit cmdlet retourneert geen uitvoer.
.NOTES
    Om de ComputerName-parameter te gebruiken, moet de lokale computer zijn geconfigureerd voor Windows PowerShell-remoting. Voor meer informatie, typt u: Get-Help about_Remote_Requirements.
    In plaats van de computernaam te gebruiken, kunt u deze cmdlet gebruiken om verbinding te maken met de lokale computer.
    Wanneer u verbinding maakt met de lokale computer, heeft het cmdlet geen externe proces en sessie nodig, dus worden veel parameters die zijn ontworpen voor interactie met een externe computer genegeerd, zoals de ParameterPort en UseSSL.
    Wanneer u de sessie afsluit, wordt de interactieve sessie met de externe computer beëindigd en keert u terug naar de lokale sessie. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter voor markupblocktypes in AI-uitvoer. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale terugbellenlengte voor toolaanroepen. |

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

> De tekst om te zetten van diplomatiek taalgebruik

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

> .SYNOPSIS
Ontvangt de status van de geschiedenis van de metagegevensarchief.

.DESCRIPTION
De cmdlet Get-AzMetadataArchiveHistoryStatus ontvangt de status van de geschiedenis van de metagegevensarchief.

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

> Temperatuur voor respons willekeurigheid (0.0-1.0)

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

> Het type LLM-query

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

> De modelidentificatie of het patroon dat moet worden gebruikt voor AI-bewerkingen

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

> De API-eindpunt-URL voor AI-bewerkingen

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

> De API-sleutel voor geverifieerde AI-operaties

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

> Geeft aan dat LLM geen ondersteuning heeft voor JSON-schema's

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

> De time-out in seconden voor AI-operaties

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

> Databasepad voor voorkeursgegevensbestanden

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

> Kopieer de getransformeerde tekst naar het klembord

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

> Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren

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

> Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren

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

> Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden

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

> Bijlagen om op te nemen in de AI-bewerking.

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

> Niveau van beelddetail voor AI-verwerking.

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

> Functies beschikbaar voor het AI-model.

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

> Cmdlets om bloot te stellen aan het AI-model.

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

> Namen van toolfuncties die geen bevestiging vereisen.

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

> Zet geen gedachten in de AI-geschiedenis.

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

> Ga verder vanaf de laatste AI-operatie.

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

> Spreek gedachten hardop uit tijdens AI-verwerking.

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

> Schakel sessiecaching uit voor deze bewerking.

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

> Sta gebruik van standaardtools in AI-bewerkingen toe.

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

> Audio temperatuur voor AI audio generatie.

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

> Temperatuur voor het genereren van AI-antwoorden.

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

> Aantal CPU-threads dat moet worden gebruikt voor AI-bewerking.

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

> Regex om te onderdrukken in AI-uitvoer.

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

> Audiocontextgrootte voor AI-audioverwerking.

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

> Stille-drempel voor AI-audioverwerking.

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

> Lengtestraf voor AI-reeksgeneratie.

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

> Entropiedrempel voor AI-uitvoer.

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

> Drempelwaarde voor logkans van AI-uitvoer.

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

> Geen spraakdrempel voor AI-audioverwerking.

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

> PS C:\> Get-Help Get-ChildItem

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

> .PARAMETER Name
Hiermee wordt een unieke id voor de resource opgegeven. Deze naam is uniek binnen een resourcegroep.

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

> Schakel VOX uit voor AI-audio-uitvoer.

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

> Gebruik desktopaudiocaptuur voor AI-audio.

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

> Dit is een cmdlet die wordt gebruikt om bestanden en mappen te beheren.

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

> Gebruik beam search sampling strategie voor AI.

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

> Zet alleen antwoorden van AI terug.

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

> .SYNOPSIS
    Dit cmdlet verbindt een externe PowerShell-sessie.
.DESCRIPTION
    Het Enter-PSSession cmdlet start een interactieve sessie met een externe computer. Tijdens de sessie worden de typt opdrachten uitgevoerd op de externe computer, alsof u rechtstreeks op de externe computer typt. Er kan slechts één interactieve sessie tegelijk actief zijn.
    Als u een permanente verbinding met één externe computer wilt maken, gebruikt u de PSSession-cmdlets in plaats van Enter-PSSession. Voor meer informatie typt u: Get-Help about_PSSessions.
    U kunt de computernaam of een sessieobject opgeven of een nieuw of bestaand PSSession-object gebruiken. In tegenstelling tot de sessie die wordt gemaakt wanneer u de ComputerName-parameter gebruikt, kunt u met de sessie die door de PSSession wordt gemaakt, de verbinding met meer flexibiliteit beheren.
.PARAMETER ComputerName
    Hiermee geeft u een computernaam op. Dit cmdlet start een interactieve sessie met de opgegeven externe computer. Voer één computernaam in. De standaardinstelling is de lokale computer.
    Typ de NetBIOS-naam, het IP-adres of de Fully Qualified Domain Name (FQDN) van één of meer computers in een comma-separated lijst. Om de lokale computer op te geven, typt u de computernaam, localhost of een punt (.).
    Deze parameter is niet afhankelijk van Windows PowerShell-remoting. U kunt deze parameter gebruiken in elke computer die de Windows PowerShell-remoting-technologie ondersteunt of een andere technologie zoals WS-Management.
.PARAMETER Session
    Hiermee geeft u een Windows PowerShell-sessie (PSSession) op die moet worden gebruikt voor de interactieve sessie. Deze parameter gebruikt een sessieobject. Voer ook een variabele in die het sessieobject bevat of een opdracht die het sessieobject maakt, zoals een Get-PSSession of New-PSSession opdracht.
    Wanneer u deze parameter gebruikt, maakt het cmdlet geen verbinding met een nieuwe sessie, maar wordt de opgegeven sessie gebruikt voor de interactieve sessie. Als u de sessie afsluit, wordt de PSSession gesloten.
    Wanneer u deze parameter gebruikt, kunt u de ComputerName of ApplicationName parameters niet gebruiken.
.PARAMETER SessionOption
    Hiermee stelt u geavanceerde opties in voor de sessie. Voer een SessionOption-object in, zoals een object dat u maakt met de New-PSSessionOption cmdlet, of een hash-tabel met de sleutels die u instelt.
    De standaardwaarden voor de opties worden bepaald door de waarde van de $PSSessionOption voorkeursvariabele, indien ingesteld. Anders worden de standaardwaarden bepaald door opties die zijn ingesteld in de sessieconfiguratie.
    Voor een beschrijving van de sessieopties, typt u: Get-Help New-PSSessionOption.
.PARAMETER Port
    Hiermee geeft u de beheerpoort op de externe computer op. Als u geen poort opgeeft, wordt de standaardpoort 5985 (de WinRM-poort voor HTTP) gebruikt.
    Gebruik deze parameter alleen als de externe computer een niet-standaard poort gebruikt. Voordat u een andere poort opgeeft, moet u ervoor zorgen dat de firewall op de externe computer is geconfigureerd om verkeer op die poort toe te staan.
.PARAMETER UseSSL
    Gebruik de Secure Sockets Layer (SSL)-protocol om een verbinding met de externe computer tot stand te brengen. Als deze parameter wordt gebruikt, wordt de WinRM-service SSL gebruikt om de externe computer te verifiëren op een manier die voldoet aan de SSL-vereisten.
    Als u een SSL-verbinding gebruikt, kan de waarde van de Port-parameter worden gewijzigd in 5986 (de WinRM-poort voor HTTPS).
.PARAMETER ConfigurationName
    Hiermee geeft u de sessieconfiguratie op die wordt gebruikt voor de interactieve sessie. Voer een configuratienaam in of de fully qualified resource URI voor een sessieconfiguratie. Als u alleen een configuratienaam opgeeft, wordt het volgende schema voor de URI gebruikt: http://schemas.microsoft.com/powershell/(ConfigurationName).
    Wanneer deze parameter wordt gebruikt, wordt het cmdlet alleen verbonden met sessies die de opgegeven sessieconfiguratie gebruiken.
.INPUTS
    System.String
        U kunt een computernaam naar Enter-PSSession pipen (invoer van de pijplijn).
    System.Management.Automation.Runspaces.PSSession
        U kunt een sessieobject naar Enter-PSSession pipen.
.OUTPUTS
    Geen
        Dit cmdlet retourneert geen uitvoer.
.NOTES
    Om de ComputerName-parameter te gebruiken, moet de lokale computer zijn geconfigureerd voor Windows PowerShell-remoting. Voor meer informatie, typt u: Get-Help about_Remote_Requirements.
    In plaats van de computernaam te gebruiken, kunt u deze cmdlet gebruiken om verbinding te maken met de lokale computer.
    Wanneer u verbinding maakt met de lokale computer, heeft het cmdlet geen externe proces en sessie nodig, dus worden veel parameters die zijn ontworpen voor interactie met een externe computer genegeerd, zoals de ParameterPort en UseSSL.
    Wanneer u de sessie afsluit, wordt de interactieve sessie met de externe computer beëindigd en keert u terug naar de lokale sessie.

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

> Filter voor markupblocktypes in AI-uitvoer.

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

> Maximale terugbellenlengte voor toolaanroepen.

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/ConvertFrom-CorporateSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Update-AllImageMetaData.md)
