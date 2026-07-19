# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-19.

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/de-DE/Approve-NewTextFileContent.md) | &nbsp; | Interaktiver Dateiinhaltsvergleich und Freigabe mit WinMerge. |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/de-DE/Convert-DotNetTypeToLLMType.md) | &nbsp; | Konvertiert .NET-Typnamen in LLM (Language Model) -Typnamen. |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/de-DE/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | {   "type": "function",   "function": {     "name": "convert_powershell_to_openai",     "description": "Converts PowerShell functions to LLM OpenAI API function definitions.",     "parameters": {       "type": "object",       "properties": {},       "required": []     }   } } |
| [EnsureGithubCLIInstalled](https://github.com/genXdev/genXdev/de-DE/EnsureGithubCLIInstalled.md) | &nbsp; | Stellt sicher, dass die GitHub CLI ordnungsgemäß auf dem System installiert und konfiguriert ist. |
| [EnsureHuggingFace](https://github.com/genXdev/genXdev/de-DE/EnsureHuggingFace.md) | &nbsp; | Ensures the Hugging Face CLI is installed and functional. |
| [EnsurePaintNet](https://github.com/genXdev/genXdev/de-DE/EnsurePaintNet.md) | &nbsp; | Stellt sicher, dass Paint.NET ordnungsgemäß installiert und im System verfügbar ist. |
| [EnsurePip](https://github.com/genXdev/genXdev/de-DE/EnsurePip.md) | &nbsp; | Stellt sicher, dass pip für die angegebene Python-Installation installiert und funktionsfähig ist. |
| [EnsurePython](https://github.com/genXdev/genXdev/de-DE/EnsurePython.md) | &nbsp; | Stellt sicher, dass Python installiert und im System-PATH verfügbar ist. |
| [EnsureWinMergeInstalled](https://github.com/genXdev/genXdev/de-DE/EnsureWinMergeInstalled.md) | &nbsp; | Stellt sicher, dass WinMerge installiert ist und für Dateivergleichsvorgänge zur Verfügung steht. |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/de-DE/GenerateMasonryLayoutHtml.md) | &nbsp; | <div class="masonry-gallery">   <div class="grid-sizer"></div>   <div class="gutter-sizer"></div>   <div class="grid-item"><img src="https://picsum.photos/400/600?random=1" alt="Image 1"></div>   <div class="grid-item grid-item--width2"><img src="https://picsum.photos/800/600?random=2" alt="Image 2"></div>   <div class="grid-item"><img src="https://picsum.photos/400/400?random=3" alt="Image 3"></div>   <div class="grid-item"><img src="https://picsum.photos/400/800?random=4" alt="Image 4"></div>   <div class="grid-item grid-item--width2"><img src="https://picsum.photos/800/400?random=5" alt="Image 5"></div>   <div class="grid-item"><img src="https://picsum.photos/400/500?random=6" alt="Image 6"></div> </div>  <style> .masonry-gallery {   column-count: 3;   column-gap: 10px; }  .grid-sizer, .grid-item {   width: 100%;   break-inside: avoid;   margin-bottom: 10px; }  .grid-item img {   width: 100%;   display: block;   border-radius: 5px; }  @media (max-width: 768px) {   .masonry-gallery {     column-count: 2;   } }  @media (max-width: 480px) {   .masonry-gallery {     column-count: 1;   } } </style> |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/de-DE/Get-AIDefaultLLMSettings.md) | &nbsp; | Ruft alle verfügbaren Standard-LLM-Einstellungskonfigurationen für KI-Operationen in GenXdev.AI ab. |
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/de-DE/Get-AILLMSettings.md) | &nbsp; | Ruft die LLM-Einstellungen für KI-Operationen in GenXdev.AI ab. |
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/de-DE/Get-AudioDeviceNames.md) | &nbsp; | Ruft die Namen der verfügbaren Audiogeräte für die Mikrofon- oder Desktop-Audioaufnahme ab. |
| [Get-CpuCore](https://github.com/genXdev/genXdev/de-DE/Get-CpuCore.md) | &nbsp; | Berechnet und gibt die Gesamtzahl der logischen CPU-Kerne im System zurück. |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/de-DE/Get-HasCapableGpu.md) | &nbsp; | Bestimmt, ob eine CUDA-fähige GPU mit ausreichendem Speicher vorhanden ist. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/de-DE/Get-NumberOfCpuCores.md) | &nbsp; | Berechnet und gibt die Gesamtzahl der logischen CPU-Kerne im System zurück. |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/de-DE/Get-SpeechToText.md) | &nbsp; | Konvertiert Audiodateien mithilfe von OpenAIs Whisper-Spracherkennungsmodell in Text. |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/de-DE/Get-TextTranslation.md) | translate | Übersetzt Text mithilfe von KI in eine andere Sprache. |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/de-DE/Get-VectorSimilarity.md) | &nbsp; | Berechnet die Kosinusähnlichkeit zwischen zwei Vektoren. |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/de-DE/Invoke-CommandFromToolCall.md) | &nbsp; | Führt einen Tool-Aufruf mit Validierung und Parameterfilterung durch. |
| [Invoke-HuggingFaceCli](https://github.com/genXdev/genXdev/de-DE/Invoke-HuggingFaceCli.md) | &nbsp; | Ruft die Hugging Face CLI mit den angegebenen Argumenten auf. |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/de-DE/Invoke-LLMBooleanEvaluation.md) | equalstrue | Bewertet eine Aussage mit KI, um festzustellen, ob sie wahr oder falsch ist. |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/de-DE/Invoke-LLMQuery.md) | qllm, llm | Sendet Anfragen an eine OpenAI-kompatible Large Language Chat Completion API und verarbeitet Antworten. |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/de-DE/Invoke-LLMStringListEvaluation.md) | getlist, getstring | Extrahiert oder generiert eine Liste relevanter Zeichenfolgen aus dem Eingabetext mithilfe von KI-Analyse. |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/de-DE/Invoke-LLMTextTransformation.md) | spellcheck | Transforms text using AI-powered processing. |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/de-DE/Invoke-WinMerge.md) | &nbsp; | Startet WinMerge, um zwei Dateien nebeneinander zu vergleichen. |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/de-DE/Merge-TranslationCache.md) | &nbsp; | Verwaltet den persistenten Übersetzungs-Cache mit gebündelten Datenträgerschreibvorgängen pro Sprache. |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/de-DE/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/de-DE/New-LLMAudioChat.md) | llmaudiochat | Erstellt eine interaktive Audio-Chat-Sitzung mit einem LLM-Modell. |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/de-DE/New-LLMTextChat.md) | llmchat | Startet eine interaktive Textchat-Sitzung mit KI-Funktionen. |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/de-DE/Receive-RealTimeSpeechToText.md) | &nbsp; | Konvertiert Echtzeit-Audioeingabe mithilfe des Whisper-KI-Modells in Text. |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/de-DE/Set-AILLMSettings.md) | &nbsp; | Legt die LLM-Einstellungen für KI-Operationen in GenXdev.AI fest. |
| [Set-GenXdevAICommandNotFoundAction](https://github.com/genXdev/genXdev/de-DE/Set-GenXdevAICommandNotFoundAction.md) | &nbsp; | Richtet die benutzerdefinierte Behandlung von nicht gefundenen Befehlen mit KI-Unterstützung ein. |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/de-DE/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/de-DE/Test-CpuAvx.md) | &nbsp; | Testet, ob die CPU die AVX- und AVX2-Befehlssätze unterstützt. |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/de-DE/Test-DeepLinkImageFile.md) | &nbsp; | Prüft, ob der angegebene Dateipfad eine gültige Bilddatei mit einem unterstützten Format ist. |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/de-DE/Compare-ImageFaces.md) | comparefaces | Vergleicht Gesichter in zwei verschiedenen Bildern und gibt deren Ähnlichkeit mittels DeepStack zurück. |
| [EnsureDeepStack](https://github.com/genXdev/genXdev/de-DE/EnsureDeepStack.md) | &nbsp; | Stellt sicher, dass der DeepStack-Gesichtserkennungsdienst installiert ist und ausgeführt wird. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/de-DE/Get-ImageDetectedFaces.md) | &nbsp; | Erkennt Gesichter in einem hochgeladenen Bild durch Vergleich mit bekannten Gesichtern mithilfe von DeepStack. |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/de-DE/Get-ImageDetectedObjects.md) | &nbsp; | Erkennt und klassifiziert Objekte in einem hochgeladenen Bild mittels DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/de-DE/Get-ImageDetectedScenes.md) | &nbsp; | Klassifiziert ein Bild in eine von 365 Szenenkategorien mit DeepStack. |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/de-DE/Get-RegisteredFaces.md) | &nbsp; | Ruft eine Liste aller registrierten Gesichts-IDs von DeepStack ab. |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/de-DE/Invoke-ImageEnhancement.md) | enhanceimage | Verbessert ein Bild durch 4-fache Vergrößerung und Qualitätssteigerung mit DeepStack. |
| [Register-AllFaces](https://github.com/genXdev/genXdev/de-DE/Register-AllFaces.md) | UpdateFaces | Aktualisiert alle Gesichtserkennungsprofile aus Bilddateien im faces-Verzeichnis. |
| [Register-Face](https://github.com/genXdev/genXdev/de-DE/Register-Face.md) | &nbsp; | Registriert ein neues Gesicht mit der DeepStack Gesichtserkennungs-API. |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/de-DE/Unregister-AllFaces.md) | &nbsp; | Entfernt alle registrierten Gesichter aus dem DeepStack-Gesichtserkennungssystem. |
| [Unregister-Face](https://github.com/genXdev/genXdev/de-DE/Unregister-Face.md) | &nbsp; | Löscht ein registriertes Gesicht anhand seiner Kennung von DeepStack. |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/de-DE/Add-EmoticonsToText.md) | emojify | Enhances text by adding contextually appropriate emoticons using AI 🤖✨ |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/de-DE/ConvertFrom-CorporateSpeak.md) | uncorporatize | Converts polite, professional corporate speak into direct, clear language using AI. |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/de-DE/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | Konvertiert diplomatische oder taktvolle Sprache in direkte, klare und unverblümte Ausdrucksweise. |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/de-DE/ConvertTo-CorporateSpeak.md) | corporatize | We appreciate your inquiry. To ensure the most accurate and efficient response, could you kindly provide additional context or details regarding your request? This will enable us to better assist you moving forward. |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/de-DE/ConvertTo-DiplomaticSpeak.md) | diplomatize | I understand your request. However, direct or blunt text is not provided. Please share the specific text you'd like transformed into diplomatic language. |
| [Find-Image](https://github.com/genXdev/genXdev/de-DE/Find-Image.md) | findimages, li | Durchsucht nach Bilddateien und Metadaten in angegebenen Verzeichnissen mit Filterfunktionen und optionaler browserbasierter Galerieanzeige. |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/de-DE/Get-AIKnownFacesRootpath.md) | &nbsp; | Ruft das konfigurierte Verzeichnis für Gesichtsbilddateien ab, die in GenXdev.AI-Operationen verwendet werden. |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/de-DE/Get-AIMetaLanguage.md) | getimgmetalang | Ruft die konfigurierte Standardsprache für Bildmetadaten-Operationen ab. |
| [Get-Fallacy](https://github.com/genXdev/genXdev/de-DE/Get-Fallacy.md) | dispicetext | Analyzer Text on logische Fehlschlüsse mittels KI-gestützter Erkennung. |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/de-DE/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | Erfasst Fehlermeldungen aus verschiedenen Streams und verwendet LLM, um Korrekturen vorzuschlagen. |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/de-DE/Get-SimularMovieTitles.md) | &nbsp; | Findet ähnliche Filmtitel basierend auf gemeinsamen Eigenschaften. |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/de-DE/Invoke-AIPowershellCommand.md) | hint | Generiert und führt PowerShell-Befehle mithilfe von KI-Unterstützung aus. |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/de-DE/Invoke-ImageFacesUpdate.md) | imagepeopledetection | Updates face recognition metadata for image files in a specified directory. |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/de-DE/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | Aktualisiert Bildmetadaten mit KI-generierten Beschreibungen und Schlüsselwörtern. |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/de-DE/Invoke-ImageMetadataUpdate.md) | imagepropdetection | Aktualisiert EXIF-Metadaten für Bilder in einem Verzeichnis. |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/de-DE/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | Aktualisiert die Metadaten zur Objekterkennung für Bilddateien in einem bestimmten Verzeichnis. |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/de-DE/Invoke-ImageScenesUpdate.md) | imagescenedetection | Aktualisiert Metadaten zur Szenenklassifizierung für Bilddateien in einem angegebenen Verzeichnis. |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/de-DE/Invoke-QueryImageContent.md) | &nbsp; | Analysiert Bildinhalte mithilfe von KI-Vision-Funktionen |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/de-DE/Remove-ImageMetaData.md) | removeimagedata | Entfernt Bildmetadatendateien aus Bildverzeichnissen. |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/de-DE/Save-FoundImageFaces.md) | saveimagefaces | Speichert zugeschnittene Gesichtsbilder aus indizierten Bildsuchergebnissen. |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/de-DE/Save-Transcriptions.md) | &nbsp; | Generiert Untertiteldateien für Audio- und Videodateien mit OpenAI Whisper. |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/de-DE/Set-AIKnownFacesRootpath.md) | &nbsp; | Legt das Verzeichnis für Gesichtsbilddateien fest, die in GenXdev.AI-Operationen verwendet werden. |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/de-DE/Set-AIMetaLanguage.md) | &nbsp; | Legt die Standardsprache und optional die Bildverzeichnisse für GenXdev.AI Bildmetadatenoperationen fest. |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/de-DE/Show-FoundImagesInBrowser.md) | showfoundimages | Displays image search results in a masonry layout web gallery. |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/de-DE/Start-AudioTranscription.md) | transcribefile, transcribe | Transcribes an audio file, video file, or a recording device to text |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/de-DE/Update-AllImageMetaData.md) | updateallimages | Batch-Updates von Bild-Keywords, Gesichtern, Objekten und Szenen über mehrere Systemverzeichnisse hinweg. |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/de-DE/Add-FeatureLineToREADME.md) | feature | Adds a feature line to the README file with a timestamp. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/de-DE/Add-IdeaLineToREADME.md) | idea | Fügt der Datei README.md einen Ideeneintrag hinzu. |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/de-DE/Add-IssueLineToREADME.md) | issue | Fügt ein Issue-Element zur README.md-Datei hinzu. |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/de-DE/Add-LineToREADME.md) | &nbsp; | Fügt eine Zeile in eine README.md-Markdowndatei in einem bestimmten Abschnitt ein. |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/de-DE/Add-ReleaseNoteLineToREADME.md) | releasenote | Adds a ReleaseNote line to the README file with a timestamp. |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/de-DE/Add-TodoLineToREADME.md) | todo | Fügt der README.md-Datei einen Aufgabeneintrag hinzu. |
| [EnsureVSCodeInstallation](https://github.com/genXdev/genXdev/de-DE/EnsureVSCodeInstallation.md) | &nbsp; | Installs and configures Visual Studio Code with recommended extensions. |
| [Get-Features](https://github.com/genXdev/genXdev/de-DE/Get-Features.md) | features | Zeigt Funktionen aus einer README.md-Datei an. |
| [Get-Ideas](https://github.com/genXdev/genXdev/de-DE/Get-Ideas.md) | ideas | Zeigt Ideen aus einer README.md-Datei an. |
| [Get-Issues](https://github.com/genXdev/genXdev/de-DE/Get-Issues.md) | issues | Zeigt Probleme aus einer README.md-Datei an. |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/de-DE/Get-ReleaseNotes.md) | releasenotes | Zeigt ReleaseNotes aus einer README.md-Datei an. |
| [Get-Todoos](https://github.com/genXdev/genXdev/de-DE/Get-Todoos.md) | todoos | Zeigt Aufgaben aus einer README.md-Datei an. |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/de-DE/Open-SourceFileInIde.md) | editcode | Öffnet eine Quelldatei in der bevorzugten IDE (Visual Studio Code oder Visual Studio). |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/de-DE/Publish-ReleaseNotesToManifest.md) | pubrelnotes | Veröffentlicht unvollständige Versionshinweise aus README.md im Modulmanifest. |
| [VSCode](https://github.com/genXdev/genXdev/de-DE/VSCode.md) | &nbsp; | Öffnet eine oder mehrere Dateien in Visual Studio Code. |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/de-DE/Get-GitChangedFiles.md) | gitchanged | Rufen Sie die Liste der geänderten Dateien in einem Git-Repository ab. |
| [New-GitCommit](https://github.com/genXdev/genXdev/de-DE/New-GitCommit.md) | commit | Erstellt und pusht einen neuen Git-Commit mit allen Änderungen. |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/de-DE/PermanentlyDeleteGitFolders.md) | &nbsp; | Löscht dauerhaft angegebene Ordner aus allen Branches eines Git-Repositorys. |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-MissingGenXdevUnitTests](https://github.com/genXdev/genXdev/de-DE/Add-MissingGenXdevUnitTests.md) | &nbsp; | Fügt fehlende Komponententests für GenXdev-Cmdlets hinzu. |
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/de-DE/Assert-GenXdevCmdlet.md) | improvecmdlet | Verbessert die Dokumentation und Implementierung von GenXdev-Cmdlets durch KI-Unterstützung. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/de-DE/Assert-GenXdevCmdletTests.md) | improvecmdlettests | Bestätigt und verbessert Unit-Tests eines bestimmten GenXdev-Cmdlets. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/de-DE/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | Validiert die Abhängigkeitsnutzung zwischen GenXdev-Modulen, um sicherzustellen, dass die korrekte Modulhierarchie eingehalten wird. |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/de-DE/Assert-GenXdevTest.md) | rungenxdevtests | Führt Komponententests für GenXdev-Module, Untermodule oder Cmdlets mit intelligenter Fehlersuche und KI-gestützter Fehlerbehebung aus. |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/de-DE/Assert-ModuleDefinition.md) | &nbsp; | Hilft bei der Refaktorierung von PowerShell-Quellcodedateien mithilfe von KI-Unterstützung. |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/de-DE/Assert-RefactorFile.md) | &nbsp; | Führt eine Refactoring-Operation an einer Quelldatei unter Verwendung der angegebenen IDE und der KI-Promptvorlage durch. |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/de-DE/EnsureCopilotKeyboardShortCut.md) | &nbsp; | Konfiguriert die Tastenkombinationen von GitHub Copilot Chat in Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/de-DE/EnsureDefaultGenXdevRefactors.md) | &nbsp; | Stellt sicher, dass die standardmäßigen GenXdev-Refactoring-Definitionen verfügbar sind. |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/de-DE/Get-CmdletMetaData.md) | &nbsp; | Ruft Metadaten für ein angegebenes GenXdev-Cmdlet ab und übersetzt optional Hilfetexte in eine andere Sprache. |
| [Get-GenXdevCmdletUsageAnalysis](https://github.com/genXdev/genXdev/de-DE/Get-GenXdevCmdletUsageAnalysis.md) | &nbsp; | Analysiert GenXdev-Cmdlet-Nutzungsmuster, um die am häufigsten aufgerufenen Funktionen zu identifizieren. |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/de-DE/Get-GenXDevModule.md) | &nbsp; | Ruft alle GenXDev-Module aus einem angegebenen Pfad ab. |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/de-DE/Get-GenXDevModuleInfo.md) | &nbsp; | Ruft detaillierte Informationen über GenXdev PowerShell-Module ab. |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/de-DE/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | Ruft GenXDev-Module in Abhängigkeitsreihenfolge ab. |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/de-DE/Get-ModuleCmdletMetaData.md) | &nbsp; | Ruft Metadaten für alle Cmdlets in einem PowerShell-Modul ab. |
| [Get-Refactor](https://github.com/genXdev/genXdev/de-DE/Get-Refactor.md) | refactors | Ruft Refactoring-Definitionen aus den GenXdev-Einstellungen basierend auf Namensmustern ab. |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/de-DE/Get-RefactorReport.md) | refactorreport | Generiert einen detaillierten Bericht über Refactoring-Operationen und deren Status. |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/de-DE/Invoke-GenXdevPSFormatter.md) | &nbsp; | Formatiert PowerShell-Skriptdateien unter Verwendung der PSScriptAnalyzer-Formatierungsregeln. |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/de-DE/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | Ruft PowerShell Script Analyzer auf, um PowerShell-Skripte auf Compliance und bewährte Methoden zu analysieren. |
| [New-GenXdevMarkdownHelp](https://github.com/genXdev/genXdev/de-DE/New-GenXdevMarkdownHelp.md) | &nbsp; | Generiert umfangreiche Markdown-Hilfedateien für jedes PowerShell-Modul. |
| [New-GenXdevXmlHelp](https://github.com/genXdev/genXdev/de-DE/New-GenXdevXmlHelp.md) | &nbsp; | Generiert MAML-XML-Hilfedateien für jedes PowerShell-Modul. |
| [New-Refactor](https://github.com/genXdev/genXdev/de-DE/New-Refactor.md) | newrefactor | Erstellt ein neues Refactoring-Set für Code-Transformationsaufgaben. |
| [Open-GenXdevCmdletsContainingClipboardTextInIde](https://github.com/genXdev/genXdev/de-DE/Open-GenXdevCmdletsContainingClipboardTextInIde.md) | vscodesearch | Öffnet Dateien in der IDE, die Zwischenablagetext enthalten |
| [Remove-Refactor](https://github.com/genXdev/genXdev/de-DE/Remove-Refactor.md) | &nbsp; | Entfernt Refaktorierungs-Sets aus dem GenXdev-Präferenzsystem. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/de-DE/Search-GenXdevCmdlet.md) | searchcmdlet | Sucht nach einem GenXdev-Cmdlet und öffnet es optional in einer IDE zur Bearbeitung. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/de-DE/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | Öffnet das angegebene GenXdev-Cmdlet in Visual Studio Code. |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/de-DE/Start-NextRefactor.md) | nextrefactor | Setzt eine Code-Refactoring-Sitzung fort oder startet sie neu. |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/de-DE/Test-RefactorLLMSelection.md) | &nbsp; | Bewertet Quelldateien auf Refactoring-Eignung mittels LLM-Analyse. |
| [Update-Refactor](https://github.com/genXdev/genXdev/de-DE/Update-Refactor.md) | updaterefactor | Aktualisiert und verwaltet Refactoring-Sets, einschließlich Dateiauswahl und -verarbeitung. |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/de-DE/Add-ArrayTemplate.md) | FormatArray | Formatiert eine Sammlung von Objekten mithilfe einer Vorlagenzeichenfolge mit Eigenschaften-Platzhaltern und erzeugt eine einzelne formatierte Zeichenfolge. |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/de-DE/Remove-DoubleEmptyLines.md) | &nbsp; | Entfernt doppelte (aufeinanderfolgende) Leerzeilen aus einem Code-String, optional mit Neuformatierung der Ausgabe. |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Enable-Screensaver](https://github.com/genXdev/genXdev/de-DE/Enable-Screensaver.md) | &nbsp; | Startet den konfigurierten Windows-Bildschirmschoner. |
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/de-DE/Get-IsSpeaking.md) | iss | Gibt true zurück, wenn die Text-to-Speech-Engine spricht. |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/de-DE/New-MicrosoftShellTab.md) | x | Erstellt einen neuen Windows-Terminal-Tab, der PowerShell ausführt. |
| [Now](https://github.com/genXdev/genXdev/de-DE/Now.md) | &nbsp; | Gibt das aktuelle Systemdatum und die Systemzeit als DateTime-Objekt zurück. |
| [Open-MediaFile](https://github.com/genXdev/genXdev/de-DE/Open-MediaFile.md) | vlcmedia, media, findmedia | Öffnet und spielt Mediendateien mit dem VLC Media Player ab, mit erweiterten Filter- und Konfigurationsoptionen. |
| [SayDate](https://github.com/genXdev/genXdev/de-DE/SayDate.md) | &nbsp; | Spricht das aktuelle Datum mittels Text-to-Speech-Synthese aus. |
| [SayTime](https://github.com/genXdev/genXdev/de-DE/SayTime.md) | &nbsp; | Gibt die aktuelle Uhrzeit mithilfe von Text-to-Speech aus. |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/de-DE/Set-MonitorPowerOff.md) | poweroff | Schaltet die Stromversorgung aller angeschlossenen Monitore aus. |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/de-DE/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | Schaltet die Monitorstromversorgung ein. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/de-DE/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | Setzt den Fokus auf das Fenster des VLC Media Players. |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/de-DE/Start-SnakeGame.md) | snake | Startet ein einfaches Snake-Spiel in der Konsole. |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/de-DE/Start-TextToSpeech.md) | say | Converts text to speech using Microsoft Edge's neural TTS engine. |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/de-DE/Stop-TextToSpeech.md) | sst | Stoppt sofort jegliche laufende Text-to-Speech-Ausgabe. |
| [UtcNow](https://github.com/genXdev/genXdev/de-DE/UtcNow.md) | &nbsp; | Gets the current UTC (Coordinated Universal Time) date and time. |

---

## GenXdev.Console.Vlc

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/de-DE/Open-VlcMediaPlayer.md) | vlc | Startet und steuert VLC Media Player mit umfangreichen Konfigurationsmöglichkeiten. |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/de-DE/Open-VlcMediaPlayerLyrics.md) | vlclyrics | Öffnet einen Webbrowser, um nach den Texten des aktuell abgespielten VLC-Mediums zu suchen. |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/de-DE/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | Spielt den nächsten Titel in der aktuellen Wiedergabeliste des VLC Media Players ab. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/de-DE/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | Geht zum vorherigen Element in der VLC Media Player Wiedergabeliste. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/de-DE/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | Schaltet die Stummschaltung des VLC Media Players um. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/de-DE/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | Schaltet den Pause-/Wiedergabestatus des VLC Media Players um. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/de-DE/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | Schaltet den Wiederholungsmodus im VLC Media Player um. |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/de-DE/Get-KeyValueStoreNames.md) | getstorenames | Ruft die Namen der verfügbaren Schlüssel-Wert-Speicher ab. |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/de-DE/Get-KeyValueStorePath.md) | &nbsp; | Ruft den Dateipfad für einen Key-Value-Speicher ab. |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/de-DE/Get-StoreKeys.md) | getkeys | Ruft alle Schlüsselnamen für einen gegebenen Schlüssel-Wert-Speicher ab. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/de-DE/Get-ValueByKeyFromStore.md) | getvalue | Ruft einen Wert aus einem JSON-basierten Schlüssel-Wert-Speicher ab. |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/de-DE/Initialize-KeyValueStores.md) | &nbsp; | Initialisiert die Verzeichnisstruktur von KeyValueStore für lokalen und OneDrive-Speicher. |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/de-DE/Remove-KeyFromStore.md) | removekey | Entfernt einen Schlüssel aus einem Schlüssel-Wert-Speicher. |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/de-DE/Remove-KeyValueStore.md) | &nbsp; | Entfernt einen Schlüssel-Wert-Speicher. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/de-DE/Set-ValueByKeyInStore.md) | setvalue | Verwaltet Schlüssel-Wert-Paare in einem JSON-Datei-basierten Speicher. |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/de-DE/Sync-KeyValueStore.md) | &nbsp; | Synchronisiert lokale und OneDrive-Schlüssel-Wert-Speicher-JSON-Dateien. |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/de-DE/Get-GenXdevPreference.md) | getPreference | Ruft einen Präferenzwert aus dem GenXdev-Präferenzspeicher ab. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/de-DE/Get-GenXdevPreferenceNames.md) | getPreferenceNames | Ruft alle Präferenznamen aus dem Sitzungsspeicher und den Datenbankspeichern ab. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/de-DE/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | Ruft den konfigurierten Datenbankpfad für Präferenzdatendateien ab, die in GenXdev.Data-Operationen verwendet werden. |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/de-DE/Remove-GenXdevPreference.md) | removePreference | Entfernt einen Präferenzwert aus dem GenXdev-Präferenzspeicher. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/de-DE/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | Legt einen Standard-Einstellungswert im GenXdev-Einstellungsspeicher fest. |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/de-DE/Set-GenXdevPreference.md) | setPreference | Setzt einen Präferenzwert im GenXdev-Präferenzspeicher. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/de-DE/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | Legt den Datenbankpfad für die in GenXdev.Data-Operationen verwendeten Einstellungen fest. |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [EnsureSQLiteStudioInstalled](https://github.com/genXdev/genXdev/de-DE/EnsureSQLiteStudioInstalled.md) | &nbsp; | Stellt sicher, dass SQLiteStudio installiert und über die Befehlszeile zugänglich ist. |
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/de-DE/Get-SQLiteSchema.md) | &nbsp; | Retrieves the complete schema information from a SQLite database. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/de-DE/Get-SQLiteTableColumnData.md) | &nbsp; | Ruft Daten aus einer bestimmten Spalte in einer SQLite-Datenbanktabelle ab. |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/de-DE/Get-SQLiteTableData.md) | &nbsp; | Ruft Daten aus einer SQLite-Datenbanktabelle mit optionaler Ergebnisbegrenzung ab. |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/de-DE/Get-SQLiteTables.md) | &nbsp; | Retrieves a list of table names from a SQLite database. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/de-DE/Get-SQLiteTableSchema.md) | &nbsp; | Ruft die Schemainformationen für eine angegebene SQLite-Tabelle ab. |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/de-DE/Get-SQLiteTransaction.md) | getsqltx, newsqltx | Erstellt und gibt ein SQLite-Transaktionsobjekt für Batch-Operationen zurück. |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/de-DE/Get-SQLiteViewColumnData.md) | &nbsp; | Ruft Spaltendaten aus einer SQLite-Ansicht ab, mit optionaler Begrenzung der Datensätze. |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/de-DE/Get-SQLiteViewData.md) | &nbsp; | Ruft Daten aus einer SQLite-Datenbankansicht mit optionaler Datensatzbegrenzung ab. |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/de-DE/Get-SQLiteViews.md) | &nbsp; | Ruft eine Liste von Ansichten aus einer SQLite-Datenbank ab. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/de-DE/Get-SQLiteViewSchema.md) | &nbsp; | Ruft die SQL-Schemadefinition für eine SQLite-Ansicht ab. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/de-DE/Invoke-SQLiteQuery.md) | &nbsp; | Führt eine oder mehrere SQL-Abfragen gegen eine SQLite-Datenbank mit Transaktionsunterstützung aus. |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/de-DE/Invoke-SQLiteStudio.md) | &nbsp; | Führt SQLite-Datenbankabfragen mit Unterstützung für Parameter und Transaktionen aus. |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/de-DE/New-SQLiteDatabase.md) | nsqldb | Erstellt eine neue SQLite-Datenbankdatei. |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [EnsureSSMSInstalled](https://github.com/genXdev/genXdev/de-DE/EnsureSSMSInstalled.md) | &nbsp; | Stellt sicher, dass SSMS installiert und von der Befehlszeile aus zugänglich ist. |
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/de-DE/Get-SQLServerSchema.md) | &nbsp; | Ruft die vollständigen Schema-Informationen aus einer SQL Server-Datenbank ab. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/de-DE/Get-SQLServerTableColumnData.md) | &nbsp; | Ruft Daten aus einer bestimmten Spalte in einer SQL-Datenbanktabelle ab. |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/de-DE/Get-SQLServerTableData.md) | &nbsp; | Ruft Daten aus einer SQL-Datenbanktabelle mit optionaler Datensatzbegrenzung ab. |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/de-DE/Get-SQLServerTables.md) | &nbsp; | Ruft eine Liste von Tabellennamen aus einer SQL Server-Datenbank ab. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/de-DE/Get-SQLServerTableSchema.md) | &nbsp; | Ruft die Schema-Informationen für eine angegebene SQL Server-Tabelle ab. |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/de-DE/Get-SQLServerTransaction.md) | getsqltx, newsqltx | Erstellt und gibt ein SQL Server-Transaktionsobjekt für Batchoperationen zurück. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/de-DE/Get-SQLServerViewColumnData.md) | &nbsp; | Ruft Spaltendaten aus einer SQL-Ansicht mit optionaler Zeilenbegrenzung ab. |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/de-DE/Get-SQLServerViewData.md) | &nbsp; | Ruft Daten aus einer SQL-Datenbankansicht ab, optional mit Begrenzung der Datensätze. |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/de-DE/Get-SQLServerViews.md) | &nbsp; | Ruft eine Liste von Ansichten aus einer SQL Server-Datenbank ab. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/de-DE/Get-SQLServerViewSchema.md) | &nbsp; | Ruft die SQL-Schema-Definition für eine SQL Server-Ansicht ab. |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/de-DE/Invoke-SQLServerQuery.md) | &nbsp; | Führt eine oder mehrere SQL-Abfragen gegen eine SQL Server-Datenbank mit Transaktionsunterstützung aus. |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/de-DE/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | Führt SQL Server-Datenbankabfragen mit Unterstützung für Parameter und Transaktionen aus. |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/de-DE/New-SQLServerDatabase.md) | nsqldb | Erstellt eine neue SQL Server-Datenbank. |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/de-DE/Confirm-InstallationConsent.md) | &nbsp; | Bestätigt die Zustimmung des Benutzers zur Installation von Drittanbieter-Software unter Verwendung von Einstellungen für dauerhafte Entscheidungen. |
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/de-DE/Copy-FilesToDateFolder.md) | &nbsp; | Kopiert Dateien, die den Suchkriterien entsprechen, in datumsbasierte Unterordner. |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/de-DE/Copy-IdenticalParamValues.md) | &nbsp; | Kopiert Parameterwerte von gebundenen Parametern in eine neue Hashtabelle basierend auf den möglichen Parametern einer anderen Funktion. |
| [EnsurePester](https://github.com/genXdev/genXdev/de-DE/EnsurePester.md) | &nbsp; | Stellt sicher, dass das Pester-Testframework zur Verfügung steht. |
| [Expand-Path](https://github.com/genXdev/genXdev/de-DE/Expand-Path.md) | ep | Erweitert jede angegebene Dateireferenz zu einem vollständigen Pfadnamen. |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/de-DE/Find-DuplicateFiles.md) | fdf | Find duplicate files across multiple directories based on configurable criteria. |
| [Find-Item](https://github.com/genXdev/genXdev/de-DE/Find-Item.md) | l | Search for files and directories with advanced filtering options. |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/de-DE/Get-MediaFileCreationDate.md) | &nbsp; | Extrahiert das bestmögliche Erstellungsdatum für Medien- und andere Dateien. |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/de-DE/Invoke-Fasti.md) | fasti | Extrahiert Archivdateien im aktuellen Verzeichnis in ihre eigenen Ordner und löscht sie anschließend. |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/de-DE/Move-FilesToDateFolder.md) | &nbsp; | Verschiebt Dateien, die den Suchkriterien entsprechen, in datumsbasierte Unterordner. |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/de-DE/Move-ItemWithTracking.md) | &nbsp; | Verschiebt Dateien und Verzeichnisse unter Beibehaltung von Dateisystem-Links und -Referenzen. |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/de-DE/Move-ToRecycleBin.md) | &nbsp; | Verschiebt Dateien und Verzeichnisse sicher in den Windows-Papierkorb. |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/de-DE/ReadJsonWithRetry.md) | &nbsp; | Liest JSON-Datei mit Wiederholungslogik und automatischer Lock-Bereinigung. |
| [Remove-AllItems](https://github.com/genXdev/genXdev/de-DE/Remove-AllItems.md) | sdel | Entfernt rekursiv alle Inhalte eines Verzeichnisses mit erweiterter Fehlerbehandlung. |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/de-DE/Remove-ItemWithFallback.md) | rmf | Löscht Dateien oder Verzeichnisse mit mehreren Fallback-Mechanismen für zuverlässiges Löschen. |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/de-DE/Remove-OnReboot.md) | &nbsp; | Markiert Dateien oder Verzeichnisse zur Löschung beim nächsten Systemneustart. |
| [Rename-InProject](https://github.com/genXdev/genXdev/de-DE/Rename-InProject.md) | rip | Führt Textersetzung in einem gesamten Projektverzeichnis durch. |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/de-DE/ResolveInputObjectFileNames.md) | &nbsp; | Erweitert Eingabeobjekte zu Datei- und Verzeichnisnamen und unterstützt verschiedene Filter- und Ausgabeoptionen. |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/de-DE/Set-FoundLocation.md) | lcd | Findet die erste übereinstimmende Datei oder den ersten übereinstimmenden Ordner und setzt den Speicherort darauf. |
| [Set-LocationParent](https://github.com/genXdev/genXdev/de-DE/Set-LocationParent.md) | .. | Wechselt in das übergeordnete Verzeichnis und listet dessen Inhalt auf. |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/de-DE/Set-LocationParent2.md) | ... | Navigiert zwei Verzeichnisebenen in der Dateisystemhierarchie nach oben. |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/de-DE/Set-LocationParent3.md) | .... | Navigiert drei Verzeichnisebenen in der Dateisystemhierarchie nach oben. |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/de-DE/Set-LocationParent4.md) | ..... | Navigiert vier Verzeichnisebenen in der Dateisystemhierarchie nach oben. |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/de-DE/Set-LocationParent5.md) | ...... | Navigiert fünf Verzeichnisebenen in der Dateisystemhierarchie nach oben. |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/de-DE/Start-RoboCopy.md) | xc, rc | Stellt einen PowerShell-Wrapper für das Robust Copy (RoboCopy)-Dienstprogramm von Microsoft bereit. |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/de-DE/Write-FileAtomic.md) | &nbsp; | Schreibt Bytes atomar in eine Datei, um Korruption zu verhindern. |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/de-DE/Write-JsonFileAtomic.md) | &nbsp; | Schreibt ein Objekt atomar als JSON in eine Datei, um Korruption zu vermeiden. |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/de-DE/Write-TextFileAtomic.md) | &nbsp; | Schreibt Text atomar in eine Datei, um Korruption zu verhindern. |
| [WriteFileOutput](https://github.com/genXdev/genXdev/de-DE/WriteFileOutput.md) | &nbsp; | Gibt Dateiinformationen mit hyperlink-versehenen Anzeigenamen für eine verbesserte Benutzererfahrung aus. |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/de-DE/alignScript.md) | &nbsp; | Returns a string (with altered indentation) of a provided scriptblock string |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/de-DE/ConvertTo-HashTable.md) | &nbsp; | Konvertiert ein PSCustomObject rekursiv in eine HashTable. |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/de-DE/EnsureGenXdev.md) | &nbsp; | Stellt sicher, dass alle GenXdev-Module ordnungsgemäß geladen werden, indem alle Ensure*-Cmdlets aufgerufen werden. |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/de-DE/EnsureNuGetAssembly.md) | &nbsp; | Lädt .NET-Assemblys aus NuGet-Paketen basierend auf Paketschlüssel oder -ID herunter und lädt sie. |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/de-DE/Get-BCP47LanguageDictionary.md) | &nbsp; | Gibt ein Wörterbuch aller installierten BCP 47-Sprachtags und ihrer Anzeigenamen zurück. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/de-DE/Get-DefaultWebLanguage.md) | &nbsp; | Ruft den Standard-Websprachschlüssel basierend auf den aktuellen Spracheinstellungen des Systems ab. |
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/de-DE/Get-GenXDevCmdlet.md) | gcmds | Ruft alle GenXdev-Cmdlets und deren Details ab und listet sie auf. |
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/de-DE/Get-ImageGeolocation.md) | &nbsp; | Extrahiert Geolokalisierungsdaten aus einer Bilddatei. |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/de-DE/Get-ImageMetadata.md) | &nbsp; | Extracts comprehensive metadata from an image file. |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/de-DE/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/de-DE/Get-WebLanguageDictionary.md) | &nbsp; | Gibt ein umgekehrtes Wörterbuch für alle von der Google-Suche unterstützten Sprachen zurück. |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/de-DE/Import-GenXdevModules.md) | reloadgenxdev | Importiert alle GenXdev PowerShell-Module in den globalen Gültigkeitsbereich. |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/de-DE/Initialize-SearchPaths.md) | &nbsp; | Initialisiert und konfiguriert Systemsuchpfade für die Paketverwaltung. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/de-DE/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | Führt einen Skriptblock für jedes GenXdev-Modul im Arbeitsbereich aus. |
| [Out-Serial](https://github.com/genXdev/genXdev/de-DE/Out-Serial.md) | &nbsp; | Sendet eine Zeichenkette an eine serielle Schnittstelle |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/de-DE/Remove-JSONComments.md) | &nbsp; | Entfernt Kommentare aus JSON-Inhalten. |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/de-DE/resetdefaultmonitor.md) | &nbsp; | Stellt die Standardkonfiguration des sekundären Monitors wieder her. |
| [secondscreen](https://github.com/genXdev/genXdev/de-DE/secondscreen.md) | &nbsp; | Legt die Standardkonfiguration für den zweiten Monitor fest. |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/de-DE/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | Richtet benutzerdefinierte Behandlung für nicht gefundene Befehle ein |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/de-DE/Show-GenXdevCmdlet.md) | cmds | Zeigt GenXdev-PowerShell-Module mit ihren Cmdlets und Aliasen an. |
| [Show-Verb](https://github.com/genXdev/genXdev/de-DE/Show-Verb.md) | showverbs | Zeigt eine kurze alphabetische Liste aller PowerShell-Verben. |
| [sidebyside](https://github.com/genXdev/genXdev/de-DE/sidebyside.md) | &nbsp; | Legt die standardmäßige Side-by-Side-Konfiguration fest. |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/de-DE/Test-UnattendedMode.md) | &nbsp; | Erkennt, ob PowerShell im unbeaufsichtigten/automatisierten Modus ausgeführt wird. |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/de-DE/Convert-PhysicsUnit.md) | &nbsp; | Converts a value from one physics unit to another within the same category. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/de-DE/Get-ApparentSizeAtArmLength.md) | &nbsp; | Berechnet die scheinbare Größe eines Objekts auf Armeslänge. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/de-DE/Get-AtEyeLengthSizeInMM.md) | &nbsp; | Berechnet die scheinbare Größe eines Objekts in mm auf Armeslänge. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/de-DE/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | Berechnet die Auftriebskraft. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/de-DE/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | Berechnet die Zentripetalbeschleunigung. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/de-DE/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | Berechnet die dopplerverschobene Frequenz. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/de-DE/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | Berechnet die Widerstandskraft. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/de-DE/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | Berechnet die Fluchtgeschwindigkeit. |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/de-DE/Get-FreeFallDistance.md) | &nbsp; | Berechnet die Fallstrecke während des freien Falls für eine gegebene Zeitdauer. |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/de-DE/Get-FreeFallHeight.md) | &nbsp; | Berechnet die Fallhöhe während des freien Falls für eine gegebene Zeitdauer. |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/de-DE/Get-FreeFallTime.md) | &nbsp; | Berechnet die Zeit, die ein Objekt benötigt, um während des freien Falls eine bestimmte Höhe zu fallen. |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/de-DE/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | Berechnet die Aufprallgeschwindigkeit aus der Höhe. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/de-DE/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | Berechnet die kinetische Energie. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/de-DE/Get-LightTravelTimeByDistance.md) | &nbsp; | Berechnet die Zeit, die Licht benötigt, um eine Strecke zurückzulegen. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/de-DE/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | Berechnet die Vergrößerung einer Linse. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/de-DE/Get-MomentumByMassAndVelocity.md) | &nbsp; | Berechnet den linearen Impuls. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/de-DE/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | Berechnet die Umlaufgeschwindigkeit. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/de-DE/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | Berechnet die potentielle Gravitationsenergie. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/de-DE/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | Berechnet die Reichweite eines Projektils. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/de-DE/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | Berechnet den Brechungswinkel mithilfe des Snelliusschen Gesetzes. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/de-DE/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | Berechnet die Resonanzfrequenz für ein geschlossenes Rohr. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/de-DE/Get-SoundTravelDistanceByTime.md) | &nbsp; | Berechnet die Entfernung, die Schall in einer bestimmten Zeit zurücklegt. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/de-DE/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | Berechnet die Endgeschwindigkeit. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/de-DE/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | Berechnet die Flugzeit eines Projektils. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/de-DE/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | Berechnet die Wellengeschwindigkeit. |

---

## GenXdev.Media.ytdlp

| Command | Aliases | Description |
|:---|:---|:---|
| [StabilizeVideo](https://github.com/genXdev/genXdev/de-DE/StabilizeVideo.md) | &nbsp; | Stabilisiert die neueste oder angegebene .mp4-Datei mit FFmpeg + vid.stab (ohne schwarze Ränder). |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/de-DE/ConvertTo-Uris.md) | &nbsp; | Parst Zeichenketten auf gültige URIs. |
| [Invoke-WebbrowserTabPollingScript](https://github.com/genXdev/genXdev/de-DE/Invoke-WebbrowserTabPollingScript.md) | &nbsp; | Führt ein Hintergrund-Polling-Skript in einem zuvor ausgewählten Webbrowser-Tab aus. |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/de-DE/Open-AllPossibleQueries.md) | qq | Öffnet alle möglichen Abfragetypen für angegebene Suchbegriffe oder URLs. |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/de-DE/Open-BingCopilotQuery.md) | aibc | Öffnet eine Bing-CoPilot-Abfrage in einem Webbrowser |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/de-DE/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | Öffnet eine ChatGPT-Abfrage in einem Webbrowser. |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/de-DE/Open-CloudLLMChat.md) | ask | Öffnet eine Cloud-LLM-Chatoberfläche für KI-Abfragen. |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/de-DE/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | Öffnet eine DeepSeek-Abfrage in einem Webbrowser |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/de-DE/Open-GithubCopilotQuery.md) | aigc, askghcopilot | Öffnet eine Github CoPilot Abfrage in einem Webbrowser |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/de-DE/Open-GoogleGeminiQuery.md) | aigg, askgemini | Öffnet eine Google Gemini-Abfrage in einem Webbrowser |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/de-DE/Open-XGrokQuery.md) | aixg, askxgrok | Öffnet eine X Grok-Abfrage in einem Webbrowser |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/de-DE/Get-NextAffirmation.md) | WhatAboutIt | Gibt einen zufälligen Affirmationstext von der affirmations.dev API zurück. |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/de-DE/Get-WikipediaSummary.md) | wikitxt | Retrieves a summary of a topic from Wikipedia. |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Clear-YoutubeWatched](https://github.com/genXdev/genXdev/de-DE/Clear-YoutubeWatched.md) | &nbsp; | Löscht den YouTube-Verlauf aus dem lokalen Speicher des Browsers. |
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/de-DE/Copy-PDFsFromGoogleQuery.md) | &nbsp; | Lädt PDF-Dateien herunter, die über Google-Suchergebnisse gefunden wurden. |
| [Get-GoogleSearchResultUrls](https://github.com/genXdev/genXdev/de-DE/Get-GoogleSearchResultUrls.md) | qlinksget | Führt eine Google-Suche durch und gibt die Links zurück |
| [Open-AllGoogleLinks](https://github.com/genXdev/genXdev/de-DE/Open-AllGoogleLinks.md) | qlinks | Performs an infinite auto opening google search. |
| [Open-AllYoutubeVideos](https://github.com/genXdev/genXdev/de-DE/Open-AllYoutubeVideos.md) | qvideos, qyt | Öffnet und steuert YouTube-Videos in einem Browserfenster mit Tastaturkürzeln. |
| [Open-BingQuery](https://github.com/genXdev/genXdev/de-DE/Open-BingQuery.md) | bq | Öffnet eine Bing-Suchanfrage in einem Webbrowser. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/de-DE/Open-BuiltWithSiteInfo.md) | &nbsp; | Öffnet BuiltWith-Websiteabfragen in einem Webbrowser. |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/de-DE/Open-GithubQuery.md) | qgithub, qgh | Öffnet eine GitHub-Repository-Suchanfrage in einem Webbrowser oder führt erweiterte Suchanfragen gegen die GitHub REST API aus, die alle verfügbaren Qualifier und Suchkategorien unterstützt (Repositories, Code, Issues, Benutzer, Commits, Diskussionen, Themen, Wikis). |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/de-DE/Open-GoogleQuery.md) | q | Öffnet Google-Abfragen in einem Webbrowser mit konfigurierbaren Einstellungen und umfangreichen Anpassungsmöglichkeiten. |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/de-DE/Open-GoogleSiteInfo.md) | &nbsp; | Öffnet Google-Site-Informationenabfragen in einem Webbrowser. |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/de-DE/Open-GrokipediaQuery.md) | wiki | Öffnet eine Grokipedia-Abfrage in einem Webbrowser. |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/de-DE/Open-IMDBQuery.md) | imdb | Öffnet eine IMDB-Suchanfrage in einem Webbrowser. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/de-DE/Open-InstantStreetViewQuery.md) | isv | Öffnet InstantStreetView-Abfragen in einem Webbrowser. |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/de-DE/Open-MovieQuote.md) | moviequote | Öffnet ein Video eines Filmzitats in einem Webbrowser. |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/de-DE/Open-SearchEngine.md) | q | Öffnet eine Suchanfrage in der angegebenen Suchmaschine mit einem Webbrowser. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/de-DE/Open-SimularWebSiteInfo.md) | simularsite | Öffnet die SimilarWeb-Website-Informationen für angegebene URLs in einem Webbrowser. |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/de-DE/Open-StackOverflowQuery.md) | qso | Öffnet Stack Overflow-Suchanfragen in einem Webbrowser. |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/de-DE/Open-WaybackMachineSiteInfo.md) | wayback | Öffnet die WaybackMachine-Websiteinformationen in einem Webbrowser. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/de-DE/Open-WebsiteAndPerformQuery.md) | owaq | Öffnet eine Webseite in einem Webbrowser und führt eine oder mehrere Abfragen durch. |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/de-DE/Open-WhoisHostSiteInfo.md) | whois | Öffnet eine Whois-Hostinformationsabfrage in einem Webbrowser. |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/de-DE/Open-WikipediaNLQuery.md) | wikinl | Öffnet niederländische Wikipedia-Suchen in einem Webbrowser. |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/de-DE/Open-WikipediaQuery.md) | wikipedia | Öffnet eine Wikipedia-Abfrage in einem Webbrowser. |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/de-DE/Open-WolframAlphaQuery.md) | qalpha | Öffnet eine Wolfram Alpha-Abfrage in einem Webbrowser. |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/de-DE/Open-YoutubeQuery.md) | youtube | Öffnet YouTube-Suchanfragen in einem Webbrowser. |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/de-DE/Open-GameOfLife.md) | gameoflife, conway | Öffnet die Conway's Game of Life Simulation in einem Webbrowser. |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/de-DE/Open-GenXdevAppCatalog.md) | appcatalog | Öffnet den Katalog der GenXdev Progressive Web Apps in einem Webbrowser. |
| [Open-Timeline](https://github.com/genXdev/genXdev/de-DE/Open-Timeline.md) | timeline | Öffnet eine interaktive Zeitleiste, die aktuelle Uhrzeit, Datum, Jahrhundert und Jahrtausend anzeigt. |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/de-DE/Open-ViralSimulation.md) | viral | Öffnet ein virales Simulationsspiel in einem Webbrowser mit umfangreichen Konfigurationsoptionen. |
| [Open-Yab](https://github.com/genXdev/genXdev/de-DE/Open-Yab.md) | yab | Öffnet das YAB-Spiel in einem Webbrowser mit konfigurierbaren Einstellungen. |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/de-DE/Open-YabAIBattle.md) | yabbattle | Öffnet das YabAI Battle-Spiel in einem Webbrowser. |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Clear-WebbrowserTabSiteApplicationData](https://github.com/genXdev/genXdev/de-DE/Clear-WebbrowserTabSiteApplicationData.md) | clearsitedata | Clears all browser storage data for the current tab in Edge or Chrome. |
| [Close-Webbrowser](https://github.com/genXdev/genXdev/de-DE/Close-Webbrowser.md) | wbc | Schließt selektiv eine oder mehrere Webbrowser-Instanzen. |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/de-DE/Close-WebbrowserTab.md) | ct, CloseTab | Schließt den aktuell ausgewählten Webbrowser-Tab. |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/de-DE/Export-BrowserBookmarks.md) | &nbsp; | Exportiert Browser-Lesezeichen in eine JSON-Datei. |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/de-DE/Find-BrowserBookmark.md) | bookmarks | Sucht Lesezeichen aus einem oder mehreren Webbrowsern. |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/de-DE/Get-BrowserBookmark.md) | gbm | Liefert alle Lesezeichen aus installierten Webbrowsern zurück. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/de-DE/Get-DefaultWebbrowser.md) | &nbsp; | Gibt den konfigurierten Standard-Webbrowser für den aktuellen Benutzer zurück. |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/de-DE/Get-PlaywrightSessionReference.md) | &nbsp; | Ruft einen Verweis auf die aktuelle Playwright-Browsersitzung ab. |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/de-DE/Get-Webbrowser.md) | &nbsp; | Gibt eine Sammlung installierter moderner Webbrowser zurück. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/de-DE/Get-WebbrowserTabDomNodes.md) | wl | Fragt DOM-Knoten im aktiven Browser-Tab ab und manipuliert sie mit CSS-Selektoren. |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/de-DE/Import-BrowserBookmarks.md) | &nbsp; | Importiert Lesezeichen aus einer Datei oder Sammlung in einen Webbrowser. |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/de-DE/Import-GenXdevBookmarkletMenu.md) | &nbsp; | Importiert GenXdev JavaScript-Bookmarklets in Browser-Lesezeichensammlungen. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/de-DE/Invoke-WebbrowserEvaluation.md) | Eval, et | Executes JavaScript code in a selected web browser tab. |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/de-DE/Open-BrowserBookmarks.md) | sites | Öffnet Lesezeichen des Browsers, die den angegebenen Suchkriterien entsprechen. |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/de-DE/Open-Webbrowser.md) | wb | Öffnet URLs in einem oder mehreren Browserfenstern mit optionaler Positionierung und Gestaltung. |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/de-DE/Open-WebbrowserSideBySide.md) | wbn | Öffnet ein neues Webbrowser-Fenster mit bestimmter Positionierung. |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/de-DE/Select-WebbrowserTab.md) | st | Wählt einen Browser-Tab aus laufenden Playwright-verwalteten Browsern aus. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/de-DE/Set-BrowserVideoFullscreen.md) | fsvideo | Maximiert das erste Video-Element, das im aktuellen Browser-Tab gefunden wird. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/de-DE/Set-WebbrowserTabLocation.md) | lt, Nav | Navigiert den aktuellen Webbrowser-Tab zu einer angegebenen URL. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/de-DE/Show-WebsiteInAllBrowsers.md) | &nbsp; | Öffnet eine URL in mehreren Browsern gleichzeitig in einem Mosaik-Layout. |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/de-DE/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | Verbindet über einen Debugging-Port mit einer vorhandenen Browser-Instanz. |
| [ensurePlaywright](https://github.com/genXdev/genXdev/de-DE/ensurePlaywright.md) | &nbsp; | Stellt sicher, dass die .NET-Assembly und die Browser-Binärdateien von Playwright verfügbar sind. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/de-DE/Get-PlaywrightProfileDirectory.md) | &nbsp; | Ruft das Playwright-Browserprofilverzeichnis für persistente Sitzungen ab. |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/de-DE/Open-PlayWrightBrowser.md) | spb | Startet einen von Playwright verwalteten Browser mit einem persistenten Benutzerprofil. |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/de-DE/Resume-WebbrowserTabVideo.md) | wbvideoplay | Setzt die Videowiedergabe in einem YouTube-Browser-Tab fort. |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/de-DE/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | Pausiert die Videowiedergabe in allen aktiven Browsersitzungen. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/de-DE/Unprotect-WebbrowserTab.md) | wbctrl | Übernimmt die Kontrolle über einen ausgewählten Webbrowser-Tab zur interaktiven Manipulation. |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/de-DE/CurrentUserHasElevatedRights.md) | &nbsp; | Überprüft, ob der aktuelle Benutzer erweiterte Rechte hat. |
| [EnsureDockerDesktop](https://github.com/genXdev/genXdev/de-DE/EnsureDockerDesktop.md) | &nbsp; | Stellt sicher, dass Docker Desktop installiert und für Containerisierungsvorgänge verfügbar ist. |
| [EnsurePSTools](https://github.com/genXdev/genXdev/de-DE/EnsurePSTools.md) | &nbsp; | Stellt sicher, dass die Sysinternals-Tools (PSTools) installiert und verfügbar sind. |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/de-DE/Get-ActiveUser.md) | gusers | Ruft eine Liste eindeutiger Benutzernamen aus derzeit aktiven Systemprozessen ab. |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/de-DE/Get-ChildProcesses.md) | &nbsp; | Ruft alle Prozesse ab, die Nachfolger des aktuellen PowerShell-Prozesses sind. |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/de-DE/Get-ClipboardFiles.md) | getclipfiles, gcbf | Ruft Dateien aus der Windows-Zwischenablage ab, die für Dateioperationen wie Kopieren/Einfügen festgelegt wurden. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/de-DE/Get-CurrentFocusedProcess.md) | &nbsp; | Ruft das Prozessobjekt des Fensters ab, das gerade den Tastaturfokus hat. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/de-DE/Get-DesktopScalingFactor.md) | &nbsp; | Ruft den Windows-Anzeigeskalierungsfaktor (DPI-Einstellung) für einen angegebenen Monitor ab. |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/de-DE/Get-ForegroundWindow.md) | &nbsp; | Ruft das Handle des aktuell aktiven Vordergrundfensters ab. |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/de-DE/Get-KnownFolderPath.md) | folder | Ruft den Pfad eines bekannten Windows-Ordners mithilfe der Windows Shell32-API ab. |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/de-DE/Get-MonitorCount.md) | &nbsp; | Ermittelt die Gesamtzahl der an das System angeschlossenen Bildschirme. |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/de-DE/Get-MpCmdRunPath.md) | &nbsp; | Ruft den Pfad zur ausführbaren Datei MpCmdRun.exe von Windows Defender ab. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/de-DE/Get-OpenedFileHandleProcesses.md) | &nbsp; | Ruft Prozesse ab, die offene Dateihandles zu bestimmten Dateien haben. |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/de-DE/Get-PowershellMainWindow.md) | &nbsp; | Gibt ein Fensterhilfsobjekt für das Hauptfenster des PowerShell-Terminals zurück. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/de-DE/Get-PowershellMainWindowProcess.md) | &nbsp; | Gibt das Prozessobjekt für das Fenster zurück, das das PowerShell-Terminal hostet. |
| [Get-Window](https://github.com/genXdev/genXdev/de-DE/Get-Window.md) | &nbsp; | Ruft Fensterinformationen für angegebene Prozesse oder Fensterhandle ab. |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/de-DE/Get-WindowPosition.md) | gwp | Ruft die Position und den Zustand von Fenstern ab. |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/de-DE/Initialize-ScheduledTaskScripts.md) | &nbsp; | Erstellt geplante Aufgaben, die PowerShell-Skripte in festgelegten Intervallen ausführen. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/de-DE/Invoke-WindowsUpdate.md) | updatewindows | Überprüft, ob Windows auf dem neuesten Stand ist, und installiert optional verfügbare Updates. |
| [Pop-Window](https://github.com/genXdev/genXdev/de-DE/Pop-Window.md) | popw | Entfernt den letzten aktiven Fenster-Helfer aus dem Stapel mit optionalen Änderungen. |
| [Push-Window](https://github.com/genXdev/genXdev/de-DE/Push-Window.md) | pushw | Schiebt das aktuelle Fenster mit optionalen Änderungen auf den Fensterstapel. |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/de-DE/Save-DesktopScreenShot.md) | &nbsp; | Erstellt einen Screenshot des angegebenen Monitors und speichert ihn unter dem angegebenen Pfad. |
| [Send-Key](https://github.com/genXdev/genXdev/de-DE/Send-Key.md) | sendkeys, invokekeys | Sendet simulierte Tastatureingaben an ein Fenster oder einen Prozess. |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/de-DE/Send-WakeOnLan.md) | &nbsp; | Sendet ein Wake-on-LAN-Magiepaket, um entfernte Computer im Netzwerk aufzuwecken. |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/de-DE/Set-ClipboardFiles.md) | setclipfiles, scbf | Legt Dateien für Dateioperationen wie Kopieren/Einfügen in der Windows-Zwischenablage fest. |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/de-DE/Set-ForegroundWindow.md) | &nbsp; | Bringt das angegebene Fenster in den Vordergrund und macht es zum aktiven Fenster. |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/de-DE/Set-KnownFolderPath.md) | &nbsp; | Ändert den physischen Pfad eines bekannten Windows-Ordners. |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/de-DE/Set-TaskbarAlignment.md) | &nbsp; | Konfiguriert die Ausrichtung der Taskleiste unter Windows 11+ zwischen zentriert und links. |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/de-DE/Set-WindowPosition.md) | wp | Positions and resizes windows when explicit positioning parameters are provided. |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/de-DE/Set-WindowPositionForSecondary.md) | wps | Positioniert ein Fenster auf dem sekundären Monitor mit den angegebenen Layout-Optionen. |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/de-DE/Set-WindowsWallpaper.md) | &nbsp; | Legt ein zufälliges Hintergrundbild aus einem bestimmten Verzeichnis fest. |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/de-DE/Start-ProcessWithPriority.md) | nice | Startet einen Prozess mit einer angegebenen Prioritätsstufe. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/de-DE/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | Scannt Dateien oder Verzeichnisse mit Windows Defender auf Malware. |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/de-DE/Add-WireGuardPeer.md) | &nbsp; | Fügt eine neue WireGuard-VPN-Peer-Konfiguration (Client) zum Server hinzu. |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/de-DE/EnsureWireGuard.md) | &nbsp; | Stellt sicher, dass der WireGuard-VPN-Dienst über einen Docker-Container installiert und ausgeführt wird. |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/de-DE/Get-WireGuardPeerQRCode.md) | &nbsp; | ```json {   "type": "qr_code",   "data": "wireguard://peer_config_base64_encoded" } ``` |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/de-DE/Get-WireGuardPeers.md) | &nbsp; | Ruft Informationen über alle WireGuard VPN-Peers ab, die auf dem System konfiguriert sind. |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/de-DE/Get-WireGuardStatus.md) | &nbsp; | Ruft detaillierte Statusinformationen über den WireGuard VPN-Server ab. |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/de-DE/Remove-WireGuardPeer.md) | &nbsp; | Entfernt eine WireGuard-VPN-Peer-Konfiguration. |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/de-DE/Reset-WireGuardConfiguration.md) | &nbsp; | Setzt die WireGuard-VPN-Serverkonfiguration zurück und entfernt alle Peers. |
