# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getlist`, `getstring`

## Synopsis

> Extrahiert oder generiert mithilfe von KI-Analyse eine Liste relevanter Zeichenfolgen aus einem Eingabetext.

## Description

Diese Funktion nutzt KI-Modelle, um Eingabetext zu analysieren und eine Liste relevanter Zeichenfolgen zu extrahieren oder zu generieren. Sie kann Text verarbeiten, um Schlüsselpunkte zu identifizieren, Elemente aus Listen zu extrahieren oder verwandte Konzepte zu generieren. Die Eingabe kann direkt über Parameter, aus der Pipeline oder aus der Systemzwischenablage erfolgen. Die Funktion gibt ein Zeichenfolgenarray zurück und kopiert die Ergebnisse optional in die Zwischenablage.

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Cmdlet
    Out-Null

Übersicht
    Löscht die Ausgabe, anstatt sie über die Pipeline zu senden oder anzuzeigen.

Syntax
    Out-Null [-InputObject <psobject>] [-Verbose] [-Debug] [-ErrorAction <ActionPreference>]
    [-WarningAction <ActionPreference>] [-InformationAction <ActionPreference>]
    [-ProgressAction <ActionPreference>] [-ErrorVariable <string>]
    [-WarningVariable <string>] [-InformationVariable <string>]
    [-OutVariable <string>] [-OutBuffer <int>] [-PipelineVariable <string>]
    [<CommonParameters>]

Parameter
    -InputObject <psobject>
        Gibt das Objekt an, das an Out-Null gesendet werden soll. Geben Sie eine Variable ein, die
die Objekte enthält, oder geben Sie einen Befehl oder Ausdruck ein, mit dem die Objekte abgerufen werden.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    true (ByValue)
        Platzhalterzeichen akzeptieren?  false

    -Verbose [<SwitchParameter>]
        Zeigt ausführliche Informationen zur Ausführung des Cmdlets an.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -Debug [<SwitchParameter>]
        Zeigt Debugmeldungen auf dem Bildschirm beim Verarbeiten des Befehls an.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -ErrorAction <ActionPreference>
        Legt fest, wie das Cmdlet auf einen Fehler reagiert. Mögliche Werte: SilentlyContinue, Stop,
Continue, Inquire, Ignore, Suspend, Break.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -WarningAction <ActionPreference>
        Legt fest, wie das Cmdlet auf eine Warnung reagiert. Mögliche Werte: SilentlyContinue, Stop,
Continue, Inquire, Ignore, Suspend, Break.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -InformationAction <ActionPreference>
        Legt fest, wie das Cmdlet auf ein Informationsereignis reagiert. Mögliche Werte:
SilentlyContinue, Stop, Continue, Inquire, Ignore, Suspend, Break.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -ProgressAction <ActionPreference>
        Legt fest, wie das Cmdlet auf Fortschrittsaktualisierungen reagiert. Mögliche Werte:
SilentlyContinue, Stop, Continue, Inquire, Ignore, Suspend, Break.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -ErrorVariable <string>
        Speichert Fehlermeldungen in einer benannten Variablen.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -WarningVariable <string>
        Speichert Warnmeldungen in einer benannten Variablen.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -InformationVariable <string>
        Speichert Informationsmeldungen in einer benannten Variablen.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -OutVariable <string>
        Speichert Ausgabeobjekte in einer benannten Variablen.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -OutBuffer <int>
        Bestimmt die Anzahl der Objekte, die vor dem Senden über die Pipeline gepuffert werden.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -PipelineVariable <string>
        Speichert den Wert des aktuellen Pipelineelements in einer benannten Variablen.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    <CommonParameters>
        Dieses Cmdlet unterstützt die allgemeinen Parameter: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable und OutVariable. Weitere Informationen finden Sie unter
        about_CommonParameters.

Eingaben
    psobject
        Sie können jedes Objekt an Out-Null über die Pipeline übergeben. Eingabeobjekte werden
        gelöscht, nicht an die Pipelineausgabe gesendet.

Ausgaben
    none
        Out-Null gibt keine Ausgabe zurück.

Hinweise
    Das Cmdlet Out-Null löscht die Ausgabe effektiv, indem es sie an $null sendet. Dies ist
    nützlich, wenn Sie ein Skript oder einen Befehl ausführen möchten, aber die Ausgabe nicht in der
    Konsole sehen oder über die Pipeline senden möchten.

    Out-Null kann je nach den ausgeführten Befehlen die Leistung beeinträchtigen, da die Ausgabe
    weiterhin im Arbeitsspeicher verarbeitet wird.

    Um die Ausgabe zu unterdrücken, können Sie auch die Umleitung auf $null verwenden (z. B.
    Get-Process > $null).

    Verwenden Sie Out-Null, wenn Sie nur die Ausgabe aus einem Befehl unterdrücken möchten, der
    viele Daten generiert. Für eine bessere Leistung mit weniger speicherintensiven Vorgängen
    sollten Sie Get-Process | Out-Null verwenden, um die Objekte zu verwerfen.

Verwandte Links
    about_Redirection
    about_Functions_CmdletBindingAttribute
    Write-Host
    Write-Output
    Write-Debug
    Write-Verbose
    Write-Warning
    Write-Error
    Write-Information
    Write-Progress |
| `-Instructions` | String | — | — | 1 | `''` | .SYNOPSIS
Dieses Cmdlet ruft Patch-Installationsprogramme von Configuration Manager ab.

.SYNTAX
Get-CMPatchInstaller [-Id] <String> [-DisableWildcardHandling] [-ForceWildcardHandling] [<CommonParameters>]

Get-CMPatchInstaller [-Name] <String> [-DisableWildcardHandling] [-ForceWildcardHandling] [<CommonParameters>]

Get-CMPatchInstaller [-Fast] [-DisableWildcardHandling] [-ForceWildcardHandling] [<CommonParameters>]

.BESCHREIBUNG
Das Cmdlet Get-CMPatchInstaller ruft ein Patch-Installationsprogrammobjekt ab. Sie können den Namen oder die ID des Patch-Installationsprogramms angeben.

Configuration Manager verwendet Patch-Installationsprogramme, um Softwareupdates auf Clients bereitzustellen.

HINWEIS: Configuration Manager-Cmdlets müssen von der Configuration Manager-Website aus ausgeführt werden.

.BEISPIELE
Beispiel 1: Alle Patch-Installationsprogramme abrufen

PS XYZ:\> Get-CMPatchInstaller -Fast

Dieser Befehl ruft alle Patch-Installationsprogramme ab.

Beispiel 2: Ein Patch-Installationsprogramm nach Name abrufen

PS XYZ:\> Get-CMPatchInstaller -Name "PatchInstaller01"

Dieser Befehl ruft das Patch-Installationsprogramm mit dem Namen PatchInstaller01 ab.

.PARAMETER DisableWildcardHandling
Dieser Parameter behandelt Platzhalterzeichen als Literalzeichenwerte. Sie können ihn nicht mit ForceWildcardHandling kombinieren.

.PARAMETER ForceWildcardHandling
Dieser Parameter verarbeitet Platzhalterzeichen und kann zu unerwartetem Verhalten führen (nicht empfohlen). Sie können ihn nicht mit DisableWildcardHandling kombinieren.

.PARAMETER Id
Gibt die ID eines Patch-Installationsprogramms an.

.PARAMETER Name
Gibt den Namen eines Patch-Installationsprogramms an.

.PARAMETER Fast
Gibt an, dass das Cmdlet keine Lazy-Eigenschaften abruft. Das Festlegen dieses Parameters kann die Laufzeit des Cmdlets verbessern.

.EINGABEN
Keine

.AUSGABEN
IResultObject[]
IResultObject

.HINWEISE


.VERWANDTE LINKS

New-CMPatchInstaller
Remove-CMPatchInstaller
Set-CMPatchInstaller |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array von Dateipfaden zum Anhängen |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatur für die Zufälligkeit der Antwort (0,0–1,0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Bilddetailstufe |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array von Funktionsdefinitionen |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array von PowerShell-Befehlsdefinitionen zur Verwendung als Tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array von Befehlsnamen, die keine Bestätigung erfordern |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Die Modellkennung oder das Muster, das für KI-Operationen verwendet werden soll |
| `-ApiEndpoint` | String | — | — | Named | — | Der API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Ergebnis in die Zwischenablage kopieren |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | .DESCRIPTION
Das Cmdlet Get-FileHash berechnet den Hashwert einer Datei mithilfe eines angegebenen Hashalgorithmus. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | .PARAMETER IncludeTotalCount
Gibt die Gesamtzahl der Objekte sowie die Datensätze zurück. Wenn das Cmdlet den Gesamtcount nicht ermitteln kann, wird "Unbekannte Gesamtzahl" zurückgegeben. Der Gesamtcount kann ungenau sein, wenn die von der Benutzersicherheitsrichtlinie auferlegten Einschränkungen verhindern, dass auf einige Objekte zugegriffen wird.

Der Parameter "IncludeTotalCount" hat drei verschiedene Modi, die von der benannten Parameterliste des Cmdlets und dem Werttypus des Cmdlet-Arguments abhängen.

Wenn der Befehl "IncludeTotalCount" ohne einen Wert verwendet, ruft das Cmdlet den Gesamtcount ab und zeigt ihn an. Wenn der Befehl "IncludeTotalCount" mit einem Wert verwendet, der kleiner oder gleich 0 ist, wird der Gesamtcount abgerufen und der Befehl wird angehalten, bis der Benutzer die Eingabetaste drückt.

Wenn der Befehl "IncludeTotalCount" mit einem Wert verwendet wird, der größer als 0 ist, wird der Gesamtcount nicht abgerufen, und der Befehl gibt die ersten n Objekte zurück, die durch den Wert angegeben werden. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .EXTERNALHELP Get-Help -Cache @”

.SYNOPSIS
Zeigt Informationen zu Windows PowerShell-Befehlen und -Konzepten an.

.DESCRIPTION
Das Cmdlet "Get-Help" zeigt Informationen zu Windows PowerShell-Befehlen und -Konzepten an. Es zeigt Hilfeinhalte an, die aus Hilfe-Chat-Dateien auf der Festplatte stammen, bevor es die Hilfethemen aus dem Internet herunterlädt.

Ohne Parameter zeigt "Get-Help" Informationen zu Windows PowerShell-Befehlen an. Sie können auch einen Befehl wie "Get-Help Get-Process" oder einen Begriff wie "Eigenschaften" angeben. Unterstriche (_) und Platzhalterzeichen sind nicht unterstützt. Sie können die Parameter von "Get-Help" verwenden, um bestimmte Hilfeabschnitte, wie z. B. Parameter oder Beispiele, anzuzeigen.

"Get-Help" ruft die Hilfe zu einem Befehl aus der Standardquelle ab, die im bevorzugten Hilfeinformationspfad des aktuellen Servers angegeben ist.

In Windows PowerShell 3.0 und höher umfasst die Hilfe zu Befehlen Informationen zu Cmdlets, Funktionen, Workflows, Anbietern, Ali’sen und Skripten.

Für PowerShell-Funktionen und -Skripte zeigt "Get-Help" die Hilfe zu den Funktionen und Skripten im selben Format an, in dem die Hilfe zu Cmdlets angezeigt wird, und enthält alle Parameter. Sie können auch auf die Hilfe zu Skripten zugreifen, indem Sie "Get-Help" gefolgt vom Pfad zum Skript eingeben.

Sie können auch die Hilfe zu Windows PowerShell-Anbietern und zu Konzepten wie "about_Updatable_Help" abrufen.

Wenn Sie die vollständigen Hilfeinhalte nicht auf Ihrem Computer haben, können Sie die Hilfe zu einem Befehl abrufen, indem Sie den Online-Parameter verwenden, oder Sie können die Hilfedateien mithilfe des Cmdlets "Update-Help" herunterladen und installieren.

Weitere Informationen finden Sie unter about_Updatable_Help (https://go.microsoft.com/fwlink/?LinkID=235801).

HINWEIS: Informationen zu Windows PowerShell-Workflows finden Sie in den folgenden Artikeln: about_Workflows.

.PARAMETER Name
Ruft Hilfe zum angegebenen Befehl oder Konzept ab. Geben Sie den Namen eines Cmdlets, einer Funktion, eines Anbieters, eines Skripts oder eines Workflows ein, z. B. "Get-Member", einen Begriff, der in der Hilfe zu Konzepten verwendet wird, wie "Globale Assembly-Caches" oder "Eigenschaften" oder einen Alias. Platzhalterzeichen sind in Parameternamen nicht zulässig.

Wenn Sie den Namen eines Cmdlets eingeben, das in einem Modul enthalten ist, zeigt "Get-Help" die Hilfe zu dem Cmdlet an, auch wenn das Modul nicht in die aktuelle Sitzung importiert ist. Standardmäßig werden Hilfeinhalte jedoch nur für importierte Module angezeigt. Um Hilfe zu einem Cmdlet aus einem nicht importierten Modul anzuzeigen, fügen Sie den Module-Parameter hinzu.

Wenn Sie "Get-Help" ohne Parameter ausführen, werden die Namen aller Windows PowerShell-Cmdlets, -Funktionen, -Anbieter, -Ali’se und -Workflows angezeigt.

.PARAMETER Category
Zeigt Hilfe nur für Elemente im angegebenen Typ an. Gültige Werte sind: Alias, Cmdlet, Funktion, HilfeDatei, Anbieter, Allgemein, FAQ, Glossar, Skript, Codeausschnitt und Workflow. Diese Parameter akzeptiert eine Zeichenfolge, die einen einzelnen Typ angibt, z. B. "Cmdlet" oder "Alias".

.PARAMETER Component
Ruft Hilfe zu Befehlen mit dem angegebenen Komponentenwert ab. Dieser Parameter ist nützlich, wenn Sie Hilfe zu Befehlen aus einer bestimmten Komponente oder einem bestimmten Unterhaltssystem anzeigen möchten.

Geben Sie den Namen einer Komponente ein, z. B. "Exchange" oder "SQL". Platzhalterzeichen sind zulässig.

.PARAMETER Functionality
Ruft Hilfe zu Befehlen mit dem angegebenen Funktionalitätswert ab. Dieser Parameter ist nützlich, wenn Sie Hilfe zu Befehlen aus einer bestimmten Funktionalitätskategorie anzeigen möchten. Beispielsweise können Sie die Hilfe zu allen Cmdlets anzeigen, die die Sicherheitsfunktionalität implementieren.

Geben Sie den Namen einer Funktionalität ein. Platzhalterzeichen sind zulässig.

.PARAMETER Role
Ruft Hilfe zu Befehlen mit dem angegebenen Rollenwert ab. Dieser Parameter ist nützlich, wenn Sie Hilfe zu Befehlen aus einer bestimmten Rolle oder Benutzergruppe anzeigen möchten.

Geben Sie den Namen einer Rolle ein, z. B. "Servermanager" oder "Domänenverwaltung". Platzhalterzeichen sind zulässig.

.PARAMETER Path
Ruft Hilfe zu einem Befehl aus der angegebenen Datei oder dem angegebenen Speicherort ab. Dieser Parameter ruft Hilfe zu einem Befehl ab, der in einer Skriptdatei definiert ist.

Wenn Sie den Pfad einer Skriptdatei angeben, zeigt "Get-Help" die Hilfe zu der in der Skriptdatei definierten Funktion an. Wenn die Skriptdatei mehrere Funktionen enthält, zeigt "Get-Help" die Hilfe zu einer einzelnen Funktion an, die Sie im Namen-Parameter angeben.

Wenn Sie den Pfad eines Ordners angeben, durchsucht "Get-Help" nach Hilfedateien (.hlp, .txt, .xml) in dem angegebenen Ordner und zeigt die Hilfe zu den darin enthaltenen Befehlen an.

Wenn Sie den Pfad einer ausführbaren Datei angeben, sucht "Get-Help" nach einer Hilfedatei mit dem Namen der ausführbaren Datei.

Sie können auch einen Pfad zu einer Hilfedatei angeben, z. B. eine XML-Datei, .hlp-Datei oder .txt-Datei.

Mit diesem Parameter können Sie Hilfe zu nicht standardmäßigen Hilfedateien anzeigen.

Wenn Sie den Parameter "Path" verwenden, überschreibt "Get-Help" den Wert der Umgebungsvariable "$env:PSModulePath" mit dem von Ihnen angegebenen Pfad. Wenn der angegebene Pfad zu einer Hilfedatei nicht existiert, schlägt der Befehl mit einem Fehler fehl.

Wenn Sie den Parameter "Path" verwenden, sucht "Get-Help" nicht an einem der Standardspeicherorte nach Hilfe.

.PARAMETER Module
Zeigt Hilfe zu den Befehlen im angegebenen Modul an. Geben Sie ein Modulobjekt, eine Zeichenfolge eines Moduls oder ein Modul ein.

Wenn Sie den Namen eines Moduls eingeben, ruft "Get-Help" die Hilfe zu allen definierten Cmdlets, Funktionen und Workflows aus dem Modul ab.

Wenn Sie Hilfe zu einem Befehl abrufen, der nicht Teil eines Moduls ist, enthält der Name-Parameter den Cmdlet-Namen, und der Module-Parameter gibt das Modul an, zu dem der Befehl gehört. "Get-Help" ruft dann die Hilfe zu dem angegebenen Befehl aus dem angegebenen Modul ab.

Wenn Sie den Parameter "Name" und "Module" zusammen verwenden, ruft "Get-Help" die Hilfe zu den angegebenen Befehlen aus dem angegebenen Modul ab.

Wenn Sie den Parameter "Module" ohne "Name" angeben, wird eine Liste aller Befehle im angegebenen Modul angezeigt.

In Windows PowerShell 3.0 und höher können Sie Hilfe zu Befehlen aus nicht importierten Modulen mithilfe der Parameter "Name" und "Module" abrufen."@

.EXAMPLE 1
Get-Help Get-Process

.Beschreibung
Dieser Befehl zeigt die Hilfe zum Cmdlet "Get-Process" an. Die Hilfe wird entweder aus der Hilfedatei "Microsoft.PowerShell.Commands.Management.dll-Help.xml" oder aus der Datei "about_Process" abgerufen.

.EXAMPLE 2
Get-Help Get-Process -Detailed

.Beschreibung
Dieser Befehl zeigt die detaillierte Hilfe zum Cmdlet "Get-Process" an. Die Hilfe enthält Parameterbeschreibungen und Beispiele.

.EXAMPLE 3
Get-Help Get-Process -Full

.Beschreibung
Dieser Befehl zeigt die vollständige Hilfe zum Cmdlet "Get-Process" an. Die Hilfe enthält Parameterbeschreibungen, Beispiele und technische Details.

.EXAMPLE 4
Get-Help Get-Process -Examples

.Beschreibung
Dieser Befehl zeigt nur die Beispiele aus der Hilfe zum Cmdlet "Get-Process" an.

.EXAMPLE 5
Get-Help Get-Process -Parameter Id

.Beschreibung
Dieser Befehl zeigt die detaillierte Hilfe zum Parameter "Id" des Cmdlets "Get-Process" an.

.EXAMPLE 6
Get-Help Get-Process -Online

.Beschreibung
Dieser Befehl öffnet die Online-Hilfe zum Cmdlet "Get-Process" im Standard-Webbrowser.

.EXAMPLE 7
Get-Help Get-Process -Path C:\Help

.Beschreibung
Dieser Befehl zeigt die Hilfe zum Cmdlet "Get-Process" aus der Hilfedatei im angegebenen Pfad an.

.EXAMPLE 8
Get-Help about_Process

.Beschreibung
Dieser Befehl zeigt das konzeptionelle Hilfethema "about_Process" an.

.PARAMETER Detailed
Zeigt detaillierte Hilfe zu einem Befehl an, einschließlich Parameterbeschreibungen und Beispielen.

.PARAMETER Full
Zeigt die vollständige Hilfe zu einem Befehl an, einschließlich Parameterbeschreibungen, Beispiele und technische Details.

.PARAMETER Examples
Zeigt nur die Beispiele aus der Hilfe zu einem Befehl an.

.PARAMETER Parameter
Zeigt die detaillierte Hilfe zu den angegebenen Parametern an. Geben Sie einen oder mehrere Parameternamen ein, getrennt durch Kommata. Platzhalterzeichen sind zulässig.

.PARAMETER Online
Öffnet die Online-Hilfe zum angegebenen Befehl im Standard-Webbrowser.

.PARAMETER ShowWindow
Zeigt die Hilfe in einem eigenen Fenster an.

.INPUTS
System.String

.OUTPUTS
Microsoft.PowerShell.Commands.GetHelpCommand

.NOTES
Weitere Informationen finden Sie unter about_Updatable_Help.

.LINK
about_Updatable_Help

.LINK
Update-Help

.LINK
Save-Help |
| `-Speak` | SwitchParameter | — | — | Named | — | Aktivieren Sie Text-zu-Sprache für KI-Antworten |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Aktivieren Sie die Text-zu-Sprache-Funktion für KI-Gedankenantworten |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sitzung nicht im Sitzungscache speichern |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Standardtools für das KI-Modell aktivieren |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Alternative, in der Sitzung gespeicherte Einstellungen für KI-Präferenzen verwenden |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Löschen Sie alternative Einstellungen, die für KI-Präferenzen in der Sitzung gespeichert sind |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Einstellungen nur in persistenten Voreinstellungen speichern, ohne die Sitzung zu beeinflussen |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .SYNOPSIS
Fügt einem vorhandenen virtuellen Computer eine neue Netzwerkschnittstelle hinzu.

.DESCRIPTION
Das Cmdlet **Add-AzureVMNetworkInterface** fügt einem vorhandenen virtuellen Computer eine Netzwerkschnittstelle hinzu. Sie können eine Netzwerkschnittstelle für einen virtuellen Computer angeben, indem Sie diese entweder über die **Get-AzureNetworkInterface**-Ermittlung oder mithilfe der -NetworkInterface-Parameters angeben.

.PARAMETER VM
Gibt das virtuelle Computerobjekt an, dem eine Netzwerkschnittstelle hinzugefügt werden soll. Sie erhalten ein virtuelles Computerobjekt, indem Sie das Cmdlet **Get-AzureVM** verwenden.

.PARAMETER NetworkInterface
Gibt die Netzwerkschnittstelle an, die dem virtuellen Computer hinzugefügt werden soll. Sie erhalten ein Netzwerkschnittstellenobjekt, indem Sie das Cmdlet **Get-AzureNetworkInterface** verwenden.

.PARAMETER Profile
[Optional] Gibt das Azure-Profil an, das für die Kommunikation mit Azure verwendet wird. Standardmäßig werden die Umgebungsvariablen des Azure-Standardprofils verwendet.

.PARAMETER InformationAction
Gibt an, wie dieses Cmdlet auf ein Informationsereignis reagiert.
Die zulässigen Werte für diesen Parameter sind:
- SilentlyContinue
- Stop
- Continue
- Inquire
- Ignore
- Suspend

.PARAMETER InformationVariable
Gibt eine Variable angibt, die für die Ausgabe von Informationsnachrichten verwendet werden soll.

.PARAMETER Confirm
Fordert vor der Ausführung des Cmdlets zur Bestätigung auf.

.PARAMETER WhatIf
Zeigt, was passieren würde, wenn das Cmdlet ausgeführt wird. Das Cmdlet wird nicht ausgeführt.

.EINGABEN
System.String

.AUSGABEN
Microsoft.Azure.Commands.Compute.Models.PSVirtualMachine

.HINWEISE
Dieses Cmdlet ist für die Verwendung mit Azure Service Management-Modellen vorgesehen.

.BEISPIEL 1
```powershell
PS C:\> $vm = Get-AzureVM -ResourceGroupName "MyResourceGroup" -Name "MyVM"
PS C:\> $nic = Get-AzureNetworkInterface -ResourceGroupName "MyResourceGroup" -Name "MyNIC"
PS C:\> Add-AzureVMNetworkInterface -VM $vm -NetworkInterface $nic
```
Dieses Beispiel ruft den vorhandenen virtuellen Computer und die Netzwerkschnittstelle ab und fügt die Netzwerkschnittstelle dem virtuellen Computer hinzu. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter für bestimmte Arten von Markup-Blöcken. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatur für die Zufälligkeit der Audio-Antwort. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatur für die Zufälligkeit der Textantwort. |
| `-Language` | String | — | — | Named | — | de-DE |
| `-CpuThreads` | Int32 | — | — | Named | — | Anzahl der zu verwendenden CPU-Threads. |
| `-SuppressRegex` | String | — | — | Named | — | Regulärer Ausdruck zum Unterdrücken bestimmter Ausgaben. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audioton-Kontextgröße für die Verarbeitung. |
| `-SilenceThreshold` | Double | — | — | Named | — | Schwellwert für die Stilleerkennung bei Audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Längenstrafe für die Sequenzgenerierung. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropieschwelle für die Ausgabefilterung. |
| `-LogProbThreshold` | Double | — | — | Named | — | Log-Wahrscheinlichkeitsschwelle für die Ausgabenfilterung. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Keine Sprachschwelle für Audioerkennung. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Sprachausgabe deaktivieren. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Sprachausgabe für Gedanken deaktivieren. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Deaktivieren Sie VOX (Sprachaktivierung). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Desktop-Audioaufnahme verwenden. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Kontextnutzung deaktivieren. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Verwenden Sie die Beam-Such-Stichprobenstrategie. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .ABORTED
    Die SQL Server-Agent-Aufgabe ist fehlgeschlagen und wurde nicht wieder gestartet. Die Informationen über die Aufgabe finden Sie in der Transact-SQL-Aufgabenhistorie von sysjobhistory.
  . . . . .
  .ACCEPTED
    Die SQL Server-Agent-Aufgabe konnte erfolgreich gestartet werden, und der Aufrufer empfing eine Benachrichtigung, dass die Aufgabe zur Ausführung angenommen wurde. Informationen zur Aufgabe finden Sie in der Transact-SQL-Aufgabenhistorie von sysjobhistory.
  . . . . .
  .ACHED
    Die SQL Server-Agent-Aufgabe wurde erfolgreich ausgeführt. Informationen zur Aufgabe finden Sie in der Transact-SQL-Aufgabenhistorie von sysjobhistory.
  . . . . .
  .INPROGRESS (nicht unterstützt)
  . . . . .
  .RECEIVED
    Die SQL Server-Agent-Aufgabe wurde erfolgreich gestartet. Informationen zur Aufgabe finden Sie in der Transact-SQL-Aufgabenhistorie von sysjobhistory.
  . . . . .
  .RETRY
    Die SQL Server-Agent-Aufgabe ist fehlgeschlagen und wird erneut versucht. Informationen zur Aufgabe finden Sie in der Transact-SQL-Aufgabenhistorie von sysjobhistory. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale Rückruflänge für Tool-Aufrufe. |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Parameter Details

### `-Text <String>`

> Cmdlet
    Out-Null

Übersicht
    Löscht die Ausgabe, anstatt sie über die Pipeline zu senden oder anzuzeigen.

Syntax
    Out-Null [-InputObject <psobject>] [-Verbose] [-Debug] [-ErrorAction <ActionPreference>]
    [-WarningAction <ActionPreference>] [-InformationAction <ActionPreference>]
    [-ProgressAction <ActionPreference>] [-ErrorVariable <string>]
    [-WarningVariable <string>] [-InformationVariable <string>]
    [-OutVariable <string>] [-OutBuffer <int>] [-PipelineVariable <string>]
    [<CommonParameters>]

Parameter
    -InputObject <psobject>
        Gibt das Objekt an, das an Out-Null gesendet werden soll. Geben Sie eine Variable ein, die
die Objekte enthält, oder geben Sie einen Befehl oder Ausdruck ein, mit dem die Objekte abgerufen werden.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    true (ByValue)
        Platzhalterzeichen akzeptieren?  false

    -Verbose [<SwitchParameter>]
        Zeigt ausführliche Informationen zur Ausführung des Cmdlets an.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -Debug [<SwitchParameter>]
        Zeigt Debugmeldungen auf dem Bildschirm beim Verarbeiten des Befehls an.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -ErrorAction <ActionPreference>
        Legt fest, wie das Cmdlet auf einen Fehler reagiert. Mögliche Werte: SilentlyContinue, Stop,
Continue, Inquire, Ignore, Suspend, Break.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -WarningAction <ActionPreference>
        Legt fest, wie das Cmdlet auf eine Warnung reagiert. Mögliche Werte: SilentlyContinue, Stop,
Continue, Inquire, Ignore, Suspend, Break.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -InformationAction <ActionPreference>
        Legt fest, wie das Cmdlet auf ein Informationsereignis reagiert. Mögliche Werte:
SilentlyContinue, Stop, Continue, Inquire, Ignore, Suspend, Break.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -ProgressAction <ActionPreference>
        Legt fest, wie das Cmdlet auf Fortschrittsaktualisierungen reagiert. Mögliche Werte:
SilentlyContinue, Stop, Continue, Inquire, Ignore, Suspend, Break.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -ErrorVariable <string>
        Speichert Fehlermeldungen in einer benannten Variablen.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -WarningVariable <string>
        Speichert Warnmeldungen in einer benannten Variablen.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -InformationVariable <string>
        Speichert Informationsmeldungen in einer benannten Variablen.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -OutVariable <string>
        Speichert Ausgabeobjekte in einer benannten Variablen.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -OutBuffer <int>
        Bestimmt die Anzahl der Objekte, die vor dem Senden über die Pipeline gepuffert werden.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    -PipelineVariable <string>
        Speichert den Wert des aktuellen Pipelineelements in einer benannten Variablen.

        Erforderlich?                    false
        Position?                        benannt
        Pipeline-Eingabe akzeptieren?    false
        Platzhalterzeichen akzeptieren?  false

    <CommonParameters>
        Dieses Cmdlet unterstützt die allgemeinen Parameter: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable und OutVariable. Weitere Informationen finden Sie unter
        about_CommonParameters.

Eingaben
    psobject
        Sie können jedes Objekt an Out-Null über die Pipeline übergeben. Eingabeobjekte werden
        gelöscht, nicht an die Pipelineausgabe gesendet.

Ausgaben
    none
        Out-Null gibt keine Ausgabe zurück.

Hinweise
    Das Cmdlet Out-Null löscht die Ausgabe effektiv, indem es sie an $null sendet. Dies ist
    nützlich, wenn Sie ein Skript oder einen Befehl ausführen möchten, aber die Ausgabe nicht in der
    Konsole sehen oder über die Pipeline senden möchten.

    Out-Null kann je nach den ausgeführten Befehlen die Leistung beeinträchtigen, da die Ausgabe
    weiterhin im Arbeitsspeicher verarbeitet wird.

    Um die Ausgabe zu unterdrücken, können Sie auch die Umleitung auf $null verwenden (z. B.
    Get-Process > $null).

    Verwenden Sie Out-Null, wenn Sie nur die Ausgabe aus einem Befehl unterdrücken möchten, der
    viele Daten generiert. Für eine bessere Leistung mit weniger speicherintensiven Vorgängen
    sollten Sie Get-Process | Out-Null verwenden, um die Objekte zu verwerfen.

Verwandte Links
    about_Redirection
    about_Functions_CmdletBindingAttribute
    Write-Host
    Write-Output
    Write-Debug
    Write-Verbose
    Write-Warning
    Write-Error
    Write-Information
    Write-Progress

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
Dieses Cmdlet ruft Patch-Installationsprogramme von Configuration Manager ab.

.SYNTAX
Get-CMPatchInstaller [-Id] <String> [-DisableWildcardHandling] [-ForceWildcardHandling] [<CommonParameters>]

Get-CMPatchInstaller [-Name] <String> [-DisableWildcardHandling] [-ForceWildcardHandling] [<CommonParameters>]

Get-CMPatchInstaller [-Fast] [-DisableWildcardHandling] [-ForceWildcardHandling] [<CommonParameters>]

.BESCHREIBUNG
Das Cmdlet Get-CMPatchInstaller ruft ein Patch-Installationsprogrammobjekt ab. Sie können den Namen oder die ID des Patch-Installationsprogramms angeben.

Configuration Manager verwendet Patch-Installationsprogramme, um Softwareupdates auf Clients bereitzustellen.

HINWEIS: Configuration Manager-Cmdlets müssen von der Configuration Manager-Website aus ausgeführt werden.

.BEISPIELE
Beispiel 1: Alle Patch-Installationsprogramme abrufen

PS XYZ:\> Get-CMPatchInstaller -Fast

Dieser Befehl ruft alle Patch-Installationsprogramme ab.

Beispiel 2: Ein Patch-Installationsprogramm nach Name abrufen

PS XYZ:\> Get-CMPatchInstaller -Name "PatchInstaller01"

Dieser Befehl ruft das Patch-Installationsprogramm mit dem Namen PatchInstaller01 ab.

.PARAMETER DisableWildcardHandling
Dieser Parameter behandelt Platzhalterzeichen als Literalzeichenwerte. Sie können ihn nicht mit ForceWildcardHandling kombinieren.

.PARAMETER ForceWildcardHandling
Dieser Parameter verarbeitet Platzhalterzeichen und kann zu unerwartetem Verhalten führen (nicht empfohlen). Sie können ihn nicht mit DisableWildcardHandling kombinieren.

.PARAMETER Id
Gibt die ID eines Patch-Installationsprogramms an.

.PARAMETER Name
Gibt den Namen eines Patch-Installationsprogramms an.

.PARAMETER Fast
Gibt an, dass das Cmdlet keine Lazy-Eigenschaften abruft. Das Festlegen dieses Parameters kann die Laufzeit des Cmdlets verbessern.

.EINGABEN
Keine

.AUSGABEN
IResultObject[]
IResultObject

.HINWEISE


.VERWANDTE LINKS

New-CMPatchInstaller
Remove-CMPatchInstaller
Set-CMPatchInstaller

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

> Array von Dateipfaden zum Anhängen

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

> Temperatur für die Zufälligkeit der Antwort (0,0–1,0)

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

> Bilddetailstufe

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

> Array von Funktionsdefinitionen

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

> Array von PowerShell-Befehlsdefinitionen zur Verwendung als Tools

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

> Array von Befehlsnamen, die keine Bestätigung erfordern

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
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

> Ergebnis in die Zwischenablage kopieren

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

> .DESCRIPTION
Das Cmdlet Get-FileHash berechnet den Hashwert einer Datei mithilfe eines angegebenen Hashalgorithmus.

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

> .PARAMETER IncludeTotalCount
Gibt die Gesamtzahl der Objekte sowie die Datensätze zurück. Wenn das Cmdlet den Gesamtcount nicht ermitteln kann, wird "Unbekannte Gesamtzahl" zurückgegeben. Der Gesamtcount kann ungenau sein, wenn die von der Benutzersicherheitsrichtlinie auferlegten Einschränkungen verhindern, dass auf einige Objekte zugegriffen wird.

Der Parameter "IncludeTotalCount" hat drei verschiedene Modi, die von der benannten Parameterliste des Cmdlets und dem Werttypus des Cmdlet-Arguments abhängen.

Wenn der Befehl "IncludeTotalCount" ohne einen Wert verwendet, ruft das Cmdlet den Gesamtcount ab und zeigt ihn an. Wenn der Befehl "IncludeTotalCount" mit einem Wert verwendet, der kleiner oder gleich 0 ist, wird der Gesamtcount abgerufen und der Befehl wird angehalten, bis der Benutzer die Eingabetaste drückt.

Wenn der Befehl "IncludeTotalCount" mit einem Wert verwendet wird, der größer als 0 ist, wird der Gesamtcount nicht abgerufen, und der Befehl gibt die ersten n Objekte zurück, die durch den Wert angegeben werden.

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

> .EXTERNALHELP Get-Help -Cache @”

.SYNOPSIS
Zeigt Informationen zu Windows PowerShell-Befehlen und -Konzepten an.

.DESCRIPTION
Das Cmdlet "Get-Help" zeigt Informationen zu Windows PowerShell-Befehlen und -Konzepten an. Es zeigt Hilfeinhalte an, die aus Hilfe-Chat-Dateien auf der Festplatte stammen, bevor es die Hilfethemen aus dem Internet herunterlädt.

Ohne Parameter zeigt "Get-Help" Informationen zu Windows PowerShell-Befehlen an. Sie können auch einen Befehl wie "Get-Help Get-Process" oder einen Begriff wie "Eigenschaften" angeben. Unterstriche (_) und Platzhalterzeichen sind nicht unterstützt. Sie können die Parameter von "Get-Help" verwenden, um bestimmte Hilfeabschnitte, wie z. B. Parameter oder Beispiele, anzuzeigen.

"Get-Help" ruft die Hilfe zu einem Befehl aus der Standardquelle ab, die im bevorzugten Hilfeinformationspfad des aktuellen Servers angegeben ist.

In Windows PowerShell 3.0 und höher umfasst die Hilfe zu Befehlen Informationen zu Cmdlets, Funktionen, Workflows, Anbietern, Ali’sen und Skripten.

Für PowerShell-Funktionen und -Skripte zeigt "Get-Help" die Hilfe zu den Funktionen und Skripten im selben Format an, in dem die Hilfe zu Cmdlets angezeigt wird, und enthält alle Parameter. Sie können auch auf die Hilfe zu Skripten zugreifen, indem Sie "Get-Help" gefolgt vom Pfad zum Skript eingeben.

Sie können auch die Hilfe zu Windows PowerShell-Anbietern und zu Konzepten wie "about_Updatable_Help" abrufen.

Wenn Sie die vollständigen Hilfeinhalte nicht auf Ihrem Computer haben, können Sie die Hilfe zu einem Befehl abrufen, indem Sie den Online-Parameter verwenden, oder Sie können die Hilfedateien mithilfe des Cmdlets "Update-Help" herunterladen und installieren.

Weitere Informationen finden Sie unter about_Updatable_Help (https://go.microsoft.com/fwlink/?LinkID=235801).

HINWEIS: Informationen zu Windows PowerShell-Workflows finden Sie in den folgenden Artikeln: about_Workflows.

.PARAMETER Name
Ruft Hilfe zum angegebenen Befehl oder Konzept ab. Geben Sie den Namen eines Cmdlets, einer Funktion, eines Anbieters, eines Skripts oder eines Workflows ein, z. B. "Get-Member", einen Begriff, der in der Hilfe zu Konzepten verwendet wird, wie "Globale Assembly-Caches" oder "Eigenschaften" oder einen Alias. Platzhalterzeichen sind in Parameternamen nicht zulässig.

Wenn Sie den Namen eines Cmdlets eingeben, das in einem Modul enthalten ist, zeigt "Get-Help" die Hilfe zu dem Cmdlet an, auch wenn das Modul nicht in die aktuelle Sitzung importiert ist. Standardmäßig werden Hilfeinhalte jedoch nur für importierte Module angezeigt. Um Hilfe zu einem Cmdlet aus einem nicht importierten Modul anzuzeigen, fügen Sie den Module-Parameter hinzu.

Wenn Sie "Get-Help" ohne Parameter ausführen, werden die Namen aller Windows PowerShell-Cmdlets, -Funktionen, -Anbieter, -Ali’se und -Workflows angezeigt.

.PARAMETER Category
Zeigt Hilfe nur für Elemente im angegebenen Typ an. Gültige Werte sind: Alias, Cmdlet, Funktion, HilfeDatei, Anbieter, Allgemein, FAQ, Glossar, Skript, Codeausschnitt und Workflow. Diese Parameter akzeptiert eine Zeichenfolge, die einen einzelnen Typ angibt, z. B. "Cmdlet" oder "Alias".

.PARAMETER Component
Ruft Hilfe zu Befehlen mit dem angegebenen Komponentenwert ab. Dieser Parameter ist nützlich, wenn Sie Hilfe zu Befehlen aus einer bestimmten Komponente oder einem bestimmten Unterhaltssystem anzeigen möchten.

Geben Sie den Namen einer Komponente ein, z. B. "Exchange" oder "SQL". Platzhalterzeichen sind zulässig.

.PARAMETER Functionality
Ruft Hilfe zu Befehlen mit dem angegebenen Funktionalitätswert ab. Dieser Parameter ist nützlich, wenn Sie Hilfe zu Befehlen aus einer bestimmten Funktionalitätskategorie anzeigen möchten. Beispielsweise können Sie die Hilfe zu allen Cmdlets anzeigen, die die Sicherheitsfunktionalität implementieren.

Geben Sie den Namen einer Funktionalität ein. Platzhalterzeichen sind zulässig.

.PARAMETER Role
Ruft Hilfe zu Befehlen mit dem angegebenen Rollenwert ab. Dieser Parameter ist nützlich, wenn Sie Hilfe zu Befehlen aus einer bestimmten Rolle oder Benutzergruppe anzeigen möchten.

Geben Sie den Namen einer Rolle ein, z. B. "Servermanager" oder "Domänenverwaltung". Platzhalterzeichen sind zulässig.

.PARAMETER Path
Ruft Hilfe zu einem Befehl aus der angegebenen Datei oder dem angegebenen Speicherort ab. Dieser Parameter ruft Hilfe zu einem Befehl ab, der in einer Skriptdatei definiert ist.

Wenn Sie den Pfad einer Skriptdatei angeben, zeigt "Get-Help" die Hilfe zu der in der Skriptdatei definierten Funktion an. Wenn die Skriptdatei mehrere Funktionen enthält, zeigt "Get-Help" die Hilfe zu einer einzelnen Funktion an, die Sie im Namen-Parameter angeben.

Wenn Sie den Pfad eines Ordners angeben, durchsucht "Get-Help" nach Hilfedateien (.hlp, .txt, .xml) in dem angegebenen Ordner und zeigt die Hilfe zu den darin enthaltenen Befehlen an.

Wenn Sie den Pfad einer ausführbaren Datei angeben, sucht "Get-Help" nach einer Hilfedatei mit dem Namen der ausführbaren Datei.

Sie können auch einen Pfad zu einer Hilfedatei angeben, z. B. eine XML-Datei, .hlp-Datei oder .txt-Datei.

Mit diesem Parameter können Sie Hilfe zu nicht standardmäßigen Hilfedateien anzeigen.

Wenn Sie den Parameter "Path" verwenden, überschreibt "Get-Help" den Wert der Umgebungsvariable "$env:PSModulePath" mit dem von Ihnen angegebenen Pfad. Wenn der angegebene Pfad zu einer Hilfedatei nicht existiert, schlägt der Befehl mit einem Fehler fehl.

Wenn Sie den Parameter "Path" verwenden, sucht "Get-Help" nicht an einem der Standardspeicherorte nach Hilfe.

.PARAMETER Module
Zeigt Hilfe zu den Befehlen im angegebenen Modul an. Geben Sie ein Modulobjekt, eine Zeichenfolge eines Moduls oder ein Modul ein.

Wenn Sie den Namen eines Moduls eingeben, ruft "Get-Help" die Hilfe zu allen definierten Cmdlets, Funktionen und Workflows aus dem Modul ab.

Wenn Sie Hilfe zu einem Befehl abrufen, der nicht Teil eines Moduls ist, enthält der Name-Parameter den Cmdlet-Namen, und der Module-Parameter gibt das Modul an, zu dem der Befehl gehört. "Get-Help" ruft dann die Hilfe zu dem angegebenen Befehl aus dem angegebenen Modul ab.

Wenn Sie den Parameter "Name" und "Module" zusammen verwenden, ruft "Get-Help" die Hilfe zu den angegebenen Befehlen aus dem angegebenen Modul ab.

Wenn Sie den Parameter "Module" ohne "Name" angeben, wird eine Liste aller Befehle im angegebenen Modul angezeigt.

In Windows PowerShell 3.0 und höher können Sie Hilfe zu Befehlen aus nicht importierten Modulen mithilfe der Parameter "Name" und "Module" abrufen."@

.EXAMPLE 1
Get-Help Get-Process

.Beschreibung
Dieser Befehl zeigt die Hilfe zum Cmdlet "Get-Process" an. Die Hilfe wird entweder aus der Hilfedatei "Microsoft.PowerShell.Commands.Management.dll-Help.xml" oder aus der Datei "about_Process" abgerufen.

.EXAMPLE 2
Get-Help Get-Process -Detailed

.Beschreibung
Dieser Befehl zeigt die detaillierte Hilfe zum Cmdlet "Get-Process" an. Die Hilfe enthält Parameterbeschreibungen und Beispiele.

.EXAMPLE 3
Get-Help Get-Process -Full

.Beschreibung
Dieser Befehl zeigt die vollständige Hilfe zum Cmdlet "Get-Process" an. Die Hilfe enthält Parameterbeschreibungen, Beispiele und technische Details.

.EXAMPLE 4
Get-Help Get-Process -Examples

.Beschreibung
Dieser Befehl zeigt nur die Beispiele aus der Hilfe zum Cmdlet "Get-Process" an.

.EXAMPLE 5
Get-Help Get-Process -Parameter Id

.Beschreibung
Dieser Befehl zeigt die detaillierte Hilfe zum Parameter "Id" des Cmdlets "Get-Process" an.

.EXAMPLE 6
Get-Help Get-Process -Online

.Beschreibung
Dieser Befehl öffnet die Online-Hilfe zum Cmdlet "Get-Process" im Standard-Webbrowser.

.EXAMPLE 7
Get-Help Get-Process -Path C:\Help

.Beschreibung
Dieser Befehl zeigt die Hilfe zum Cmdlet "Get-Process" aus der Hilfedatei im angegebenen Pfad an.

.EXAMPLE 8
Get-Help about_Process

.Beschreibung
Dieser Befehl zeigt das konzeptionelle Hilfethema "about_Process" an.

.PARAMETER Detailed
Zeigt detaillierte Hilfe zu einem Befehl an, einschließlich Parameterbeschreibungen und Beispielen.

.PARAMETER Full
Zeigt die vollständige Hilfe zu einem Befehl an, einschließlich Parameterbeschreibungen, Beispiele und technische Details.

.PARAMETER Examples
Zeigt nur die Beispiele aus der Hilfe zu einem Befehl an.

.PARAMETER Parameter
Zeigt die detaillierte Hilfe zu den angegebenen Parametern an. Geben Sie einen oder mehrere Parameternamen ein, getrennt durch Kommata. Platzhalterzeichen sind zulässig.

.PARAMETER Online
Öffnet die Online-Hilfe zum angegebenen Befehl im Standard-Webbrowser.

.PARAMETER ShowWindow
Zeigt die Hilfe in einem eigenen Fenster an.

.INPUTS
System.String

.OUTPUTS
Microsoft.PowerShell.Commands.GetHelpCommand

.NOTES
Weitere Informationen finden Sie unter about_Updatable_Help.

.LINK
about_Updatable_Help

.LINK
Update-Help

.LINK
Save-Help

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

> Aktivieren Sie Text-zu-Sprache für KI-Antworten

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

> Aktivieren Sie die Text-zu-Sprache-Funktion für KI-Gedankenantworten

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

> Sitzung nicht im Sitzungscache speichern

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

> Standardtools für das KI-Modell aktivieren

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
### `-OutputMarkdownBlocksOnly`

> .SYNOPSIS
Fügt einem vorhandenen virtuellen Computer eine neue Netzwerkschnittstelle hinzu.

.DESCRIPTION
Das Cmdlet **Add-AzureVMNetworkInterface** fügt einem vorhandenen virtuellen Computer eine Netzwerkschnittstelle hinzu. Sie können eine Netzwerkschnittstelle für einen virtuellen Computer angeben, indem Sie diese entweder über die **Get-AzureNetworkInterface**-Ermittlung oder mithilfe der -NetworkInterface-Parameters angeben.

.PARAMETER VM
Gibt das virtuelle Computerobjekt an, dem eine Netzwerkschnittstelle hinzugefügt werden soll. Sie erhalten ein virtuelles Computerobjekt, indem Sie das Cmdlet **Get-AzureVM** verwenden.

.PARAMETER NetworkInterface
Gibt die Netzwerkschnittstelle an, die dem virtuellen Computer hinzugefügt werden soll. Sie erhalten ein Netzwerkschnittstellenobjekt, indem Sie das Cmdlet **Get-AzureNetworkInterface** verwenden.

.PARAMETER Profile
[Optional] Gibt das Azure-Profil an, das für die Kommunikation mit Azure verwendet wird. Standardmäßig werden die Umgebungsvariablen des Azure-Standardprofils verwendet.

.PARAMETER InformationAction
Gibt an, wie dieses Cmdlet auf ein Informationsereignis reagiert.
Die zulässigen Werte für diesen Parameter sind:
- SilentlyContinue
- Stop
- Continue
- Inquire
- Ignore
- Suspend

.PARAMETER InformationVariable
Gibt eine Variable angibt, die für die Ausgabe von Informationsnachrichten verwendet werden soll.

.PARAMETER Confirm
Fordert vor der Ausführung des Cmdlets zur Bestätigung auf.

.PARAMETER WhatIf
Zeigt, was passieren würde, wenn das Cmdlet ausgeführt wird. Das Cmdlet wird nicht ausgeführt.

.EINGABEN
System.String

.AUSGABEN
Microsoft.Azure.Commands.Compute.Models.PSVirtualMachine

.HINWEISE
Dieses Cmdlet ist für die Verwendung mit Azure Service Management-Modellen vorgesehen.

.BEISPIEL 1
```powershell
PS C:\> $vm = Get-AzureVM -ResourceGroupName "MyResourceGroup" -Name "MyVM"
PS C:\> $nic = Get-AzureNetworkInterface -ResourceGroupName "MyResourceGroup" -Name "MyNIC"
PS C:\> Add-AzureVMNetworkInterface -VM $vm -NetworkInterface $nic
```
Dieses Beispiel ruft den vorhandenen virtuellen Computer und die Netzwerkschnittstelle ab und fügt die Netzwerkschnittstelle dem virtuellen Computer hinzu.

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

> Filter für bestimmte Arten von Markup-Blöcken.

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

> Temperatur für die Zufälligkeit der Audio-Antwort.

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

> Temperatur für die Zufälligkeit der Textantwort.

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

> de-DE

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

> Anzahl der zu verwendenden CPU-Threads.

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

> Regulärer Ausdruck zum Unterdrücken bestimmter Ausgaben.

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

> Audioton-Kontextgröße für die Verarbeitung.

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

> Schwellwert für die Stilleerkennung bei Audio.

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

> Längenstrafe für die Sequenzgenerierung.

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

> Entropieschwelle für die Ausgabefilterung.

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

> Log-Wahrscheinlichkeitsschwelle für die Ausgabenfilterung.

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

> Keine Sprachschwelle für Audioerkennung.

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

> Sprachausgabe deaktivieren.

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

> Sprachausgabe für Gedanken deaktivieren.

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

> Deaktivieren Sie VOX (Sprachaktivierung).

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

> Desktop-Audioaufnahme verwenden.

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

> Kontextnutzung deaktivieren.

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

> Verwenden Sie die Beam-Such-Stichprobenstrategie.

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

> .ABORTED
    Die SQL Server-Agent-Aufgabe ist fehlgeschlagen und wurde nicht wieder gestartet. Die Informationen über die Aufgabe finden Sie in der Transact-SQL-Aufgabenhistorie von sysjobhistory.
  . . . . .
  .ACCEPTED
    Die SQL Server-Agent-Aufgabe konnte erfolgreich gestartet werden, und der Aufrufer empfing eine Benachrichtigung, dass die Aufgabe zur Ausführung angenommen wurde. Informationen zur Aufgabe finden Sie in der Transact-SQL-Aufgabenhistorie von sysjobhistory.
  . . . . .
  .ACHED
    Die SQL Server-Agent-Aufgabe wurde erfolgreich ausgeführt. Informationen zur Aufgabe finden Sie in der Transact-SQL-Aufgabenhistorie von sysjobhistory.
  . . . . .
  .INPROGRESS (nicht unterstützt)
  . . . . .
  .RECEIVED
    Die SQL Server-Agent-Aufgabe wurde erfolgreich gestartet. Informationen zur Aufgabe finden Sie in der Transact-SQL-Aufgabenhistorie von sysjobhistory.
  . . . . .
  .RETRY
    Die SQL Server-Agent-Aufgabe ist fehlgeschlagen und wird erneut versucht. Informationen zur Aufgabe finden Sie in der Transact-SQL-Aufgabenhistorie von sysjobhistory.

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

- `String[]`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertFrom-DiplomaticSpeak.md)
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
