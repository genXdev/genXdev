# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-21.

## GenXdev

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GenXDevCmdlet.md) | gcmds | Извлекает и выводит список всех командлетов GenXdev и их сведения. |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Show-GenXdevCmdlet.md) | cmds | Отображает модули GenXdev PowerShell с их командлетами и псевдонимами. |

---

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AILLMSettings.md) | &nbsp; | Получает параметры LLM для операций ИИ в GenXdev.AI. |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SpeechToText.md) | &nbsp; | Преобразует аудиофайлы в текст с использованием модели распознавания речи Whisper от OpenAI. |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-TextTranslation.md) | translate | Переводит текст на другой язык с помощью ИИ. |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-VectorSimilarity.md) | &nbsp; | Вычисляет косинусное сходство между двумя векторами. |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-WinMerge.md) | &nbsp; | Запускает WinMerge для сравнения двух файлов бок о бок. |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Merge-TranslationCache.md) | &nbsp; | Управляет постоянным кешем переводов с пакетной записью на диск для каждого языка. |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-LLMAudioChat.md) | llmaudiochat | Создает интерактивный сеанс аудиочата с моделью LLM. |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-LLMTextChat.md) | llmchat | Запускает интерактивный сеанс текстового чата с возможностями ИИ. |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Receive-RealTimeSpeechToText.md) | &nbsp; | Преобразует аудиовход в реальном времени в текст с помощью модели ИИ Whisper. |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-AILLMSettings.md) | &nbsp; | Устанавливает настройки LLM для операций ИИ в GenXdev.AI. |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | Настраивает обработку пользовательских команд, не найденных системой, с возможностью использования ИИ-помощи. |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-DeepLinkImageFile.md) | &nbsp; | Проверяет, является ли указанный путь к файлу допустимым файлом изображения с поддерживаемым форматом. |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Compare-ImageFaces.md) | comparefaces | Сравнивает лица на двух разных изображениях и возвращает их сходство, используя DeepStack. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ImageDetectedFaces.md) | &nbsp; | Распознает лица на загруженном изображении, сравнивая их с известными лицами с помощью DeepStack. |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ImageDetectedObjects.md) | &nbsp; | Обнаруживает и классифицирует объекты на загруженном изображении с помощью DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ImageDetectedScenes.md) | &nbsp; | Классифицирует изображение в одну из 365 категорий сцен с помощью DeepStack. |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-RegisteredFaces.md) | &nbsp; | Возвращает список всех зарегистрированных идентификаторов лиц из DeepStack. |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageEnhancement.md) | enhanceimage | Улучшает изображение, увеличивая его в 4 раза с повышением качества с помощью DeepStack. |
| [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Register-AllFaces.md) | UpdateFaces | Обновляет все профили распознавания лиц из файлов изображений в каталоге faces. |
| [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Register-Face.md) | &nbsp; | Регистрирует новое лицо с помощью API распознавания лиц DeepStack. |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Unregister-AllFaces.md) | &nbsp; | Удаляет все зарегистрированные лица из системы распознавания лиц DeepStack. |
| [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Unregister-Face.md) | &nbsp; | Удаляет зарегистрированное лицо по его идентификатору из DeepStack. |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Add-EmoticonsToText.md) | emojify | Улучшает текст, добавляя контекстуально подходящие смайлики с помощью ИИ. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertFrom-CorporateSpeak.md) | uncorporatize | Преобразует вежливый, профессиональный корпоративный язык в прямой и понятный с помощью ИИ. |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | Преобразует дипломатичный или тактичный язык в прямой, ясный и откровенный язык. |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-CorporateSpeak.md) | corporatize | Преобразует прямой или резкий текст в вежливый, профессиональный корпоративный стиль с помощью ИИ. |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-DiplomaticSpeak.md) | diplomatize | Преобразует прямые или резкие тексты в вежливый, тактичный дипломатический язык. |
| [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Find-Image.md) | findimages, li | Выполняет поиск файлов изображений и метаданных в указанных каталогах с возможностями фильтрации и необязательным отображением галереи на основе браузера. |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AIKnownFacesRootpath.md) | &nbsp; | Получает настроенную директорию для файлов изображений лиц, используемых в операциях GenXdev.AI. |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AIMetaLanguage.md) | getimgmetalang | Получает настроенный язык по умолчанию для операций с метаданными изображений. |
| [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-Fallacy.md) | dispicetext | Анализирует текст для выявления логических ошибок с помощью обнаружения на основе ИИ. |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | Захватывает сообщения об ошибках из различных потоков и использует LLM для предложения исправлений. |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SimularMovieTitles.md) | &nbsp; | Находит похожие названия фильмов на основе общих свойств. |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-AIPowershellCommand.md) | hint | Генерирует и выполняет команды PowerShell с помощью ИИ-ассистента. |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageFacesUpdate.md) | imagepeopledetection | Обновляет метаданные распознавания лиц для файлов изображений в указанном каталоге. |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | Обновляет метаданные изображения с помощью описаний и ключевых слов, сгенерированных ИИ. |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageMetadataUpdate.md) | imagepropdetection | Обновляет метаданные EXIF для изображений в каталоге. |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | Обновляет метаданные обнаружения объектов для файлов изображений в указанной директории. |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageScenesUpdate.md) | imagescenedetection | Обновляет метаданные классификации сцен для файлов изображений в указанном каталоге. |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMBooleanEvaluation.md) | equalstrue | Оценивает утверждение с помощью ИИ, чтобы определить, истинно оно или ложно. |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMQuery.md) | qllm, llm | Отправляет запросы к совместимому с OpenAI API для завершения чатов с большой языковой моделью и обрабатывает ответы. |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMStringListEvaluation.md) | getlist, getstring | Извлекает или генерирует список релевантных строк из входного текста с помощью анализа ИИ. |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMTextTransformation.md) | spellcheck | Преобразует текст с помощью обработки на основе ИИ. |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-QueryImageContent.md) | &nbsp; | Анализирует содержимое изображения с помощью возможностей ИИ-зрения |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-ImageMetaData.md) | removeimagedata | Удаляет файлы метаданных из каталогов изображений. |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Save-FoundImageFaces.md) | saveimagefaces | Сохраняет обрезанные изображения лиц из результатов индексированного поиска изображений. |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Save-Transcriptions.md) | &nbsp; | Генерирует файлы субтитров для аудио и видеофайлов с помощью OpenAI Whisper. |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-AIKnownFacesRootpath.md) | &nbsp; | Задает каталог для файлов изображений лиц, используемых в операциях GenXdev.AI. |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-AIMetaLanguage.md) | &nbsp; | Устанавливает язык по умолчанию и, при необходимости, каталоги изображений для операций с метаданными изображений GenXdev.AI. |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Show-FoundImagesInBrowser.md) | showfoundimages | Отображает результаты поиска изображений в веб-галерее в стиле каменной кладки (masonry layout). |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-AudioTranscription.md) | transcribefile, transcribe | Преобразует аудиофайл, видеофайл или запись с устройства в текст |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Update-AllImageMetaData.md) | updateallimages | Пакетное обновление ключевых слов изображений, лиц, объектов и сцен в нескольких системных каталогах. |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Add-FeatureLineToREADME.md) | feature | Добавляет строку функции в файл README с временной меткой. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Add-IdeaLineToREADME.md) | idea | Добавляет элемент идеи в файл README.md. |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Add-IssueLineToREADME.md) | issue | Добавляет элемент проблемы в файл README.md. |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Add-LineToREADME.md) | &nbsp; | Добавляет строку в файл разметки README.md в указанный раздел. |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Add-ReleaseNoteLineToREADME.md) | releasenote | Добавляет строку ReleaseNote в файл README с отметкой времени. |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Add-TodoLineToREADME.md) | todo | Добавляет элемент задачи в файл README.md. |
| [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-Features.md) | features | Отображает функции из файла README.md. |
| [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-Ideas.md) | ideas | Отображает идеи из файла README.md. |
| [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-Issues.md) | issues | Отображает проблемы из файла README.md. |
| [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-Refactor.md) | refactors | Извлекает определения рефакторинга из предпочтений GenXdev на основе шаблонов имен. |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-RefactorReport.md) | refactorreport | Создает подробный отчет об операциях рефакторинга и их статусе. |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ReleaseNotes.md) | releasenotes | Отображает ReleaseNotes из файла README.md. |
| [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-Todoos.md) | todoos | Отображает элементы задач из файла README.md. |
| [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-Refactor.md) | newrefactor | Создает новый набор рефакторинга для задач преобразования кода. |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-SourceFileInIde.md) | editcode | Открывает исходный файл в предпочтительной IDE (Visual Studio Code или Visual Studio). |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Publish-ReleaseNotesToManifest.md) | pubrelnotes | Публикует незавершенные примечания к выпуску из README.md в манифест модуля. |
| [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-Refactor.md) | &nbsp; | Удаляет наборы рефакторинга из системы предпочтений GenXdev. |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-NextRefactor.md) | nextrefactor | Продолжает или перезапускает сеанс рефакторинга кода. |
| [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Update-Refactor.md) | updaterefactor | Обновляет наборы рефакторинга и управляет ими, включая выбор файлов и обработку. |
| [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/VSCode.md) | &nbsp; | Открывает один или несколько файлов в Visual Studio Code. |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GitChangedFiles.md) | gitchanged | Получить список измененных файлов в репозитории Git. |
| [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-GitCommit.md) | commit | Создает и отправляет новый коммит git со всеми изменениями. |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/PermanentlyDeleteGitFolders.md) | &nbsp; | Навсегда удаляет указанные папки из всех веток в репозитории Git. |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Assert-GenXdevCmdlet.md) | improvecmdlet | Улучшает документацию и реализацию командлетов GenXdev с помощью ИИ-ассистента. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Assert-GenXdevCmdletTests.md) | improvecmdlettests | Проверяет и улучшает модульные тесты указанного командлета GenXdev. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | Проверяет использование зависимостей между модулями GenXdev для обеспечения правильной иерархии модулей. |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Assert-GenXdevTest.md) | rungenxdevtests | Запускает модульные тесты для модулей, подмодулей или командлетов GenXdev с интеллектуальной отладкой и разрешением ошибок с помощью ИИ. |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Assert-ModuleDefinition.md) | &nbsp; | Помогает рефакторить файлы исходного кода PowerShell с использованием AI-помощи. |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/EnsureCopilotKeyboardShortCut.md) | &nbsp; | Настраивает сочетания клавиш GitHub Copilot Chat в Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/EnsureDefaultGenXdevRefactors.md) | &nbsp; | Обеспечивает доступность стандартных определений рефакторинга GenXdev. |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-CmdletMetaData.md) | &nbsp; | Извлекает метаданные для указанного командлета GenXdev, при необходимости переводя текст справки на другой язык. |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GenXDevModule.md) | &nbsp; | Извлекает все модули GenXDev из указанного пути. |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GenXDevModuleInfo.md) | &nbsp; | Получает подробную информацию о модулях PowerShell GenXdev. |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | Извлекает модули GenXDev в порядке зависимостей. |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ModuleCmdletMetaData.md) | &nbsp; | Извлекает метаданные для всех командлетов в модуле PowerShell. |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-GenXdevPSFormatter.md) | &nbsp; | Форматирует файлы сценариев PowerShell, используя правила форматирования PSScriptAnalyzer. |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | Вызывает анализатор сценариев PowerShell для анализа сценариев PowerShell на соответствие и соблюдение лучших практик. |
| [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-ModuleMarkdownHelp.md) | &nbsp; | Создает расширенные файлы справки в формате Markdown для любого модуля PowerShell. |
| [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-ModuleXmlHelp.md) | &nbsp; | Генерирует файлы справки MAML XML для любого модуля PowerShell. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Search-GenXdevCmdlet.md) | searchcmdlet | Выполняет поиск командлета GenXdev и при необходимости открывает его в IDE для редактирования. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | Открывает указанный командлет GenXdev в Visual Studio Code. |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Add-ArrayTemplate.md) | FormatArray | Форматирует коллекцию объектов с помощью строки шаблона с заполнителями свойств, создавая единую отформатированную строку. |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-DoubleEmptyLines.md) | &nbsp; | Удаляет двойные (последовательные) пустые строки из строки кода, при необходимости переформатируя вывод. |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-IsSpeaking.md) | iss | Возвращает true, если модуль синтеза речи воспроизводит речь. |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-MicrosoftShellTab.md) | x | Создает новую вкладку Windows Terminal с запуском PowerShell. |
| [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Now.md) | &nbsp; | Возвращает текущие системные дату и время в виде объекта DateTime. |
| [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/SayDate.md) | &nbsp; | Произносит текущую дату с помощью синтеза речи. |
| [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/SayTime.md) | &nbsp; | Объявляет текущее время с помощью преобразования текста в речь. |
| [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/secondscreen.md) | &nbsp; | Устанавливает конфигурацию второго монитора по умолчанию. |
| [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/sidebyside.md) | &nbsp; | Устанавливает конфигурацию "рядом" по умолчанию. |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-SnakeGame.md) | snake | Запускает простую игру «Змейка» в консоли. |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-TextToSpeech.md) | say | Преобразует текст в речь с помощью нейронного движка TTS Microsoft Edge. |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Stop-TextToSpeech.md) | sst | Немедленно останавливает любой выполняющийся вывод текста в речь. |
| [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/UtcNow.md) | &nbsp; | Получает текущую дату и время в формате UTC (Всемирное координированное время). |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-KeyValueStoreNames.md) | getstorenames | Извлекает имена доступных хранилищ ключей и значений. |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-KeyValueStorePath.md) | &nbsp; | Возвращает путь к файлу для хранилища ключей и значений. |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-StoreKeys.md) | getkeys | Извлекает все имена ключей для заданного хранилища ключей и значений. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ValueByKeyFromStore.md) | getvalue | Извлекает значение из хранилища ключ-значение на основе JSON. |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Initialize-KeyValueStores.md) | &nbsp; | Инициализирует структуру каталогов KeyValueStore для локального хранилища и OneDrive. |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-KeyFromStore.md) | removekey | Удаляет ключ из хранилища ключ-значение. |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-KeyValueStore.md) | &nbsp; | Удаляет хранилище ключей и значений. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-ValueByKeyInStore.md) | setvalue | Управляет парами ключ-значение в хранилище на основе JSON-файлов. |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Sync-KeyValueStore.md) | &nbsp; | Синхронизирует локальные JSON-файлы хранилища ключ-значение с OneDrive. |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GenXdevPreference.md) | getPreference | Извлекает значение настройки из хранилища предпочтений GenXdev. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GenXdevPreferenceNames.md) | getPreferenceNames | Получает все имена настроек из хранилища сеанса и базы данных. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | Получает настроенный путь к базе данных для файлов данных предпочтений, используемых в операциях GenXdev.Data. |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-GenXdevPreference.md) | removePreference | Удаляет значение предпочтения из хранилища предпочтений GenXdev. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | Устанавливает значение предпочтения по умолчанию в хранилище настроек GenXdev. |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-GenXdevPreference.md) | setPreference | Устанавливает значение предпочтения в хранилище предпочтений GenXdev. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | Устанавливает путь к базе данных для настроек, используемых в операциях GenXdev.Data. |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLiteSchema.md) | &nbsp; | Извлекает полную информацию о схеме из базы данных SQLite. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLiteTableColumnData.md) | &nbsp; | Получает данные из указанного столбца в таблице базы данных SQLite. |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLiteTableData.md) | &nbsp; | Извлекает данные из таблицы базы данных SQLite с возможностью ограничения количества записей. |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLiteTables.md) | &nbsp; | Получает список имен таблиц из базы данных SQLite. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLiteTableSchema.md) | &nbsp; | Извлекает сведения о схеме указанной таблицы SQLite. |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLiteTransaction.md) | getsqltx, newsqltx | Создает и возвращает объект транзакции SQLite для пакетных операций. |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLiteViewColumnData.md) | &nbsp; | Извлекает данные столбцов из представления SQLite с возможностью ограничения количества записей. |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLiteViewData.md) | &nbsp; | Извлекает данные из представления базы данных SQLite с возможностью ограничения количества записей. |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLiteViews.md) | &nbsp; | Извлекает список представлений из базы данных SQLite. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLiteViewSchema.md) | &nbsp; | Извлекает определение схемы SQL для представления SQLite. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-SQLiteQuery.md) | &nbsp; | Выполняет один или несколько SQL-запросов к базе данных SQLite с поддержкой транзакций. |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-SQLiteStudio.md) | &nbsp; | Выполняет запросы к базе данных SQLite с поддержкой параметров и транзакций. |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-SQLiteDatabase.md) | nsqldb | Создает новый файл базы данных SQLite. |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLServerSchema.md) | &nbsp; | Извлекает полную информацию о схеме из базы данных SQL Server. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLServerTableColumnData.md) | &nbsp; | Извлекает данные из указанного столбца таблицы базы данных SQL. |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLServerTableData.md) | &nbsp; | Извлекает данные из таблицы базы данных SQL с возможностью ограничения записей. |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLServerTables.md) | &nbsp; | Получает список имен таблиц из базы данных SQL Server. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLServerTableSchema.md) | &nbsp; | Извлекает информацию о схеме для указанной таблицы SQL Server. |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLServerTransaction.md) | getsqltx, newsqltx | Создает и возвращает объект транзакции SQL Server для пакетных операций. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLServerViewColumnData.md) | &nbsp; | Извлекает данные столбцов из представления SQL с возможностью ограничения записей. |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLServerViewData.md) | &nbsp; | Извлекает данные из представления базы данных SQL с возможностью ограничения количества записей. |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLServerViews.md) | &nbsp; | Извлекает список представлений из базы данных SQL Server. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SQLServerViewSchema.md) | &nbsp; | Извлекает определение схемы SQL для представления SQL Server. |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-SQLServerQuery.md) | &nbsp; | Выполняет один или несколько SQL-запросов к базе данных SQL Server с поддержкой транзакций. |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | Выполняет запросы к базе данных SQL Server с поддержкой параметров и транзакций. |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-SQLServerDatabase.md) | nsqldb | Создает новую базу данных SQL Server. |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Copy-FilesToDateFolder.md) | &nbsp; | Копирует файлы, соответствующие критериям поиска, в подпапки на основе дат. |
| [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Expand-Path.md) | ep | Разворачивает любое переданную ссылку на файл в полное имя пути. |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Find-DuplicateFiles.md) | fdf | Поиск дубликатов файлов в нескольких каталогах на основе настраиваемых критериев. |
| [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Find-Item.md) | l | Поиск файлов и каталогов с расширенными параметрами фильтрации. |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-Fasti.md) | fasti | Извлекает архивные файлы в текущем каталоге в отдельные папки и удаляет их после этого. |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Move-FilesToDateFolder.md) | &nbsp; | Перемещает файлы, соответствующие критериям поиска, в подпапки на основе даты. |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Move-ItemWithTracking.md) | &nbsp; | Перемещает файлы и каталоги, сохраняя ссылки файловой системы и ссылки. |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Move-ToRecycleBin.md) | &nbsp; | Безопасно перемещает файлы и каталоги в корзину Windows. |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ReadJsonWithRetry.md) | &nbsp; | Читает файл JSON с логикой повторных попыток и автоматической очисткой блокировок. |
| [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-AllItems.md) | sdel | Рекурсивно удаляет все содержимое из каталога с расширенной обработкой ошибок. |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-ItemWithFallback.md) | rmf | Удаляет файлы или каталоги с несколькими механизмами отката для надежного удаления. |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-OnReboot.md) | &nbsp; | Помечает файлы или каталоги для удаления во время следующей загрузки системы. |
| [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Rename-InProject.md) | rip | Выполняет замену текста во всем каталоге проекта. |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-FoundLocation.md) | lcd | Находит первый подходящий файл или папку и перемещает расположение к нему. |
| [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent.md) | .. | Перемещает текущую папку в родительский каталог и выводит его содержимое. |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent2.md) | ... | Перемещается на два уровня вверх по иерархии файловой системы. |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent3.md) | .... | Перемещается на три уровня вверх по иерархии файловой системы. |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent4.md) | ..... | Перемещается на четыре уровня вверх по иерархии файловой системы. |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent5.md) | ...... | Перемещается на пять уровней вверх по иерархии файловой системы. |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-RoboCopy.md) | xc, rc | Предоставляет оболочку PowerShell для утилиты Robust Copy (RoboCopy) корпорации Майкрософт. |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Write-FileAtomic.md) | &nbsp; | Атомарно записывает байты в файл для предотвращения повреждения. |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Write-JsonFileAtomic.md) | &nbsp; | Атомарно записывает объект в формате JSON в файл для предотвращения повреждений. |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Write-TextFileAtomic.md) | &nbsp; | Атомарно записывает текст в файл для предотвращения повреждения. |

---

## GenXdev.Hardware

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AudioDeviceNames.md) | &nbsp; | Получает имена доступных аудиоустройств для захвата микрофона или звука рабочего стола. |
| [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-CpuCore.md) | &nbsp; | Вычисляет и возвращает общее количество логических ядер ЦП в системе. |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-HasCapableGpu.md) | &nbsp; | Определяет, присутствует ли GPU с поддержкой CUDA и достаточным объемом памяти. |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-MonitorCount.md) | &nbsp; | Получает общее количество подключённых к системе дисплеев (мониторов). |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-NumberOfCpuCores.md) | &nbsp; | Вычисляет и возвращает общее количество логических ядер ЦП в системе. |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-CpuAvx.md) | &nbsp; | Проверяет, поддерживает ли CPU наборы инструкций AVX и AVX2. |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/alignScript.md) | &nbsp; | Возвращает строку (с измененным отступом) предоставленной строки скриптблока |
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Approve-NewTextFileContent.md) | &nbsp; | Интерактивное сравнение и утверждение содержимого файлов с помощью WinMerge. |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Assert-RefactorFile.md) | &nbsp; | Выполняет операцию рефакторинга над исходным файлом, используя указанную IDE и шаблон запроса AI. |
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Confirm-InstallationConsent.md) | &nbsp; | Подтверждает согласие пользователя на установку стороннего программного обеспечения, используя настройки для постоянного выбора. |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Convert-DotNetTypeToLLMType.md) | &nbsp; | Преобразует имена типов .NET в имена типов LLM (языковой модели). |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-HashTable.md) | &nbsp; | Преобразует PSCustomObject в HashTable рекурсивно. |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | Преобразует функции PowerShell в определения функций API LLM OpenAI. |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Copy-IdenticalParamValues.md) | &nbsp; | Копирует значения параметров из связанных параметров в новую хеш-таблицу на основе возможных параметров другой функции. |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/EnsureGenXdev.md) | &nbsp; | Обеспечивает правильную загрузку всех модулей GenXdev путем вызова всех командлетов Ensure*. |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/EnsureNuGetAssembly.md) | &nbsp; | Загружает и загружает сборки .NET из пакетов NuGet на основе ключа или идентификатора пакета. |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/GenerateMasonryLayoutHtml.md) | &nbsp; | Генерирует адаптивную галерею HTML в стиле masonry из данных изображений. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AIDefaultLLMSettings.md) | &nbsp; | Получает все доступные конфигурации настроек LLM по умолчанию для операций AI в GenXdev.AI. |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-BCP47LanguageDictionary.md) | &nbsp; | Возвращает словарь всех установленных языковых тегов BCP 47 и их отображаемых имен. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-DefaultWebLanguage.md) | &nbsp; | Возвращает ключ веб-языка по умолчанию на основе текущих языковых настроек системы. |
| [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-JsonExampleFromSchema.md) | &nbsp; | Генерирует удобочитаемую строку JSON из определения схемы JSON. |
| [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-LLMJsonOutput.md) | &nbsp; | Извлекает допустимый JSON из текста ответа LLM, используя эвристику наилучшего усилия. |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-WebLanguageDictionary.md) | &nbsp; | Возвращает обратный словарь для всех языков, поддерживаемых Google Поиском. |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Import-GenXdevModules.md) | reloadgenxdev | Импортирует все модули PowerShell GenXdev в глобальную область. |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Initialize-SearchPaths.md) | &nbsp; | Инициализирует и настраивает пути поиска системы для управления пакетами. |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-CommandFromToolCall.md) | &nbsp; | Выполняет вызов функции инструмента с проверкой и фильтрацией параметров. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | Выполняет блок скрипта для каждого модуля GenXdev в рабочей области. |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-JSONComments.md) | &nbsp; | Удаляет комментарии из содержимого JSON. |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/resetdefaultmonitor.md) | &nbsp; | Восстанавливает конфигурацию дополнительного монитора по умолчанию. |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ResolveInputObjectFileNames.md) | &nbsp; | Разворачивает входные объекты в имена файлов и каталогов, поддерживая различные фильтры и параметры вывода. |
| [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Show-Verb.md) | showverbs | Отображает краткий алфавитный список всех глаголов PowerShell. |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-RefactorLLMSelection.md) | &nbsp; | Оценивает файлы исходного кода на пригодность для рефакторинга с помощью анализа LLM. |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-UnattendedMode.md) | &nbsp; | Определяет, выполняется ли PowerShell в автоматическом/неинтерактивном режиме. |
| [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/WriteFileOutput.md) | &nbsp; | Выводит информацию о файлах с гиперссылками на отображаемые имена для улучшения пользовательского опыта. |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Convert-PhysicsUnit.md) | &nbsp; | Преобразует значение из одной физической единицы измерения в другую в рамках одной категории. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ApparentSizeAtArmLength.md) | &nbsp; | Вычисляет видимый размер объекта на расстоянии вытянутой руки. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AtEyeLengthSizeInMM.md) | &nbsp; | Рассчитывает видимый размер объекта на расстоянии вытянутой руки в мм. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | Вычисляет выталкивающую силу. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | Вычисляет центростремительное ускорение. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | Вычисляет доплеровски сдвинутую частоту. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | Вычисляет силу сопротивления. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | Вычисляет скорость убегания. |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-FreeFallDistance.md) | &nbsp; | Вычисляет расстояние падения при свободном падении за заданный промежуток времени. |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-FreeFallHeight.md) | &nbsp; | Вычисляет высоту падения при свободном падении за заданный промежуток времени. |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-FreeFallTime.md) | &nbsp; | Вычисляет время, необходимое объекту для падения с заданной высоты при свободном падении. |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | Вычисляет скорость удара по высоте. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | Вычисляет кинетическую энергию. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-LightTravelTimeByDistance.md) | &nbsp; | Вычисляет время, за которое свет проходит расстояние. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | Вычисляет увеличение для линзы. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-MomentumByMassAndVelocity.md) | &nbsp; | Вычисляет линейный импульс. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | Вычисляет орбитальную скорость. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | Вычисляет гравитационную потенциальную энергию. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | Вычисляет дальность полета снаряда. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | Вычисляет угол преломления с использованием закона Снелла. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | Вычисляет резонансную частоту для закрытой трубы. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SoundTravelDistanceByTime.md) | &nbsp; | Вычисляет расстояние, которое звук проходит за заданное время. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | Рассчитывает конечную скорость. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | Вычисляет время полета снаряда. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | Вычисляет скорость волны. |

---

## GenXdev.Media

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ImageGeolocation.md) | &nbsp; | Извлекает данные геолокации из файла изображения. |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ImageMetadata.md) | &nbsp; | Извлекает полные метаданные из файла изображения. |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-MediaFileCreationDate.md) | &nbsp; | Извлекает дату создания для медиа и других файлов, используя наилучший возможный подход. |
| [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-MediaFile.md) | vlcmedia, media, findmedia | Открывает и воспроизводит медиафайлы с помощью медиаплеера VLC с расширенными возможностями фильтрации и настройки. |
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-VlcMediaPlayer.md) | vlc | Запускает и управляет VLC Media Player с обширными возможностями настройки. |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-VlcMediaPlayerLyrics.md) | vlclyrics | Открывает веб-браузер для поиска текстов песен, воспроизводимых в данный момент в VLC. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | Устанавливает фокус на окно медиаплеера VLC. |
| [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/StabilizeVideo.md) | &nbsp; | Стабилизирует последний или указанный .mp4 файл с помощью FFmpeg + vid.stab (без черных границ). |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | Переводит VLC Media Player к следующему элементу в текущем списке воспроизведения. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | Переходит к предыдущему элементу в списке воспроизведения VLC Media Player. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | Переключает состояние отключения звука в медиаплеере VLC. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | Переключает состояние паузы/воспроизведения медиаплеера VLC. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | Переключает режим повтора в медиаплеере VLC. |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-Uris.md) | &nbsp; | Анализирует строки на наличие любого допустимого URI. |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-AllPossibleQueries.md) | qq | Открывает все возможные типы запросов для указанных поисковых терминов или URL-адресов. |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-BingCopilotQuery.md) | aibc | Открывает запрос Bing CoPilot в веб-браузере |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | Открывает запрос ChatGPT в веб-браузере. |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-CloudLLMChat.md) | ask | Открывает облачный интерфейс чата LLM для запросов ИИ. |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | Открывает запрос DeepSeek в веб-браузере |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-GithubCopilotQuery.md) | aigc, askghcopilot | Открывает запрос Github CoPilot в веб-браузере |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-GoogleGeminiQuery.md) | aigg, askgemini | Открывает запрос Google Gemini в веб-браузере |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-XGrokQuery.md) | aixg, askxgrok | Открывает запрос X Grok в веб-браузере |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-NextAffirmation.md) | WhatAboutIt | Возвращает случайный текст аффирмации из API affirmations.dev. |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-WikipediaSummary.md) | wikitxt | Извлекает краткое описание темы из Википедии. |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Copy-PDFsFromGoogleQuery.md) | &nbsp; | Загружает PDF-файлы, найденные через результаты поиска Google. |
| [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-BingQuery.md) | bq | Открывает поисковый запрос Bing в веб-браузере. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-BuiltWithSiteInfo.md) | &nbsp; | Открывает запросы к сайту BuiltWith в веб-браузере. |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-GithubQuery.md) | qgithub, qgh | Открывает поисковый запрос репозитория Github в веб-браузере или выполняет расширенный поиск по REST API GitHub, поддерживая все доступные квалификаторы и категории поиска (репозитории, код, задачи, пользователи, коммиты, обсуждения, темы, вики). |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-GoogleQuery.md) | &nbsp; | Открывает запросы Google в веб-браузере с настраиваемыми параметрами и широкими возможностями настройки. |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-GoogleSiteInfo.md) | &nbsp; | Открывает запросы информации о сайте Google в веб-браузере. |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-GrokipediaQuery.md) | wiki | Открывает запрос Grokipedia в веб-браузере. |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-IMDBQuery.md) | imdb | Открывает поисковый запрос IMDB в веб-браузере. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-InstantStreetViewQuery.md) | isv | Открывает запросы InstantStreetView в веб-браузере. |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-MovieQuote.md) | moviequote | Открывает видео с цитатой из фильма в веб-браузере. |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-SearchEngine.md) | q | Открывает поисковый запрос в указанной поисковой системе с помощью веб-браузера. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-SimularWebSiteInfo.md) | simularsite | Открывает информацию о сайте SimilarWeb для указанных URL-адресов в веб-браузере. |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-StackOverflowQuery.md) | qso | Открывает поисковые запросы Stack Overflow в веб-браузере. |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WaybackMachineSiteInfo.md) | wayback | Открывает информацию о сайте WaybackMachine в веб-браузере. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WebsiteAndPerformQuery.md) | owaq | Открывает веб-страницу в браузере и выполняет один или несколько запросов. |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WhoisHostSiteInfo.md) | whois | Открывает запрос информации о хосте Whois в веб-браузере. |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WikipediaNLQuery.md) | wikinl | Открывает поиск по Википедии на нидерландском языке в веб-браузере. |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WikipediaQuery.md) | wikipedia | Открывает запрос к Википедии в веб-браузере. |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WolframAlphaQuery.md) | qalpha | Открывает запрос Wolfram Alpha в веб-браузере. |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-YoutubeQuery.md) | youtube | Открывает поисковые запросы YouTube в веб-браузере. |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-GameOfLife.md) | gameoflife, conway | Открывает симуляцию игры «Жизнь» Конвея в веб-браузере. |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-GenXdevAppCatalog.md) | appcatalog | Открывает каталог прогрессивных веб-приложений GenXdev в веб-браузере. |
| [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-Timeline.md) | timeline | Открывает интерактивную шкалу времени, показывающую текущее время, дату, век и тысячелетие. |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-ViralSimulation.md) | viral | Открывает симуляцию вирусной эпидемии в веб-браузере с расширенными настройками. |
| [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-Yab.md) | yab | Открывает игру YAB в веб-браузере с настраиваемыми параметрами. |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-YabAIBattle.md) | yabbattle | Открывает игру YabAI Battle в веб-браузере. |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Close-Webbrowser.md) | wbc | Закрывает один или несколько экземпляров веб-браузера выборочно. |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Close-WebbrowserTab.md) | ct, CloseTab | Закрывает текущую выбранную вкладку веб-браузера. |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Export-BrowserBookmarks.md) | &nbsp; | Экспортирует закладки браузера в JSON-файл. |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Find-BrowserBookmark.md) | bookmarks | Находит закладки из одного или нескольких веб-браузеров. |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-BrowserBookmark.md) | gbm | Возвращает все закладки из установленных веб-браузеров. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-DefaultWebbrowser.md) | &nbsp; | Возвращает настроенный веб-браузер по умолчанию для текущего пользователя. |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-PlaywrightSessionReference.md) | &nbsp; | Получает ссылку на текущий сеанс браузера Playwright. |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-Webbrowser.md) | &nbsp; | Возвращает коллекцию установленных современных веб-браузеров. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-WebbrowserTabDomNodes.md) | wl | Запрашивает и управляет узлами DOM в активной вкладке браузера с помощью CSS-селекторов. |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Import-BrowserBookmarks.md) | &nbsp; | Импортирует закладки из файла или коллекции в веб-браузер. |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Import-GenXdevBookmarkletMenu.md) | &nbsp; | Импортирует JavaScript-букмарклеты GenXdev в коллекции закладок браузера. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-WebbrowserEvaluation.md) | Eval, et | Выполняет код JavaScript на выбранной вкладке веб-браузера. |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-BrowserBookmarks.md) | sites | Открывает закладки браузера, соответствующие указанным критериям поиска. |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-Webbrowser.md) | wb | Открывает URL-адреса в одном или нескольких окнах браузера с возможностью задания положения и стиля. |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WebbrowserSideBySide.md) | wbn | Запускает новое окно веб-браузера с указанным позиционированием. |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Select-WebbrowserTab.md) | st | Выбирает вкладку браузера из запущенных браузеров, управляемых Playwright. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-BrowserVideoFullscreen.md) | fsvideo | Разворачивает первый найденный видеоэлемент на текущей вкладке браузера. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-WebbrowserTabLocation.md) | lt, Nav | Переводит текущую вкладку веб-браузера на указанный URL. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Show-WebsiteInAllBrowsers.md) | &nbsp; | Открывает URL в нескольких браузерах одновременно в мозаичном расположении. |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | Подключается к существующему экземпляру браузера через порт отладки. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-PlaywrightProfileDirectory.md) | &nbsp; | Получает каталог профиля браузера Playwright для постоянных сеансов. |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-PlayWrightBrowser.md) | spb | Запускает браузер под управлением Playwright с постоянным профилем пользователя. |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Resume-WebbrowserTabVideo.md) | wbvideoplay | Возобновляет воспроизведение видео на вкладке браузера YouTube. |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | Приостанавливает воспроизведение видео во всех активных сеансах браузера. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Unprotect-WebbrowserTab.md) | wbctrl | Принимает управление выбранной вкладкой веб-браузера для интерактивного манипулирования. |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/CurrentUserHasElevatedRights.md) | &nbsp; | Проверяет, есть ли у текущего пользователя повышенные права. |
| [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Enable-Screensaver.md) | &nbsp; | Запускает настроенную заставку Windows. |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ActiveUser.md) | gusers | Извлекает список уникальных имен пользователей из активных системных процессов. |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ChildProcesses.md) | &nbsp; | Извлекает все процессы, которые являются потомками текущего процесса PowerShell. |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ClipboardFiles.md) | getclipfiles, gcbf | Извлекает файлы из буфера обмена Windows, которые были помещены туда для операций с файлами, таких как копирование/вставка. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-CurrentFocusedProcess.md) | &nbsp; | Извлекает объект процесса окна, которое в данный момент имеет фокус ввода с клавиатуры. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-DesktopScalingFactor.md) | &nbsp; | Извлекает коэффициент масштабирования отображения Windows (настройка DPI) для указанного монитора. |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ForegroundWindow.md) | &nbsp; | Получает дескриптор текущего активного окна переднего плана. |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-KnownFolderPath.md) | folder | Получает путь к известной папке Windows с помощью API Windows Shell32. |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-MpCmdRunPath.md) | &nbsp; | Возвращает путь к исполняемому файлу MpCmdRun.exe Защитника Windows. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-OpenedFileHandleProcesses.md) | &nbsp; | Извлекает процессы, имеющие открытые дескрипторы файлов для указанных файлов. |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-PowershellMainWindow.md) | &nbsp; | Возвращает объект-помощник окна для главного окна терминала PowerShell. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-PowershellMainWindowProcess.md) | &nbsp; | Возвращает объект процесса для окна, в котором размещен терминал PowerShell. |
| [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-Window.md) | &nbsp; | Получает информацию об окне для указанных процессов или дескрипторов окон. |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-WindowPosition.md) | gwp | Получает информацию о положении и состоянии окон. |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Initialize-ScheduledTaskScripts.md) | &nbsp; | Создает запланированные задачи, которые запускают сценарии PowerShell через указанные интервалы. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-WindowsUpdate.md) | updatewindows | Проверяет актуальность обновлений Windows и при необходимости устанавливает доступные обновления. |
| [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Pop-Window.md) | popw | Извлекает последний помощник активного окна из стека с возможными изменениями. |
| [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Push-Window.md) | pushw | Помещает текущее окно в стек окон с возможными изменениями. |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Save-DesktopScreenShot.md) | &nbsp; | Создает снимок экрана указанного монитора и сохраняет его по заданному пути. |
| [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Send-Key.md) | sendkeys, invokekeys | Отправляет симулированные нажатия клавиш в окно или процесс. |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Send-WakeOnLan.md) | &nbsp; | Отправляет магический пакет Wake-on-LAN для включения удаленных компьютеров в сети. |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-ClipboardFiles.md) | setclipfiles, scbf | Устанавливает файлы в буфер обмена Windows для операций с файлами, таких как копирование/вставка. |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-ForegroundWindow.md) | &nbsp; | Перемещает указанное окно на передний план и делает его активным окном. |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-KnownFolderPath.md) | &nbsp; | Изменяет физический путь известной папки Windows. |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-MonitorPowerOff.md) | poweroff | Отключает питание всех подключенных мониторов. |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | Включает питание монитора. |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-TaskbarAlignment.md) | &nbsp; | Настраивает выравнивание панели задач Windows 11+ между центральным и левым положением. |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-WindowPosition.md) | wp | Перемещает и изменяет размер окон, когда указаны явные параметры позиционирования. |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-WindowPositionForSecondary.md) | wps | Размещает окно на дополнительном мониторе с указанными параметрами расположения. |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-WindowsWallpaper.md) | &nbsp; | Устанавливает случайные обои из указанной папки. |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-ProcessWithPriority.md) | nice | Запускает процесс с указанным уровнем приоритета. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | Сканирует файлы или каталоги на наличие вредоносных программ с помощью Защитника Windows. |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Add-WireGuardPeer.md) | &nbsp; | Добавляет новую конфигурацию однорангового узла (клиента) WireGuard VPN на сервер. |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/EnsureWireGuard.md) | &nbsp; | Обеспечивает установку и запуск службы WireGuard VPN через контейнер Docker. |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-WireGuardPeerQRCode.md) | &nbsp; | Генерирует QR-код для конфигурации однорангового узла WireGuard VPN. |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-WireGuardPeers.md) | &nbsp; | Получает информацию обо всех настроенных VPN-пирах WireGuard в системе. |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-WireGuardStatus.md) | &nbsp; | Получает подробную информацию о состоянии VPN-сервера WireGuard. |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-WireGuardPeer.md) | &nbsp; | Удаляет конфигурацию однорангового узла WireGuard VPN. |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Reset-WireGuardConfiguration.md) | &nbsp; | Сбрасывает конфигурацию сервера WireGuard VPN, удаляя всех одноранговых узлов. |
