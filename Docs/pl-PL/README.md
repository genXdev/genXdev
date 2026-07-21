# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-21.

## GenXdev

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevCmdlet.md) | gcmds | Pobiera i wyświetla wszystkie polecenia cmdlet GenXdev oraz ich szczegóły. |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-GenXdevCmdlet.md) | cmds | Wyświetla moduły PowerShell GenXdev wraz z ich poleceniami cmdlet i aliasami. |

---

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AILLMSettings.md) | &nbsp; | Pobiera ustawienia LLM dla operacji AI w GenXdev.AI. |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SpeechToText.md) | &nbsp; | Konwertuje pliki audio na tekst za pomocą modelu rozpoznawania mowy Whisper od OpenAI. |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-TextTranslation.md) | translate | Tłumaczy tekst na inny język za pomocą AI. |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-VectorSimilarity.md) | &nbsp; | Oblicza podobieństwo cosinusowe między dwoma wektorami. |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-WinMerge.md) | &nbsp; | Uruchamia WinMerge, aby porównać dwa pliki obok siebie. |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Merge-TranslationCache.md) | &nbsp; | Zarządza trwałym cache tłumaczeń z wsadowymi zapisami na dysk dla każdego języka. |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-LLMAudioChat.md) | llmaudiochat | Tworzy interaktywną sesję czatu audio z modelem LLM. |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-LLMTextChat.md) | llmchat | Rozpoczyna interaktywną sesję czatu z możliwościami AI. |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Receive-RealTimeSpeechToText.md) | &nbsp; | Konwertuje dźwięk w czasie rzeczywistym na tekst za pomocą modelu Whisper AI. |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AILLMSettings.md) | &nbsp; | Ustawia ustawienia LLM dla operacji AI w GenXdev.AI. |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | Konfiguruje niestandardową obsługę nieznalezionego polecenia z opcjonalnym wsparciem AI. |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-DeepLinkImageFile.md) | &nbsp; | Sprawdza, czy określona ścieżka pliku jest prawidłowym plikiem obrazu w obsługiwanym formacie. |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Compare-ImageFaces.md) | comparefaces | Porównuje twarze na dwóch różnych obrazach i zwraca ich podobieństwo przy użyciu DeepStack. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ImageDetectedFaces.md) | &nbsp; | Rozpoznaje twarze na przesłanym obrazie, porównując je ze znanymi twarzami przy użyciu DeepStack. |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ImageDetectedObjects.md) | &nbsp; | Wykrywa i klasyfikuje obiekty na przesłanym obrazie przy użyciu DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ImageDetectedScenes.md) | &nbsp; | Klasyfikuje obraz do jednej z 365 kategorii scen przy użyciu DeepStack. |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-RegisteredFaces.md) | &nbsp; | Pobiera listę wszystkich zarejestrowanych identyfikatorów twarzy z DeepStack. |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageEnhancement.md) | enhanceimage | Ulepsz obraz, powiększając go 4-krotnie przy jednoczesnej poprawie jakości za pomocą DeepStack. |
| [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Register-AllFaces.md) | UpdateFaces | Aktualizuje wszystkie profile rozpoznawania twarzy na podstawie plików obrazów w katalogu faces. |
| [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Register-Face.md) | &nbsp; | Rejestruje nową twarz w interfejsie API rozpoznawania twarzy DeepStack. |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Unregister-AllFaces.md) | &nbsp; | Usuwa wszystkie zarejestrowane twarze z systemu rozpoznawania twarzy DeepStack. |
| [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Unregister-Face.md) | &nbsp; | Usuwa zarejestrowaną twarz według jej identyfikatora z DeepStack. |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-EmoticonsToText.md) | emojify | Ulepsza tekst, dodając odpowiednie kontekstowo emotikony za pomocą sztucznej inteligencji. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertFrom-CorporateSpeak.md) | uncorporatize | Konwertuje uprzejmą, profesjonalną mowę korporacyjną na bezpośredni, jasny język przy użyciu AI. |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | Konwertuje dyplomatyczny lub taktowny język na bezpośredni, jasny i jednoznaczny. |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-CorporateSpeak.md) | corporatize | Konwertuje bezpośredni lub dosadny tekst na uprzejmą, profesjonalną mowę korporacyjną za pomocą AI. |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-DiplomaticSpeak.md) | diplomatize | Konwertuje bezpośredni lub dosadny tekst na uprzejmy, taktowny język dyplomatyczny. |
| [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-Image.md) | findimages, li | Przeszukuje katalogi w poszukiwaniu plików graficznych i metadanych z możliwością filtrowania oraz opcjonalnym przeglądaniem galerii w przeglądarce. |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AIKnownFacesRootpath.md) | &nbsp; | Pobiera skonfigurowany katalog plików obrazów twarzy używanych w operacjach GenXdev.AI. |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AIMetaLanguage.md) | getimgmetalang | Pobiera skonfigurowany domyślny język dla operacji na metadanych obrazów. |
| [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Fallacy.md) | dispicetext | Analizuje tekst w celu zidentyfikowania błędów logicznych przy użyciu wykrywania opartego na AI. |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | Przechwytuje komunikaty błędów z różnych strumieni i używa LLM do sugerowania poprawek. |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SimularMovieTitles.md) | &nbsp; | Znajduje podobne tytuły filmów na podstawie wspólnych właściwości. |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-AIPowershellCommand.md) | hint | Generuje i wykonuje polecenia PowerShell przy użyciu asystenta AI. |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageFacesUpdate.md) | imagepeopledetection | Aktualizuje metadane rozpoznawania twarzy dla plików obrazów w określonym katalogu. |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | Aktualizuje metadane obrazów za pomocą opisów i słów kluczowych wygenerowanych przez AI. |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageMetadataUpdate.md) | imagepropdetection | Aktualizuje metadane EXIF dla obrazów w katalogu. |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | Aktualizuje metadane wykrywania obiektów dla plików obrazów w określonym katalogu. |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageScenesUpdate.md) | imagescenedetection | Aktualizuje metadane klasyfikacji scen dla plików obrazów w określonym katalogu. |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-LLMBooleanEvaluation.md) | equalstrue | Ocenia stwierdzenie za pomocą AI, aby określić, czy jest prawdziwe, czy fałszywe. |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-LLMQuery.md) | qllm, llm | Wysyła zapytania do interfejsu API uzupełniania czatu dla dużego modelu językowego kompatybilnego z OpenAI i przetwarza odpowiedzi. |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-LLMStringListEvaluation.md) | getlist, getstring | Wyodrębnia lub generuje listę odpowiednich ciągów znaków z tekstu wejściowego za pomocą analizy AI. |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-LLMTextTransformation.md) | spellcheck | Przetwarza tekst przy użyciu wspomaganego przez sztuczną inteligencję przetwarzania. |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-QueryImageContent.md) | &nbsp; | Analizuje zawartość obrazu przy użyciu możliwości AI wizji komputerowej |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-ImageMetaData.md) | removeimagedata | Usuwa pliki metadanych obrazów z katalogów obrazów. |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Save-FoundImageFaces.md) | saveimagefaces | Zapisuje przycięte obrazy twarzy z wyników indeksowanego wyszukiwania obrazów. |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Save-Transcriptions.md) | &nbsp; | Generuje pliki napisów dla plików audio i wideo przy użyciu OpenAI Whisper. |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AIKnownFacesRootpath.md) | &nbsp; | Ustawia katalog dla plików obrazów twarzy używanych w operacjach GenXdev.AI. |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AIMetaLanguage.md) | &nbsp; | Ustawia domyślny język oraz opcjonalnie katalogi obrazów dla operacji metadanych obrazów GenXdev.AI. |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-FoundImagesInBrowser.md) | showfoundimages | Wyświetla wyniki wyszukiwania obrazów w układzie galerii internetowej w stylu murarskim. |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-AudioTranscription.md) | transcribefile, transcribe | Transkrybuje plik audio, plik wideo lub urządzenie nagrywające na tekst. |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Update-AllImageMetaData.md) | updateallimages | Aktualizuje wsadowo słowa kluczowe obrazów, twarze, obiekty i sceny w wielu katalogach systemowych. |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-FeatureLineToREADME.md) | feature | Dodaje linię funkcji do pliku README z oznaczeniem czasu. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-IdeaLineToREADME.md) | idea | Dodaje element pomysłu do pliku README.md. |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-IssueLineToREADME.md) | issue | Dodaje element problemu do pliku README.md. |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-LineToREADME.md) | &nbsp; | Dodaje linię do pliku markdown README.md w określonej sekcji. |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-ReleaseNoteLineToREADME.md) | releasenote | Dodaje wiersz ReleaseNote do pliku README z sygnaturą czasową. |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-TodoLineToREADME.md) | todo | Dodaje element todo do pliku README.md. |
| [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Features.md) | features | Wyświetla funkcje z pliku README.md. |
| [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Ideas.md) | ideas | Wyświetla pomysły z pliku README.md. |
| [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Issues.md) | issues | Wyświetla problemy z pliku README.md. |
| [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Refactor.md) | refactors | Pobiera definicje refaktoryzacji z preferencji GenXdev na podstawie wzorców nazw. |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-RefactorReport.md) | refactorreport | Generuje szczegółowy raport operacji refaktoryzacji i ich stanu. |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ReleaseNotes.md) | releasenotes | Wyświetla informacje o wydaniu z pliku README.md. |
| [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Todoos.md) | todoos | Wyświetla elementy do zrobienia z pliku README.md. |
| [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-Refactor.md) | newrefactor | Tworzy nowy zestaw refaktoryzacji dla zadań transformacji kodu. |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-SourceFileInIde.md) | editcode | Otwiera plik źródłowy w preferowanym IDE (Visual Studio Code lub Visual Studio). |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Publish-ReleaseNotesToManifest.md) | pubrelnotes | Publikuje nieukończone notatki wydania z pliku README.md do manifestu modułu. |
| [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-Refactor.md) | &nbsp; | Usuwa zestawy refaktoryzacji z systemu preferencji GenXdev. |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-NextRefactor.md) | nextrefactor | Kontynuuje lub wznawia sesję refaktoryzacji kodu. |
| [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Update-Refactor.md) | updaterefactor | Aktualizuje i zarządza zestawami refaktoryzacji, w tym wyborem i przetwarzaniem plików. |
| [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/VSCode.md) | &nbsp; | Otwiera jeden lub więcej plików w Visual Studio Code. |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GitChangedFiles.md) | gitchanged | Pobierz listę zmienionych plików w repozytorium Git. |
| [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-GitCommit.md) | commit | Tworzy i wypycha nowe zatwierdzenie git ze wszystkimi zmianami. |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/PermanentlyDeleteGitFolders.md) | &nbsp; | Trwale usuwa określone foldery ze wszystkich gałęzi w repozytorium Git. |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevCmdlet.md) | improvecmdlet | Ulepsza dokumentację i implementację poleceń cmdlet GenXdev za pomocą asysty AI. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevCmdletTests.md) | improvecmdlettests | Potwierdza i ulepsza testy jednostkowe określonego polecenia cmdlet GenXdev. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | Sprawdza poprawność użycia zależności między modułami GenXdev, aby zapewnić zachowanie właściwej hierarchii modułów. |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevTest.md) | rungenxdevtests | Wykonuje testy jednostkowe dla modułów GenXdev, podmodułów lub poleceń cmdlet z inteligentnym debugowaniem i rozwiązywaniem błędów wspomaganym przez AI. |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-ModuleDefinition.md) | &nbsp; | Pomaga w refaktoryzacji plików kodu źródłowego PowerShell przy użyciu wspomagania AI. |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureCopilotKeyboardShortCut.md) | &nbsp; | Konfiguruje skróty klawiaturowe GitHub Copilot Chat w Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureDefaultGenXdevRefactors.md) | &nbsp; | Zapewnia dostępność domyślnych definicji refaktoryzacji GenXdev. |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-CmdletMetaData.md) | &nbsp; | Pobiera metadane dla określonego polecenia cmdlet GenXdev, opcjonalnie tłumacząc tekst pomocy na inny język. |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevModule.md) | &nbsp; | Pobiera wszystkie moduły GenXDev z określonej ścieżki. |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevModuleInfo.md) | &nbsp; | Pobiera szczegółowe informacje o modułach PowerShell firmy GenXdev. |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | Pobiera moduły GenXDev w kolejności zależności. |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ModuleCmdletMetaData.md) | &nbsp; | Pobiera metadane dla wszystkich poleceń cmdlet w module PowerShell. |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-GenXdevPSFormatter.md) | &nbsp; | Formatuje pliki skryptów PowerShell przy użyciu reguł formatowania PSScriptAnalyzer. |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | Wywołuje analizator skryptów PowerShell w celu analizy skryptów PowerShell pod kątem zgodności i najlepszych praktyk. |
| [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-ModuleMarkdownHelp.md) | &nbsp; | Generuje bogate pliki pomocy Markdown dla dowolnego modułu PowerShell. |
| [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-ModuleXmlHelp.md) | &nbsp; | Generuje pliki pomocy MAML XML dla dowolnego modułu PowerShell. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Search-GenXdevCmdlet.md) | searchcmdlet | Wyszukuje polecenia cmdlet GenXdev i opcjonalnie otwiera je w IDE do edycji. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | Otwiera określone polecenie cmdlet GenXdev w programie Visual Studio Code. |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-ArrayTemplate.md) | FormatArray | Formatuje kolekcję obiektów przy użyciu ciągu szablonowego z symbolami zastępczymi właściwości, tworząc pojedynczy sformatowany ciąg. |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-DoubleEmptyLines.md) | &nbsp; | Usuwa podwójne (kolejne) puste linie z ciągu kodu, opcjonalnie przeformatowując wynik. |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-IsSpeaking.md) | iss | Zwraca prawdę, jeśli mechanizm zamiany tekstu na mowę mówi. |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-MicrosoftShellTab.md) | x | Tworzy nową kartę terminala Windows z uruchomionym programem PowerShell. |
| [Now](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Now.md) | &nbsp; | Zwraca bieżącą datę i czas systemowy jako obiekt DateTime. |
| [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/SayDate.md) | &nbsp; | Wypowiada bieżącą datę przy użyciu syntezy mowy. |
| [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/SayTime.md) | &nbsp; | Ogłasza bieżący czas za pomocą zamiany tekstu na mowę. |
| [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/secondscreen.md) | &nbsp; | Ustawia domyślną konfigurację drugiego monitora. |
| [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/sidebyside.md) | &nbsp; | Ustawia domyślną konfigurację side-by-side. |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-SnakeGame.md) | snake | Uruchamia prostą grę Snake w konsoli. |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-TextToSpeech.md) | say | Konwertuje tekst na mowę za pomocą neuralnego silnika TTS firmy Microsoft Edge. |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Stop-TextToSpeech.md) | sst | Natychmiast zatrzymuje trwające odtwarzanie tekstu na mowę. |
| [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/UtcNow.md) | &nbsp; | Pobiera bieżącą datę i godzinę czasu UTC (uniwersalnego czasu koordynowanego). |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-KeyValueStoreNames.md) | getstorenames | Pobiera nazwy dostępnych magazynów klucz-wartość. |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-KeyValueStorePath.md) | &nbsp; | Pobiera ścieżkę pliku dla magazynu klucz-wartość. |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-StoreKeys.md) | getkeys | Pobiera wszystkie nazwy kluczy dla danego magazynu klucz-wartość. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ValueByKeyFromStore.md) | getvalue | Pobiera wartość z magazynu klucz-wartość opartego na formacie JSON. |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Initialize-KeyValueStores.md) | &nbsp; | Inicjuje strukturę katalogów KeyValueStore dla przechowywania lokalnego i w OneDrive. |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-KeyFromStore.md) | removekey | Usuwa klucz z magazynu klucz-wartość. |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-KeyValueStore.md) | &nbsp; | Usuwa magazyn klucz-wartość. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-ValueByKeyInStore.md) | setvalue | Zarządza parami klucz-wartość w magazynie opartym na plikach JSON. |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Sync-KeyValueStore.md) | &nbsp; | Synchronizuje lokalne pliki JSON z magazynem par klucz-wartość OneDrive. |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXdevPreference.md) | getPreference | Pobiera wartość preferencji z magazynu preferencji GenXdev. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXdevPreferenceNames.md) | getPreferenceNames | Pobiera wszystkie nazwy preferencji z magazynu sesji i bazy danych. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | Pobiera skonfigurowaną ścieżkę bazy danych dla plików danych preferencji używanych w operacjach GenXdev.Data. |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-GenXdevPreference.md) | removePreference | Usuwa wartość preferencji z magazynu preferencji GenXdev. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | Ustawia domyślną wartość preferencji w magazynie preferencji GenXdev. |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevPreference.md) | setPreference | Ustawia wartość preferencji w magazynie preferencji GenXdev. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | Ustawia ścieżkę bazy danych dla preferencji używanych w operacjach GenXdev.Data. |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLiteSchema.md) | &nbsp; | Pobiera pełne informacje o schemacie z bazy danych SQLite. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLiteTableColumnData.md) | &nbsp; | Pobiera dane z określonej kolumny w tabeli bazy danych SQLite. |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLiteTableData.md) | &nbsp; | Pobiera dane z tabeli bazy danych SQLite z opcjonalnym ograniczeniem liczby rekordów. |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLiteTables.md) | &nbsp; | Pobiera listę nazw tabel z bazy danych SQLite. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLiteTableSchema.md) | &nbsp; | Pobiera informacje o schemacie dla określonej tabeli SQLite. |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLiteTransaction.md) | getsqltx, newsqltx | Tworzy i zwraca obiekt transakcji SQLite dla operacji wsadowych. |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLiteViewColumnData.md) | &nbsp; | Pobiera dane kolumny z widoku SQLite z opcjonalnym ograniczeniem liczby rekordów. |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLiteViewData.md) | &nbsp; | Pobiera dane z widoku bazy danych SQLite z opcjonalnym ograniczeniem liczby rekordów. |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLiteViews.md) | &nbsp; | Pobiera listę widoków z bazy danych SQLite. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLiteViewSchema.md) | &nbsp; | Pobiera definicję schematu SQL dla widoku SQLite. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-SQLiteQuery.md) | &nbsp; | Wykonuje jedno lub więcej zapytań SQL względem bazy danych SQLite z obsługą transakcji. |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-SQLiteStudio.md) | &nbsp; | Wykonuje zapytania do bazy danych SQLite z obsługą parametrów i transakcji. |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-SQLiteDatabase.md) | nsqldb | Tworzy nowy plik bazy danych SQLite. |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLServerSchema.md) | &nbsp; | Pobiera pełne informacje o schemacie z bazy danych SQL Server. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLServerTableColumnData.md) | &nbsp; | Pobiera dane z określonej kolumny w tabeli bazy danych SQL. |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLServerTableData.md) | &nbsp; | Pobiera dane z tabeli bazy danych SQL z opcjonalnym ograniczeniem liczby rekordów. |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLServerTables.md) | &nbsp; | Pobiera listę nazw tabel z bazy danych SQL Server. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLServerTableSchema.md) | &nbsp; | Pobiera informacje o schemacie dla określonej tabeli SQL Server. |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLServerTransaction.md) | getsqltx, newsqltx | Tworzy i zwraca obiekt transakcji SQL Server do operacji wsadowych. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLServerViewColumnData.md) | &nbsp; | Pobiera dane kolumny z widoku SQL z opcjonalnym ograniczeniem liczby rekordów. |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLServerViewData.md) | &nbsp; | Pobiera dane z widoku bazy danych SQL z opcjonalnym ograniczeniem liczby rekordów. |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLServerViews.md) | &nbsp; | Pobiera listę widoków z bazy danych SQL Server. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SQLServerViewSchema.md) | &nbsp; | Pobiera definicję schematu SQL dla widoku serwera SQL. |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-SQLServerQuery.md) | &nbsp; | Wykonuje jedno lub więcej zapytań SQL względem bazy danych SQL Server z obsługą transakcji. |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | Wykonuje zapytania do bazy danych SQL Server z obsługą parametrów i transakcji. |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-SQLServerDatabase.md) | nsqldb | Tworzy nową bazę danych programu SQL Server. |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Copy-FilesToDateFolder.md) | &nbsp; | Kopiuje pliki pasujące do kryteriów wyszukiwania do podfolderów opartych na dacie. |
| [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Expand-Path.md) | ep | Rozwija dowolne odwołanie do pliku w pełną ścieżkę. |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-DuplicateFiles.md) | fdf | Znajdź zduplikowane pliki w wielu katalogach na podstawie konfigurowalnych kryteriów. |
| [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-Item.md) | l | Wyszukuj pliki i katalogi za pomocą zaawansowanych opcji filtrowania. |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-Fasti.md) | fasti | Wyodrębnia pliki archiwum w bieżącym katalogu do własnych folderów, a następnie je usuwa. |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Move-FilesToDateFolder.md) | &nbsp; | Przenosi pliki pasujące do kryteriów wyszukiwania do podfolderów opartych na dacie. |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Move-ItemWithTracking.md) | &nbsp; | Przenosi pliki i katalogi, zachowując łącza systemu plików i odwołania. |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Move-ToRecycleBin.md) | &nbsp; | Bezpiecznie przenosi pliki i katalogi do Kosza Windows. |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ReadJsonWithRetry.md) | &nbsp; | Odczytuje plik JSON z logiką ponawiania i automatycznym czyszczeniem blokady. |
| [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-AllItems.md) | sdel | Rekurencyjnie usuwa całą zawartość katalogu z zaawansowaną obsługą błędów. |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-ItemWithFallback.md) | rmf | Usuwa pliki lub katalogi z wieloma mechanizmami zastępczymi w celu niezawodnego usuwania. |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-OnReboot.md) | &nbsp; | Oznacza pliki lub katalogi do usunięcia podczas następnego uruchomienia systemu. |
| [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Rename-InProject.md) | rip | Dokonuje zamiany tekstu w całym katalogu projektu. |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-FoundLocation.md) | lcd | Znajduje pierwszy pasujący plik lub folder i ustawia lokalizację na niego. |
| [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent.md) | .. | Zmienia bieżącą lokalizację na katalog nadrzędny i wyświetla jego zawartość. |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent2.md) | ... | Przechodzi o dwa poziomy w górę w hierarchii systemu plików. |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent3.md) | .... | Nawiguje w górę o trzy poziomy w hierarchii systemu plików. |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent4.md) | ..... | Przechodzi o cztery poziomy w górę w hierarchii systemu plików. |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent5.md) | ...... | Przechodzi o pięć poziomów katalogów w górę w hierarchii systemu plików. |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-RoboCopy.md) | xc, rc | Udostępnia opakowanie PowerShell dla narzędzia Microsoft Robust Copy (RoboCopy). |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-FileAtomic.md) | &nbsp; | Zapisuje bajty do pliku w sposób atomowy, aby zapobiec uszkodzeniom. |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-JsonFileAtomic.md) | &nbsp; | Zapisuje obiekt jako atomowo plik JSON, aby zapobiec uszkodzeniom. |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-TextFileAtomic.md) | &nbsp; | Zapisuje tekst do pliku w sposób atomistyczny, aby zapobiec uszkodzeniu. |

---

## GenXdev.Hardware

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AudioDeviceNames.md) | &nbsp; | Pobiera nazwy dostępnych urządzeń audio do przechwytywania dźwięku z mikrofonu lub pulpitu. |
| [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-CpuCore.md) | &nbsp; | Oblicza i zwraca całkowitą liczbę logicznych rdzeni procesora w systemie. |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-HasCapableGpu.md) | &nbsp; | Określa, czy jest dostępny procesor graficzny obsługujący technologię CUDA z wystarczającą ilością pamięci. |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-MonitorCount.md) | &nbsp; | Pobiera całkowitą liczbę monitorów podłączonych do systemu. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-NumberOfCpuCores.md) | &nbsp; | Oblicza i zwraca całkowitą liczbę logicznych rdzeni procesora w systemie. |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-CpuAvx.md) | &nbsp; | Testuje, czy procesor obsługuje zestawy instrukcji AVX i AVX2. |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/alignScript.md) | &nbsp; | Zwraca ciąg znaków (ze zmienionym wcięciem) podanego ciągu bloku skryptu |
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Approve-NewTextFileContent.md) | &nbsp; | Interaktywne porównywanie i zatwierdzanie zawartości plików przy użyciu WinMerge. |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-RefactorFile.md) | &nbsp; | Wykonuje operację refaktoryzacji pliku źródłowego przy użyciu określonego IDE i szablonu promptu AI. |
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Confirm-InstallationConsent.md) | &nbsp; | Potwierdza zgodę użytkownika na instalację oprogramowania firm trzecich, wykorzystując preferencje do trwałych wyborów. |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Convert-DotNetTypeToLLMType.md) | &nbsp; | Konwertuje nazwy typów .NET na nazwy typów LLM (Model Językowy). |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-HashTable.md) | &nbsp; | Konwertuje obiekt PSCustomObject na tablicę haszującą rekurencyjnie. |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | Konwertuje funkcje PowerShell na definicje funkcji API OpenAI LLM. |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Copy-IdenticalParamValues.md) | &nbsp; | Kopiuje wartości parametrów z powiązanych parametrów do nowej tabeli mieszającej na podstawie możliwych parametrów innej funkcji. |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureGenXdev.md) | &nbsp; | Zapewnia, że wszystkie moduły GenXdev są prawidłowo załadowane, wywołując wszystkie polecenia cmdlet Ensure*. |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureNuGetAssembly.md) | &nbsp; | Pobiera i ładuje zestawy .NET z pakietów NuGet na podstawie klucza lub identyfikatora pakietu. |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/GenerateMasonryLayoutHtml.md) | &nbsp; | Generuje responsywny układ galerii zdjęć w stylu masonry z danych obrazów. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AIDefaultLLMSettings.md) | &nbsp; | Pobiera wszystkie dostępne domyślne konfiguracje ustawień modeli LLM dla operacji AI w GenXdev.AI. |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-BCP47LanguageDictionary.md) | &nbsp; | Zwraca słownik wszystkich zainstalowanych tagów językowych BCP 47 oraz ich nazw wyświetlanych. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-DefaultWebLanguage.md) | &nbsp; | Pobiera domyślny klucz języka sieciowego na podstawie bieżących ustawień językowych systemu. |
| [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-JsonExampleFromSchema.md) | &nbsp; | Generuje czytelny dla człowieka przykładowy ciąg JSON na podstawie definicji schematu JSON. |
| [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-LLMJsonOutput.md) | &nbsp; | Wyodrębnia prawidłowy JSON z tekstu odpowiedzi LLM, stosując heurystyki najlepszego wysiłku. |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WebLanguageDictionary.md) | &nbsp; | Zwraca odwrócony słownik dla wszystkich języków obsługiwanych przez Google Search. |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Import-GenXdevModules.md) | reloadgenxdev | Importuje wszystkie moduły PowerShell GenXdev do zakresu globalnego. |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Initialize-SearchPaths.md) | &nbsp; | Inicjuje i konfiguruje systemowe ścieżki wyszukiwania do zarządzania pakietami. |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-CommandFromToolCall.md) | &nbsp; | Wykonuje funkcję wywołania narzędzia z walidacją i filtrowaniem parametrów. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | Wykonuje blok skryptu na każdym module GenXdev w przestrzeni roboczej. |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-JSONComments.md) | &nbsp; | Usuwa komentarze z zawartości JSON. |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/resetdefaultmonitor.md) | &nbsp; | Przywraca domyślną konfigurację monitora pomocniczego. |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ResolveInputObjectFileNames.md) | &nbsp; | Rozszerza obiekty wejściowe na nazwy plików i katalogów, obsługując różne filtry i opcje wyjściowe. |
| [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-Verb.md) | showverbs | Wyświetla krótką alfabetyczną listę wszystkich czasowników programu PowerShell. |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-RefactorLLMSelection.md) | &nbsp; | Ocenia pliki źródłowe pod kątem kwalifikacji do refaktoryzacji za pomocą analizy LLM. |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-UnattendedMode.md) | &nbsp; | Wykrywa, czy program PowerShell działa w trybie bezobsługowym/zautomatyzowanym. |
| [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/WriteFileOutput.md) | &nbsp; | Wyświetla informacje o plikach z hiperłączami dla nazw plików, poprawiając wygodę użytkowania. |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Convert-PhysicsUnit.md) | &nbsp; | Konwertuje wartość z jednej jednostki fizycznej na inną w ramach tej samej kategorii. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ApparentSizeAtArmLength.md) | &nbsp; | Oblicza pozorny rozmiar obiektu na wyciągnięcie ręki. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AtEyeLengthSizeInMM.md) | &nbsp; | Oblicza pozorny rozmiar w mm obiektu znajdującego się na wyciągnięcie ręki. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | Oblicza siłę wyporu. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | Oblicza przyspieszenie dośrodkowe. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | Oblicza przesuniętą dopplerowsko częstotliwość. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | Oblicza siłę oporu powietrza. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | Oblicza prędkość ucieczki. |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-FreeFallDistance.md) | &nbsp; | Oblicza odległość przebytą podczas swobodnego spadania w danym czasie. |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-FreeFallHeight.md) | &nbsp; | Oblicza wysokość spadku swobodnego dla zadanego czasu trwania. |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-FreeFallTime.md) | &nbsp; | Oblicza czas potrzebny do swobodnego spadku obiektu z danej wysokości podczas swobodnego spadania. |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | Oblicza prędkość uderzenia na podstawie wysokości. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | Oblicza energię kinetyczną. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-LightTravelTimeByDistance.md) | &nbsp; | Oblicza czas potrzebny światłu na pokonanie odległości. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | Oblicza powiększenie dla soczewki. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-MomentumByMassAndVelocity.md) | &nbsp; | Oblicza pęd liniowy. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | Oblicza prędkość orbitalną. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | Oblicza energię potencjalną grawitacji. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | Oblicza zasięg pocisku. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | Oblicza kąt załamania za pomocą prawa Snelliusa. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | Oblicza częstotliwość rezonansową dla zamkniętej rury. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SoundTravelDistanceByTime.md) | &nbsp; | Oblicza odległość, jaką dźwięk pokonuje w zadanym czasie. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | Oblicza prędkość graniczną. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | Oblicza czas lotu pocisku. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | Oblicza prędkość fali. |

---

## GenXdev.Media

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ImageGeolocation.md) | &nbsp; | Wyodrębnia dane geolokalizacyjne z pliku obrazu. |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ImageMetadata.md) | &nbsp; | Wyodrębnia szczegółowe metadane z pliku obrazu. |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-MediaFileCreationDate.md) | &nbsp; | Wyodrębnia datę utworzenia plików multimedialnych i innych na zasadzie najlepszych starań. |
| [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-MediaFile.md) | vlcmedia, media, findmedia | Otwiera i odtwarza pliki multimedialne za pomocą odtwarzacza multimedialnego VLC z zaawansowanymi opcjami filtrowania i konfiguracji. |
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-VlcMediaPlayer.md) | vlc | Uruchamia i kontroluje odtwarzacz multimedialny VLC z rozbudowanymi opcjami konfiguracji. |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-VlcMediaPlayerLyrics.md) | vlclyrics | Otwiera przeglądarkę internetową, aby wyszukać teksty aktualnie odtwarzanych mediów w VLC. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | Ustawia fokus na okno odtwarzacza VLC. |
| [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/StabilizeVideo.md) | &nbsp; | Stabilizuje najnowszy lub określony plik .mp4 za pomocą FFmpeg + vid.stab (bez czarnych ramek). |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | Przesuwa odtwarzacz VLC Media Player do następnego elementu na bieżącej liście odtwarzania. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | Przechodzi do poprzedniego elementu na liście odtwarzania VLC Media Player. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | Przełącza stan wyciszenia odtwarzacza VLC Media Player. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | Przełącza stan pauzy/odtwarzania odtwarzacza VLC Media Player. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | Przełącza tryb powtarzania w odtwarzaczu multimedialnym VLC. |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-Uris.md) | &nbsp; | Analizuje ciągi znaków pod kątem dowolnego poprawnego identyfikatora URI. |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-AllPossibleQueries.md) | qq | Otwiera wszystkie możliwe typy zapytań dla podanych terminów wyszukiwania lub adresów URL. |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-BingCopilotQuery.md) | aibc | Otwiera zapytanie Bing CoPilot w przeglądarce internetowej |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | Otwiera zapytanie ChatGPT w przeglądarce internetowej. |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-CloudLLMChat.md) | ask | Otwiera interfejs czatu LLM w chmurze dla zapytań AI. |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | Otwiera zapytanie DeepSeek w przeglądarce |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GithubCopilotQuery.md) | aigc, askghcopilot | Otwiera zapytanie GitHub CoPilot w przeglądarce internetowej |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GoogleGeminiQuery.md) | aigg, askgemini | Otwiera zapytanie Google Gemini w przeglądarce internetowej |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-XGrokQuery.md) | aixg, askxgrok | Otwiera zapytanie X Grok w przeglądarce internetowej |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-NextAffirmation.md) | WhatAboutIt | Zwraca losowy tekst afirmacji z API affirmations.dev. |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WikipediaSummary.md) | wikitxt | Pobiera podsumowanie tematu z Wikipedii. |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Copy-PDFsFromGoogleQuery.md) | &nbsp; | Pobiera pliki PDF znalezione w wynikach wyszukiwania Google. |
| [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-BingQuery.md) | bq | Otwiera zapytanie wyszukiwania Bing w przeglądarce internetowej. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-BuiltWithSiteInfo.md) | &nbsp; | Otwiera zapytania witryny BuiltWith w przeglądarce internetowej. |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GithubQuery.md) | qgithub, qgh | Otwiera zapytanie wyszukiwania repozytoriów Github w przeglądarce internetowej lub wykonuje zaawansowane wyszukiwania za pomocą interfejsu REST API Github obsługującego wszystkie dostępne kwalifikatory i kategorie wyszukiwania (repozytoria, kod, problemy, użytkownicy, commity, dyskusje, tematy, wiki). |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GoogleQuery.md) | &nbsp; | Otwiera zapytania Google w przeglądarce internetowej z konfigurowalnymi ustawieniami i rozbudowanymi opcjami dostosowywania. |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GoogleSiteInfo.md) | &nbsp; | Otwiera zapytania dotyczące informacji o witrynie Google w przeglądarce internetowej. |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GrokipediaQuery.md) | wiki | Otwiera zapytanie w Grokipedii w przeglądarka internetową. |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-IMDBQuery.md) | imdb | Otwiera zapytanie wyszukiwania IMDB w przeglądarce internetowej. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-InstantStreetViewQuery.md) | isv | Otwiera zapytania InstantStreetView w przeglądarce internetowej. |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-MovieQuote.md) | moviequote | Otwiera w przeglądarce internetowej wideo z cytatem filmowym. |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-SearchEngine.md) | q | Otwiera zapytanie wyszukiwania w określonej wyszukiwarce za pomocą przeglądarki internetowej. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-SimularWebSiteInfo.md) | simularsite | Otwiera informacje o witrynie SimilarWeb dla określonych adresów URL w przeglądarce internetowej. |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-StackOverflowQuery.md) | qso | Otwiera zapytania wyszukiwania Stack Overflow w przeglądarce internetowej. |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WaybackMachineSiteInfo.md) | wayback | Otwiera informacje o stronie WaybackMachine w przeglądarce internetowej. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WebsiteAndPerformQuery.md) | owaq | Otwiera stronę internetową w przeglądarce i wykonuje jedno lub więcej zapytań. |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WhoisHostSiteInfo.md) | whois | Otwiera zapytanie o informacje o hoście Whois w przeglądarce internetowej. |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WikipediaNLQuery.md) | wikinl | Otwiera holenderskie wyszukiwanie w Wikipedii w przeglądarce internetowej. |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WikipediaQuery.md) | wikipedia | Otwiera zapytanie Wikipedii w przeglądarce internetowej. |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WolframAlphaQuery.md) | qalpha | Otwiera zapytanie Wolfram Alpha w przeglądarce internetowej. |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-YoutubeQuery.md) | youtube | Otwiera zapytania wyszukiwania YouTube w przeglądarce internetowej. |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GameOfLife.md) | gameoflife, conway | Otwiera symulację Gry w Życie Conwaya w przeglądarce internetowej. |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GenXdevAppCatalog.md) | appcatalog | Otwiera katalog progresywnych aplikacji internetowych GenXdev w przeglądarce internetowej. |
| [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-Timeline.md) | timeline | Otwiera interaktywną oś czasu pokazującą bieżący czas, datę, wiek i tysiąclecie. |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-ViralSimulation.md) | viral | Otwiera symulację wirusa w przeglądarce internetowej z rozbudowanymi opcjami konfiguracji. |
| [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-Yab.md) | yab | Otwiera grę YAB w przeglądarce internetowej z konfigurowalnymi ustawieniami. |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-YabAIBattle.md) | yabbattle | Otwiera grę YabAI Battle w przeglądarce internetowej. |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Close-Webbrowser.md) | wbc | Zamyka selektywnie jedno lub więcej wystąpień przeglądarki internetowej. |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Close-WebbrowserTab.md) | ct, CloseTab | Zamyka aktualnie wybraną kartę przeglądarki internetowej. |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Export-BrowserBookmarks.md) | &nbsp; | Eksportuje zakładki przeglądarki do pliku JSON. |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-BrowserBookmark.md) | bookmarks | Znajduje zakładki z jednej lub większej liczby przeglądarek internetowych. |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-BrowserBookmark.md) | gbm | Zwraca wszystkie zakładki z zainstalowanych przeglądarek internetowych. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-DefaultWebbrowser.md) | &nbsp; | Zwraca skonfigurowaną domyślną przeglądarkę internetową dla bieżącego użytkownika. |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PlaywrightSessionReference.md) | &nbsp; | Pobiera odwołanie do bieżącej sesji przeglądarki Playwright. |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Webbrowser.md) | &nbsp; | Zwraca kolekcję zainstalowanych nowoczesnych przeglądarek internetowych. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WebbrowserTabDomNodes.md) | wl | Wykonuje zapytania i manipuluje węzłami DOM w aktywnej karcie przeglądarki za pomocą selektorów CSS. |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Import-BrowserBookmarks.md) | &nbsp; | Importuje zakładki z pliku lub kolekcji do przeglądarki internetowej. |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Import-GenXdevBookmarkletMenu.md) | &nbsp; | Importuje zakładki JavaScript GenXdev do kolekcji zakładek przeglądarki. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-WebbrowserEvaluation.md) | Eval, et | Wykonuje kod JavaScript w wybranej karcie przeglądarki internetowej. |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-BrowserBookmarks.md) | sites | Otwiera zakładki przeglądarki pasujące do określonych kryteriów wyszukiwania. |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-Webbrowser.md) | wb | Otwiera adresy URL w jednym lub więcej oknach przeglądarki z opcjonalnym pozycjonowaniem i stylowaniem. |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WebbrowserSideBySide.md) | wbn | Uruchamia nowe okno przeglądarki z określonym pozycjonowaniem. |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Select-WebbrowserTab.md) | st | Wybierz kartę przeglądarki z uruchomionych przeglądarek zarządzanych przez Playwright. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-BrowserVideoFullscreen.md) | fsvideo | Maksymalizuje pierwszy element wideo znaleziony w bieżącej karcie przeglądarki. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-WebbrowserTabLocation.md) | lt, Nav | Nawiguje bieżącą kartę przeglądarki do określonego adresu URL. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-WebsiteInAllBrowsers.md) | &nbsp; | Otwiera adres URL w wielu przeglądarkach jednocześnie w układzie mozaikowym. |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | Łączy się z istniejącą instancją przeglądarki przez port debugowania. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PlaywrightProfileDirectory.md) | &nbsp; | Pobiera katalog profilu przeglądarki Playwright dla trwałych sesji. |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-PlayWrightBrowser.md) | spb | Uruchamia zarządzaną przez Playwright przeglądarkę z trwałym profilem użytkownika. |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Resume-WebbrowserTabVideo.md) | wbvideoplay | Wznawia odtwarzanie wideo w karcie przeglądarki YouTube. |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | Wstrzymuje odtwarzanie wideo we wszystkich aktywnych sesjach przeglądarki. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Unprotect-WebbrowserTab.md) | wbctrl | Przejmuje kontrolę nad wybraną kartą przeglądarki w celu interaktywnego manipulowania. |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/CurrentUserHasElevatedRights.md) | &nbsp; | Sprawdza, czy bieżący użytkownik ma podniesione uprawnienia. |
| [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Enable-Screensaver.md) | &nbsp; | Uruchamia skonfigurowany wygaszacz ekranu systemu Windows. |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ActiveUser.md) | gusers | Pobiera listę unikalnych nazw użytkowników z aktywnych procesów systemowych. |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ChildProcesses.md) | &nbsp; | Pobiera wszystkie procesy będące potomkami bieżącego procesu PowerShell. |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ClipboardFiles.md) | getclipfiles, gcbf | Pobiera pliki ze schowka systemu Windows, które zostały ustawione do operacji na plikach, takich jak kopiowanie/wklejanie. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-CurrentFocusedProcess.md) | &nbsp; | Pobiera obiekt procesu okna, które aktualnie posiada fokus klawiatury. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-DesktopScalingFactor.md) | &nbsp; | Pobiera współczynnik skalowania wyświetlania systemu Windows (ustawienie DPI) dla określonego monitora. |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ForegroundWindow.md) | &nbsp; | Pobiera uchwyt do aktualnie aktywnego okna na pierwszym planie. |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-KnownFolderPath.md) | folder | Pobiera ścieżkę znanego folderu systemu Windows przy użyciu interfejsu API Shell32. |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-MpCmdRunPath.md) | &nbsp; | Pobiera ścieżkę do pliku wykonywalnego Windows Defender MpCmdRun.exe. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-OpenedFileHandleProcesses.md) | &nbsp; | Pobiera procesy, które mają otwarte uchwyty plików do określonych plików. |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PowershellMainWindow.md) | &nbsp; | Zwraca obiekt pomocniczy okna dla głównego okna terminala PowerShell. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PowershellMainWindowProcess.md) | &nbsp; | Zwraca obiekt procesu dla okna hostującego terminal PowerShell. |
| [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Window.md) | &nbsp; | Pobiera informacje o oknach dla określonych procesów lub uchwytów okien. |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WindowPosition.md) | gwp | Pobiera informacje o położeniu i stanie okien. |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Initialize-ScheduledTaskScripts.md) | &nbsp; | Tworzy zaplanowane zadania uruchamiające skrypty PowerShell w określonych odstępach czasu. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-WindowsUpdate.md) | updatewindows | Sprawdza, czy system Windows jest aktualny i opcjonalnie instaluje dostępne aktualizacje. |
| [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Pop-Window.md) | popw | Zdejmuje ostatniego pomocnika aktywnego okna ze stosu z opcjonalnymi modyfikacjami. |
| [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Push-Window.md) | pushw | Przesuwa bieżące okno na stos okien z opcjonalnymi modyfikacjami. |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Save-DesktopScreenShot.md) | &nbsp; | Przechwytuje zrzut ekranu określonego monitora i zapisuje go do określonej ścieżki. |
| [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Send-Key.md) | sendkeys, invokekeys | Wysyła symulowane naciśnięcia klawiszy do okna lub procesu. |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Send-WakeOnLan.md) | &nbsp; | Wysyła magiczny pakiet Wake-on-LAN, aby obudzić zdalne komputery w sieci. |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-ClipboardFiles.md) | setclipfiles, scbf | Ustawia pliki w schowku systemu Windows na potrzeby operacji na plikach, takich jak kopiuj/wklej. |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-ForegroundWindow.md) | &nbsp; | Przenosi określone okno na pierwszy plan i czyni je aktywnym. |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-KnownFolderPath.md) | &nbsp; | Modyfikuje fizyczną ścieżkę znanego folderu systemu Windows. |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-MonitorPowerOff.md) | poweroff | Wyłącza zasilanie wszystkich podłączonych monitorów. |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | Włącza zasilanie monitora. |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-TaskbarAlignment.md) | &nbsp; | Konfiguruje wyrównanie paska zadań systemu Windows 11+ pomiędzy pozycją środkową a lewą. |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-WindowPosition.md) | wp | Pozycjonuje i zmienia rozmiar okien, gdy podane są jawne parametry pozycjonowania. |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-WindowPositionForSecondary.md) | wps | Umieszcza okno na monitorze dodatkowym z określonymi opcjami układu. |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-WindowsWallpaper.md) | &nbsp; | Ustawia losową tapetę z określonego katalogu. |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-ProcessWithPriority.md) | nice | Uruchamia proces z określonym poziomem priorytetu. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | Skanuje pliki lub katalogi w poszukiwaniu złośliwego oprogramowania przy użyciu programu Windows Defender. |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-WireGuardPeer.md) | &nbsp; | Dodaje nową konfigurację klienta (peera) WireGuard VPN do serwera. |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureWireGuard.md) | &nbsp; | Zapewnia, że usługa WireGuard VPN jest zainstalowana i uruchomiona za pomocą kontenera Docker. |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WireGuardPeerQRCode.md) | &nbsp; | Generuje kod QR dla konfiguracji peer-a WireGuard VPN. |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WireGuardPeers.md) | &nbsp; | Pobiera informacje o wszystkich skonfigurowanych w systemie równorzędnych klientach VPN WireGuard. |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WireGuardStatus.md) | &nbsp; | Pobiera szczegółowe informacje o stanie serwera VPN WireGuard. |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-WireGuardPeer.md) | &nbsp; | Usuwa konfigurację równorzędną WireGuard VPN. |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Reset-WireGuardConfiguration.md) | &nbsp; | Resetuje konfigurację serwera VPN WireGuard, usuwając wszystkich klientów. |
