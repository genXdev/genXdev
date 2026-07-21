# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Findet ähnliche Filmtitel basierend auf gemeinsamen Eigenschaften.

## Description

Analysiert die bereitgestellten Filme, um gemeinsame Eigenschaften zu finden, und gibt eine Liste mit 10 ähnlichen Filmtiteln zurück. Nutzt KI, um Muster und Themen in den eingegebenen Filmen zu identifizieren und relevante Empfehlungen vorzuschlagen.

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-All] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Headless] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Webkit] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | Array von Filmtiteln, die auf Ähnlichkeiten analysiert werden sollen |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Die Modellkennung oder das Muster, das für KI-Operationen verwendet werden soll |
| `-ApiEndpoint` | String | — | — | Named | — | Der API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatur für die Zufälligkeit der Antwort (0,0–1,0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Öffnet IMDB-Suchen für jedes Ergebnis |
| `-Language` | String | — | — | Named | — | Sprache für IMDB-Suche oder Browsersitzung |
| `-Monitor` | Int32 | — | — | Named | `-1` | Monitor oder Name für die Platzierung des Browserfensters |
| `-Width` | Int32 | — | — | Named | `-1` | Breite des Browserfensters in Pixeln |
| `-Height` | Int32 | — | — | Named | `-1` | Höhe des Browserfensters in Pixeln |
| `-AcceptLang` | String | — | — | Named | — | Accept-Language HTTP-Header für die Browser-Sitzung |
| `-Private` | SwitchParameter | — | — | Named | — | Browser im privaten/Inkognito-Modus öffnen |
| `-Chrome` | SwitchParameter | — | — | Named | — | Verwenden Sie Google Chrome für die Browsersitzung |
| `-Chromium` | SwitchParameter | — | — | Named | — | Chromium für die Browsersitzung verwenden |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mozilla Firefox für die Browsersitzung verwenden |
| `-Left` | Int32 | — | — | Named | — | Linke Position des Browserfensters in Pixeln |
| `-Right` | Int32 | — | — | Named | — | Rechte Position des Browserfensters in Pixeln |
| `-Bottom` | Int32 | — | — | Named | — | Untere Position des Browserfensters in Pixeln |
| `-Centered` | SwitchParameter | — | — | Named | — | Öffnen Sie das Browserfenster zentriert auf dem Bildschirm |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öffnen Sie den Browser im Vollbildmodus |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Browser im Anwendungsmodus öffnen (minimale Benutzeroberfläche) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Browsererweiterungen für die Sitzung deaktivieren |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Pop-up-Blocker in der Browsersitzung deaktivieren |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Browserfenster nach dem Öffnen fokussieren |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Browserfenster nach dem Öffnen in den Vordergrund stellen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Browserfenster nach dem Öffnen |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Fokus nach dem Schließen des Browsers auf das vorherige Fenster zurückgeben |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Öffnen Sie jedes IMDB-Ergebnis in einem neuen Browserfenster |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Geben Sie die URL nach dem Öffnen der IMDB-Suche zurück. |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Geben Sie nur die URL zurück, ohne den Browser zu öffnen |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape-Taste nach dem Öffnen an den Browser senden |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tastaturfokus im Browser nach dem Senden von Tastenanschlägen beibehalten |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Verwenden Sie Umschalt+Eingabe, wenn Sie Tasten an den Browser senden |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung in Millisekunden zwischen dem Senden von Schlüsseln an den Browser |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Browserfenster ohne Rahmen öffnen |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Verwenden Sie den von Playwright verwalteten Browser anstelle des im Betriebssystem installierten Browsers |
| `-Webkit` | SwitchParameter | — | — | Named | — | Öffnet den von Playwright verwalteten WebKit-Browser. Impliziert -Playwright |
| `-Headless` | SwitchParameter | — | — | Named | — | Führen Sie den Browser ohne sichtbares Fenster aus |
| `-All` | SwitchParameter | — | — | Named | — | Wird in allen registrierten modernen Browsern geöffnet |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Öffnen Sie die Browserfenster für jedes Ergebnis nebeneinander |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Alternative, in der Sitzung gespeicherte Einstellungen für KI-Präferenzen verwenden |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Löschen Sie alternative Einstellungen, die für KI-Präferenzen in der Sitzung gespeichert sind |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Einstellungen nur in persistenten Voreinstellungen speichern, ohne die Sitzung zu beeinflussen |
| `-Instructions` | String | — | — | Named | — | .SYNOPSIS
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
| `-Attachments` | String[] | — | — | Named | — | Array von Dateipfaden zum Anhängen |
| `-ImageDetail` | String | — | — | Named | — | Detailstufe der Bildverarbeitung. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Array von Funktionsdefinitionen, die vom KI-Modell während der Verarbeitung aufgerufen werden können. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array von PowerShell-Befehlsdefinitionen, die als Werkzeuge verwendet werden können, die die KI aufrufen kann. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Array von Befehlsnamen, die keine Bestätigung vor der Ausführung erfordern. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatur für die Audioerzeugung. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatur für die Antwortgenerierung. |
| `-CpuThreads` | Int32 | — | — | Named | — | Anzahl der zu verwendenden CPU-Threads. |
| `-SuppressRegex` | String | — | — | Named | — | Regulärer Ausdruck zum Unterdrücken bestimmter Ausgaben. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audioton-Kontextgröße für die Verarbeitung. |
| `-SilenceThreshold` | Double | — | — | Named | — | Schwellwert für Stille bei der Audioverarbeitung. |
| `-LengthPenalty` | Double | — | — | Named | — | Längenstrafe für die Sequenzgenerierung. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropieschwelle für die Ausgabefilterung. |
| `-LogProbThreshold` | Double | — | — | Named | — | Log-Wahrscheinlichkeitsschwelle für die Ausgabenfilterung. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Keine Sprachschwelle für Audioerkennung. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Sprachausgabe deaktivieren. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Deaktivieren Sie die Gedankensprachausgabe. |
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
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Wenn angegeben, wird die resultierende Zeichenfolgenliste nach der Verarbeitung zurück in die Systemzwischenablage kopiert. |
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
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Standardtools für das KI-Modell aktivieren. |
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
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale Rückruflänge für Tool-Aufrufe. |

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

> Array von Filmtiteln, die auf Ähnlichkeiten analysiert werden sollen

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

> Der Typ der LLM-Abfrage

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
### `-OpenInImdb`

> Öffnet IMDB-Suchen für jedes Ergebnis

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

> Sprache für IMDB-Suche oder Browsersitzung

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

> Monitor oder Name für die Platzierung des Browserfensters

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

> Breite des Browserfensters in Pixeln

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

> Höhe des Browserfensters in Pixeln

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

> Accept-Language HTTP-Header für die Browser-Sitzung

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

> Browser im privaten/Inkognito-Modus öffnen

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

> Verwenden Sie Google Chrome für die Browsersitzung

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

> Chromium für die Browsersitzung verwenden

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

> Mozilla Firefox für die Browsersitzung verwenden

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

> Linke Position des Browserfensters in Pixeln

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

> Rechte Position des Browserfensters in Pixeln

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

> Untere Position des Browserfensters in Pixeln

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

> Öffnen Sie das Browserfenster zentriert auf dem Bildschirm

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

> Öffnen Sie den Browser im Vollbildmodus

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

> Browser im Anwendungsmodus öffnen (minimale Benutzeroberfläche)

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

> Browsererweiterungen für die Sitzung deaktivieren

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

> Pop-up-Blocker in der Browsersitzung deaktivieren

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

> Browserfenster nach dem Öffnen fokussieren

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

> Browserfenster nach dem Öffnen in den Vordergrund stellen

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

> Maximieren Sie das Browserfenster nach dem Öffnen

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

> Fokus nach dem Schließen des Browsers auf das vorherige Fenster zurückgeben

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

> Öffnen Sie jedes IMDB-Ergebnis in einem neuen Browserfenster

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

> Geben Sie die URL nach dem Öffnen der IMDB-Suche zurück.

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

> Geben Sie nur die URL zurück, ohne den Browser zu öffnen

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

> Escape-Taste nach dem Öffnen an den Browser senden

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

> Tastaturfokus im Browser nach dem Senden von Tastenanschlägen beibehalten

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

> Verwenden Sie Umschalt+Eingabe, wenn Sie Tasten an den Browser senden

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

> Verzögerung in Millisekunden zwischen dem Senden von Schlüsseln an den Browser

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

> Browserfenster ohne Rahmen öffnen

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

> Verwenden Sie den von Playwright verwalteten Browser anstelle des im Betriebssystem installierten Browsers

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

> Öffnet den von Playwright verwalteten WebKit-Browser. Impliziert -Playwright

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

> Führen Sie den Browser ohne sichtbares Fenster aus

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

> Wird in allen registrierten modernen Browsern geöffnet

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

> Öffnen Sie die Browserfenster für jedes Ergebnis nebeneinander

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
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> Array von Dateipfaden zum Anhängen

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

> Detailstufe der Bildverarbeitung.

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

> Array von Funktionsdefinitionen, die vom KI-Modell während der Verarbeitung aufgerufen werden können.

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

> Array von PowerShell-Befehlsdefinitionen, die als Werkzeuge verwendet werden können, die die KI aufrufen kann.

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

> Array von Befehlsnamen, die keine Bestätigung vor der Ausführung erfordern.

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

> Temperatur für die Audioerzeugung.

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

> Temperatur für die Antwortgenerierung.

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

> Schwellwert für Stille bei der Audioverarbeitung.

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

> Deaktivieren Sie die Gedankensprachausgabe.

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
### `-SetClipboard`

> Wenn angegeben, wird die resultierende Zeichenfolgenliste nach der Verarbeitung zurück in die Systemzwischenablage kopiert.

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

> Standardtools für das KI-Modell aktivieren.

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
