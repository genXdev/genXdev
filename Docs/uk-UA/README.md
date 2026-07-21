# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-21.

## GenXdev

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXDevCmdlet.md) | gcmds | Отримує та виводить список усіх командлетів GenXdev та їх деталі. |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-GenXdevCmdlet.md) | cmds | Відображає модулі PowerShell GenXdev з їхніми командлетами та псевдонімами. |

---

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AILLMSettings.md) | &nbsp; | Отримує налаштування LLM для операцій ШІ в GenXdev.AI. |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SpeechToText.md) | &nbsp; | Перетворює аудіофайли в текст за допомогою моделі розпізнавання мовлення Whisper від OpenAI. |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-TextTranslation.md) | translate | Перекладає текст іншою мовою за допомогою ШІ. |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-VectorSimilarity.md) | &nbsp; | Обчислює косинусну подібність між двома векторами. |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-WinMerge.md) | &nbsp; | Запускає WinMerge для порівняння двох файлів поруч. |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Merge-TranslationCache.md) | &nbsp; | Керує постійним кешем перекладу з пакетним записом на диск для кожної мови. |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-LLMAudioChat.md) | llmaudiochat | Створює інтерактивний сеанс аудіочату з моделлю LLM. |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-LLMTextChat.md) | llmchat | Запускає інтерактивний сеанс текстового чату з можливостями ШІ. |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Receive-RealTimeSpeechToText.md) | &nbsp; | Перетворює аудіовхід у реальному часі на текст за допомогою моделі Whisper AI. |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AILLMSettings.md) | &nbsp; | Встановлює параметри LLM для операцій ШІ в GenXdev.AI. |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | Налаштовує обробку невідомих команд із можливістю використання штучного інтелекту. |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-DeepLinkImageFile.md) | &nbsp; | Перевіряє, чи вказаний шлях до файлу є дійсним файлом зображення з підтримуваним форматом. |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Compare-ImageFaces.md) | comparefaces | Порівнює обличчя на двох різних зображеннях та повертає їхню схожість, використовуючи DeepStack. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImageDetectedFaces.md) | &nbsp; | Розпізнає обличчя на завантаженому зображенні шляхом порівняння з відомими обличчями за допомогою DeepStack. |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImageDetectedObjects.md) | &nbsp; | Виявляє та класифікує об’єкти на завантаженому зображенні за допомогою DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImageDetectedScenes.md) | &nbsp; | Класифікує зображення в одну з 365 категорій сцен за допомогою DeepStack. |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-RegisteredFaces.md) | &nbsp; | Отримує список усіх зареєстрованих ідентифікаторів облич з DeepStack. |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageEnhancement.md) | enhanceimage | Покращує зображення, збільшуючи його в 4 рази з підвищенням якості за допомогою DeepStack. |
| [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Register-AllFaces.md) | UpdateFaces | Оновлює всі профілі розпізнавання облич з файлів зображень у каталозі faces. |
| [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Register-Face.md) | &nbsp; | Реєструє нове обличчя через API розпізнавання облич DeepStack. |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Unregister-AllFaces.md) | &nbsp; | Видаляє всі зареєстровані обличчя з системи розпізнавання облич DeepStack. |
| [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Unregister-Face.md) | &nbsp; | Видаляє зареєстроване обличчя за його ідентифікатором із DeepStack. |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-EmoticonsToText.md) | emojify | Покращує текст, додаючи контекстуально доречні емодзі за допомогою ШІ. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertFrom-CorporateSpeak.md) | uncorporatize | Перетворює ввічливу, професійну корпоративну мову на пряму, зрозумілу мову за допомогою ШІ. |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | Перетворює дипломатичну або тактовну мову на пряму, чітку та однозначну мову. |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-CorporateSpeak.md) | corporatize | Використовує штучний інтелект для перетворення прямого або різкого тексту на ввічливу, професійну корпоративну мову. |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-DiplomaticSpeak.md) | diplomatize | Transforms direct or blunt expressions into polite, tactful diplomatic language. |
| [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Find-Image.md) | findimages, li | Шукає файли зображень та метадані у вказаних каталогах з можливостями фільтрації та опціональним відображенням галереї через браузер. |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AIKnownFacesRootpath.md) | &nbsp; | Отримує налаштований каталог для файлів зображень облич, що використовуються в операціях GenXdev.AI. |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AIMetaLanguage.md) | getimgmetalang | Отримує налаштовану мову за замовчуванням для операцій з метаданими зображень. |
| [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Fallacy.md) | dispicetext | Аналізує текст для виявлення логічних помилок за допомогою виявлення на основі ШІ. |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | Захоплює повідомлення про помилки з різних потоків та використовує LLM для пропонування виправлень. |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SimularMovieTitles.md) | &nbsp; | Знаходить схожі назви фільмів на основі спільних властивостей. |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-AIPowershellCommand.md) | hint | Генерує та виконує команди PowerShell за допомогою штучного інтелекту. |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageFacesUpdate.md) | imagepeopledetection | Оновлює метадані розпізнавання облич для файлів зображень у вказаному каталозі. |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | Оновлює метадані зображень за допомогою описів та ключових слів, згенерованих штучним інтелектом. |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageMetadataUpdate.md) | imagepropdetection | Оновлює метадані EXIF для зображень у каталозі. |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | Оновлює метадані виявлення об'єктів для файлів зображень у вказаному каталозі. |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageScenesUpdate.md) | imagescenedetection | Оновлює метадані класифікації сцен для файлів зображень у вказаному каталозі. |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMBooleanEvaluation.md) | equalstrue | Оцінює твердження за допомогою ШІ, щоб визначити, чи воно істинне або хибне. |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMQuery.md) | qllm, llm | Надсилає запити до API завершення чату сумісного з OpenAI Large Language Chat та обробляє відповіді. |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMStringListEvaluation.md) | getlist, getstring | Витягує або генерує список відповідних рядків із вхідного тексту за допомогою аналізу ШІ. |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMTextTransformation.md) | spellcheck | Перетворює текст за допомогою обробки на основі штучного інтелекту. |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-QueryImageContent.md) | &nbsp; | Аналізує вміст зображення за допомогою можливостей AI зору |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-ImageMetaData.md) | removeimagedata | Видаляє файли метаданих зображень з каталогів зображень. |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-FoundImageFaces.md) | saveimagefaces | Зберігає обрізані зображення облич з результатів пошуку індексованих зображень. |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-Transcriptions.md) | &nbsp; | Генерує файли субтитрів для аудіо та відеофайлів за допомогою OpenAI Whisper. |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AIKnownFacesRootpath.md) | &nbsp; | Встановлює каталог для файлів зображень облич, які використовуються в операціях GenXdev.AI. |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AIMetaLanguage.md) | &nbsp; | Встановлює мову за замовчуванням та, за бажанням, каталоги зображень для операцій з метаданими зображень GenXdev.AI. |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-FoundImagesInBrowser.md) | showfoundimages | Відображає результати пошуку зображень у веб-галереї з мурованою розкладкою. |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-AudioTranscription.md) | transcribefile, transcribe | Транскрибує аудіофайл, відеофайл або записувальний пристрій у текст |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Update-AllImageMetaData.md) | updateallimages | Пакетно оновлює ключові слова зображень, обличчя, об'єкти та сцени в кількох системних каталогах. |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-FeatureLineToREADME.md) | feature | Додає рядок функції до файлу README з позначкою часу. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-IdeaLineToREADME.md) | idea | Додає елемент ідеї до файлу README.md. |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-IssueLineToREADME.md) | issue | Додає елемент проблеми до файлу README.md. |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-LineToREADME.md) | &nbsp; | Додає рядок до файлу README.md у вказаному розділі. |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-ReleaseNoteLineToREADME.md) | releasenote | Додає рядок ReleaseNote до файлу README з часовою міткою. |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-TodoLineToREADME.md) | todo | Додає елемент завдання до файлу README.md. |
| [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Features.md) | features | Відображає функції з файлу README.md. |
| [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Ideas.md) | ideas | Відображає ідеї з файлу README.md. |
| [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Issues.md) | issues | Відображає проблеми з файлу README.md. |
| [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Refactor.md) | refactors | Отримує визначення рефакторингу з налаштувань GenXdev на основі шаблонів імен. |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-RefactorReport.md) | refactorreport | Генерує детальний звіт операцій рефакторингу та їх статус. |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ReleaseNotes.md) | releasenotes | Відображає примітки до випуску з файлу README.md. |
| [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Todoos.md) | todoos | Відображає елементи списку справ з файлу README.md. |
| [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-Refactor.md) | newrefactor | Створює новий набір рефакторингу для завдань трансформації коду. |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-SourceFileInIde.md) | editcode | Відкриває вихідний файл у бажаному IDE (Visual Studio Code або Visual Studio). |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Publish-ReleaseNotesToManifest.md) | pubrelnotes | Публікує незавершені примітки до випуску з README.md у маніфест модуля. |
| [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-Refactor.md) | &nbsp; | Видаляє набори рефакторингу з системи налаштувань GenXdev. |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-NextRefactor.md) | nextrefactor | Продовжує або перезапускає сеанс рефакторингу коду. |
| [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Update-Refactor.md) | updaterefactor | Оновлює та керує наборами рефакторингу, включаючи вибір файлів та обробку. |
| [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/VSCode.md) | &nbsp; | Відкриває один або декілька файлів у Visual Studio Code. |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GitChangedFiles.md) | gitchanged | Отримати список змінених файлів у Git-репозиторії. |
| [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-GitCommit.md) | commit | Створює і надсилає новий git-коміт з усіма змінами. |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/PermanentlyDeleteGitFolders.md) | &nbsp; | Назавжди видаляє вказані папки з усіх гілок у репозиторії Git. |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Assert-GenXdevCmdlet.md) | improvecmdlet | Покращує документацію та реалізацію командлетів GenXdev за допомогою штучного інтелекту. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Assert-GenXdevCmdletTests.md) | improvecmdlettests | Затверджує та покращує модульні тести вказаного командлета GenXdev. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | Перевіряє використання залежностей між модулями GenXdev для забезпечення дотримання належної ієрархії модулів. |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Assert-GenXdevTest.md) | rungenxdevtests | Виконує модульні тести для модулів, підмодулів або командлетів GenXdev з інтелектуальним налагодженням та вирішенням помилок на основі ШІ. |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Assert-ModuleDefinition.md) | &nbsp; | Допомагає у рефакторингу файлів вихідного коду PowerShell за допомогою штучного інтелекту. |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/EnsureCopilotKeyboardShortCut.md) | &nbsp; | Налаштовує комбінації клавіш GitHub Copilot Chat у Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/EnsureDefaultGenXdevRefactors.md) | &nbsp; | Забезпечує наявність стандартних визначень рефакторингу GenXdev. |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CmdletMetaData.md) | &nbsp; | Отримує метадані для вказаного командлета GenXdev, за наявності перекладаючи текст довідки іншою мовою. |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXDevModule.md) | &nbsp; | Отримує всі модулі GenXDev із вказаного шляху. |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXDevModuleInfo.md) | &nbsp; | Отримує детальну інформацію про модулі PowerShell GenXdev. |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | Отримує модулі GenXDev у порядку залежностей. |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ModuleCmdletMetaData.md) | &nbsp; | Отримує метадані для всіх командлетів у модулі PowerShell. |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-GenXdevPSFormatter.md) | &nbsp; | Форматує файли сценаріїв PowerShell, використовуючи правила форматування PSScriptAnalyzer. |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | Запускає аналізатор сценаріїв PowerShell для аналізу сценаріїв PowerShell на відповідність і дотримання найкращих практик. |
| [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-ModuleMarkdownHelp.md) | &nbsp; | Генерує розширені файли довідки Markdown для будь-якого модуля PowerShell. |
| [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-ModuleXmlHelp.md) | &nbsp; | Генерує XML-файли довідки MAML для будь-якого модуля PowerShell. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Search-GenXdevCmdlet.md) | searchcmdlet | Шукає командлет GenXdev і за бажанням відкриває його в IDE для редагування. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | Відкриває вказаний командлет GenXdev у Visual Studio Code. |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-ArrayTemplate.md) | FormatArray | Форматує колекцію об'єктів за допомогою рядка шаблону з заповнювачами властивостей, створюючи єдиний відформатований рядок. |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-DoubleEmptyLines.md) | &nbsp; | Видаляє подвійні (послідовні) порожні рядки з рядка коду, за бажанням переформатовуючи вихідні дані. |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-IsSpeaking.md) | iss | Повертає true, якщо механізм перетворення тексту в мову говорить. |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-MicrosoftShellTab.md) | x | Створює нову вкладку Windows Terminal, яка запускає PowerShell. |
| [Now](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Now.md) | &nbsp; | Повертає поточну системну дату та час як об'єкт DateTime. |
| [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/SayDate.md) | &nbsp; | Вимовляє поточну дату за допомогою синтезу тексту в мовлення. |
| [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/SayTime.md) | &nbsp; | Оголошує поточний час за допомогою текстового мовлення. |
| [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/secondscreen.md) | &nbsp; | Встановлює конфігурацію другого монітора за замовчуванням. |
| [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/sidebyside.md) | &nbsp; | Встановлює стандартну конфігурацію поруч. |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-SnakeGame.md) | snake | Запускає просту гру «Змійка» в консолі. |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-TextToSpeech.md) | say | Перетворює текст на мовлення за допомогою нейронного движка TTS Microsoft Edge. |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Stop-TextToSpeech.md) | sst | Негайно зупиняє будь-яке триваюче виведення перетворення тексту в мовлення. |
| [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/UtcNow.md) | &nbsp; | Отримує поточну дату та час за UTC (Всесвітній координований час). |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-KeyValueStoreNames.md) | getstorenames | Отримує назви доступних сховищ ключ-значення. |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-KeyValueStorePath.md) | &nbsp; | Отримує шлях до файлу для сховища ключ-значення. |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-StoreKeys.md) | getkeys | Отримує всі назви ключів для заданого сховища ключ-значення. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ValueByKeyFromStore.md) | getvalue | Отримує значення зі сховища ключ-значення на основі JSON. |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Initialize-KeyValueStores.md) | &nbsp; | Ініціалізує структуру каталогів KeyValueStore для локального сховища та OneDrive. |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-KeyFromStore.md) | removekey | Видаляє ключ із сховища ключ-значення. |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-KeyValueStore.md) | &nbsp; | Видаляє сховище ключ-значення. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-ValueByKeyInStore.md) | setvalue | Керує парами ключ-значення у сховищі на основі файлів JSON. |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Sync-KeyValueStore.md) | &nbsp; | Синхронізує локальні файли JSON сховища ключ-значення та OneDrive. |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXdevPreference.md) | getPreference | Отримує значення параметра зі сховища параметрів GenXdev. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXdevPreferenceNames.md) | getPreferenceNames | Отримує всі назви налаштувань із сховища сеансу та баз даних. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | Отримує налаштований шлях до бази даних для файлів даних налаштувань, що використовуються в операціях GenXdev.Data. |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-GenXdevPreference.md) | removePreference | Видаляє значення параметра зі сховища параметрів GenXdev. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | Встановлює значення типової налаштування в сховищі налаштувань GenXdev. |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevPreference.md) | setPreference | Встановлює значення параметра в сховищі налаштувань GenXdev. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | Встановлює шлях до бази даних для налаштувань, що використовуються в операціях GenXdev.Data. |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLiteSchema.md) | &nbsp; | Отримує повну інформацію про схему з бази даних SQLite. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLiteTableColumnData.md) | &nbsp; | Отримує дані з певного стовпця в таблиці бази даних SQLite. |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLiteTableData.md) | &nbsp; | Отримує дані з таблиці бази даних SQLite з можливістю обмеження кількості записів. |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLiteTables.md) | &nbsp; | Отримує список назв таблиць з бази даних SQLite. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLiteTableSchema.md) | &nbsp; | Отримує інформацію про схему для вказаної таблиці SQLite. |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLiteTransaction.md) | getsqltx, newsqltx | Створює та повертає об'єкт транзакції SQLite для пакетних операцій. |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLiteViewColumnData.md) | &nbsp; | Отримує дані стовпців з подання SQLite з можливим обмеженням записів. |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLiteViewData.md) | &nbsp; | Отримує дані з представлення бази даних SQLite з можливістю обмеження записів. |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLiteViews.md) | &nbsp; | Отримує список представлень з бази даних SQLite. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLiteViewSchema.md) | &nbsp; | Отримує визначення схеми SQL для подання SQLite. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-SQLiteQuery.md) | &nbsp; | Виконує один або кілька SQL-запитів до бази даних SQLite з підтримкою транзакцій. |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-SQLiteStudio.md) | &nbsp; | Виконує запити до бази даних SQLite з підтримкою параметрів і транзакцій. |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-SQLiteDatabase.md) | nsqldb | Створює новий файл бази даних SQLite. |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLServerSchema.md) | &nbsp; | Отримує повну інформацію про схему з бази даних SQL Server. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLServerTableColumnData.md) | &nbsp; | Отримує дані з конкретного стовпця таблиці бази даних SQL. |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLServerTableData.md) | &nbsp; | Отримує дані з таблиці бази даних SQL з можливістю обмеження записів. |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLServerTables.md) | &nbsp; | Отримує список назв таблиць з бази даних SQL Server. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLServerTableSchema.md) | &nbsp; | Отримує інформацію про схему для вказаної таблиці SQL Server. |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLServerTransaction.md) | getsqltx, newsqltx | Створює та повертає об'єкт транзакції SQL Server для пакетних операцій. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLServerViewColumnData.md) | &nbsp; | Отримує дані стовпців із подання SQL з можливістю обмеження записів. |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLServerViewData.md) | &nbsp; | Отримує дані з представлення бази даних SQL з можливістю обмеження записів. |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLServerViews.md) | &nbsp; | Отримує список представлень із бази даних SQL Server. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SQLServerViewSchema.md) | &nbsp; | Отримує визначення схеми SQL для подання SQL Server. |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-SQLServerQuery.md) | &nbsp; | Виконує один або кілька SQL-запитів до бази даних SQL Server з підтримкою транзакцій. |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | Виконує запити до бази даних SQL Server з підтримкою параметрів і транзакцій. |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-SQLServerDatabase.md) | nsqldb | Створює нову базу даних SQL Server. |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Copy-FilesToDateFolder.md) | &nbsp; | Копіює файли, що відповідають критеріям пошуку, у підпапки з назвами на основі дати. |
| [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Expand-Path.md) | ep | Розгортає будь-яке посилання на файл до повного шляху до файлу. |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Find-DuplicateFiles.md) | fdf | Знаходить дублікати файлів у кількох каталогах на основі настроюваних критеріїв. |
| [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Find-Item.md) | l | Шукає файли та каталоги з розширеними параметрами фільтрації. |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-Fasti.md) | fasti | Витягує архівні файли в поточному каталозі до власних папок і видаляє їх після цього. |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Move-FilesToDateFolder.md) | &nbsp; | Переміщує файли, що відповідають критеріям пошуку, до підпапок на основі дат. |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Move-ItemWithTracking.md) | &nbsp; | Переміщує файли та каталоги, зберігаючи посилання файлової системи та посилання. |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Move-ToRecycleBin.md) | &nbsp; | Переміщує файли та каталоги до кошика Windows безпечно. |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ReadJsonWithRetry.md) | &nbsp; | Читає файл JSON з логікою повторних спроб і автоматичним очищенням блокувань. |
| [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-AllItems.md) | sdel | Рекурсивно видаляє весь вміст з каталогу з розширеною обробкою помилок. |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-ItemWithFallback.md) | rmf | Видаляє файли або каталоги з кількома резервними механізмами для надійного видалення. |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-OnReboot.md) | &nbsp; | Позначає файли або папки для видалення під час наступного завантаження системи. |
| [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Rename-InProject.md) | rip | Виконує заміну тексту у всьому каталозі проекту. |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-FoundLocation.md) | lcd | Знаходить перший відповідний файл або теку та встановлює на нього розташування. |
| [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent.md) | .. | Змінює поточне розташування на батьківський каталог та виводить список його вмісту. |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent2.md) | ... | Переміщується на два рівні вгору в ієрархії файлової системи. |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent3.md) | .... | Переміщує вгору на три рівні каталогів в ієрархії файлової системи. |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent4.md) | ..... | Переміщується на чотири рівні каталогів вгору в ієрархії файлової системи. |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent5.md) | ...... | Переміщується на п'ять рівнів вгору в ієрархії файлової системи. |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-RoboCopy.md) | xc, rc | Забезпечує оболонку PowerShell для утиліти Robust Copy (RoboCopy) від Microsoft. |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Write-FileAtomic.md) | &nbsp; | Атомарно записує байти у файл, щоб запобігти пошкодженню. |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Write-JsonFileAtomic.md) | &nbsp; | Атомарно записує об'єкт у форматі JSON у файл, щоб запобігти пошкодженню. |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Write-TextFileAtomic.md) | &nbsp; | Записує текст у файл атомарно, щоб запобігти пошкодженню. |

---

## GenXdev.Hardware

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AudioDeviceNames.md) | &nbsp; | Отримує назви доступних аудіопристроїв для захоплення мікрофонного або звуку з робочого столу. |
| [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CpuCore.md) | &nbsp; | Обчислює та повертає загальну кількість логічних ядер процесора в системі. |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-HasCapableGpu.md) | &nbsp; | Визначає, чи присутній графічний процесор із підтримкою CUDA з достатнім обсягом пам’яті. |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MonitorCount.md) | &nbsp; | Отримує загальну кількість дисплейних моніторів, підключених до системи. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-NumberOfCpuCores.md) | &nbsp; | Обчислює та повертає загальну кількість логічних ядер процесора в системі. |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-CpuAvx.md) | &nbsp; | Перевіряє, чи підтримує процесор набори інструкцій AVX та AVX2. |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/alignScript.md) | &nbsp; | Повертає рядок (із зміненою відступністю) наданого рядка скриптового блоку |
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Approve-NewTextFileContent.md) | &nbsp; | Інтерактивне порівняння та затвердження вмісту файлів за допомогою WinMerge. |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Assert-RefactorFile.md) | &nbsp; | Виконує операцію рефакторингу вихідного файлу з використанням вказаного середовища IDE та шаблону запиту AI. |
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Confirm-InstallationConsent.md) | &nbsp; | Підтверджує згоду користувача на встановлення стороннього програмного забезпечення, використовуючи параметри для постійних виборів. |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Convert-DotNetTypeToLLMType.md) | &nbsp; | Перетворює назви типів .NET на назви типів LLM (мовної моделі). |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-HashTable.md) | &nbsp; | Перетворює об'єкт PSCustomObject на HashTable рекурсивно. |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | Перетворює функції PowerShell на визначення функцій API OpenAI LLM. |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Copy-IdenticalParamValues.md) | &nbsp; | Копіює значення параметрів зі зв'язаних параметрів у нову хеш-таблицю на основі можливих параметрів іншої функції. |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/EnsureGenXdev.md) | &nbsp; | Забезпечує належне завантаження всіх модулів GenXdev шляхом виклику всіх командлетів Ensure*. |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/EnsureNuGetAssembly.md) | &nbsp; | Завантажує та завантажує .NET збірки з пакетів NuGet на основі ключа або ідентифікатора пакета. |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/GenerateMasonryLayoutHtml.md) | &nbsp; | Генерує адаптивну HTML-галерею з використанням мозаїчного макета на основі даних зображень. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AIDefaultLLMSettings.md) | &nbsp; | Отримує всі доступні стандартні конфігурації налаштувань LLM для операцій ШІ в GenXdev.AI. |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-BCP47LanguageDictionary.md) | &nbsp; | Повертає словник усіх встановлених мовних тегів BCP 47 та їхніх відображуваних імен. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-DefaultWebLanguage.md) | &nbsp; | Отримує ключ мови веб-інтерфейсу за замовчуванням на основі поточних мовних налаштувань системи. |
| [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-JsonExampleFromSchema.md) | &nbsp; | Генерує рядок JSON, зрозумілий людині, на основі визначення схеми JSON. |
| [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-LLMJsonOutput.md) | &nbsp; | Витягує дійсний JSON з тексту відповіді LLM, використовуючи евристики максимально можливого зусилля. |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WebLanguageDictionary.md) | &nbsp; | Повертає обернений словник для всіх мов, підтримуваних Пошуком Google. |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Import-GenXdevModules.md) | reloadgenxdev | Імпортує всі модулі GenXdev PowerShell у глобальну область видимості. |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Initialize-SearchPaths.md) | &nbsp; | Ініціалізує та налаштовує системні шляхи пошуку для керування пакетами. |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-CommandFromToolCall.md) | &nbsp; | Виконує виклик функції інструмента з перевіркою та фільтрацією параметрів. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | Виконує блок сценарію для кожного модуля GenXdev у робочому просторі. |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-JSONComments.md) | &nbsp; | Видаляє коментарі з вмісту JSON. |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/resetdefaultmonitor.md) | &nbsp; | Відновлює стандартну конфігурацію додаткового монітора. |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ResolveInputObjectFileNames.md) | &nbsp; | Розширює вхідні об'єкти в імена файлів та каталогів, підтримуючи різні фільтри та параметри виведення. |
| [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-Verb.md) | showverbs | Показує короткий алфавітний список усіх дієслів PowerShell. |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-RefactorLLMSelection.md) | &nbsp; | Оцінює файли вихідного коду на придатність до рефакторингу за допомогою аналізу LLM. |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-UnattendedMode.md) | &nbsp; | Визначає, чи PowerShell працює в режимі без нагляду/автоматичному режимі. |
| [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/WriteFileOutput.md) | &nbsp; | Виводить інформацію про файли з гіперпосиланням на відображувані імена для покращеного досвіду користувача. |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Convert-PhysicsUnit.md) | &nbsp; | Перетворює значення з однієї фізичної одиниці в іншу в межах однієї категорії. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ApparentSizeAtArmLength.md) | &nbsp; | Обчислює видимий розмір об'єкта на відстані витягнутої руки. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AtEyeLengthSizeInMM.md) | &nbsp; | Обчислює видимий розмір в мм об'єкта на відстані витягнутої руки. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | Обчислює силу Архімеда. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | Обчислює доцентрове прискорення. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | Обчислює частоту з доплерівським зсувом. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | Обчислює силу опору. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | Обчислює другу космічну швидкість. |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-FreeFallDistance.md) | &nbsp; | Обчислює відстань падіння під час вільного падіння для заданої тривалості часу. |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-FreeFallHeight.md) | &nbsp; | Обчислює висоту падіння під час вільного падіння за заданий проміжок часу. |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-FreeFallTime.md) | &nbsp; | Обчислює час, необхідний для падіння об'єкта з заданої висоти під час вільного падіння. |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | Обчислює швидкість удару за висотою. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | Обчислює кінетичну енергію. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-LightTravelTimeByDistance.md) | &nbsp; | Обчислює час, необхідний світлу для подолання відстані. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | Обчислює збільшення для лінзи. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MomentumByMassAndVelocity.md) | &nbsp; | Обчислює лінійний імпульс. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | Обчислює орбітальну швидкість. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | Обчислює потенціальну енергію гравітації. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | Обчислює дальність польоту снаряда. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | Обчислює кут заломлення за законом Снелла. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | Обчислює резонансну частоту для закритої труби. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SoundTravelDistanceByTime.md) | &nbsp; | Обчислює відстань, яку проходить звук за заданий час. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | Розраховує кінцеву швидкість. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | Обчислює час польоту снаряда. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | Обчислює швидкість хвилі. |

---

## GenXdev.Media

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImageGeolocation.md) | &nbsp; | Видобуває дані геолокації з файлу зображення. |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImageMetadata.md) | &nbsp; | Видобуває комплексні метадані з файлу зображення. |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MediaFileCreationDate.md) | &nbsp; | Витягує дату створення для медіа та інших файлів з максимально можливою точністю. |
| [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-MediaFile.md) | vlcmedia, media, findmedia | Відкриває та відтворює медіафайли за допомогою медіаплеєра VLC з розширеними параметрами фільтрації та налаштування. |
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-VlcMediaPlayer.md) | vlc | Запускає та контролює медіапрогравач VLC із широкими можливостями налаштування. |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-VlcMediaPlayerLyrics.md) | vlclyrics | Відкриває веб-браузер для пошуку текстів пісні, яка зараз відтворюється у VLC медіаплеєрі. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | Встановлює фокус на вікно медіапрогравача VLC. |
| [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/StabilizeVideo.md) | &nbsp; | Стабілізує найновіший або вказаний .mp4 файл за допомогою FFmpeg + vid.stab (без чорних рамок). |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | Переводить VLC Media Player до наступного елемента в поточному списку відтворення. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | Переміщує до попереднього елемента в списку відтворення VLC Media Player. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | Перемикає стан вимкнення звуку медіаплеєра VLC. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | Перемикає стан паузи/відтворення медіаплеєра VLC. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | Перемикає режим повтору в медіаплеєрі VLC. |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-Uris.md) | &nbsp; | Розбирає рядки на наявність будь-якого дійсного URI. |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-AllPossibleQueries.md) | qq | Відкриває всі можливі типи запитів для заданих пошукових термінів або URL-адрес. |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-BingCopilotQuery.md) | aibc | Відкриває запит Bing CoPilot у веббраузері |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | Відкриває запит до ChatGPT у веб-браузері. |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-CloudLLMChat.md) | ask | Відкриває хмарний інтерфейс чату LLM для запитів ШІ. |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | Відкриває запит DeepSeek у веб-браузері |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GithubCopilotQuery.md) | aigc, askghcopilot | Відкриває запит GitHub CoPilot у веб-браузері |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GoogleGeminiQuery.md) | aigg, askgemini | Відкриває запит Google Gemini у веб-браузері |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-XGrokQuery.md) | aixg, askxgrok | Відкриває запит X Grok у веббраузері |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-NextAffirmation.md) | WhatAboutIt | Повертає випадковий текст підтвердження з API affirmations.dev. |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WikipediaSummary.md) | wikitxt | Отримує підсумок теми з Вікіпедії. |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Copy-PDFsFromGoogleQuery.md) | &nbsp; | Завантажує PDF-файли, знайдені через результати пошуку Google. |
| [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-BingQuery.md) | bq | Відкриває пошуковий запит Bing у веб-браузері. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-BuiltWithSiteInfo.md) | &nbsp; | Відкриває запити вебсайту BuiltWith у веббраузері. |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GithubQuery.md) | qgithub, qgh | Відкриває запит пошуку репозиторію Github у веб-браузері або виконує розширені пошуки через REST API GitHub, підтримуючи всі доступні кваліфікатори та категорії пошуку (репозиторії, код, завдання, користувачі, коміти, обговорення, теми, вікі). |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GoogleQuery.md) | &nbsp; | Відкриває запити Google у веб-браузері з настроюваними параметрами та широкими можливостями налаштування. |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GoogleSiteInfo.md) | &nbsp; | Відкриває запити інформації про сайти Google у веб-браузері. |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GrokipediaQuery.md) | wiki | Відкриває запит Grokipedia у веб-браузері. |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-IMDBQuery.md) | imdb | Відкриває пошуковий запит IMDB у веб-браузері. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-InstantStreetViewQuery.md) | isv | Відкриває запити InstantStreetView у веб-браузері. |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-MovieQuote.md) | moviequote | Відкриває відео цитати з фільму у веб-браузері. |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-SearchEngine.md) | q | Відкриває пошуковий запит у вказаній пошуковій системі за допомогою веб-браузера. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-SimularWebSiteInfo.md) | simularsite | Відкриває інформацію веб-сайту SimilarWeb для вказаних URL-адрес у веб-браузері. |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-StackOverflowQuery.md) | qso | Відкриває пошукові запити Stack Overflow у веб-браузері. |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WaybackMachineSiteInfo.md) | wayback | Відкриває інформацію про сайт WaybackMachine у веб-браузері. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WebsiteAndPerformQuery.md) | owaq | Відкриває веб-сторінку у веб-браузері та виконує один або кілька запитів. |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WhoisHostSiteInfo.md) | whois | Відкриває запит інформації про хост Whois у веб-браузері. |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WikipediaNLQuery.md) | wikinl | Відкриває пошук у нідерландській Вікіпедії у веб-браузері. |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WikipediaQuery.md) | wikipedia | Відкриває запит Вікіпедії у веб-браузері. |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WolframAlphaQuery.md) | qalpha | Відкриває запит Wolfram Alpha у веб-браузері. |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-YoutubeQuery.md) | youtube | Відкриває пошукові запити YouTube у веб-переглядачі. |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GameOfLife.md) | gameoflife, conway | Відкриває симуляцію гри в життя Конвея у веб-браузері. |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GenXdevAppCatalog.md) | appcatalog | Відкриває каталог прогресивних веб-додатків GenXdev у веб-браузері. |
| [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-Timeline.md) | timeline | Відкриває інтерактивну часову шкалу, яка показує поточний час, дату, століття та тисячоліття. |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-ViralSimulation.md) | viral | Відкриває гру-симулятор вірусу у веб-браузері з розширеними параметрами налаштування. |
| [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-Yab.md) | yab | Відкриває гру YAB у веб-браузері з настроюваними параметрами. |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-YabAIBattle.md) | yabbattle | Відкриває гру YabAI Battle у веб-браузері. |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Close-Webbrowser.md) | wbc | Вибірково закриває один або кілька екземплярів веб-браузера. |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Close-WebbrowserTab.md) | ct, CloseTab | Закриває поточну вибрану вкладку веб-браузера. |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Export-BrowserBookmarks.md) | &nbsp; | Експортує закладки браузера у файл JSON. |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Find-BrowserBookmark.md) | bookmarks | Знаходить закладки з одного або декількох веб-браузерів. |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-BrowserBookmark.md) | gbm | Повертає всі закладки з встановлених веб-браузерів. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-DefaultWebbrowser.md) | &nbsp; | Повертає налаштований веб-браузер за замовчуванням для поточного користувача. |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-PlaywrightSessionReference.md) | &nbsp; | Отримує посилання на поточний сеанс браузера Playwright. |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Webbrowser.md) | &nbsp; | Повертає колекцію встановлених сучасних веб-браузерів. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WebbrowserTabDomNodes.md) | wl | Запитує та маніпулює вузлами DOM в активній вкладці браузера за допомогою CSS-селекторів. |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Import-BrowserBookmarks.md) | &nbsp; | Імпортує закладки з файлу або колекції у веб-браузер. |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Import-GenXdevBookmarkletMenu.md) | &nbsp; | Імпортує JavaScript-букмарклети GenXdev до колекцій закладок браузера. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-WebbrowserEvaluation.md) | Eval, et | Виконує код JavaScript у вибраній вкладці веб-браузера. |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-BrowserBookmarks.md) | sites | Відкриває закладки браузера, які відповідають вказаним критеріям пошуку. |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-Webbrowser.md) | wb | Відкриває URL-адреси в одному або декількох вікнах браузера з додатковим позиціонуванням і стилізацією. |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WebbrowserSideBySide.md) | wbn | Запускає нове вікно веб-браузера з певним позиціонуванням. |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Select-WebbrowserTab.md) | st | Вибирає вкладку браузера з запущених браузерів, керованих Playwright. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-BrowserVideoFullscreen.md) | fsvideo | Максимізує перший відеоелемент, знайдений на поточній вкладці браузера. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-WebbrowserTabLocation.md) | lt, Nav | Переходить на вказану URL-адресу в поточній вкладці веб-браузера. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-WebsiteInAllBrowsers.md) | &nbsp; | Відкриває URL-адресу в кількох браузерах одночасно в мозаїчному макеті. |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | Підключається до існуючого екземпляру браузера через порт налагодження. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-PlaywrightProfileDirectory.md) | &nbsp; | Отримує шлях до каталогу профілю браузера Playwright для постійних сеансів. |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-PlayWrightBrowser.md) | spb | Запускає браузер під керуванням Playwright із постійним профілем користувача. |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Resume-WebbrowserTabVideo.md) | wbvideoplay | Відновлює відтворення відео у вкладці браузера YouTube. |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | Призупиняє відтворення відео у всіх активних сесіях браузера. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Unprotect-WebbrowserTab.md) | wbctrl | Бере під контроль вибрану вкладку веб-браузера для інтерактивного маніпулювання. |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/CurrentUserHasElevatedRights.md) | &nbsp; | Перевіряє, чи поточний користувач має підвищені права. |
| [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Enable-Screensaver.md) | &nbsp; | Запускає налаштовану заставку Windows. |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ActiveUser.md) | gusers | Отримує список унікальних імен користувачів з активних системних процесів. |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ChildProcesses.md) | &nbsp; | Отримує всі процеси, які є нащадками поточного процесу PowerShell. |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ClipboardFiles.md) | getclipfiles, gcbf | Отримує файли з буфера обміну Windows, які були встановлені для операцій з файлами, таких як копіювання/вставлення. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CurrentFocusedProcess.md) | &nbsp; | Отримує об'єкт процесу вікна, яке наразі має фокус введення з клавіатури. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-DesktopScalingFactor.md) | &nbsp; | Отримує коефіцієнт масштабування дисплея Windows (налаштування DPI) для вказаного монітора. |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ForegroundWindow.md) | &nbsp; | Отримує дескриптор активного вікна переднього плану. |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-KnownFolderPath.md) | folder | Отримує шлях до відомої папки Windows за допомогою API оболонки Windows Shell32. |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MpCmdRunPath.md) | &nbsp; | Отримує шлях до виконуваного файлу MpCmdRun.exe Захисника Windows. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-OpenedFileHandleProcesses.md) | &nbsp; | Отримує процеси, які мають відкриті дескриптори файлів для вказаних файлів. |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-PowershellMainWindow.md) | &nbsp; | Повертає допоміжний об'єкт вікна для головного вікна терміналу PowerShell. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-PowershellMainWindowProcess.md) | &nbsp; | Повертає об'єкт процесу для вікна, в якому розміщено термінал PowerShell. |
| [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Window.md) | &nbsp; | Отримує інформацію про вікна для вказаних процесів або дескрипторів вікон. |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WindowPosition.md) | gwp | Отримує інформацію про положення та стан вікон. |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Initialize-ScheduledTaskScripts.md) | &nbsp; | Створює заплановані завдання, які виконують сценарії PowerShell через задані інтервали. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-WindowsUpdate.md) | updatewindows | Перевіряє, чи Windows має всі оновлення, і за бажанням встановлює доступні оновлення. |
| [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Pop-Window.md) | popw | Витягує останній допоміжний активний віконний помічник зі стеку з необов'язковими модифікаціями. |
| [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Push-Window.md) | pushw | Розміщує поточне вікно в стек вікон з необов'язковими змінами. |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-DesktopScreenShot.md) | &nbsp; | Захоплює знімок екрана вказаного монітора та зберігає його за вказаним шляхом. |
| [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Send-Key.md) | sendkeys, invokekeys | Надсилає симульовані натискання клавіш у вікно або процес. |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Send-WakeOnLan.md) | &nbsp; | Надсилає магічний пакет Wake-on-LAN для пробудження віддалених комп'ютерів у мережі. |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-ClipboardFiles.md) | setclipfiles, scbf | Встановлює файли до буфера обміну Windows для операцій з файлами, таких як копіювання/вставлення. |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-ForegroundWindow.md) | &nbsp; | Переводить указане вікно на передній план і робить його активним вікном. |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-KnownFolderPath.md) | &nbsp; | Змінює фізичний шлях відомої папки Windows. |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-MonitorPowerOff.md) | poweroff | Вимикає живлення всіх підключених моніторів. |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | Увімкнути живлення монітора. |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-TaskbarAlignment.md) | &nbsp; | Налаштовує вирівнювання панелі завдань Windows 11+ між центральним та лівим положенням. |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-WindowPosition.md) | wp | Позиціонує та змінює розміри вікон, коли надано явні параметри позиціонування. |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-WindowPositionForSecondary.md) | wps | Розташовує вікно на вторинному моніторі з указаними параметрами макета. |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-WindowsWallpaper.md) | &nbsp; | Встановлює випадкове тло з вказаної папки. |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-ProcessWithPriority.md) | nice | Запускає процес із вказаним рівнем пріоритету. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | Сканує файли або каталоги на наявність шкідливого програмного забезпечення за допомогою Захисника Windows. |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-WireGuardPeer.md) | &nbsp; | Додає нову конфігурацію піра (клієнта) WireGuard VPN до сервера. |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/EnsureWireGuard.md) | &nbsp; | Забезпечує встановлення та запуск служби WireGuard VPN через контейнер Docker. |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WireGuardPeerQRCode.md) | &nbsp; | Генерує QR-код для конфігурації піра WireGuard VPN. |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WireGuardPeers.md) | &nbsp; | Отримує інформацію про всі налаштовані VPN-пари WireGuard у системі. |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WireGuardStatus.md) | &nbsp; | Отримує детальну інформацію про стан сервера WireGuard VPN. |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-WireGuardPeer.md) | &nbsp; | Видаляє конфігурацію WireGuard VPN-піра. |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Reset-WireGuardConfiguration.md) | &nbsp; | Скидає конфігурацію сервера WireGuard VPN, видаляючи всіх пірів. |
