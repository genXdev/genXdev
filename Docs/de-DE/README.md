# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-21.

## GenXdev

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXDevCmdlet.md) | gcmds | Ruft alle GenXdev-Cmdlets und deren Details ab und listet sie auf. |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-GenXdevCmdlet.md) | cmds | Zeigt GenXdev PowerShell-Module mit ihren Cmdlets und Aliasen an. |

---

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AILLMSettings.md) | &nbsp; | Ruft die LLM-Einstellungen für KI-Operationen in GenXdev.AI ab. |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SpeechToText.md) | &nbsp; | Konvertiert Audiodateien mithilfe des Whisper-Spracherkennungsmodells von OpenAI in Text. |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-TextTranslation.md) | translate | Übersetzt Text mithilfe von KI in eine andere Sprache. |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-VectorSimilarity.md) | &nbsp; | Berechnet die Kosinusähnlichkeit zwischen zwei Vektoren. |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-WinMerge.md) | &nbsp; | Startet WinMerge, um zwei Dateien nebeneinander zu vergleichen. |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/de-DE/Merge-TranslationCache.md) | &nbsp; | Verwaltet den persistenten Übersetzungs-Cache mit gebündelten Datenträgerschreibvorgängen pro Sprache. |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/de-DE/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/de-DE/New-LLMAudioChat.md) | llmaudiochat | Erstellt eine interaktive Audio-Chat-Sitzung mit einem LLM-Modell. |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/de-DE/New-LLMTextChat.md) | llmchat | Startet eine interaktive Text-Chat-Sitzung mit KI-Fähigkeiten. |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/de-DE/Receive-RealTimeSpeechToText.md) | &nbsp; | Konvertiert Echtzeit-Audioeingabe mithilfe des Whisper-KI-Modells in Text. |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-AILLMSettings.md) | &nbsp; | Legt die LLM-Einstellungen für KI-Operationen in GenXdev.AI fest. |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | Richtet eine benutzerdefinierte Behandlung für nicht gefundene Befehle ein, optional mit KI-Unterstützung. |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-DeepLinkImageFile.md) | &nbsp; | Testet, ob der angegebene Dateipfad eine gültige Bilddatei mit einem unterstützten Format ist. |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/de-DE/Compare-ImageFaces.md) | comparefaces | Vergleicht Gesichter in zwei verschiedenen Bildern und gibt deren Ähnlichkeit mittels DeepStack zurück. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImageDetectedFaces.md) | &nbsp; | Erkennt Gesichter in einem hochgeladenen Bild, indem es diese mit bekannten Gesichtern vergleicht, und verwendet DeepStack. |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImageDetectedObjects.md) | &nbsp; | Erkennt und klassifiziert Objekte in einem hochgeladenen Bild mithilfe von DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImageDetectedScenes.md) | &nbsp; | Klassifiziert ein Bild in eine von 365 Szenenkategorien mithilfe von DeepStack. |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-RegisteredFaces.md) | &nbsp; | Ruft eine Liste aller registrierten Gesichtserkennungs-IDs von DeepStack ab. |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-ImageEnhancement.md) | enhanceimage | Verbessert ein Bild, indem es es mit DeepStack 4-fach vergrößert und die Qualität steigert. |
| [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/de-DE/Register-AllFaces.md) | UpdateFaces | Aktualisiert alle Gesichtserkennungsprofile aus den Bilddateien im Gesichter-Verzeichnis. |
| [Register-Face](https://github.com/genXdev/genXdev/blob/main/de-DE/Register-Face.md) | &nbsp; | Registriert ein neues Gesicht mit der DeepStack-Gesichtserkennungs-API. |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/de-DE/Unregister-AllFaces.md) | &nbsp; | Entfernt alle registrierten Gesichter aus dem DeepStack-Gesichtserkennungssystem. |
| [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/de-DE/Unregister-Face.md) | &nbsp; | Löscht ein registriertes Gesicht anhand seiner Kennung aus DeepStack. |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-EmoticonsToText.md) | emojify | Verbessert Text durch das Hinzufügen kontextuell passender Emoticons mithilfe von KI. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertFrom-CorporateSpeak.md) | uncorporatize | Wandelt höfliche, professionelle Unternehmenssprache mithilfe von KI in direkte, klare Sprache um. |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | Konvertiert diplomatische oder taktvolle Sprache in direkte, klare und unverblümte Sprache. |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertTo-CorporateSpeak.md) | corporatize | Wandelt direkten oder unverblümten Text mit KI in höfliche, professionelle Unternehmenssprache um. |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertTo-DiplomaticSpeak.md) | diplomatize | Wandelt direkte oder unverblümte Texte in höfliche, taktvolle diplomatische Sprache um. |
| [Find-Image](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-Image.md) | findimages, li | Durchsucht Verzeichnisse nach Bilddateien und Metadaten mit Filterfunktionen und optionaler browserbasierter Galerieanzeige. |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AIKnownFacesRootpath.md) | &nbsp; | Ruft das konfigurierte Verzeichnis für Gesichtsbilddateien ab, die in GenXdev.AI-Operationen verwendet werden. |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AIMetaLanguage.md) | getimgmetalang | Ruft die konfigurierte Standardsprache für Bildmetadatenvorgänge ab. |
| [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Fallacy.md) | dispicetext | Analysiert Text mithilfe KI-gestützter Erkennung, um logische Fehlschlüsse zu identifizieren. |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | Erfasst Fehlermeldungen aus verschiedenen Datenströmen und nutzt LLM, um Korrekturen vorzuschlagen. |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SimularMovieTitles.md) | &nbsp; | Findet ähnliche Filmtitel basierend auf gemeinsamen Eigenschaften. |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-AIPowershellCommand.md) | hint | Generiert und führt PowerShell-Befehle mit KI-Unterstützung aus. |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-ImageFacesUpdate.md) | imagepeopledetection | Aktualisiert die Gesichtserkennungsmetadaten für Bilddateien in einem angegebenen Verzeichnis. |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | Aktualisiert Bildmetadaten mit KI-generierten Beschreibungen und Schlüsselwörtern. |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-ImageMetadataUpdate.md) | imagepropdetection | Aktualisiert EXIF-Metadaten für Bilder in einem Verzeichnis. |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | Aktualisiert Metadaten zur Objekterkennung für Bilddateien in einem angegebenen Verzeichnis. |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-ImageScenesUpdate.md) | imagescenedetection | Aktualisiert Szenenklassifizierungsmetadaten für Bilddateien in einem angegebenen Verzeichnis. |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-LLMBooleanEvaluation.md) | equalstrue | Wertet eine Anweisung mithilfe von KI aus, um zu bestimmen, ob sie wahr oder falsch ist. |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-LLMQuery.md) | qllm, llm | Sendet Abfragen an eine mit OpenAI kompatible Large Language Chat Completion API und verarbeitet Antworten. |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-LLMStringListEvaluation.md) | getlist, getstring | Extrahiert oder generiert mithilfe von KI-Analyse eine Liste relevanter Zeichenfolgen aus einem Eingabetext. |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-LLMTextTransformation.md) | spellcheck | Transformiert Text mithilfe KI-gestützter Verarbeitung. |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-QueryImageContent.md) | &nbsp; | Analysiert Bildinhalt mit KI-Vision-Funktionen |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-ImageMetaData.md) | removeimagedata | Entfernt Bildmetadaten-Dateien aus Bildverzeichnissen. |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/de-DE/Save-FoundImageFaces.md) | saveimagefaces | Speichert zugeschnittene Gesichtsbilder aus indizierten Bildsuchergebnissen. |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/de-DE/Save-Transcriptions.md) | &nbsp; | Erzeugt Untertiteldateien für Audio- und Videodateien mit OpenAI Whisper. |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-AIKnownFacesRootpath.md) | &nbsp; | Legt das Verzeichnis für Gesichtsbilddateien fest, die in GenXdev.AI-Operationen verwendet werden. |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-AIMetaLanguage.md) | &nbsp; | Legt die Standardsprache und optional die Bildverzeichnisse für die Metadatenoperationen von GenXdev.AI fest. |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-FoundImagesInBrowser.md) | showfoundimages | Zeigt Bildsuchergebnisse in einer Masonry-Webgalerie an. |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-AudioTranscription.md) | transcribefile, transcribe | Transkribiert eine Audiodatei, Videodatei oder ein Aufnahmegerät in Text. |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/de-DE/Update-AllImageMetaData.md) | updateallimages | Aktualisiert stapelweise Bildschlagwörter, Gesichter, Objekte und Szenen in mehreren Systemverzeichnissen. |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-FeatureLineToREADME.md) | feature | Fügt eine Feature-Zeile mit einem Zeitstempel zur README-Datei hinzu. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-IdeaLineToREADME.md) | idea | Fügt ein Ideenelement zur Datei README.md hinzu. |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-IssueLineToREADME.md) | issue | Fügt der README.md-Datei ein Issue-Element hinzu. |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-LineToREADME.md) | &nbsp; | Fügt eine Zeile zu einer README.md-Markdown-Datei in einem bestimmten Abschnitt hinzu. |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-ReleaseNoteLineToREADME.md) | releasenote | Fügt dem README-Datei eine ReleaseNote-Zeile mit einem Zeitstempel hinzu. |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-TodoLineToREADME.md) | todo | Fügt ein Aufgabenelement zur README.md-Datei hinzu. |
| [Get-Features](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Features.md) | features | Zeigt Funktionen aus einer README.md-Datei an. |
| [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Ideas.md) | ideas | Zeigt Ideen aus einer README.md-Datei an. |
| [Get-Issues](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Issues.md) | issues | Zeigt Probleme aus einer README.md-Datei an. |
| [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Refactor.md) | refactors | Ruft Refactordefinitionen aus GenXdev-Einstellungen basierend auf Namensmustern ab. |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-RefactorReport.md) | refactorreport | Erstellt einen detaillierten Bericht über Refactoring-Operationen und deren Status. |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ReleaseNotes.md) | releasenotes | Zeigt ReleaseNotes aus einer README.md-Datei an. |
| [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Todoos.md) | todoos | Zeigt Aufgabenelemente aus einer README.md-Datei an. |
| [New-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/New-Refactor.md) | newrefactor | Erstellt ein neues Refactoring-Set für Code-Transformationsaufgaben. |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-SourceFileInIde.md) | editcode | Öffnet eine Quelldatei in der bevorzugten IDE (Visual Studio Code oder Visual Studio). |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/de-DE/Publish-ReleaseNotesToManifest.md) | pubrelnotes | Veröffentlicht unvollständige Versionshinweise aus README.md im Modulmanifest. |
| [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-Refactor.md) | &nbsp; | Entfernt Refaktorsets aus dem GenXdev-Präferenzsystem. |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-NextRefactor.md) | nextrefactor | Setzt eine Code-Umgestaltungssitzung fort oder startet sie neu. |
| [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Update-Refactor.md) | updaterefactor | Aktualisiert und verwaltet Refactoring-Sets, einschließlich Dateiauswahl und -verarbeitung. |
| [VSCode](https://github.com/genXdev/genXdev/blob/main/de-DE/VSCode.md) | &nbsp; | Öffnet eine oder mehrere Dateien in Visual Studio Code. |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GitChangedFiles.md) | gitchanged | Ruft die Liste der geänderten Dateien in einem Git-Repository ab. |
| [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/de-DE/New-GitCommit.md) | commit | Erstellt und schiebt einen neuen Git-Commit mit allen Änderungen. |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/de-DE/PermanentlyDeleteGitFolders.md) | &nbsp; | Löscht endgültig angegebene Ordner aus allen Branches eines Git-Repositorys. |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-GenXdevCmdlet.md) | improvecmdlet | Verbessert die GenXdev-Cmdlet-Dokumentation und -Implementierung durch KI-Unterstützung. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-GenXdevCmdletTests.md) | improvecmdlettests | Bestätigt und verbessert die Unit-Tests eines angegebenen GenXdev-Cmdlets. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | Überprüft die Abhängigkeitsnutzung in GenXdev-Modulen, um sicherzustellen, dass eine ordnungsgemäße Modulhierarchie eingehalten wird. |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-GenXdevTest.md) | rungenxdevtests | Führt Komponententests für GenXdev-Module, Submodule oder Cmdlets aus mit intelligentem Debugging und KI-gestützter Fehlerbehebung. |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-ModuleDefinition.md) | &nbsp; | Unterstützt das Refactoring von PowerShell-Quellcodedateien mithilfe von KI-Unterstützung. |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureCopilotKeyboardShortCut.md) | &nbsp; | Konfiguriert die Tastaturkürzel von GitHub Copilot Chat in Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureDefaultGenXdevRefactors.md) | &nbsp; | Stellt sicher, dass die standardmäßigen GenXdev-Refactoring-Definitionen verfügbar sind. |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-CmdletMetaData.md) | &nbsp; | Ruft Metadaten für ein angegebenes GenXdev-Cmdlet ab und übersetzt optional die Hilfetexte in eine andere Sprache. |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXDevModule.md) | &nbsp; | Ruft alle GenXDev-Module aus einem angegebenen Pfad ab. |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXDevModuleInfo.md) | &nbsp; | Ruft detaillierte Informationen über GenXdev PowerShell-Module ab. |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | Ruft GenXDev-Module in Abhängigkeitsreihenfolge ab. |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ModuleCmdletMetaData.md) | &nbsp; | Ruft Metadaten für alle Cmdlets in einem PowerShell-Modul ab. |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-GenXdevPSFormatter.md) | &nbsp; | Formatiert PowerShell-Skriptdateien mithilfe der Formatierungsregeln von PSScriptAnalyzer. |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | Ruft PowerShell Script Analyzer auf, um PowerShell-Skripte auf Konformität und Best Practices zu analysieren. |
| [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/de-DE/New-ModuleMarkdownHelp.md) | &nbsp; | Generiert umfangreiche Markdown-Hilfedateien für jedes PowerShell-Modul. |
| [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/de-DE/New-ModuleXmlHelp.md) | &nbsp; | Generiert MAML-XML-Hilfedateien für jedes PowerShell-Modul. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/de-DE/Search-GenXdevCmdlet.md) | searchcmdlet | Sucht nach einem GenXdev-Cmdlet und öffnet es optional in einer IDE zur Bearbeitung. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | Öffnet das angegebene GenXdev-Cmdlet in Visual Studio Code. |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-ArrayTemplate.md) | FormatArray | Formatiert eine Auflistung von Objekten mithilfe einer Vorlagenzeichenfolge mit Eigenschaftsplatzhaltern und erzeugt eine einzelne formatierte Zeichenfolge. |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-DoubleEmptyLines.md) | &nbsp; | Entfernt doppelte (aufeinanderfolgende) Leerzeilen aus einem Code-String und formatiert die Ausgabe optional neu. |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-IsSpeaking.md) | iss | Gibt true zurück, wenn die Sprachausgabe-Engine spricht. |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/de-DE/New-MicrosoftShellTab.md) | x | Erstellt einen neuen Windows Terminal-Tab, der PowerShell ausführt. |
| [Now](https://github.com/genXdev/genXdev/blob/main/de-DE/Now.md) | &nbsp; | Gibt das aktuelle Systemdatum und die aktuelle Systemuhrzeit als DateTime-Objekt zurück. |
| [SayDate](https://github.com/genXdev/genXdev/blob/main/de-DE/SayDate.md) | &nbsp; | Gibt das aktuelle Datum mithilfe der Sprachsynthese aus. |
| [SayTime](https://github.com/genXdev/genXdev/blob/main/de-DE/SayTime.md) | &nbsp; | Gibt die aktuelle Uhrzeit mittels Text-zu-Sprache aus. |
| [secondscreen](https://github.com/genXdev/genXdev/blob/main/de-DE/secondscreen.md) | &nbsp; | Legt die Standardkonfiguration für den zweiten Monitor fest. |
| [sidebyside](https://github.com/genXdev/genXdev/blob/main/de-DE/sidebyside.md) | &nbsp; | Legt die standardmäßige nebeneinander Anordnung fest. |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-SnakeGame.md) | snake | Startet ein einfaches Snake-Spiel in der Konsole. |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-TextToSpeech.md) | say | Wandelt Text mithilfe des neuronalen TTS-Moduls von Microsoft Edge in Sprache um. |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/de-DE/Stop-TextToSpeech.md) | sst | Unterbricht sofort jegliche laufende Text-zu-Sprache-Ausgabe. |
| [UtcNow](https://github.com/genXdev/genXdev/blob/main/de-DE/UtcNow.md) | &nbsp; | Ruft das aktuelle UTC-Datum und die aktuelle UTC-Uhrzeit (koordinierte Weltzeit) ab. |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-KeyValueStoreNames.md) | getstorenames | Ruft die Namen der verfügbaren Schlüssel-Wert-Speicher ab. |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-KeyValueStorePath.md) | &nbsp; | Ruft den Dateipfad für einen Schlüssel-Wert-Speicher ab. |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-StoreKeys.md) | getkeys | Ruft alle Schlüsselnamen für einen bestimmten Schlüssel-Wert-Speicher ab. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ValueByKeyFromStore.md) | getvalue | Ruft einen Wert aus einem JSON-basierten Schlüssel-Wert-Speicher ab. |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/de-DE/Initialize-KeyValueStores.md) | &nbsp; | Initialisiert die Verzeichnisstruktur von KeyValueStore für die lokale Speicherung und OneDrive-Speicherung. |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-KeyFromStore.md) | removekey | Entfernt einen Schlüssel aus einem Schlüssel-Wert-Speicher. |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-KeyValueStore.md) | &nbsp; | Entfernt einen Schlüssel-Wert-Speicher. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-ValueByKeyInStore.md) | setvalue | Verwaltet Schlüssel-Wert-Paare in einem auf JSON-Dateien basierenden Speicher. |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Sync-KeyValueStore.md) | &nbsp; | Synchronisiert lokale und OneDrive Key-Value-Speicher-JSON-Dateien. |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreference.md) | getPreference | Ruft einen Voreinstellungswert aus dem GenXdev-Voreinstellungsspeicher ab. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreferenceNames.md) | getPreferenceNames | Ruft alle Präferenznamen aus dem Sitzungsspeicher und den Datenbankspeichern ab. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | Ruft den konfigurierten Datenbankpfad für Präferenzdatendateien ab, die in GenXdev.Data-Operationen verwendet werden. |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-GenXdevPreference.md) | removePreference | Entfernt einen Präferenzwert aus dem GenXdev-Präferenzspeicher. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | Legt einen Standard-Voreinstellungswert im GenXdev-Voreinstellungsspeicher fest. |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevPreference.md) | setPreference | Legt einen Präferenzwert im GenXdev-Präferenzspeicher fest. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | Legt den Datenbankpfad für die in GenXDev.Data-Vorgängen verwendeten Einstellungen fest. |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLiteSchema.md) | &nbsp; | Ruft die vollständigen Schema-Informationen aus einer SQLite-Datenbank ab. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLiteTableColumnData.md) | &nbsp; | Ruft Daten aus einer bestimmten Spalte einer SQLite-Datenbanktabelle ab. |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLiteTableData.md) | &nbsp; | Ruft Daten aus einer SQLite-Datenbanktabelle ab, mit optionaler Begrenzung der Datensätze. |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLiteTables.md) | &nbsp; | Ruft eine Liste von Tabellennamen aus einer SQLite-Datenbank ab. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLiteTableSchema.md) | &nbsp; | Ruft die Schemainformationen für eine angegebene SQLite-Tabelle ab. |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLiteTransaction.md) | getsqltx, newsqltx | Erstellt und gibt ein SQLite-Transaktionsobjekt für Batch-Operationen zurück. |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLiteViewColumnData.md) | &nbsp; | Ruft Spaltendaten aus einer SQLite-Ansicht mit optionaler Zeilenbegrenzung ab. |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLiteViewData.md) | &nbsp; | Ruft Daten aus einer SQLite-Datenbankansicht ab, mit optionaler Begrenzung der Datensätze. |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLiteViews.md) | &nbsp; | Ruft eine Liste von Ansichten aus einer SQLite-Datenbank ab. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLiteViewSchema.md) | &nbsp; | Ruft die SQL-Schemadefinition für eine SQLite-Ansicht ab. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-SQLiteQuery.md) | &nbsp; | Führt eine oder mehrere SQL-Abfragen gegen eine SQLite-Datenbank mit Transaktionsunterstützung aus. |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-SQLiteStudio.md) | &nbsp; | Führt SQLite-Datenbankabfragen mit Unterstützung für Parameter und Transaktionen aus. |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/de-DE/New-SQLiteDatabase.md) | nsqldb | Erstellt eine neue SQLite-Datenbankdatei. |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLServerSchema.md) | &nbsp; | Ruft die vollständigen Schemainformationen aus einer SQL Server-Datenbank ab. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLServerTableColumnData.md) | &nbsp; | Ruft Daten aus einer bestimmten Spalte in einer SQL-Datenbanktabelle ab. |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLServerTableData.md) | &nbsp; | Ruft Daten aus einer SQL-Datenbanktabelle mit optionaler Datensatzbegrenzung ab. |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLServerTables.md) | &nbsp; | Ruft eine Liste von Tabellennamen aus einer SQL Server-Datenbank ab. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLServerTableSchema.md) | &nbsp; | Ruft die Schema-Informationen für eine angegebene SQL Server-Tabelle ab. |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLServerTransaction.md) | getsqltx, newsqltx | Erstellt und gibt ein SQL Server-Transaktionsobjekt für Batch-Vorgänge zurück. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLServerViewColumnData.md) | &nbsp; | Ruft Spaltendaten aus einer SQL-Ansicht mit optionaler Begrenzung der Ergebnisse ab. |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLServerViewData.md) | &nbsp; | Ruft Daten aus einer SQL-Datenbankansicht mit optionaler Datensatzbegrenzung ab. |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLServerViews.md) | &nbsp; | Ruft eine Liste von Sichten aus einer SQL Server-Datenbank ab. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SQLServerViewSchema.md) | &nbsp; | Ruft die SQL-Schemadefinition für eine SQL Server-Ansicht ab. |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-SQLServerQuery.md) | &nbsp; | Führt eine oder mehrere SQL-Abfragen gegen eine SQL Server-Datenbank mit Transaktionsunterstützung aus. |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | Führt SQL Server-Datenbankabfragen mit Unterstützung für Parameter und Transaktionen aus. |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/de-DE/New-SQLServerDatabase.md) | nsqldb | Erstellt eine neue SQL Server-Datenbank. |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/de-DE/Copy-FilesToDateFolder.md) | &nbsp; | Kopiert Dateien, die den Suchkriterien entsprechen, in datumsbasierte Unterordner. |
| [Expand-Path](https://github.com/genXdev/genXdev/blob/main/de-DE/Expand-Path.md) | ep | Erweitert jede angegebene Dateireferenz zu einem vollständigen Pfadnamen. |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-DuplicateFiles.md) | fdf | Suchen Sie doppelte Dateien in mehreren Verzeichnissen basierend auf konfigurierbaren Kriterien. |
| [Find-Item](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-Item.md) | l | Durchsuchen Sie Dateien und Verzeichnisse mit erweiterten Filteroptionen. |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-Fasti.md) | fasti | Extrahiert Archivdateien im aktuellen Verzeichnis in ihre eigenen Ordner und löscht sie anschließend. |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-FilesToDateFolder.md) | &nbsp; | Verschiebt Dateien, die den Suchkriterien entsprechen, in datumsbasierte Unterordner. |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-ItemWithTracking.md) | &nbsp; | Verschiebt Dateien und Verzeichnisse, wobei Dateisystemverknüpfungen und -verweise erhalten bleiben. |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-ToRecycleBin.md) | &nbsp; | Verschiebt Dateien und Verzeichnisse sicher in den Windows-Papierkorb. |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/de-DE/ReadJsonWithRetry.md) | &nbsp; | Liest JSON-Datei mit Wiederholungslogik und automatischer Sperrbereinigung. |
| [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-AllItems.md) | sdel | Entfernt rekursiv den gesamten Inhalt eines Verzeichnisses mit erweiterter Fehlerbehandlung. |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-ItemWithFallback.md) | rmf | Entfernt Dateien oder Verzeichnisse mit mehreren Fallback-Mechanismen für zuverlässiges Löschen. |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-OnReboot.md) | &nbsp; | Markiert Dateien oder Verzeichnisse zur Löschung beim nächsten Systemstart. |
| [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/de-DE/Rename-InProject.md) | rip | Führt Textersetzung in einem gesamten Projektverzeichnis durch. |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-FoundLocation.md) | lcd | Findet die erste passende Datei oder den ersten passenden Ordner und legt den Speicherort darauf fest. |
| [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent.md) | .. | Wechselt zum übergeordneten Verzeichnis und listet dessen Inhalt auf. |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent2.md) | ... | Navigiert zwei Verzeichnisebenen in der Dateisystemhierarchie nach oben. |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent3.md) | .... | Navigiert drei Verzeichnisebenen in der Dateisystemhierarchie nach oben. |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent4.md) | ..... | Navigiert vier Verzeichnisebenen in der Dateisystemhierarchie nach oben. |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent5.md) | ...... | Navigiert fünf Verzeichnisebenen in der Dateisystemhierarchie nach oben. |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-RoboCopy.md) | xc, rc | Stellt einen PowerShell-Wrapper für das Microsoft Robust Copy (RoboCopy)-Dienstprogramm bereit. |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-FileAtomic.md) | &nbsp; | Schreibt Bytes atomar in eine Datei, um Beschädigungen zu verhindern. |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-JsonFileAtomic.md) | &nbsp; | Schreibt ein Objekt atomar als JSON in eine Datei, um Beschädigungen zu vermeiden. |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-TextFileAtomic.md) | &nbsp; | Schreibt Text atomar in eine Datei, um Beschädigungen zu vermeiden. |

---

## GenXdev.Hardware

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AudioDeviceNames.md) | &nbsp; | Ruft die Namen der verfügbaren Audiogeräte für Mikrofon- oder Desktop-Audioaufnahme ab. |
| [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-CpuCore.md) | &nbsp; | Berechnet und gibt die Gesamtzahl der logischen CPU-Kerne im System zurück. |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-HasCapableGpu.md) | &nbsp; | Ermittelt, ob eine CUDA-fähige GPU mit ausreichendem Arbeitsspeicher vorhanden ist. |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-MonitorCount.md) | &nbsp; | Ruft die Gesamtzahl der am System angeschlossenen Bildschirme ab. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-NumberOfCpuCores.md) | &nbsp; | Berechnet und gibt die Gesamtzahl der logischen CPU-Kerne im System zurück. |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-CpuAvx.md) | &nbsp; | Testet, ob die CPU die Befehlssätze AVX und AVX2 unterstützt. |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/blob/main/de-DE/alignScript.md) | &nbsp; | Gibt eine Zeichenfolge (mit geänderter Einrückung) einer angegebenen Skriptblockzeichenfolge zurück |
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/de-DE/Approve-NewTextFileContent.md) | &nbsp; | Interaktiver Dateiinhaltsvergleich und -genehmigung mit WinMerge. |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-RefactorFile.md) | &nbsp; | Führt einen Refactoring-Vorgang für eine Quelldatei mithilfe der angegebenen IDE und KI-Prompt-Vorlage aus. |
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/de-DE/Confirm-InstallationConsent.md) | &nbsp; | Bestätigt die Zustimmung des Benutzers zur Installation von Drittanbietersoftware und verwendet dabei Einstellungen für dauerhafte Entscheidungen. |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/de-DE/Convert-DotNetTypeToLLMType.md) | &nbsp; | Konvertiert .NET-Typnamen in LLM-Typnamen (Language Model). |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertTo-HashTable.md) | &nbsp; | Konvertiert ein PSCustomObject rekursiv in eine Hashtabelle. |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | Konvertiert PowerShell-Funktionen in LLM OpenAI API-Funktionsdefinitionen. |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/de-DE/Copy-IdenticalParamValues.md) | &nbsp; | Kopiert Parameterwerte von gebundenen Parametern in eine neue Hashtabelle basierend auf den möglichen Parametern einer anderen Funktion. |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureGenXdev.md) | &nbsp; | Stellt sicher, dass alle GenXdev-Module ordnungsgemäß geladen werden, indem alle Ensure*-Cmdlets aufgerufen werden. |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureNuGetAssembly.md) | &nbsp; | Lädt .NET-Assemblys aus NuGet-Paketen basierend auf Paketschlüssel oder -ID herunter und lädt sie. |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/de-DE/GenerateMasonryLayoutHtml.md) | &nbsp; | Generiert ein responsives Masonry-Layout-HTML-Galerie aus Bilddaten. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AIDefaultLLMSettings.md) | &nbsp; | Ruft alle verfügbaren Standard-LLM-Einstellungskonfigurationen für KI-Operationen in GenXdev.AI ab. |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-BCP47LanguageDictionary.md) | &nbsp; | Gibt ein Wörterbuch aller installierten BCP-47-Sprachtags und deren Anzeigenamen zurück. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-DefaultWebLanguage.md) | &nbsp; | Ruft den Standard-Websprachschlüssel basierend auf den aktuellen Spracheinstellungen des Systems ab. |
| [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-JsonExampleFromSchema.md) | &nbsp; | Generiert eine menschenlesbare Beispiel-JSON-Zeichenfolge aus einer JSON-Schema-Definition. |
| [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-LLMJsonOutput.md) | &nbsp; | @{response=Extrahiert gültiges JSON aus dem LLM-Antworttext unter Verwendung von Best-Effort-Heuristiken.} |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WebLanguageDictionary.md) | &nbsp; | Gibt ein umgekehrtes Wörterbuch für alle von der Google-Suche unterstützten Sprachen zurück. |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/de-DE/Import-GenXdevModules.md) | reloadgenxdev | Importiert alle GenXdev PowerShell-Module in den globalen Bereich. |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/de-DE/Initialize-SearchPaths.md) | &nbsp; | Initialisiert und konfiguriert Systemsuchpfade für die Paketverwaltung. |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-CommandFromToolCall.md) | &nbsp; | Führt einen Toolaufruf mit Validierung und Parameterfilterung aus. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | Führt einen Skriptblock für jedes GenXdev-Modul im Arbeitsbereich aus. |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-JSONComments.md) | &nbsp; | Entfernt Kommentare aus JSON-Inhalten. |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/de-DE/resetdefaultmonitor.md) | &nbsp; | Stellt die Standardkonfiguration des sekundären Monitors wieder her. |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/de-DE/ResolveInputObjectFileNames.md) | &nbsp; | Erweitert Eingabeobjekte zu Datei- und Verzeichnisnamen und unterstützt verschiedene Filter und Ausgabeoptionen. |
| [Show-Verb](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-Verb.md) | showverbs | Zeigt eine kurze alphabetische Liste aller PowerShell-Verben an. |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-RefactorLLMSelection.md) | &nbsp; | Wertet Quelldateien mittels LLM-Analyse auf Refactoring-Tauglichkeit aus. |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-UnattendedMode.md) | &nbsp; | Erkennt, ob PowerShell im unbeaufsichtigten/automatischen Modus ausgeführt wird. |
| [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/de-DE/WriteFileOutput.md) | &nbsp; | Gibt Dateiinformationen mit hyperlinkierten Anzeigenamen für eine verbesserte Benutzererfahrung aus. |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/de-DE/Convert-PhysicsUnit.md) | &nbsp; | Konvertiert einen Wert von einer physikalischen Einheit in eine andere innerhalb derselben Kategorie. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ApparentSizeAtArmLength.md) | &nbsp; | Berechnet die scheinbare Größe eines Objekts auf Armlänge. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AtEyeLengthSizeInMM.md) | &nbsp; | Berechnet die scheinbare Größe in mm eines Objekts auf Armeslänge. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | Berechnet die Auftriebskraft. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | Berechnet die Zentripetalbeschleunigung. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | Berechnet die Doppler-verschobene Frequenz. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | Berechnet die Widerstandskraft. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | Berechnet die Fluchtgeschwindigkeit. |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-FreeFallDistance.md) | &nbsp; | Berechnet die zurückgelegte Fallstrecke während des freien Falls für eine bestimmte Zeitdauer. |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-FreeFallHeight.md) | &nbsp; | Berechnet die Fallhöhe während des freien Falls für eine gegebene Zeitdauer. |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-FreeFallTime.md) | &nbsp; | Berechnet die Zeit, die ein Objekt im freien Fall benötigt, um eine bestimmte Höhe zu fallen. |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | Berechnet die Aufprallgeschwindigkeit aus der Höhe. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | Berechnet die kinetische Energie. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-LightTravelTimeByDistance.md) | &nbsp; | Berechnet die Zeit, die Licht für eine bestimmte Strecke benötigt. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | Berechnet die Vergrößerung für eine Linse. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-MomentumByMassAndVelocity.md) | &nbsp; | Berechnet den linearen Impuls. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | Berechnet die Umlaufgeschwindigkeit. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | Berechnet die potentielle Gravitationsenergie. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | Berechnet die Flugbahn eines Projektils. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | Berechnet den Brechungswinkel mithilfe des Snelliusschen Brechungsgesetzes. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | Berechnet die Resonanzfrequenz für ein geschlossenes Rohr. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-SoundTravelDistanceByTime.md) | &nbsp; | Berechnet die Entfernung, die Schall in einer bestimmten Zeit zurücklegt. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | Berechnet die Endgeschwindigkeit. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | Berechnet die Flugzeit eines Projektils. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | Berechnet die Wellengeschwindigkeit. |

---

## GenXdev.Media

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImageGeolocation.md) | &nbsp; | Extrahiert Geodaten aus einer Bilddatei. |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImageMetadata.md) | &nbsp; | Extrahiert umfassende Metadaten aus einer Bilddatei. |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-MediaFileCreationDate.md) | &nbsp; | Extrahiert das bestmögliche Erstellungsdatum für Medien und andere Dateien. |
| [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-MediaFile.md) | vlcmedia, media, findmedia | Öffnet und spielt Mediendateien mit VLC Media Player mit erweiterten Filter- und Konfigurationsoptionen. |
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-VlcMediaPlayer.md) | vlc | Startet und steuert VLC Media Player mit umfangreichen Konfigurationsoptionen. |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-VlcMediaPlayerLyrics.md) | vlclyrics | Öffnet einen Webbrowser, um nach Textzeilen der aktuell abgespielten VLC-Medien zu suchen. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | Setzt den Fokus auf das Fenster des VLC Media Players. |
| [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/de-DE/StabilizeVideo.md) | &nbsp; | Stabilisiert die neueste oder angegebene .mp4-Datei mittels FFmpeg + vid.stab (keine schwarzen Ränder). |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | Setzt VLC Media Player zum nächsten Element in der aktuellen Wiedergabeliste vor. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | Wechselt zum vorherigen Element in der Wiedergabeliste des VLC Media Players. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/de-DE/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | Schaltet den Stumm-Modus des VLC Media Players um. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/de-DE/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | Schaltet den Pause-/Wiedergabestatus des VLC Media Players um. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/de-DE/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | Schaltet den Wiederholungsmodus im VLC Media Player um. |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertTo-Uris.md) | &nbsp; | Analysiert Zeichenfolgen auf gültige URIs. |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-AllPossibleQueries.md) | qq | Öffnet alle möglichen Abfragetypen für die angegebenen Suchbegriffe oder URLs. |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-BingCopilotQuery.md) | aibc | Öffnet eine Bing CoPilot-Abfrage in einem Webbrowser |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | Öffnet eine ChatGPT-Abfrage in einem Webbrowser. |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-CloudLLMChat.md) | ask | Öffnet eine Cloud-LLM-Chatoberfläche für KI-Anfragen. |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | Öffnet eine DeepSeek-Abfrage in einem Webbrowser |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-GithubCopilotQuery.md) | aigc, askghcopilot | Öffnet eine Github CoPilot-Abfrage in einem Webbrowser |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-GoogleGeminiQuery.md) | aigg, askgemini | Öffnet eine Google Gemini-Abfrage in einem Webbrowser |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-XGrokQuery.md) | aixg, askxgrok | Öffnet eine X Grok-Abfrage in einem Webbrowser |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-NextAffirmation.md) | WhatAboutIt | Gibt einen zufälligen Bestätigungstext von der affirmations.dev-API zurück. |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WikipediaSummary.md) | wikitxt | Ruft eine Zusammenfassung eines Themas von Wikipedia ab. |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Copy-PDFsFromGoogleQuery.md) | &nbsp; | Lädt PDF-Dateien herunter, die über Google-Suchergebnisse gefunden wurden. |
| [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-BingQuery.md) | bq | Öffnet eine Bing-Suchanfrage in einem Webbrowser. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-BuiltWithSiteInfo.md) | &nbsp; | Öffnet BuiltWith-Websiteabfragen in einem Webbrowser. |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-GithubQuery.md) | qgithub, qgh | Öffnet eine GitHub-Repository-Suchanfrage in einem Webbrowser oder führt erweiterte Suchen über die GitHub-REST-API durch, die alle verfügbaren Qualifikatoren und Suchkategorien (Repositories, Code, Issues, Benutzer, Commits, Diskussionen, Themen, Wikis) unterstützt. |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-GoogleQuery.md) | &nbsp; | Öffnet Google-Abfragen in einem Webbrowser mit konfigurierbaren Einstellungen und umfangreichen Anpassungsoptionen. |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-GoogleSiteInfo.md) | &nbsp; | Öffnet Google-Website-Infoabfragen in einem Webbrowser. |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-GrokipediaQuery.md) | wiki | Öffnet eine Grokipedia-Abfrage in einem Webbrowser. |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-IMDBQuery.md) | imdb | Öffnet eine IMDB-Suchanfrage in einem Webbrowser. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-InstantStreetViewQuery.md) | isv | Öffnet InstantStreetView-Abfragen in einem Webbrowser. |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-MovieQuote.md) | moviequote | Öffnet ein Video eines Filmzitats in einem Webbrowser. |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-SearchEngine.md) | q | Öffnet eine Suchanfrage im angegebenen Suchmaschine mit einem Webbrowser. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-SimularWebSiteInfo.md) | simularsite | Öffnet SimilarWeb-Websiteinformationen für angegebene URLs in einem Webbrowser. |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-StackOverflowQuery.md) | qso | Öffnet Stack Overflow-Suchabfragen in einem Webbrowser. |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WaybackMachineSiteInfo.md) | wayback | Öffnet WaybackMachine-Website-Informationen in einem Webbrowser. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WebsiteAndPerformQuery.md) | owaq | Öffnet eine Webseite in einem Webbrowser und führt eine oder mehrere Abfragen durch. |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WhoisHostSiteInfo.md) | whois | Öffnet eine Whois-Hostinformationsabfrage in einem Webbrowser. |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WikipediaNLQuery.md) | wikinl | Öffnet niederländische Wikipedia-Suchen in einem Webbrowser. |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WikipediaQuery.md) | wikipedia | Öffnet eine Wikipedia-Abfrage in einem Webbrowser. |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WolframAlphaQuery.md) | qalpha | Öffnet eine Wolfram Alpha-Abfrage in einem Webbrowser. |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-YoutubeQuery.md) | youtube | Öffnet YouTube-Suchanfragen in einem Webbrowser. |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-GameOfLife.md) | gameoflife, conway | Öffnet die Conway's Game of Life-Simulation in einem Webbrowser. |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-GenXdevAppCatalog.md) | appcatalog | Öffnet den Katalog der progressiven Web-Apps von GenXdev in einem Webbrowser. |
| [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-Timeline.md) | timeline | Öffnet eine interaktive Zeitleiste, die aktuelle Uhrzeit, Datum, Jahrhundert und Jahrtausend anzeigt. |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-ViralSimulation.md) | viral | Öffnet ein virales Simulationsspiel in einem Webbrowser mit umfangreichen Konfigurationsoptionen. |
| [Open-Yab](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-Yab.md) | yab | Öffnet das YAB-Spiel in einem Webbrowser mit konfigurierbaren Einstellungen. |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-YabAIBattle.md) | yabbattle | Öffnet das YabAI Battle-Spiel in einem Webbrowser. |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Close-Webbrowser.md) | wbc | Schließt ein oder mehrere Webbrowser-Instanzen selektiv. |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/de-DE/Close-WebbrowserTab.md) | ct, CloseTab | Schließt den aktuell ausgewählten Webbrowser-Tab. |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/de-DE/Export-BrowserBookmarks.md) | &nbsp; | Exportiert Browser-Lesezeichen in eine JSON-Datei. |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-BrowserBookmark.md) | bookmarks | Sucht nach Lesezeichen von einem oder mehreren Webbrowsern. |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-BrowserBookmark.md) | gbm | Gibt alle Lesezeichen von installierten Webbrowsern zurück. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-DefaultWebbrowser.md) | &nbsp; | Gibt den konfigurierten Standard-Webbrowser für den aktuellen Benutzer zurück. |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-PlaywrightSessionReference.md) | &nbsp; | Ruft einen Verweis auf die aktuelle Playwright-Browsersitzung ab. |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Webbrowser.md) | &nbsp; | Gibt eine Sammlung installierter moderner Webbrowser zurück. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WebbrowserTabDomNodes.md) | wl | Fragt DOM-Knoten im aktiven Browser-Tab ab und manipuliert sie mittels CSS-Selektoren. |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/de-DE/Import-BrowserBookmarks.md) | &nbsp; | Importiert Lesezeichen aus einer Datei oder Sammlung in einen Webbrowser. |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/de-DE/Import-GenXdevBookmarkletMenu.md) | &nbsp; | Importiert GenXdev JavaScript-Bookmarklets in Browsersammlungen von Lesezeichen. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-WebbrowserEvaluation.md) | Eval, et | Führt JavaScript-Code in einem ausgewählten Webbrowser-Tab aus. |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-BrowserBookmarks.md) | sites | Öffnet Browser-Lesezeichen, die den angegebenen Suchkriterien entsprechen. |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-Webbrowser.md) | wb | Öffnet URLs in einem oder mehreren Browser-Fenstern mit optionaler Positionierung und Gestaltung. |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WebbrowserSideBySide.md) | wbn | Startet ein neues Webbrowser-Fenster mit spezifischer Positionierung. |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/de-DE/Select-WebbrowserTab.md) | st | Wählt einen Browsertab aus laufenden, von Playwright verwalteten Browsern aus. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-BrowserVideoFullscreen.md) | fsvideo | Maximiert das erste im aktuellen Browser-Tab gefundene Videoelement. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-WebbrowserTabLocation.md) | lt, Nav | Navigiert die aktuelle Webbrowser-Registerkarte zu einer angegebenen URL. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-WebsiteInAllBrowsers.md) | &nbsp; | Öffnet eine URL in mehreren Browsern gleichzeitig in einem Mosaik-Layout. |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/de-DE/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | Stellt eine Verbindung zu einer vorhandenen Browserinstanz über den Debugging-Port her. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-PlaywrightProfileDirectory.md) | &nbsp; | Ruft das Playwright-Browserprofilverzeichnis für persistente Sitzungen ab. |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-PlayWrightBrowser.md) | spb | Startet einen von Playwright verwalteten Browser mit einem persistenten Benutzerprofil. |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/de-DE/Resume-WebbrowserTabVideo.md) | wbvideoplay | Setzt die Videowiedergabe in einem YouTube-Browser-Tab fort. |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/de-DE/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | Unterbricht die Videowiedergabe in allen aktiven Browsersitzungen. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/de-DE/Unprotect-WebbrowserTab.md) | wbctrl | Übernimmt die Kontrolle über einen ausgewählten Webbrowser-Tab für interaktive Bearbeitung. |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/de-DE/CurrentUserHasElevatedRights.md) | &nbsp; | Überprüft, ob der aktuelle Benutzer über erhöhte Rechte verfügt. |
| [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/de-DE/Enable-Screensaver.md) | &nbsp; | Startet den konfigurierten Windows-Bildschirmschoner. |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ActiveUser.md) | gusers | Ruft eine Liste eindeutiger Benutzernamen aus aktuell aktiven Systemprozessen ab. |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ChildProcesses.md) | &nbsp; | Ruft alle Prozesse ab, die Nachkommen des aktuellen PowerShell-Prozesses sind. |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ClipboardFiles.md) | getclipfiles, gcbf | Ruft Dateien von der Windows-Zwischenablage ab, die für Dateivorgänge wie Kopieren/Einfügen festgelegt wurden. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-CurrentFocusedProcess.md) | &nbsp; | Ruft das Prozessobjekt des Fensters ab, das aktuell den Tastaturfokus besitzt. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-DesktopScalingFactor.md) | &nbsp; | Ruft den Windows-Anzeigeskalierungsfaktor (DPI-Einstellung) für einen angegebenen Monitor ab. |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ForegroundWindow.md) | &nbsp; | Ruft das Handle des aktuell aktiven Vordergrundfensters ab. |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-KnownFolderPath.md) | folder | Ruft den Pfad eines Windows-Bekannten Ordners mithilfe der Windows Shell32-API ab. |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-MpCmdRunPath.md) | &nbsp; | Ruft den Pfad zur ausführbaren Datei MpCmdRun.exe von Windows Defender ab. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-OpenedFileHandleProcesses.md) | &nbsp; | Ruft Prozesse ab, die geöffnete Dateihandles zu angegebenen Dateien haben. |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-PowershellMainWindow.md) | &nbsp; | Gibt ein Fensterhilfsobjekt für das Hauptfenster des PowerShell-Terminals zurück. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-PowershellMainWindowProcess.md) | &nbsp; | Gibt das Prozessobjekt für das Fenster zurück, das das PowerShell-Terminal hostet. |
| [Get-Window](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Window.md) | &nbsp; | Ruft Fensterinformationen für angegebene Prozesse oder Fensterhandles ab. |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WindowPosition.md) | gwp | Ruft die Position und den Zustand von Fenstern ab. |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/de-DE/Initialize-ScheduledTaskScripts.md) | &nbsp; | Erstellt geplante Aufgaben, die PowerShell-Skripte in angegebenen Intervallen ausführen. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-WindowsUpdate.md) | updatewindows | Überprüft, ob Windows auf dem neuesten Stand ist, und installiert optional verfügbare Updates. |
| [Pop-Window](https://github.com/genXdev/genXdev/blob/main/de-DE/Pop-Window.md) | popw | Entfernt den letzten aktiven Fensterhelfer aus dem Stapel mit optionalen Änderungen. |
| [Push-Window](https://github.com/genXdev/genXdev/blob/main/de-DE/Push-Window.md) | pushw | Schiebt das aktuelle Fenster mit optionalen Änderungen auf den Fensterstapel. |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/de-DE/Save-DesktopScreenShot.md) | &nbsp; | Erstellt einen Screenshot des angegebenen Monitors und speichert ihn unter dem angegebenen Pfad. |
| [Send-Key](https://github.com/genXdev/genXdev/blob/main/de-DE/Send-Key.md) | sendkeys, invokekeys | Sendet simulierte Tastatureingaben an ein Fenster oder einen Prozess. |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/de-DE/Send-WakeOnLan.md) | &nbsp; | Sendet ein Wake-on-LAN-Magisches Paket, um entfernte Computer im Netzwerk aufzuwecken. |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-ClipboardFiles.md) | setclipfiles, scbf | Legt Dateien für Dateioperationen wie Kopieren/Einfügen in der Windows-Zwischenablage fest. |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-ForegroundWindow.md) | &nbsp; | Bringt das angegebene Fenster in den Vordergrund und macht es zum aktiven Fenster. |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-KnownFolderPath.md) | &nbsp; | Ändert den physischen Pfad eines bekannten Windows-Ordners. |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-MonitorPowerOff.md) | poweroff | Schaltet die Stromversorgung aller angeschlossenen Monitore aus. |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | Schaltet die Monitorstromversorgung ein. |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-TaskbarAlignment.md) | &nbsp; | Konfiguriert die Ausrichtung der Taskleiste von Windows 11+ zwischen den Positionen zentriert und links. |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-WindowPosition.md) | wp | Positioniert Fenster neu und ändert deren Größe, wenn explizite Positionierungsparameter angegeben werden. |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-WindowPositionForSecondary.md) | wps | Positioniert ein Fenster auf dem sekundären Monitor mit angegebenen Layout-Optionen. |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-WindowsWallpaper.md) | &nbsp; | Legt ein zufälliges Hintergrundbild aus einem angegebenen Verzeichnis fest. |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-ProcessWithPriority.md) | nice | Startet einen Prozess mit einer angegebenen Prioritätsstufe. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | Scannt Dateien oder Verzeichnisse mit Windows Defender auf Malware. |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-WireGuardPeer.md) | &nbsp; | Fügt eine neue WireGuard-VPN-Peer- (Client-) Konfiguration zum Server hinzu. |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureWireGuard.md) | &nbsp; | Stellt sicher, dass der WireGuard-VPN-Dienst über einen Docker-Container installiert und ausgeführt wird. |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WireGuardPeerQRCode.md) | &nbsp; | Generiert einen QR-Code für eine WireGuard-VPN-Peer-Konfiguration. |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WireGuardPeers.md) | &nbsp; | Ruft Informationen über alle auf dem System konfigurierten WireGuard-VPN-Peers ab. |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WireGuardStatus.md) | &nbsp; | Ruft detaillierte Statusinformationen zum WireGuard-VPN-Server ab. |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-WireGuardPeer.md) | &nbsp; | Entfernt eine WireGuard-VPN-Peer-Konfiguration. |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/de-DE/Reset-WireGuardConfiguration.md) | &nbsp; | Setzt die WireGuard VPN-Serverkonfiguration zurück und entfernt alle Peers. |
