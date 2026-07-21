# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-21.

## GenXdev

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXDevCmdlet.md) | gcmds | Hämtar och listar alla GenXdev-cmdlets och deras detaljer. |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Show-GenXdevCmdlet.md) | cmds | Visar GenXdev PowerShell-moduler med deras cmdlets och alias. |

---

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AILLMSettings.md) | &nbsp; | Hämtar LLM-inställningarna för AI-operationer i GenXdev.AI. |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SpeechToText.md) | &nbsp; | Konverterar ljudfiler till text med OpenAIs Whisper-taligenkänningsmodell. |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-TextTranslation.md) | translate | Översätter text till ett annat språk med hjälp av AI. |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-VectorSimilarity.md) | &nbsp; | Beräknar cosinuslikheten mellan två vektorer. |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-WinMerge.md) | &nbsp; | Startar WinMerge för att jämföra två filer sida vid sida. |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Merge-TranslationCache.md) | &nbsp; | Hanterar den beständiga översättningscachen med batchade diskinläsningar per språk. |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-LLMAudioChat.md) | llmaudiochat | Skapar en interaktiv ljudchatt-session med en LLM-modell. |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-LLMTextChat.md) | llmchat | Startar en interaktiv textchatt-session med AI-funktioner. |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Receive-RealTimeSpeechToText.md) | &nbsp; | Konverterar ljudinmatning i realtid till text med hjälp av Whisper AI-modellen. |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-AILLMSettings.md) | &nbsp; | Ställer in LLM-inställningarna för AI-operationer i GenXdev.AI. |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | Konfigurerar anpassad hantering för kommandon som inte hittas med valfritt AI-stöd. |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-DeepLinkImageFile.md) | &nbsp; | Testar om den angivna sökvägen är en giltig bildfil med ett format som stöds. |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Compare-ImageFaces.md) | comparefaces | Jämför ansikten i två olika bilder och returnerar deras likhet med hjälp av DeepStack. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ImageDetectedFaces.md) | &nbsp; | Identifierar ansikten i en uppladdad bild genom att jämföra med kända ansikten med hjälp av DeepStack. |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ImageDetectedObjects.md) | &nbsp; | Upptäcker och klassificerar objekt i en uppladdad bild med hjälp av DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ImageDetectedScenes.md) | &nbsp; | Klassificerar en bild i en av 365 scenkategorier med hjälp av DeepStack. |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-RegisteredFaces.md) | &nbsp; | Hämtar en lista över alla registrerade ansiktsidentifierare från DeepStack. |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageEnhancement.md) | enhanceimage | Förbättrar en bild genom att förstora den 4 gånger samtidigt som kvaliteten förbättras med hjälp av DeepStack. |
| [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Register-AllFaces.md) | UpdateFaces | Uppdaterar alla ansiktsigenkänningsprofiler från bildfiler i faces-katalogen. |
| [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Register-Face.md) | &nbsp; | Registrerar ett nytt ansikte med DeepStacks API för ansiktsigenkänning. |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Unregister-AllFaces.md) | &nbsp; | Tar bort alla registrerade ansikten från DeepStacks ansiktsigenkänningssystem. |
| [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Unregister-Face.md) | &nbsp; | Tar bort ett registrerat ansikte från DeepStack med dess identifierare. |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-EmoticonsToText.md) | emojify | Förbättrar text genom att lägga till kontextuellt lämpliga emojis med hjälp av AI. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertFrom-CorporateSpeak.md) | uncorporatize | @{response=Omvandlar artig, professionell företagsjargong till direkt, tydligt språk med hjälp av AI.} |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | Konverterar diplomatiskt eller taktfullt språk till direkt, tydligt och rakt språk. |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertTo-CorporateSpeak.md) | corporatize | Konverterar direkt eller burdus text till artigt, professionellt företagsspråk med hjälp av AI. |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertTo-DiplomaticSpeak.md) | diplomatize | Konverterar direkt eller kärv text till artigt, taktfullt diplomatiskt språk. |
| [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Find-Image.md) | findimages, li | Söker efter bildfiler och metadata i angivna kataloger med filtreringsfunktioner och valfri webbläsarbaserad gallerivisning. |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AIKnownFacesRootpath.md) | &nbsp; | Hämtar den konfigurerade katalogen för ansiktsbildfiler som används i GenXdev.AI-operationer. |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AIMetaLanguage.md) | getimgmetalang | Hämtar det konfigurerade standardspråket för bildmetadataoperationer. |
| [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Fallacy.md) | dispicetext | Analyserar text för att identifiera logiska felslut med hjälp av AI-baserad detektering. |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | Fångar felmeddelanden från olika strömmar och använder LLM för att föreslå korrigeringar. |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SimularMovieTitles.md) | &nbsp; | Hittar liknande filmer baserat på gemensamma egenskaper. |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-AIPowershellCommand.md) | hint | Genererar och kör PowerShell-kommandon med AI-assistans. |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageFacesUpdate.md) | imagepeopledetection | Uppdaterar ansiktsigenkänningsmetadata för bildfiler i en angiven katalog. |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | Uppdaterar bildmetadata med AI-genererade beskrivningar och nyckelord. |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageMetadataUpdate.md) | imagepropdetection | Uppdaterar EXIF-metadata för bilder i en katalog. |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | Uppdaterar metadata för objektdetektering för bildfiler i en angiven katalog. |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageScenesUpdate.md) | imagescenedetection | Uppdaterar scenklassificeringsmetadata för bildfiler i en angiven katalog. |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-LLMBooleanEvaluation.md) | equalstrue | Utvärderar ett påstående med hjälp av AI för att avgöra om det är sant eller falskt. |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-LLMQuery.md) | qllm, llm | Skickar frågor till ett OpenAI-kompatibelt Large Language Chat completion API och bearbetar svar. |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-LLMStringListEvaluation.md) | getlist, getstring | Extraherar eller genererar en lista med relevanta strängar från inmatningstext med hjälp av AI-analys. |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-LLMTextTransformation.md) | spellcheck | Omvandlar text med hjälp av AI-drivet bearbetning. |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-QueryImageContent.md) | &nbsp; | Analyserar bildinnehåll med hjälp av AI-synfunktioner |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-ImageMetaData.md) | removeimagedata | Tar bort bildmetadatafiler från bildkataloger. |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Save-FoundImageFaces.md) | saveimagefaces | Sparar beskurna ansiktsbilder från indexerade bildsökresultat. |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Save-Transcriptions.md) | &nbsp; | Genererar undertextfiler för ljud- och videofiler med OpenAI Whisper. |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-AIKnownFacesRootpath.md) | &nbsp; | Ställer in katalogen för ansiktsbildfiler som används i GenXdev.AI-operationer. |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-AIMetaLanguage.md) | &nbsp; | Ställer in standardspråket och, om så önskas, bildkatalogerna för GenXdev.AI-bildmetadatamanipulationer. |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Show-FoundImagesInBrowser.md) | showfoundimages | Visar bildsökresultat i ett murverkslayoutwebbgalleri. |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-AudioTranscription.md) | transcribefile, transcribe | Transkriberar en ljudfil, videofil eller en inspelningsenhet till text |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Update-AllImageMetaData.md) | updateallimages | Batchuppdaterar bildnyckelord, ansikten, objekt och scener över flera systemkataloger. |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-FeatureLineToREADME.md) | feature | Lägger till en funktionsrad i README-filen med en tidsstämpel. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-IdeaLineToREADME.md) | idea | Lägger till en idéartikel i filen README.md. |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-IssueLineToREADME.md) | issue | Lägger till en ärendepunkt i README.md-filen. |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-LineToREADME.md) | &nbsp; | Lägger till en rad i en README.md-markdownfil i en angiven sektion. |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-ReleaseNoteLineToREADME.md) | releasenote | Lägger till en ReleaseNote-rad i README-filen med en tidsstämpel. |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-TodoLineToREADME.md) | todo | Lägger till en todo-post i README.md-filen. |
| [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Features.md) | features | Visar funktioner från en README.md-fil. |
| [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Ideas.md) | ideas | Visar idéer från en README.md-fil. |
| [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Issues.md) | issues | Visar ärenden från en README.md-fil. |
| [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Refactor.md) | refactors | Hämtar omstruktureringsdefinitioner från GenXdev-inställningar baserat på namnmönster. |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-RefactorReport.md) | refactorreport | Genererar en detaljerad rapport om refaktoreringsoperationer och deras status. |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ReleaseNotes.md) | releasenotes | Visar versionsanteckningar från en README.md-fil. |
| [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Todoos.md) | todoos | Visar todo-objekt från en README.md-fil. |
| [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-Refactor.md) | newrefactor | Skapar en ny refaktoriseringsuppsättning för kodtransformationsuppgifter. |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-SourceFileInIde.md) | editcode | Öppnar en källfil i föredragen IDE (Visual Studio Code eller Visual Studio). |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Publish-ReleaseNotesToManifest.md) | pubrelnotes | Publicerar ofullständiga versionsanteckningar från README.md till modulmanifestet. |
| [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-Refactor.md) | &nbsp; | Tar bort refaktoruppsättningar från GenXdevs inställningssystem. |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-NextRefactor.md) | nextrefactor | Fortsätter eller startar om en session för kodomfaktorisering. |
| [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Update-Refactor.md) | updaterefactor | Uppdaterar och hanterar refaktoriseringsuppsättningar inklusive filval och bearbetning. |
| [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/VSCode.md) | &nbsp; | Öppnar en eller flera filer i Visual Studio Code. |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GitChangedFiles.md) | gitchanged | Hämta listan över ändrade filer i en Git-databas. |
| [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-GitCommit.md) | commit | Skapar och trycker en ny git-commit med alla ändringar. |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/PermanentlyDeleteGitFolders.md) | &nbsp; | Tar bort angivna mappar permanent från alla grenar i en Git-databas. |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Assert-GenXdevCmdlet.md) | improvecmdlet | Förbättrar GenXdev-cmdlet-dokumentation och implementering genom AI-assistans. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Assert-GenXdevCmdletTests.md) | improvecmdlettests | Bekräftar och förbättrar enhetstester för en specificerad GenXDev-cmdlet. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | Validerar användning av beroenden mellan GenXdev-moduler för att säkerställa att korrekt modulhierarki upprätthålls. |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Assert-GenXdevTest.md) | rungenxdevtests | Kör enhetstester för GenXdev-moduler, undermoduler eller cmdlets med intelligent felsökning och AI-driven fellösning. |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Assert-ModuleDefinition.md) | &nbsp; | Hjälper till med omstrukturering av PowerShell-källkodsfiler med hjälp av AI-assistans. |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/EnsureCopilotKeyboardShortCut.md) | &nbsp; | Konfigurerar kortkommandon för GitHub Copilot Chat i Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/EnsureDefaultGenXdevRefactors.md) | &nbsp; | Säkerställer att standarddefinitioner för GenXdev-omstrukturering finns tillgängliga. |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-CmdletMetaData.md) | &nbsp; | Hämtar metadata för en angiven GenXdev-cmdlet, med möjlighet att översätta hjälptext till ett annat språk. |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXDevModule.md) | &nbsp; | Hämtar alla GenXDev-moduler från en angiven sökväg. |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXDevModuleInfo.md) | &nbsp; | Hämtar detaljerad information om GenXdev PowerShell-moduler. |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | Hämtar GenXDev-moduler i beroendeordning. |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ModuleCmdletMetaData.md) | &nbsp; | Hämtar metadata för alla cmdlets i en PowerShell-modul. |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-GenXdevPSFormatter.md) | &nbsp; | Formaterar PowerShell-skriptfiler med PSScriptAnalyzers formateringsregler. |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | Anropar PowerShell-skriptanalysatorn för att analysera PowerShell-skript för efterlevnad och bästa praxis. |
| [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-ModuleMarkdownHelp.md) | &nbsp; | Genererar omfattande Markdown-hjälpfiler för valfri PowerShell-modul. |
| [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-ModuleXmlHelp.md) | &nbsp; | Genererar MAML XML-hjälpfiler för alla PowerShell-moduler. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Search-GenXdevCmdlet.md) | searchcmdlet | Söker efter en GenXdev-cmdlet och öppnar den eventuellt i en IDE för redigering. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | Öppnar den angivna GenXdev-cmdleten i Visual Studio Code. |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-ArrayTemplate.md) | FormatArray | Formaterar en samling objekt med hjälp av en mallsträng med egenskapsplatshållare, vilket producerar en enda formaterad sträng. |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-DoubleEmptyLines.md) | &nbsp; | Tar bort dubbel (konsekutiva) tomma rader från en kodsträng, eventuellt omformaterar utdata. |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-IsSpeaking.md) | iss | Returnerar sant om text-till-tal-motorn talar. |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-MicrosoftShellTab.md) | x | Skapar en ny Windows Terminal-flik som kör PowerShell. |
| [Now](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Now.md) | &nbsp; | Returnerar aktuell systemdatum och tid som ett DateTime-objekt. |
| [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/SayDate.md) | &nbsp; | Tal om det aktuella datumet med text-till-tal-syntes. |
| [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/SayTime.md) | &nbsp; | Meddelar den aktuella tiden med text-till-tal. |
| [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/secondscreen.md) | &nbsp; | Ställer in standardkonfigurationen för den andra skärmen. |
| [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/sidebyside.md) | &nbsp; | Anger standardkonfigurationen för sida-vid-sida. |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-SnakeGame.md) | snake | Startar ett enkelt Snake-spel i konsolen. |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-TextToSpeech.md) | say | Konverterar text till tal med hjälp av Microsoft Edges neurala TTS-motor. |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Stop-TextToSpeech.md) | sst | Stoppar omedelbart eventuell pågående text-till-tal-utmatning. |
| [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/UtcNow.md) | &nbsp; | Hämtar aktuellt UTC-datum och -tid (koordinerad universell tid). |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-KeyValueStoreNames.md) | getstorenames | Hämtar namnen på tillgängliga nyckel-värde-lager. |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-KeyValueStorePath.md) | &nbsp; | Hämtar sökvägen till en nyckel-värde-lagring. |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-StoreKeys.md) | getkeys | Hämtar alla nyckelnamn för en given nyckel-värde-butik. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ValueByKeyFromStore.md) | getvalue | Hämtar ett värde från ett JSON-baserat nyckel-värde-lager. |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Initialize-KeyValueStores.md) | &nbsp; | Initierar KeyValueStore-katalogstruktur för lokal och OneDrive-lagring. |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-KeyFromStore.md) | removekey | Tar bort en nyckel från ett nyckel-värde-lager. |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-KeyValueStore.md) | &nbsp; | Tar bort en nyckel-värde-lagring. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-ValueByKeyInStore.md) | setvalue | Hanterar nyckel-värdepar i en butik baserad på JSON-filer. |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Sync-KeyValueStore.md) | &nbsp; | Synkroniserar lokala och OneDrives JSON-filer för nyckel-värde-lagring. |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXdevPreference.md) | getPreference | Hämtar ett preferensvärde från GenXdevs preferensarkiv. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXdevPreferenceNames.md) | getPreferenceNames | Hämtar alla inställningsnamn från sessionslagring och databaslager. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | Hämtar den konfigurerade databassökvägen för inställningsdatafiler som används i GenXdev.Data-operationer. |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-GenXdevPreference.md) | removePreference | Tar bort ett preferensvärde från GenXdevs preferenslagring. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | Anger ett standardvärde för inställningar i GenXdevs inställningsarkiv. |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevPreference.md) | setPreference | Anger ett preferensvärde i GenXdevs preferensarkiv. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | Anger databassökvägen för inställningar som används i GenXdev.Data-operationer. |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteSchema.md) | &nbsp; | Hämtar fullständig schemainformation från en SQLite-databas. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteTableColumnData.md) | &nbsp; | Hämtar data från en specifik kolumn i en SQLite-databastabell. |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteTableData.md) | &nbsp; | Hämtar data från en SQLite-databastabell med valfri begränsning av poster. |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteTables.md) | &nbsp; | Hämtar en lista med tabellnamn från en SQLite-databas. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteTableSchema.md) | &nbsp; | Hämtar schemainformationen för en angiven SQLite-tabell. |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteTransaction.md) | getsqltx, newsqltx | Skapar och returnerar ett SQLite-transaktionsobjekt för batchoperationer. |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteViewColumnData.md) | &nbsp; | Hämtar kolumndata från en SQLite-vy med valfri begränsning av poster. |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteViewData.md) | &nbsp; | Hämtar data från en SQLite-databasvy med valfri begränsning av poster. |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteViews.md) | &nbsp; | Hämtar en lista med vyer från en SQLite-databas. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteViewSchema.md) | &nbsp; | Hämtar SQL-schemadefinitionen för en SQLite-vy. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-SQLiteQuery.md) | &nbsp; | Kör en eller flera SQL-frågor mot en SQLite-databas med transaktionsstöd. |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-SQLiteStudio.md) | &nbsp; | Utför SQLite-databasfrågor med stöd för parametrar och transaktioner. |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-SQLiteDatabase.md) | nsqldb | Skapar en ny SQLite-databasfil. |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLServerSchema.md) | &nbsp; | Hämtar den fullständiga schemainformationen från en SQL Server-databas. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLServerTableColumnData.md) | &nbsp; | Hämtar data från en specifik kolumn i en SQL-databastabell. |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLServerTableData.md) | &nbsp; | Hämtar data från en SQL-databastabell med valfri begränsning av poster. |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLServerTables.md) | &nbsp; | Hämtar en lista med tabellnamn från en SQL Server-databas. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLServerTableSchema.md) | &nbsp; | Hämtar schemainformationen för en angiven SQL Server-tabell. |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLServerTransaction.md) | getsqltx, newsqltx | Skapar och returnerar ett SQL Server-transaktionsobjekt för batchoperationer. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLServerViewColumnData.md) | &nbsp; | Hämtar kolumndata från en SQL-vy med valfri begränsning av poster. |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLServerViewData.md) | &nbsp; | Hämtar data från en SQL-databasvy med valfri begränsning av poster. |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLServerViews.md) | &nbsp; | Hämtar en lista med vyer från en SQL Server-databas. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLServerViewSchema.md) | &nbsp; | Hämtar SQL-schemadefinitionen för en SQL Server-vy. |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-SQLServerQuery.md) | &nbsp; | Utför en eller flera SQL-frågor mot en SQL Server-databas med transaktionsstöd. |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | Utför SQL Server-databasfrågor med stöd för parametrar och transaktioner. |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-SQLServerDatabase.md) | nsqldb | Skapar en ny SQL Server-databas. |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Copy-FilesToDateFolder.md) | &nbsp; | Kopierar filer som matchar sökvillkor till datumbaserade undermappar. |
| [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Expand-Path.md) | ep | Expanderar en given filreferens till en fullständig sökväg. |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Find-DuplicateFiles.md) | fdf | Hitta dubbla filer över flera kataloger baserat på konfigurerbara kriterier. |
| [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Find-Item.md) | l | Sök efter filer och kataloger med avancerade filtreringsalternativ. |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-Fasti.md) | fasti | Extraherar arkivfiler i den aktuella katalogen till sina egna mappar och tar bort dem efteråt. |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Move-FilesToDateFolder.md) | &nbsp; | Flyttar filer som matchar sökvillkor till datumbaserade undermappar. |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Move-ItemWithTracking.md) | &nbsp; | Flyttar filer och kataloger med bibehållna filsystemlänkar och referenser. |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Move-ToRecycleBin.md) | &nbsp; | Flyttar filer och kataloger till Windows papperskorg på ett säkert sätt. |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ReadJsonWithRetry.md) | &nbsp; | Läser JSON-fil med omlogik och automatisk rensning av lås. |
| [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-AllItems.md) | sdel | Tar rekursivt bort allt innehåll från en katalog med avancerad felhantering. |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-ItemWithFallback.md) | rmf | Tar bort filer eller kataloger med flera reservmekanismer för pålitlig borttagning. |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-OnReboot.md) | &nbsp; | Markerar filer eller kataloger för radering vid nästa systemstart. |
| [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Rename-InProject.md) | rip | UTFör textersättning genom hela ett projektkatalog. |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-FoundLocation.md) | lcd | Hittar den första matchande filen eller mappen och ställer in platsen till den. |
| [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent.md) | .. | Ändrar den aktuella platsen till den överordnade katalogen och listar dess innehåll. |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent2.md) | ... | Navigerar upp två katalognivåer i filsystemshierarkin. |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent3.md) | .... | Navigerar upp tre katalognivåer i filsystemshierarkin. |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent4.md) | ..... | Navigerar upp fyra katalognivåer i filsystemets hierarki. |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent5.md) | ...... | Navigerar upp fem katalognivåer i filsystemshierarkin. |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-RoboCopy.md) | xc, rc | Tillhandahåller ett PowerShell-gränssnitt för Microsofts Robust Copy (RoboCopy) verktyg. |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-FileAtomic.md) | &nbsp; | Skriver byte till en fil atomiskt för att förhindra korruption. |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-JsonFileAtomic.md) | &nbsp; | Skriver ett objekt som JSON till en fil atomärt för att förhindra korruption. |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-TextFileAtomic.md) | &nbsp; | Skriver text till en fil atomiskt för att förhindra korruption. |

---

## GenXdev.Hardware

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AudioDeviceNames.md) | &nbsp; | Hämtar namnen på tillgängliga ljudenheter för mikrofon- eller skrivbordsljudinspelning. |
| [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-CpuCore.md) | &nbsp; | Beräknar och returnerar det totala antalet logiska CPU-kärnor i systemet. |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-HasCapableGpu.md) | &nbsp; | Avgör om en CUDA-kompatibel GPU med tillräckligt minne finns. |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-MonitorCount.md) | &nbsp; | Hämtar det totala antalet bildskärmar som är anslutna till systemet. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-NumberOfCpuCores.md) | &nbsp; | Beräknar och returnerar det totala antalet logiska CPU-kärnor i systemet. |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-CpuAvx.md) | &nbsp; | Testar om processorn stöder AVX- och AVX2-instruktionsuppsättningar. |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/alignScript.md) | &nbsp; | Returnerar en sträng (med ändrad indragning) av en angiven skriptblockssträng |
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Approve-NewTextFileContent.md) | &nbsp; | Interaktiv jämförelse och godkännande av filinnehåll med WinMerge. |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Assert-RefactorFile.md) | &nbsp; | Utför en omfaktoriseringsoperation på en källfil med hjälp av angiven IDE och AI-promptmall. |
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Confirm-InstallationConsent.md) | &nbsp; | Bekräftar användarens samtycke för installation av tredjepartsprogramvara, med hjälp av inställningar för beständiga val. |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Convert-DotNetTypeToLLMType.md) | &nbsp; | Konverterar .NET-typernamn till LLM (språkmodell)-typernamn. |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertTo-HashTable.md) | &nbsp; | Konverterar en PSCustomObject till en HashTable rekursivt. |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | Konverterar PowerShell-funktioner till LLM OpenAI API-funktionsdefinitioner. |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Copy-IdenticalParamValues.md) | &nbsp; | Kopierar parametervärden från bundna parametrar till en ny hashtabell baserat på en annan funktions möjliga parametrar. |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/EnsureGenXdev.md) | &nbsp; | Säkerställer att alla GenXdev-moduler laddas korrekt genom att anropa alla Ensure*-cmdletar. |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/EnsureNuGetAssembly.md) | &nbsp; | Laddar ner och läser in .NET-sammansättningar från NuGet-paket baserat på paketnyckel eller ID. |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/GenerateMasonryLayoutHtml.md) | &nbsp; | Genererar en responsiv HTML-galleri med murverkslayout från bilddata. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AIDefaultLLMSettings.md) | &nbsp; | Hämtar alla tillgängliga standardkonfigurationer för LLM-inställningar för AI-operationer i GenXdev.AI. |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-BCP47LanguageDictionary.md) | &nbsp; | Returnerar en ordbok med alla installerade BCP 47-språktaggar och deras visningsnamn. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-DefaultWebLanguage.md) | &nbsp; | Hämtar standardnyckeln för språk på webben baserat på systemets aktuella språkinställningar. |
| [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-JsonExampleFromSchema.md) | &nbsp; | Genererar en läsbar exempel-JSON-sträng från en JSON-Schemadefinition. |
| [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-LLMJsonOutput.md) | &nbsp; | Extraherar giltig JSON från LLM-svarstext med bästa möjliga heuristik. |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WebLanguageDictionary.md) | &nbsp; | Returnerar en omvänd ordbok för alla språk som stöds av Google Sök. |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Import-GenXdevModules.md) | reloadgenxdev | Importerar alla GenXdev PowerShell-moduler till den globala omfattningen. |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Initialize-SearchPaths.md) | &nbsp; | Initierar och konfigurerar systemsökvägar för pakethantering. |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-CommandFromToolCall.md) | &nbsp; | Kör en verktygsanropsfunktion med validering och parameterfiltrering. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | Kör ett skriptblock på varje GenXdev-modul i arbetsytan. |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-JSONComments.md) | &nbsp; | Tar bort kommentarer från JSON-innehåll. |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/resetdefaultmonitor.md) | &nbsp; | Återställer standardkonfiguration för sekundär bildskärm. |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ResolveInputObjectFileNames.md) | &nbsp; | Expanderar indataobjekt till fil- och katalognamn, med stöd för olika filter och utdatainställningar. |
| [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Show-Verb.md) | showverbs | Visar en kort alfabetisk lista över alla PowerShell-verb. |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-RefactorLLMSelection.md) | &nbsp; | Utvärderar källfiler för omfaktoreringsberättigande med hjälp av LLM-analys. |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-UnattendedMode.md) | &nbsp; | Identifierar om PowerShell körs i ett ohjälpt/automatiserat läge. |
| [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/WriteFileOutput.md) | &nbsp; | Matar ut filinformation med hyperlänkade visningsnamn för förbättrad användarupplevelse. |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Convert-PhysicsUnit.md) | &nbsp; | Konverterar ett värde från en fysikenhet till en annan inom samma kategori. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ApparentSizeAtArmLength.md) | &nbsp; | Beräknar den skenbara storleken av ett objekt på armlängds avstånd. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AtEyeLengthSizeInMM.md) | &nbsp; | Beräknar den uppenbara storleken i mm för ett objekt på armlängds avstånd. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | Beräknar flytkraft. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | Beräknar centripetalacceleration. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | Beräknar dopplerförskjuten frekvens. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | Beräknar dragkraft. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | Beräknar flykthastighet. |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-FreeFallDistance.md) | &nbsp; | Beräknar fallsträckan under fritt fall för en given tidsperiod. |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-FreeFallHeight.md) | &nbsp; | Beräknar fallhöjden under fritt fall för en given tidsperiod. |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-FreeFallTime.md) | &nbsp; | Beräknar tiden det tar för ett föremål att falla en given höjd under fritt fall. |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | Beräknar anslagshastighet utifrån höjd. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | Beräknar kinetisk energi. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-LightTravelTimeByDistance.md) | &nbsp; | Beräknar tiden för ljus att färdas en sträcka. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | Beräknar förstoring för en lins. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-MomentumByMassAndVelocity.md) | &nbsp; | Beräknar linjärt momentum. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | Beräknar omloppshastighet. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | Beräknar gravitationell potentiell energi. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | Beräknar projektilens räckvidd. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | Beräknar refraktionsvinkeln med Snells lag. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | Beräknar resonansfrekvensen för en sluten pipa. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SoundTravelDistanceByTime.md) | &nbsp; | Beräknar ljudets avstånd under en given tid. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | Beräknar terminalhastighet. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | Beräknar flygtiden för en projektil. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | Beräknar våghastighet. |

---

## GenXdev.Media

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ImageGeolocation.md) | &nbsp; | Extraherar geolokaliseringsdata från en bildfil. |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ImageMetadata.md) | &nbsp; | Extraherar omfattande metadata från en bildfil. |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-MediaFileCreationDate.md) | &nbsp; | Extraherar det bästa möjliga skapelsedatumet för media och andra filer. |
| [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-MediaFile.md) | vlcmedia, media, findmedia | Öppnar och spelar upp mediefiler med VLC mediaspelare, med avancerade filtrerings- och konfigurationsalternativ. |
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-VlcMediaPlayer.md) | vlc | Startar och styr VLC Media Player med omfattande konfigurationsalternativ. |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-VlcMediaPlayerLyrics.md) | vlclyrics | Öppnar en webbläsare för att söka efter texten till den för närvarande spelande VLC-median. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | Ställer in fokus på VLC-mediespelarens fönster. |
| [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/StabilizeVideo.md) | &nbsp; | Stabiliserar den senaste eller angivna .mp4-filen med FFmpeg + vid.stab (inga svarta kanter). |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | Flyttar VLC Media Player till nästa objekt i den aktuella spellistan. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | Går till föregående objekt i VLC Media Player-spellistan. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | Växlar ljudavstängningsläget för VLC Media Player. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | Växlar paus/uppspelningsläge för VLC Media Player. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | Växlar repeteringsläget i VLC Media Player. |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertTo-Uris.md) | &nbsp; | Parsar strängar för vilken giltig URI som helst. |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-AllPossibleQueries.md) | qq | Öppnar alla möjliga frågetyper för angivna söktermer eller URL:er. |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-BingCopilotQuery.md) | aibc | Öppnar en Bing CoPilot-fråga i en webbläsare |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | Öppnar en ChatGPT-fråga i en webbläsare. |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-CloudLLMChat.md) | ask | Öppnar ett gränssnitt för molnbaserad LLM-chatt för AI-frågor. |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | Öppnar en DeepSeek-fråga i en webbläsare |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GithubCopilotQuery.md) | aigc, askghcopilot | Öppnar en GitHub CoPilot-fråga i en webbläsare |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GoogleGeminiQuery.md) | aigg, askgemini | Öppnar en Google Gemini-fråga i en webbläsare |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-XGrokQuery.md) | aixg, askxgrok | Öppnar en X Grok-fråga i en webbläsare |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-NextAffirmation.md) | WhatAboutIt | Returnerar en slumpmässig bekräftelsetext från affirmations.dev API. |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WikipediaSummary.md) | wikitxt | Hämtar en sammanfattning av ett ämne från Wikipedia. |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Copy-PDFsFromGoogleQuery.md) | &nbsp; | Laddar ner PDF-filer som hittats via Googles sökresultat. |
| [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-BingQuery.md) | bq | Öppnar en Bing-sökfråga i en webbläsare. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-BuiltWithSiteInfo.md) | &nbsp; | Öppnar BuiltWith webbplatsfrågor i en webbläsare. |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GithubQuery.md) | qgithub, qgh | Öppnar en Github-sökfråga i en webbläsare eller utför avancerade sökningar mot GitHub REST API med stöd för alla tillgängliga kvalificerare och sökkategorier (arkiv, kod, ärenden, användare, commits, diskussioner, ämnen, wikis). |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GoogleQuery.md) | &nbsp; | Öppnar Google-frågor i en webbläsare med konfigurerbara inställningar och omfattande anpassningsalternativ. |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GoogleSiteInfo.md) | &nbsp; | @{response=Öppnar frågor om Google-webbplatsinformation i en webbläsare.} |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GrokipediaQuery.md) | wiki | Öppnar en Grokipedia-fråga i en webbläsare. |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-IMDBQuery.md) | imdb | Öppnar en IMDB-sökfråga i en webbläsare. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-InstantStreetViewQuery.md) | isv | Öppnar förfrågningar för Instant Street View i en webbläsare. |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-MovieQuote.md) | moviequote | Öppnar en video av ett filmcitat i en webbläsare. |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-SearchEngine.md) | q | Öppnar en sökfråga i den angivna sökmotorn med hjälp av en webbläsare. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-SimularWebSiteInfo.md) | simularsite | Öppnar SimilarWeb-webbplatsinformation för angivna webbadresser i en webbläsare. |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-StackOverflowQuery.md) | qso | Öppnar Stack Overflow-sökfrågor i en webbläsare. |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WaybackMachineSiteInfo.md) | wayback | Öppnar WayBackMachine-webbplatsinformation i en webbläsare. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WebsiteAndPerformQuery.md) | owaq | Öppnar en webbsida i en webbläsare och utför en eller flera frågor. |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WhoisHostSiteInfo.md) | whois | Öppnar en Whois-värdinformationsfråga i en webbläsare. |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WikipediaNLQuery.md) | wikinl | Öppnar nederländska Wikipedia-sökningar i en webbläsare. |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WikipediaQuery.md) | wikipedia | Öppnar en Wikipedia-fråga i en webbläsare. |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WolframAlphaQuery.md) | qalpha | Öppnar en Wolfram Alpha-fråga i en webbläsare. |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-YoutubeQuery.md) | youtube | Öppnar YouTube-sökfrågor i en webbläsare. |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GameOfLife.md) | gameoflife, conway | Öppnar Conways Game of Life-simulering i en webbläsare. |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GenXdevAppCatalog.md) | appcatalog | Öppnar GenXdevs progressiva webbappskatalog i en webbläsare. |
| [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-Timeline.md) | timeline | Öppnar en interaktiv tidslinje som visar aktuell tid, datum, århundrade och årtusende. |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-ViralSimulation.md) | viral | Öppnar ett viralt simuleringsspel i en webbläsare med omfattande konfigurationsalternativ. |
| [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-Yab.md) | yab | Öppnar YAB-spelet i en webbläsare med konfigurerbara inställningar. |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-YabAIBattle.md) | yabbattle | Öppnar YabAI Battle-spelet i en webbläsare. |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Close-Webbrowser.md) | wbc | Stänger selektivt en eller flera webbläsarinstanser. |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Close-WebbrowserTab.md) | ct, CloseTab | Stänger den för närvarande valda webbläsarfliken. |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Export-BrowserBookmarks.md) | &nbsp; | Exporterar webbläsarbokmärken till en JSON-fil. |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Find-BrowserBookmark.md) | bookmarks | Hittar bokmärken från en eller flera webbläsare. |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-BrowserBookmark.md) | gbm | Returnerar alla bokmärken från installerade webbläsare. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-DefaultWebbrowser.md) | &nbsp; | Returnerar den konfigurerade standardwebbläsaren för den aktuella användaren. |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-PlaywrightSessionReference.md) | &nbsp; | Hämtar en referens till den aktuella Playwright-webbläsarsessionen. |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Webbrowser.md) | &nbsp; | Returnerar en samling installerade moderna webbläsare. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WebbrowserTabDomNodes.md) | wl | Frågar och manipulerar DOM-noder i den aktiva webbläsarfliken med CSS-väljare. |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Import-BrowserBookmarks.md) | &nbsp; | Importerar bokmärken från en fil eller samling till en webbläsare. |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Import-GenXdevBookmarkletMenu.md) | &nbsp; | Importerar GenXdev JavaScript-bokmärken till webbläsarens bokmärkessamlingar. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-WebbrowserEvaluation.md) | Eval, et | Kör JavaScript-kod i en vald webbläsarflik. |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-BrowserBookmarks.md) | sites | Öppnar webbläsarbokmärken som matchar angivna sökvillkor. |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-Webbrowser.md) | wb | Öppnar URL:er i ett eller flera webbläsarfönster med valfri positionering och stil. |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WebbrowserSideBySide.md) | wbn | Startar ett nytt webbläsarfönster med specifik positionering. |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Select-WebbrowserTab.md) | st | Väljer en webbläsarflik från Playwright-hanterade webbläsare som körs. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-BrowserVideoFullscreen.md) | fsvideo | Maximerar det första videoelementet som finns i den aktuella webbläsarfliken. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-WebbrowserTabLocation.md) | lt, Nav | Navigerar den aktuella webbläsarfliken till en angiven URL. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Show-WebsiteInAllBrowsers.md) | &nbsp; | Öppnar en URL i flera webbläsare samtidigt i en mosaiklayout. |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | Ansluter till en befintlig webbläsarinstans via felsökningsport. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-PlaywrightProfileDirectory.md) | &nbsp; | Hämtar Playwright-webbläsarprofilkatalogen för beständiga sessioner. |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-PlayWrightBrowser.md) | spb | Startar en Playwright-hanterad webbläsare med en beständig användarprofil. |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Resume-WebbrowserTabVideo.md) | wbvideoplay | Återupptar videouppspelning i en YouTube-webbläsarflik. |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | Pausar videouppspelning i alla aktiva webbläsarsessioner. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Unprotect-WebbrowserTab.md) | wbctrl | Tar kontroll över en vald webbläsarflik för interaktiv manipulering. |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/CurrentUserHasElevatedRights.md) | &nbsp; | Kontrollerar om den aktuella användaren har förhöjda rättigheter. |
| [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Enable-Screensaver.md) | &nbsp; | Startar den konfigurerade Windows-skärmsläckaren. |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ActiveUser.md) | gusers | Hämtar en lista över unika användarnamn från för närvarande aktiva systemprocesser. |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ChildProcesses.md) | &nbsp; | Hämtar alla processer som är avkomlingar till den aktuella PowerShell-processen. |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ClipboardFiles.md) | getclipfiles, gcbf | Hämtar filer från Windows urklipp som har ställts in för filoperationer som kopiera/klistra. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-CurrentFocusedProcess.md) | &nbsp; | Hämtar processobjektet för det fönster som för närvarande har tangentbordsfokus. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-DesktopScalingFactor.md) | &nbsp; | Hämtar Windows visningsskalningsfaktor (DPI-inställning) för en angiven bildskärm. |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ForegroundWindow.md) | &nbsp; | Hämtar handtaget för det för närvarande aktiva förgrundsfönstret. |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-KnownFolderPath.md) | folder | Hämtar sökvägen till en känd Windows-mapp med hjälp av Windows Shell32 API. |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-MpCmdRunPath.md) | &nbsp; | Hämtar sökvägen till den körbara filen Windows Defender MpCmdRun.exe. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-OpenedFileHandleProcesses.md) | &nbsp; | Hämtar processer som har öppna filhandtag för specificerade filer. |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-PowershellMainWindow.md) | &nbsp; | Returnerar ett fönsterhjälpobjekt för PowerShell-terminalens huvudfönster. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-PowershellMainWindowProcess.md) | &nbsp; | Returnerar processobjektet för fönstret som är värd för PowerShell-terminalen. |
| [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Window.md) | &nbsp; | Hämtar fönsterinformation för angivna processer eller fönsterhandtag. |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WindowPosition.md) | gwp | Hämtar position och tillståndsinformation för fönster. |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Initialize-ScheduledTaskScripts.md) | &nbsp; | Skapar schemalagda uppgifter som kör PowerShell-skript med angivna intervall. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-WindowsUpdate.md) | updatewindows | Kontrollerar om Windows är uppdaterat och installerar eventuellt tillgängliga uppdateringar. |
| [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Pop-Window.md) | popw | Tar bort den senaste aktiva fönsterhjälpen från stacken med valfria ändringar. |
| [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Push-Window.md) | pushw | Skickar det aktuella fönstret till fönsterstacken med valfria ändringar. |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Save-DesktopScreenShot.md) | &nbsp; | Tar en skärmdump på den angivna bildskärmen och sparar den till den angivna sökvägen. |
| [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Send-Key.md) | sendkeys, invokekeys | Skickar simulerade tangenttryckningar till ett fönster eller en process. |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Send-WakeOnLan.md) | &nbsp; | Skickar ett Wake-on-LAN-magiskt paket för att väcka fjärrdatorer i nätverket. |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-ClipboardFiles.md) | setclipfiles, scbf | Sätter filer till Windows urklipp för filoperationer som kopiera/klistra in. |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-ForegroundWindow.md) | &nbsp; | Flyttar det angivna fönstret till förgrunden och gör det till det aktiva fönstret. |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-KnownFolderPath.md) | &nbsp; | Ändrar den fysiska sökvägen för en Windows-känd mapp. |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-MonitorPowerOff.md) | poweroff | Stänger av strömmen till alla anslutna bildskärmar. |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | Aktiverar bildskärmens ström. |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-TaskbarAlignment.md) | &nbsp; | Konfigurerar justering av aktivitetsfältet i Windows 11+ mellan centrerad och vänster position. |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-WindowPosition.md) | wp | Placerar och ändrar storlek på fönster när explicita positionsparametrar anges. |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-WindowPositionForSecondary.md) | wps | @{response=Placerar ett fönster på den sekundära skärmen med angivna layoutalternativ.} |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-WindowsWallpaper.md) | &nbsp; | Ställ in en slumpmässig bakgrundsbild från en angiven katalog. |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-ProcessWithPriority.md) | nice | Startar en process med en angiven prioritetsnivå. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | Söker igenom filer eller kataloger efter skadlig kod med Windows Defender. |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-WireGuardPeer.md) | &nbsp; | Lägger till en ny WireGuard VPN-peerkonfiguration (klient) till servern. |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/EnsureWireGuard.md) | &nbsp; | Säkerställer att WireGuard VPN-tjänsten är installerad och körs via Docker-container. |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WireGuardPeerQRCode.md) | &nbsp; | Genererar en QR-kod för en WireGuard VPN-peerkonfiguration. |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WireGuardPeers.md) | &nbsp; | Hämtar information om alla WireGuard VPN-peers som är konfigurerade på systemet. |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WireGuardStatus.md) | &nbsp; | Hämtar detaljerad statusinformation om WireGuard VPN-servern. |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-WireGuardPeer.md) | &nbsp; | Tar bort en WireGuard VPN-peer-konfiguration. |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Reset-WireGuardConfiguration.md) | &nbsp; | Återställer WireGuard VPN-serverkonfigurationen och tar bort alla peer-enheter. |
