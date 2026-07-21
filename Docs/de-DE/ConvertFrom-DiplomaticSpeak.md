# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize`

## Synopsis

> Konvertiert diplomatische oder taktvolle Sprache in direkte, klare und unverblümte Sprache.

## Description

Diese Funktion nimmt diplomatische Ausdrucksweisen und übersetzt sie, um die wahre Bedeutung hinter höflicher oder politisch korrekter Sprache zu enthüllen. Sie nutzt KI-Sprachmodelle, um beschönigende Ausdrücke in direkte Aussagen umzuwandeln, wodurch die Kommunikation unmissverständlich und leicht verständlich wird. Die Funktion ist besonders nützlich für die Analyse politischer Aussagen, geschäftlicher Kommunikation oder jeglicher Texte, bei denen die wahre Bedeutung durch diplomatische Sprache verschleiert sein könnte.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Der Text, der aus der diplomatischen Sprache konvertiert werden soll |
| `-Instructions` | String | — | — | 1 | `''` | .PARAMETER Name
Gibt den Namen des gewünschten virtuellen Netzwerks an.

.PARAMETER ResourceGroupName
Gibt den Namen der Ressourcengruppe an, zu der das virtuelle Netzwerk gehört.

.PARAMETER VirtualNetwork
Gibt das virtuelle Netzwerk an, dessen Name abgerufen werden soll.

.Eingaben
System.String
Sie können eine Zeichenfolge, die den Namen des gewünschten virtuellen Netzwerks enthält, an die Pipe übergeben.

.Ausgaben
Microsoft.Azure.Commands.Network.Models.PSVirtualNetwork
Das Cmdlet gibt ein PSVirtualNetwork-Objekt zurück, das das virtuelle Netzwerk darstellt. |
| `-Temperature` | Double | — | — | Named | `0.0` | Temperatur für die Zufälligkeit der Antwort (0,0–1,0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Die Modellkennung oder das Muster, das für KI-Operationen verwendet werden soll |
| `-ApiEndpoint` | String | — | — | Named | — | Der API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Kopieren Sie den transformierten Text in die Zwischenablage |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Alternative, in der Sitzung gespeicherte Einstellungen für KI-Präferenzen verwenden |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Löschen Sie alternative Einstellungen, die für KI-Präferenzen in der Sitzung gespeichert sind |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Einstellungen nur in persistenten Voreinstellungen speichern, ohne die Sitzung zu beeinflussen |
| `-Attachments` | Object[] | — | — | Named | — | Anhänge, die in den KI-Vorgang einbezogen werden sollen. |
| `-ImageDetail` | String | — | — | Named | — | Detaillierungsgrad des Bildes für die KI-Verarbeitung. |
| `-Functions` | Object[] | — | — | Named | — | Dem KI-Modell verfügbar zu machende Funktionen. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlets, die dem KI-Modell zur Verfügung gestellt werden. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Tool-Funktionsnamen, die keine Bestätigung erfordern. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | .PARAMETER ComputerName
Gibt den Namen des Computers oder der Computer an, auf denen die Aufgabe ausgeführt werden soll. Geben Sie einen NetBIOS-Namen, eine IP-Adresse oder einen vollqualifizierten Domänennamen ein. Wenn dieser Parameter nicht angegeben wird, wird standardmäßig der lokale Computer verwendet. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .DESCRIPTION
Das Cmdlet Get-HgsClientConfiguration ruft die Kerninformationen des Host-Überwachungsdiensts (Host Guardian Service, HGS) ab, die die aktuelle Host-Instanz für die Ausführung geschützter virtueller Maschinen benötigt. Diese Informationen werden lokal vom HGS-Clientdienst verwaltet, der in den Betriebssystemfunktionen von Host-Überwachungs-Hyper-V enthalten ist.

Wenn Sie dieses Cmdlet ausführen, werden die folgenden Informationen abgerufen und angezeigt:
-- Aktivierungsmodus: Gibt den Modus an, den der Host für die Aktivierung geschützter VMs verwendet. Zulässige Werte sind: "TLS" und "Berechtigungsnachweis".
-- Host-Überwachungsdienst-URLs: Die URLs der HGS-Server, bei denen der Host registriert ist.
-- Schlüsselschutzserver-URLs: Bruchteile von URLs des Schlüsselschutzdienstes, die älteren Hosts zur Verfügung gestellt werden. Neuere Hosts sollten stattdessen die Host-Überwachungsdienst-URLs verwenden.
-- Anforderung des abgeschirmten Hosts: Gibt an, ob der Host den abgeschirmten Zustand benötigt, den er beim HGS erhält, nachdem er eine Integritätsrichtlinie bestanden hat.

Das Cmdlet meldet auch, ob der lokale Host in der Lage ist, geschützte VMs auszuführen, und ob er gültige Schlüssel zum Starten einer geschützten VM abrufen kann. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Sprechen Sie Gedanken während der KI-Verarbeitung laut aus. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sitzungs-Caching für diesen Vorgang deaktivieren. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Verwendung von Standardwerkzeugen im KI-Betrieb erlauben. |
| `-AudioTemperature` | Double | — | — | Named | — | Audio-Temperatur für KI-Audioerzeugung. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatur für die Generierung der KI-Antwort. |
| `-CpuThreads` | Int32 | — | — | Named | — | Anzahl der CPU-Threads, die für KI-Operationen verwendet werden sollen. |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex zum Unterdrücken in der KI-Ausgabe. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Kontextgröße für die Audioverarbeitung mit KI. |
| `-SilenceThreshold` | Double | — | — | Named | — | Stummschwellenwert für die KI-Audioverarbeitung. |
| `-LengthPenalty` | Double | — | — | Named | — | Längenstrafe für die KI-Sequenzgenerierung. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropieschwellenwert für KI-Ausgabe. |
| `-LogProbThreshold` | Double | — | — | Named | — | Log-Wahrscheinlichkeitsschwellenwert für KI-Ausgabe. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Keine Sprachschwelle für KI-Audioverarbeitung. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Ruft den Status eines Hyper-V-Replikats ab.

.DESCRIPTION
    Das Cmdlet **Get-VMReplication** ruft Replikations- und Erweiterungsreplikationsstatus für virtuelle Maschinen ab, die Teil einer Hyper-V-Replikat-Beziehung sind.

.PARAMETER VMName
    Gibt den Namen einer virtuellen Maschine an.

.PARAMETER VM
    Gibt ein Objekt einer virtuellen Maschine an.

.PARAMETER ComputerName
    Gibt einen oder mehrere Hyper-V-Hosts an, auf denen das Cmdlet ausgeführt wird.

.PARAMETER ReplicationMode
    Gibt den Replikationsmodus an: Primary, Recovery, oder ExtendedReplica.

.PARAMETER ReplicationState
    Gibt den Replikationszustand an: Replicating, FailoverResyncRequired, ReplicationSuspended, ReplicationComplete, Canceled, Error, oder WaitingForStartResync.

.PARAMETER ReplicationHealth
    Gibt den Replikations-Integritätsstatus an: Critical, Warning, oder Healthy.

.PARAMETER PrimaryServer
    Gibt den primären Server an.

.PARAMETER ReplicaServer
    Gibt den Replikatserver an.

.PARAMETER TrustGroups
    Gibt Vertrauensgruppen an.

.PARAMETER AsJob
    Führt das Cmdlet als Hintergrundjob aus.

.PARAMETER CimSession
    Führt das Cmdlet in einer Remote-Sitzung oder auf einem Remotecomputer aus.

.EXAMPLE
    PS C:\> Get-VMReplication
    Dieser Befehl ruft die Replikationseinstellungen für alle virtuellen Maschinen auf dem lokalen Hyper-V-Host ab.

.EXAMPLE
    PS C:\> Get-VMReplication -VMName „VM01“
    Dieser Befehl ruft die Replikationseinstellungen für die virtuelle Maschine namens VM01 ab.

.INPUTS
    VM

.OUTPUTS
    VMReplication

.NOTES
    Dieses Cmdlet ruft Replikationsstatus ab. Um Replikationseinstellungen zu ändern, verwenden Sie Set-VMReplication.

.LINK
    Online Version: https://technet.microsoft.com/library/hh848509.aspx
    Enable-VMReplication
    New-VMReplicationAuthorizationRule
    Remove-VMReplicationAuthorizationRule
    Set-VMReplication
    Set-VMReplicationAuthorizationRule
    Test-VMReplicationConnection |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Nachfolgend finden Sie eine Liste Ihrer aufgetretenen Befehle.

Jeder Befehl wird mit seiner ID, der Anzahl der Ausführungen, dem letzten Zeitstempel und der Befehlszeile angezeigt. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Deaktivieren Sie VOX für die KI-Audioausgabe. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Desktop-Audioaufnahme für KI-Audio verwenden. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Verwenden Sie den Kontext nicht für den KI-Betrieb. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Verwenden Sie die Beam-Such-Sampling-Strategie für KI. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Hilft, den Verlauf der PowerShell-Sitzung zu bereinigen. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Hier ist der übersetzte Text. Beachten Sie, dass PowerShell-Cmdlet-Hilfetexte beibehalten werden müssen, wie z. B. Parameter, Syntax und Befehlsnamen. Ich werde nur die menschlich lesbaren Teile übersetzen.

```
.EXAMPLE
Dieses Beispiel zeigt, wie das Cmdlet verwendet wird.
```

```
.PARAMETER Name
Gibt den Namen der Ressource an.
```

```
.DESCRIPTION
Das Cmdlet ruft eine Liste von Elementen ab.
```

```
Get-Help Get-Process -Detailed
Dieser Befehl zeigt detaillierte Hilfe zum Cmdlet Get-Process an.
```

Bitte geben Sie den tatsächlichen Text an, den Sie übersetzen möchten. Der obige Text ist nur ein Platzhalter. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter für Markup-Blöcke in KI-Ausgabe. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale Rückruflänge für Tool-Aufrufe. |

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

> Der Text, der aus der diplomatischen Sprache konvertiert werden soll

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

> .PARAMETER Name
Gibt den Namen des gewünschten virtuellen Netzwerks an.

.PARAMETER ResourceGroupName
Gibt den Namen der Ressourcengruppe an, zu der das virtuelle Netzwerk gehört.

.PARAMETER VirtualNetwork
Gibt das virtuelle Netzwerk an, dessen Name abgerufen werden soll.

.Eingaben
System.String
Sie können eine Zeichenfolge, die den Namen des gewünschten virtuellen Netzwerks enthält, an die Pipe übergeben.

.Ausgaben
Microsoft.Azure.Commands.Network.Models.PSVirtualNetwork
Das Cmdlet gibt ein PSVirtualNetwork-Objekt zurück, das das virtuelle Netzwerk darstellt.

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

> Temperatur für die Zufälligkeit der Antwort (0,0–1,0)

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

> Der Typ der LLM-Abfrage

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

> Die Modellkennung oder das Muster, das für KI-Operationen verwendet werden soll

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

> Der API-Endpunkt-URL für KI-Operationen

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

> Der API-Schlüssel für authentifizierte KI-Operationen

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

> Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat

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

> Das Zeitlimit in Sekunden für KI-Operationen

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

> Datenbankpfad für Präferenzdatendateien

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

> Kopieren Sie den transformierten Text in die Zwischenablage

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

> Alternative, in der Sitzung gespeicherte Einstellungen für KI-Präferenzen verwenden

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

> Löschen Sie alternative Einstellungen, die für KI-Präferenzen in der Sitzung gespeichert sind

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

> Einstellungen nur in persistenten Voreinstellungen speichern, ohne die Sitzung zu beeinflussen

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

> Anhänge, die in den KI-Vorgang einbezogen werden sollen.

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

> Detaillierungsgrad des Bildes für die KI-Verarbeitung.

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

> Dem KI-Modell verfügbar zu machende Funktionen.

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

> Cmdlets, die dem KI-Modell zur Verfügung gestellt werden.

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

> Tool-Funktionsnamen, die keine Bestätigung erfordern.

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

> .PARAMETER ComputerName
Gibt den Namen des Computers oder der Computer an, auf denen die Aufgabe ausgeführt werden soll. Geben Sie einen NetBIOS-Namen, eine IP-Adresse oder einen vollqualifizierten Domänennamen ein. Wenn dieser Parameter nicht angegeben wird, wird standardmäßig der lokale Computer verwendet.

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

> .DESCRIPTION
Das Cmdlet Get-HgsClientConfiguration ruft die Kerninformationen des Host-Überwachungsdiensts (Host Guardian Service, HGS) ab, die die aktuelle Host-Instanz für die Ausführung geschützter virtueller Maschinen benötigt. Diese Informationen werden lokal vom HGS-Clientdienst verwaltet, der in den Betriebssystemfunktionen von Host-Überwachungs-Hyper-V enthalten ist.

Wenn Sie dieses Cmdlet ausführen, werden die folgenden Informationen abgerufen und angezeigt:
-- Aktivierungsmodus: Gibt den Modus an, den der Host für die Aktivierung geschützter VMs verwendet. Zulässige Werte sind: "TLS" und "Berechtigungsnachweis".
-- Host-Überwachungsdienst-URLs: Die URLs der HGS-Server, bei denen der Host registriert ist.
-- Schlüsselschutzserver-URLs: Bruchteile von URLs des Schlüsselschutzdienstes, die älteren Hosts zur Verfügung gestellt werden. Neuere Hosts sollten stattdessen die Host-Überwachungsdienst-URLs verwenden.
-- Anforderung des abgeschirmten Hosts: Gibt an, ob der Host den abgeschirmten Zustand benötigt, den er beim HGS erhält, nachdem er eine Integritätsrichtlinie bestanden hat.

Das Cmdlet meldet auch, ob der lokale Host in der Lage ist, geschützte VMs auszuführen, und ob er gültige Schlüssel zum Starten einer geschützten VM abrufen kann.

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

> Sprechen Sie Gedanken während der KI-Verarbeitung laut aus.

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

> Sitzungs-Caching für diesen Vorgang deaktivieren.

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

> Verwendung von Standardwerkzeugen im KI-Betrieb erlauben.

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

> Audio-Temperatur für KI-Audioerzeugung.

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

> Temperatur für die Generierung der KI-Antwort.

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

> Anzahl der CPU-Threads, die für KI-Operationen verwendet werden sollen.

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

> Regex zum Unterdrücken in der KI-Ausgabe.

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

> Kontextgröße für die Audioverarbeitung mit KI.

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

> Stummschwellenwert für die KI-Audioverarbeitung.

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

> Längenstrafe für die KI-Sequenzgenerierung.

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

> Entropieschwellenwert für KI-Ausgabe.

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

> Log-Wahrscheinlichkeitsschwellenwert für KI-Ausgabe.

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

> Keine Sprachschwelle für KI-Audioverarbeitung.

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

> .SYNOPSIS
    Ruft den Status eines Hyper-V-Replikats ab.

.DESCRIPTION
    Das Cmdlet **Get-VMReplication** ruft Replikations- und Erweiterungsreplikationsstatus für virtuelle Maschinen ab, die Teil einer Hyper-V-Replikat-Beziehung sind.

.PARAMETER VMName
    Gibt den Namen einer virtuellen Maschine an.

.PARAMETER VM
    Gibt ein Objekt einer virtuellen Maschine an.

.PARAMETER ComputerName
    Gibt einen oder mehrere Hyper-V-Hosts an, auf denen das Cmdlet ausgeführt wird.

.PARAMETER ReplicationMode
    Gibt den Replikationsmodus an: Primary, Recovery, oder ExtendedReplica.

.PARAMETER ReplicationState
    Gibt den Replikationszustand an: Replicating, FailoverResyncRequired, ReplicationSuspended, ReplicationComplete, Canceled, Error, oder WaitingForStartResync.

.PARAMETER ReplicationHealth
    Gibt den Replikations-Integritätsstatus an: Critical, Warning, oder Healthy.

.PARAMETER PrimaryServer
    Gibt den primären Server an.

.PARAMETER ReplicaServer
    Gibt den Replikatserver an.

.PARAMETER TrustGroups
    Gibt Vertrauensgruppen an.

.PARAMETER AsJob
    Führt das Cmdlet als Hintergrundjob aus.

.PARAMETER CimSession
    Führt das Cmdlet in einer Remote-Sitzung oder auf einem Remotecomputer aus.

.EXAMPLE
    PS C:\> Get-VMReplication
    Dieser Befehl ruft die Replikationseinstellungen für alle virtuellen Maschinen auf dem lokalen Hyper-V-Host ab.

.EXAMPLE
    PS C:\> Get-VMReplication -VMName „VM01“
    Dieser Befehl ruft die Replikationseinstellungen für die virtuelle Maschine namens VM01 ab.

.INPUTS
    VM

.OUTPUTS
    VMReplication

.NOTES
    Dieses Cmdlet ruft Replikationsstatus ab. Um Replikationseinstellungen zu ändern, verwenden Sie Set-VMReplication.

.LINK
    Online Version: https://technet.microsoft.com/library/hh848509.aspx
    Enable-VMReplication
    New-VMReplicationAuthorizationRule
    Remove-VMReplicationAuthorizationRule
    Set-VMReplication
    Set-VMReplicationAuthorizationRule
    Test-VMReplicationConnection

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

> Nachfolgend finden Sie eine Liste Ihrer aufgetretenen Befehle.

Jeder Befehl wird mit seiner ID, der Anzahl der Ausführungen, dem letzten Zeitstempel und der Befehlszeile angezeigt.

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

> Deaktivieren Sie VOX für die KI-Audioausgabe.

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

> Desktop-Audioaufnahme für KI-Audio verwenden.

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

> Verwenden Sie den Kontext nicht für den KI-Betrieb.

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

> Verwenden Sie die Beam-Such-Sampling-Strategie für KI.

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

> Hilft, den Verlauf der PowerShell-Sitzung zu bereinigen.

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

> Hier ist der übersetzte Text. Beachten Sie, dass PowerShell-Cmdlet-Hilfetexte beibehalten werden müssen, wie z. B. Parameter, Syntax und Befehlsnamen. Ich werde nur die menschlich lesbaren Teile übersetzen.

```
.EXAMPLE
Dieses Beispiel zeigt, wie das Cmdlet verwendet wird.
```

```
.PARAMETER Name
Gibt den Namen der Ressource an.
```

```
.DESCRIPTION
Das Cmdlet ruft eine Liste von Elementen ab.
```

```
Get-Help Get-Process -Detailed
Dieser Befehl zeigt detaillierte Hilfe zum Cmdlet Get-Process an.
```

Bitte geben Sie den tatsächlichen Text an, den Sie übersetzen möchten. Der obige Text ist nur ein Platzhalter.

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

> Filter für Markup-Blöcke in KI-Ausgabe.

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

> Maximale Rückruflänge für Tool-Aufrufe.

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertFrom-CorporateSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/de-DE/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/de-DE/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/de-DE/Update-AllImageMetaData.md)
