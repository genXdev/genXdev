# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `equalstrue`

## Synopsis

> Wertet eine Anweisung mithilfe von KI aus, um zu bestimmen, ob sie wahr oder falsch ist.

## Description

Diese Funktion verwendet KI-Modelle, um Aussagen zu bewerten und deren Wahrheitswert zu bestimmen. Sie kann Eingaben direkt über Parameter, aus der Pipeline oder aus der Systemzwischenablage entgegennehmen. Die Funktion gibt ein boolesches Ergebnis sowie ein Konfidenzniveau und eine Begründung des KI-Modells zurück.

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | .SYNOPSIS
Erstellt einen geplanten Task.

.DESCRIPTION
Das Cmdlet New-PlanifiedTask erstellt einen neuen geplanten Task auf dem lokalen Rechner. Es bietet Optionen zur Angabe von Auslösern, Aktionen, Einstellungen und Anmeldeinformationen.

.PARAMETER TaskName
Gibt den Namen des geplanten Tasks an.

.PARAMETER Trigger
Gibt einen oder mehrere Auslöser an, die den Task starten.

.PARAMETER Action
Gibt eine oder mehrere Aktionen an, die der Task ausführt.

.PARAMETER Settings
Gibt die Einstellungen für den geplanten Task an.

.PARAMETER User
Gibt das Benutzerkonto an, unter dem der Task läuft.

.PARAMETER Password
Gibt das Kennwort für das Benutzerkonto an.

.EXAMPLE
$trigger = New-ScheduledTaskTrigger -Daily -At 2am
$action = New-ScheduledTaskAction -Execute 'PowerShell.exe' -Argument '-NoProfile -Command "Get-Process"'
New-ScheduledTask -TaskName 'DailyProcessReport' -Trigger $trigger -Action $action

Dieser Befehl erstellt einen geplanten Task mit dem Namen 'DailyProcessReport', der täglich um 2:00 Uhr ausgeführt wird und die Liste der laufenden Prozesse abruft.

.LINK
Online-Version: https://go.microsoft.com/fwlink/?LinkId=123456

.LINK
Get-ScheduledTask

.LINK
Set-ScheduledTask

.LINK
Enable-ScheduledTask

.LINK
Disable-ScheduledTask

.LINK
Unregister-ScheduledTask |
| `-Instructions` | String | — | — | 1 | `''` | Anweisungen für das KI-Modell zur Bewertung der Aussage |
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
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Ergebnis in die Zwischenablage kopieren |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | .DESCRIPTION
Das Cmdlet Get-FileHash berechnet den Hashwert einer Datei mithilfe eines angegebenen Hashalgorithmus. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Fügen Sie dem Konversationsverlauf keine Modellgedanken hinzu |
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
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | KI erlauben, Standardtools und -funktionen zu verwenden |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Alternative, in der Sitzung gespeicherte Einstellungen für KI-Präferenzen verwenden |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Löschen Sie alternative Einstellungen, die für KI-Präferenzen in der Sitzung gespeichert sind |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Einstellungen nur in persistenten Voreinstellungen speichern, ohne die Sitzung zu beeinflussen |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | BESCHREIBUNG
    Hiermit importieren Sie Zertifikate aus einer Zertifikatsspeicherdatei. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Nach bestimmten Arten von Markup-Blöcken filtern |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatur für die Zufälligkeit der Audioantwort |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatur für die Antwortgenerierung |
| `-Language` | String | — | — | Named | — | Sprachcode oder -name für die Antwort |
| `-CpuThreads` | Int32 | — | — | Named | — | Anzahl der CPU-Threads, die für die Verarbeitung verwendet werden sollen |
| `-SuppressRegex` | String | — | — | Named | — | Regulärer Ausdruck zum Unterdrücken der Ausgabe |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio-Kontextgröße für die Verarbeitung |
| `-SilenceThreshold` | Double | — | — | Named | — | Stille-Schwellenwert für Audioerkennung |
| `-LengthPenalty` | Double | — | — | Named | — | Längenstrafe für die Sequenzerzeugung |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropieschwellenwert für die Ausgabefilterung |
| `-LogProbThreshold` | Double | — | — | Named | — | Schwellenwert für die Log-Wahrscheinlichkeit zur Ausgabefilterung |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Kein Schwellenwert für Spracherkennung bei Audiodetektion |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Sprachausgabe deaktivieren |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Sprachausgabe für Gedanken deaktivieren |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX (Sprachaktivierung) deaktivieren |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Desktop-Audioerfassung für die Eingabe verwenden |
| `-NoContext` | SwitchParameter | — | — | Named | — | Verwenden Sie keinen Kontext in der Abfrage |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Strategie zur Strahlsuche verwenden |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .PARAMETER Pfad
Gibt den Pfad zur Datei oder zum Verzeichnis an, die bzw. das entfernt werden soll. Platzhalter sind zulässig.

.PARAMETER Rekursiv
Löscht die Elemente im angegebenen Speicherort rekursiv. Wenn dieser Parameter angegeben ist, werden alle Elemente unter dem angegebenen Speicherort entfernt.

.PARAMETER WhatIf
Zeigt, was passieren würde, wenn das Cmdlet ausgeführt wird. Das Cmdlet wird nicht ausgeführt.

.PARAMETER Confirm
Fordert vor der Ausführung des Cmdlets zur Bestätigung auf.

.EINGABETYPEN
System.String
Sie können eine Zeichenfolge, die einen Pfad enthält, an Remove-Item weiterleiten.

.AUSGABETYPEN
Keine. Das Cmdlet gibt keine Ausgabe zurück. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Examples

### Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"

```powershell
Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"
```

### "Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation

```powershell
"Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation
```

### equalstrue "2 + 2 = 4" ##############################################################################

```powershell
equalstrue "2 + 2 = 4"
##############################################################################
```

## Parameter Details

### `-Text <String>`

> .SYNOPSIS
Erstellt einen geplanten Task.

.DESCRIPTION
Das Cmdlet New-PlanifiedTask erstellt einen neuen geplanten Task auf dem lokalen Rechner. Es bietet Optionen zur Angabe von Auslösern, Aktionen, Einstellungen und Anmeldeinformationen.

.PARAMETER TaskName
Gibt den Namen des geplanten Tasks an.

.PARAMETER Trigger
Gibt einen oder mehrere Auslöser an, die den Task starten.

.PARAMETER Action
Gibt eine oder mehrere Aktionen an, die der Task ausführt.

.PARAMETER Settings
Gibt die Einstellungen für den geplanten Task an.

.PARAMETER User
Gibt das Benutzerkonto an, unter dem der Task läuft.

.PARAMETER Password
Gibt das Kennwort für das Benutzerkonto an.

.EXAMPLE
$trigger = New-ScheduledTaskTrigger -Daily -At 2am
$action = New-ScheduledTaskAction -Execute 'PowerShell.exe' -Argument '-NoProfile -Command "Get-Process"'
New-ScheduledTask -TaskName 'DailyProcessReport' -Trigger $trigger -Action $action

Dieser Befehl erstellt einen geplanten Task mit dem Namen 'DailyProcessReport', der täglich um 2:00 Uhr ausgeführt wird und die Liste der laufenden Prozesse abruft.

.LINK
Online-Version: https://go.microsoft.com/fwlink/?LinkId=123456

.LINK
Get-ScheduledTask

.LINK
Set-ScheduledTask

.LINK
Enable-ScheduledTask

.LINK
Disable-ScheduledTask

.LINK
Unregister-ScheduledTask

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

> Anweisungen für das KI-Modell zur Bewertung der Aussage

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

> Fügen Sie dem Konversationsverlauf keine Modellgedanken hinzu

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

> KI erlauben, Standardtools und -funktionen zu verwenden

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

> BESCHREIBUNG
    Hiermit importieren Sie Zertifikate aus einer Zertifikatsspeicherdatei.

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

> Nach bestimmten Arten von Markup-Blöcken filtern

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

> Temperatur für die Zufälligkeit der Audioantwort

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

> Temperatur für die Antwortgenerierung

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

> Sprachcode oder -name für die Antwort

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

> Anzahl der CPU-Threads, die für die Verarbeitung verwendet werden sollen

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

> Regulärer Ausdruck zum Unterdrücken der Ausgabe

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

> Audio-Kontextgröße für die Verarbeitung

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

> Stille-Schwellenwert für Audioerkennung

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

> Längenstrafe für die Sequenzerzeugung

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

> Entropieschwellenwert für die Ausgabefilterung

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

> Schwellenwert für die Log-Wahrscheinlichkeit zur Ausgabefilterung

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

> Kein Schwellenwert für Spracherkennung bei Audiodetektion

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

> Sprachausgabe deaktivieren

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

> Sprachausgabe für Gedanken deaktivieren

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

> VOX (Sprachaktivierung) deaktivieren

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

> Desktop-Audioerfassung für die Eingabe verwenden

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

> Verwenden Sie keinen Kontext in der Abfrage

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

> Strategie zur Strahlsuche verwenden

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

> .PARAMETER Pfad
Gibt den Pfad zur Datei oder zum Verzeichnis an, die bzw. das entfernt werden soll. Platzhalter sind zulässig.

.PARAMETER Rekursiv
Löscht die Elemente im angegebenen Speicherort rekursiv. Wenn dieser Parameter angegeben ist, werden alle Elemente unter dem angegebenen Speicherort entfernt.

.PARAMETER WhatIf
Zeigt, was passieren würde, wenn das Cmdlet ausgeführt wird. Das Cmdlet wird nicht ausgeführt.

.PARAMETER Confirm
Fordert vor der Ausführung des Cmdlets zur Bestätigung auf.

.EINGABETYPEN
System.String
Sie können eine Zeichenfolge, die einen Pfad enthält, an Remove-Item weiterleiten.

.AUSGABETYPEN
Keine. Das Cmdlet gibt keine Ausgabe zurück.

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

> The `-MaxToolcallBackLength` parameter.

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

- `Boolean`

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
