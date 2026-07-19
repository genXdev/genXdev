# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-19.

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/Docs/ru-RU/Approve-NewTextFileContent.md) | &nbsp; | Интерактивное сравнение содержимого файлов и утверждение с помощью WinMerge. |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/Docs/ru-RU/Convert-DotNetTypeToLLMType.md) | &nbsp; | Преобразует имена типов .NET в имена типов LLM (языковой модели). |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/Docs/ru-RU/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | Converts PowerShell functions to OpenAI API function definitions. |
| [EnsureGithubCLIInstalled](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureGithubCLIInstalled.md) | &nbsp; | Обеспечивает правильную установку и настройку GitHub CLI в системе. |
| [EnsureHuggingFace](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureHuggingFace.md) | &nbsp; | Ensures the Hugging Face CLI is installed and functional. |
| [EnsurePaintNet](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsurePaintNet.md) | &nbsp; | Ensures Paint.NET is properly installed and accessible on the system. |
| [EnsurePip](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsurePip.md) | &nbsp; | Убедитесь, что pip установлен и функционирует для указанной установки Python. |
| [EnsurePython](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsurePython.md) | &nbsp; | Убедитесь, что Python установлен и доступен в системном PATH. |
| [EnsureWinMergeInstalled](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureWinMergeInstalled.md) | &nbsp; | Обеспечивает установку WinMerge и его доступность для операций сравнения файлов. |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/Docs/ru-RU/GenerateMasonryLayoutHtml.md) | &nbsp; | <div class="masonry-gallery">   <div class="masonry-item"><img src="image1.jpg" alt="Image 1"></div>   <div class="masonry-item"><img src="image2.jpg" alt="Image 2"></div>   <div class="masonry-item"><img src="image3.jpg" alt="Image 3"></div>   <div class="masonry-item"><img src="image4.jpg" alt="Image 4"></div> </div> <style>   .masonry-gallery {     column-count: 3;     column-gap: 10px;   }   .masonry-item {     break-inside: avoid;     margin-bottom: 10px;   }   .masonry-item img {     width: 100%;     display: block;     border-radius: 5px;   }   @media (max-width: 768px) {     .masonry-gallery {       column-count: 2;     }   }   @media (max-width: 480px) {     .masonry-gallery {       column-count: 1;     }   } </style> |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-AIDefaultLLMSettings.md) | &nbsp; | Получает все доступные конфигурации настроек LLM по умолчанию для операций ИИ в GenXdev.AI. |
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-AILLMSettings.md) | &nbsp; | Получает настройки LLM для операций ИИ в GenXdev.AI. |
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-AudioDeviceNames.md) | &nbsp; | Возвращает названия доступных аудиоустройств для захвата звука с микрофона или рабочего стола. |
| [Get-CpuCore](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-CpuCore.md) | &nbsp; | Вычисляет и возвращает общее количество логических ядер процессора в системе. |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-HasCapableGpu.md) | &nbsp; | Определяет, присутствует ли графический процессор с поддержкой CUDA и достаточным объемом памяти. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-NumberOfCpuCores.md) | &nbsp; | Вычисляет и возвращает общее количество логических ядер процессора в системе. |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SpeechToText.md) | &nbsp; | Конвертирует аудиофайлы в текст с помощью модели распознавания речи Whisper от OpenAI. |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-TextTranslation.md) | translate | Переводит текст на другой язык с помощью ИИ. |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-VectorSimilarity.md) | &nbsp; | Вычисляет косинусное сходство между двумя векторами. |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-CommandFromToolCall.md) | &nbsp; | Executes a tool call function with validation and parameter filtering. |
| [Invoke-HuggingFaceCli](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-HuggingFaceCli.md) | &nbsp; | Вызывает Hugging Face CLI с указанными аргументами. |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-LLMBooleanEvaluation.md) | equalstrue | Evaluates a statement using AI to determine if it's true or false. |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-LLMQuery.md) | qllm, llm | Отправляет запросы к API завершения чата совместимой с OpenAI большой языковой модели и обрабатывает ответы. |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-LLMStringListEvaluation.md) | getlist, getstring | Извлекает или генерирует список релевантных строк из входного текста с помощью ИИ-анализа. |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-LLMTextTransformation.md) | spellcheck | Transforms text using AI-powered processing. |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-WinMerge.md) | &nbsp; | Запускает WinMerge для сравнения двух файлов рядом. |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/Docs/ru-RU/Merge-TranslationCache.md) | &nbsp; | Управляет постоянным кэшем переводов с групповой записью на диск для каждого языка. |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/Docs/ru-RU/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/Docs/ru-RU/New-LLMAudioChat.md) | llmaudiochat | Creates an interactive audio chat session with an LLM model. |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/Docs/ru-RU/New-LLMTextChat.md) | llmchat | Запускает интерактивный текстовый чат с возможностями ИИ. |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/Docs/ru-RU/Receive-RealTimeSpeechToText.md) | &nbsp; | Преобразует аудиовход в реальном времени в текст с использованием модели Whisper AI. |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-AILLMSettings.md) | &nbsp; | Устанавливает настройки LLM для операций AI в GenXdev.AI. |
| [Set-GenXdevAICommandNotFoundAction](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-GenXdevAICommandNotFoundAction.md) | &nbsp; | Настраивает обработку ошибок "команда не найдена" с помощью ИИ. |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/Docs/ru-RU/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/Docs/ru-RU/Test-CpuAvx.md) | &nbsp; | Проверяет, поддерживает ли процессор наборы инструкций AVX и AVX2. |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/Docs/ru-RU/Test-DeepLinkImageFile.md) | &nbsp; | Проверяет, является ли указанный путь к файлу действительным файлом изображения с поддерживаемым форматом. |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/Docs/ru-RU/Compare-ImageFaces.md) | comparefaces | Сравнивает лица на двух разных изображениях и возвращает их сходство с помощью DeepStack. |
| [EnsureDeepStack](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureDeepStack.md) | &nbsp; | Обеспечивает установку и запуск службы распознавания лиц DeepStack. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ImageDetectedFaces.md) | &nbsp; | Распознает лица на загруженном изображении путем сравнения с известными лицами с помощью DeepStack. |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ImageDetectedObjects.md) | &nbsp; | Detects and classifies objects in an uploaded image using DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ImageDetectedScenes.md) | &nbsp; | Классифицирует изображение по одной из 365 категорий сцен с помощью DeepStack. |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-RegisteredFaces.md) | &nbsp; | Извлекает список всех зарегистрированных идентификаторов лиц из DeepStack. |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-ImageEnhancement.md) | enhanceimage | Улучшает изображение, увеличивая его в 4 раза с улучшением качества с помощью DeepStack. |
| [Register-AllFaces](https://github.com/genXdev/genXdev/Docs/ru-RU/Register-AllFaces.md) | UpdateFaces | Обновляет все профили распознавания лиц из файлов изображений в директории faces. |
| [Register-Face](https://github.com/genXdev/genXdev/Docs/ru-RU/Register-Face.md) | &nbsp; | Регистрирует новое лицо с помощью API распознавания лиц DeepStack. |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/Docs/ru-RU/Unregister-AllFaces.md) | &nbsp; | Удаляет все зарегистрированные лица из системы распознавания лиц DeepStack. |
| [Unregister-Face](https://github.com/genXdev/genXdev/Docs/ru-RU/Unregister-Face.md) | &nbsp; | Удаляет зарегистрированное лицо по его идентификатору из DeepStack. |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/Docs/ru-RU/Add-EmoticonsToText.md) | emojify | Enhances text by adding contextually appropriate emoticons using AI 😊✨🤖 |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/Docs/ru-RU/ConvertFrom-CorporateSpeak.md) | uncorporatize | Converts polite, professional corporate speak into direct, clear language using AI. |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/Docs/ru-RU/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | Преобразует дипломатичный или тактичный язык в прямой, ясный и однозначный язык. |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/Docs/ru-RU/ConvertTo-CorporateSpeak.md) | corporatize | I appreciate your sharing that perspective. I respectfully see things a bit differently, and I'd like to suggest an alternative viewpoint for consideration. |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/Docs/ru-RU/ConvertTo-DiplomaticSpeak.md) | diplomatize | I would like to respectfully offer my perspective on this matter, with the hope that we can find a mutually agreeable path forward. |
| [Find-Image](https://github.com/genXdev/genXdev/Docs/ru-RU/Find-Image.md) | findimages, li | Выполняет поиск файлов изображений и метаданных в указанных каталогах с возможностями фильтрации и опциональным отображением галереи в браузере. |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-AIKnownFacesRootpath.md) | &nbsp; | Возвращает настроенный каталог для файлов изображений лиц, используемых в операциях GenXdev.AI. |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-AIMetaLanguage.md) | getimgmetalang | Возвращает настроенный язык по умолчанию для операций с метаданными изображений. |
| [Get-Fallacy](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-Fallacy.md) | dispicetext | Analyzes text to identify logical fallacies using AI-powered detection. |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | Захватывает сообщения об ошибках из различных потоков и использует LLM для предложения исправлений. |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SimularMovieTitles.md) | &nbsp; | Находит похожие названия фильмов на основе общих свойств. |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-AIPowershellCommand.md) | hint | Генерирует и выполняет команды PowerShell с помощью ИИ. |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-ImageFacesUpdate.md) | imagepeopledetection | Обновляет метаданные распознавания лиц для файлов изображений в указанной директории. |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | Обновляет метаданные изображения с помощью описаний и ключевых слов, сгенерированных ИИ. |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-ImageMetadataUpdate.md) | imagepropdetection | Обновляет метаданные EXIF для изображений в каталоге. |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | Обновляет метаданные обнаружения объектов для файлов изображений в указанной директории. |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-ImageScenesUpdate.md) | imagescenedetection | Обновляет метаданные классификации сцен для файлов изображений в указанном каталоге. |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-QueryImageContent.md) | &nbsp; | Анализирует содержимое изображения с помощью возможностей AI-зрения |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/Docs/ru-RU/Remove-ImageMetaData.md) | removeimagedata | Удаляет файлы метаданных изображений из каталогов с изображениями. |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/Docs/ru-RU/Save-FoundImageFaces.md) | saveimagefaces | Сохраняет обрезанные изображения лиц из результатов индексированного поиска изображений. |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/Docs/ru-RU/Save-Transcriptions.md) | &nbsp; | Генерирует файлы субтитров для аудио- и видеофайлов с помощью OpenAI Whisper. |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-AIKnownFacesRootpath.md) | &nbsp; | Задает каталог файлов изображений лиц, используемых в операциях GenXdev.AI. |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-AIMetaLanguage.md) | &nbsp; | Устанавливает язык по умолчанию и опционально каталоги изображений для операций с метаданными изображений GenXdev.AI. |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/Docs/ru-RU/Show-FoundImagesInBrowser.md) | showfoundimages | Отображает результаты поиска изображений в веб-галерее с кирпичной версткой. |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/Docs/ru-RU/Start-AudioTranscription.md) | transcribefile, transcribe | Transcribes an audio file, video file, or a recording device to text |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/Docs/ru-RU/Update-AllImageMetaData.md) | updateallimages | Пакетное обновление ключевых слов изображений, лиц, объектов и сцен в нескольких системных каталогах. |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/Docs/ru-RU/Add-FeatureLineToREADME.md) | feature | Adds a feature line to the README file with a timestamp. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/Docs/ru-RU/Add-IdeaLineToREADME.md) | idea | Добавляет элемент идеи в файл README.md. |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/Docs/ru-RU/Add-IssueLineToREADME.md) | issue | Добавляет элемент задачи в файл README.md. |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/Docs/ru-RU/Add-LineToREADME.md) | &nbsp; | Добавляет строку в файл README.md в указанный раздел. |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/Docs/ru-RU/Add-ReleaseNoteLineToREADME.md) | releasenote | Adds a ReleaseNote line to the README file with a timestamp. |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/Docs/ru-RU/Add-TodoLineToREADME.md) | todo | Добавляет элемент списка дел в файл README.md. |
| [EnsureVSCodeInstallation](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureVSCodeInstallation.md) | &nbsp; | Устанавливает и настраивает Visual Studio Code с рекомендуемыми расширениями. |
| [Get-Features](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-Features.md) | features | Displays features from a README.md file. |
| [Get-Ideas](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-Ideas.md) | ideas | Отображает идеи из файла README.md. |
| [Get-Issues](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-Issues.md) | issues | Отображает проблемы из файла README.md. |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ReleaseNotes.md) | releasenotes | Отображает ReleaseNotes из файла README.md. |
| [Get-Todoos](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-Todoos.md) | todoos | Отображает задачи из файла README.md. |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-SourceFileInIde.md) | editcode | Открывает исходный файл в предпочтительной IDE (Visual Studio Code или Visual Studio). |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/Docs/ru-RU/Publish-ReleaseNotesToManifest.md) | pubrelnotes | Публикует незавершенные заметки о релизе из README.md в манифест модуля. |
| [VSCode](https://github.com/genXdev/genXdev/Docs/ru-RU/VSCode.md) | &nbsp; | Открывает один или несколько файлов в Visual Studio Code. |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-GitChangedFiles.md) | gitchanged | Получить список измененных файлов в Git-репозитории. |
| [New-GitCommit](https://github.com/genXdev/genXdev/Docs/ru-RU/New-GitCommit.md) | commit | Создает и отправляет новый коммит git со всеми изменениями. |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/Docs/ru-RU/PermanentlyDeleteGitFolders.md) | &nbsp; | Навсегда удаляет указанные папки из всех веток в Git-репозитории. |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-MissingGenXdevUnitTests](https://github.com/genXdev/genXdev/Docs/ru-RU/Add-MissingGenXdevUnitTests.md) | &nbsp; | Добавляет недостающие модульные тесты для командлетов GenXDev. |
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/Docs/ru-RU/Assert-GenXdevCmdlet.md) | improvecmdlet | Улучшает документацию и реализацию командлетов GenXdev с помощью ИИ-ассистента. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/Docs/ru-RU/Assert-GenXdevCmdletTests.md) | improvecmdlettests | Утверждает и улучшает модульные тесты указанного командлета GenXdev. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/Docs/ru-RU/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | Проверяет использование зависимостей между модулями GenXdev для обеспечения соблюдения правильной иерархии модулей. |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/Docs/ru-RU/Assert-GenXdevTest.md) | rungenxdevtests | Выполняет модульные тесты для модулей, подмодулей или командлетов GenXdev с интеллектуальной отладкой и разрешением ошибок на основе ИИ. |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/Docs/ru-RU/Assert-ModuleDefinition.md) | &nbsp; | Помощь в рефакторинге исходных файлов PowerShell с использованием искусственного интеллекта. |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/Docs/ru-RU/Assert-RefactorFile.md) | &nbsp; | Выполняет операцию рефакторинга в исходном файле с использованием указанной IDE и шаблона подсказки AI. |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureCopilotKeyboardShortCut.md) | &nbsp; | Настраивает сочетания клавиш GitHub Copilot Chat в Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureDefaultGenXdevRefactors.md) | &nbsp; | Обеспечивает наличие определений рефакторинга GenXdev по умолчанию. |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-CmdletMetaData.md) | &nbsp; | Извлекает метаданные для указанного командлета GenXdev, с возможностью перевода справочного текста на другой язык. |
| [Get-GenXdevCmdletUsageAnalysis](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-GenXdevCmdletUsageAnalysis.md) | &nbsp; | Анализирует шаблоны использования командлетов GenXdev для выявления наиболее часто вызываемых функций. |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-GenXDevModule.md) | &nbsp; | Извлекает все модули GenXDev из указанного пути. |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-GenXDevModuleInfo.md) | &nbsp; | Извлекает подробную информацию о модулях PowerShell GenXdev. |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | Извлекает модули GenXDev в порядке зависимостей. |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ModuleCmdletMetaData.md) | &nbsp; | Извлекает метаданные для всех командлетов в модуле PowerShell. |
| [Get-Refactor](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-Refactor.md) | refactors | Извлекает определения рефакторинга из настроек GenXdev на основе шаблонов имени. |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-RefactorReport.md) | refactorreport | Генерирует подробный отчет о рефакторинговых операциях и их статусе. |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-GenXdevPSFormatter.md) | &nbsp; | Форматирует файлы сценариев PowerShell с использованием правил форматирования PSScriptAnalyzer. |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | Запускает анализатор сценариев PowerShell для анализа сценариев PowerShell на соответствие требованиям и рекомендациям. |
| [New-GenXdevMarkdownHelp](https://github.com/genXdev/genXdev/Docs/ru-RU/New-GenXdevMarkdownHelp.md) | &nbsp; | Генерирует подробные файлы справки в формате Markdown для любого модуля PowerShell. |
| [New-GenXdevXmlHelp](https://github.com/genXdev/genXdev/Docs/ru-RU/New-GenXdevXmlHelp.md) | &nbsp; | Генерирует файлы справки MAML для любого модуля PowerShell. |
| [New-Refactor](https://github.com/genXdev/genXdev/Docs/ru-RU/New-Refactor.md) | newrefactor | Создает новый набор рефакторинга для задач по трансформации кода. |
| [Open-GenXdevCmdletsContainingClipboardTextInIde](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-GenXdevCmdletsContainingClipboardTextInIde.md) | vscodesearch | Открывает файлы в IDE, содержащие текст из буфера обмена |
| [Remove-Refactor](https://github.com/genXdev/genXdev/Docs/ru-RU/Remove-Refactor.md) | &nbsp; | Удаляет наборы рефакторинга из системы настроек GenXdev. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/Docs/ru-RU/Search-GenXdevCmdlet.md) | searchcmdlet | Выполняет поиск командлета GenXdev и при необходимости открывает его в IDE для редактирования. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/Docs/ru-RU/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | Открывает указанный командлет GenXdev в Visual Studio Code. |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/Docs/ru-RU/Start-NextRefactor.md) | nextrefactor | Продолжает или перезапускает сессию рефакторинга кода. |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/Docs/ru-RU/Test-RefactorLLMSelection.md) | &nbsp; | Оценивает исходные файлы на пригодность к рефакторингу с помощью анализа LLM. |
| [Update-Refactor](https://github.com/genXdev/genXdev/Docs/ru-RU/Update-Refactor.md) | updaterefactor | Обновляет и управляет наборами рефакторинга, включая выбор и обработку файлов. |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/Docs/ru-RU/Add-ArrayTemplate.md) | FormatArray | Форматирует коллекцию объектов, используя строку шаблона с заполнителями свойств, создавая единую форматированную строку. |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/Docs/ru-RU/Remove-DoubleEmptyLines.md) | &nbsp; | Удаляет двойные (подряд идущие) пустые строки из строки кода, опционально переформатируя вывод. |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Enable-Screensaver](https://github.com/genXdev/genXdev/Docs/ru-RU/Enable-Screensaver.md) | &nbsp; | Запускает настроенную заставку Windows. |
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-IsSpeaking.md) | iss | Возвращает true, если движок преобразования текста в речь в данный время говорит. |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/Docs/ru-RU/New-MicrosoftShellTab.md) | x | Создает новую вкладку в Windows Terminal, запускающую PowerShell. |
| [Now](https://github.com/genXdev/genXdev/Docs/ru-RU/Now.md) | &nbsp; | Возвращает текущую системную дату и время в виде объекта DateTime. |
| [Open-MediaFile](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-MediaFile.md) | vlcmedia, media, findmedia | Открывает и воспроизводит медиафайлы с помощью медиаплеера VLC с расширенными возможностями фильтрации и настройки. |
| [SayDate](https://github.com/genXdev/genXdev/Docs/ru-RU/SayDate.md) | &nbsp; | Сегодня текущая дата. |
| [SayTime](https://github.com/genXdev/genXdev/Docs/ru-RU/SayTime.md) | &nbsp; | Объявляет текущее время с помощью синтеза речи. |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-MonitorPowerOff.md) | poweroff | Отключает питание всех подключенных мониторов. |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | Включает питание монитора. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | Sets focus to the VLC media player window. |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/Docs/ru-RU/Start-SnakeGame.md) | snake | Запускает простую игру «Змейка» в консоли. |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/Docs/ru-RU/Start-TextToSpeech.md) | say | Преобразует текст в речь с помощью нейронного TTS-движка Microsoft Edge. |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/Docs/ru-RU/Stop-TextToSpeech.md) | sst | Немедленно прекращает любое текущее воспроизведение текста в речь. |
| [UtcNow](https://github.com/genXdev/genXdev/Docs/ru-RU/UtcNow.md) | &nbsp; | Получает текущую дату и время в формате UTC (Всемирное координированное время). |

---

## GenXdev.Console.Vlc

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-VlcMediaPlayer.md) | vlc | Запускает и управляет медиаплеером VLC с обширными возможностями настройки. |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-VlcMediaPlayerLyrics.md) | vlclyrics | Открывает веб-браузер для поиска текстов песен проигрываемого в данный момент трека в VLC. |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/Docs/ru-RU/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | Перемещает VLC Media Player к следующему элементу в текущем списке воспроизведения. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/Docs/ru-RU/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | Переходит к предыдущему элементу в плейлисте VLC Media Player. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/Docs/ru-RU/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | Переключает состояние отключения звука в медиаплеере VLC. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/Docs/ru-RU/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | Переключает состояние паузы/воспроизведения медиаплеера VLC. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/Docs/ru-RU/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | Переключает режим повтора в VLC Media Player. |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-KeyValueStoreNames.md) | getstorenames | Получает названия доступных хранилищ ключей-значений. |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-KeyValueStorePath.md) | &nbsp; | Возвращает путь к файлу для хранилища ключ-значение. |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-StoreKeys.md) | getkeys | Извлекает все имена ключей для заданного хранилища ключ-значение. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ValueByKeyFromStore.md) | getvalue | Извлекает значение из хранилища ключ-значение на основе JSON. |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/Docs/ru-RU/Initialize-KeyValueStores.md) | &nbsp; | Инициализирует структуру каталогов KeyValueStore для локального хранения и хранения в OneDrive. |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/Docs/ru-RU/Remove-KeyFromStore.md) | removekey | Удаляет ключ из хранилища ключ-значение. |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/Docs/ru-RU/Remove-KeyValueStore.md) | &nbsp; | Удаляет хранилище ключ-значение. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-ValueByKeyInStore.md) | setvalue | Управляет парами ключ-значение в хранилище на основе JSON-файла. |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/Docs/ru-RU/Sync-KeyValueStore.md) | &nbsp; | Синхронизирует локальные файлы JSON с хранилищем ключ-значение OneDrive. |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-GenXdevPreference.md) | getPreference | Извлекает значение предпочтения из хранилища предпочтений GenXdev. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-GenXdevPreferenceNames.md) | getPreferenceNames | Получает все имена настроек из хранилища сессий и базы данных. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | Возвращает настроенный путь к базе данных для файлов данных предпочтений, используемых в операциях GenXdev.Data. |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/Docs/ru-RU/Remove-GenXdevPreference.md) | removePreference | Удаляет значение предпочтения из хранилища предпочтений GenXdev. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | Устанавливает значение предпочтения по умолчанию в хранилище настроек GenXdev. |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-GenXdevPreference.md) | setPreference | Устанавливает значение предпочтения в хранилище предпочтений GenXdev. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | Устанавливает путь к базе данных для настроек, используемых в операциях GenXdev.Data. |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [EnsureSQLiteStudioInstalled](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureSQLiteStudioInstalled.md) | &nbsp; | Обеспечивает установку SQLiteStudio и доступ к нему из командной строки. |
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLiteSchema.md) | &nbsp; | Извлекает полную информацию о схеме из базы данных SQLite. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLiteTableColumnData.md) | &nbsp; | Retrieves data from a specific column in a SQLite database table. |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLiteTableData.md) | &nbsp; | Извлекает данные из таблицы базы данных SQLite с возможностью ограничения записей. |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLiteTables.md) | &nbsp; | Извлекает список имен таблиц из базы данных SQLite. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLiteTableSchema.md) | &nbsp; | Получает информацию о схеме для указанной таблицы SQLite. |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLiteTransaction.md) | getsqltx, newsqltx | Создает и возвращает объект транзакции SQLite для пакетных операций. |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLiteViewColumnData.md) | &nbsp; | Извлекает данные колонки из представления SQLite с возможностью ограничения записей. |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLiteViewData.md) | &nbsp; | Извлекает данные из представления базы данных SQLite с возможностью ограничения записей. |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLiteViews.md) | &nbsp; | Извлекает список представлений из базы данных SQLite. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLiteViewSchema.md) | &nbsp; | Извлекает определение SQL-схемы представления SQLite. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-SQLiteQuery.md) | &nbsp; | Выполняет один или несколько SQL-запросов к базе данных SQLite с поддержкой транзакций. |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-SQLiteStudio.md) | &nbsp; | Выполняет запросы к базе данных SQLite с поддержкой параметров и транзакций. |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/Docs/ru-RU/New-SQLiteDatabase.md) | nsqldb | Создает новый файл базы данных SQLite. |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [EnsureSSMSInstalled](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureSSMSInstalled.md) | &nbsp; | Ensures SSMS is installed and accessible from the command line. |
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLServerSchema.md) | &nbsp; | Извлекает полную информацию о схеме из базы данных SQL Server. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLServerTableColumnData.md) | &nbsp; | Извлекает данные из определенного столбца таблицы базы данных SQL. |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLServerTableData.md) | &nbsp; | Извлекает данные из таблицы SQL базы данных с возможностью ограничения количества записей. |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLServerTables.md) | &nbsp; | Извлекает список имен таблиц из базы данных SQL Server. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLServerTableSchema.md) | &nbsp; | Извлекает информацию о схеме для указанной таблицы SQL Server. |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLServerTransaction.md) | getsqltx, newsqltx | Создает и возвращает объект транзакции SQL Server для пакетных операций. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLServerViewColumnData.md) | &nbsp; | Извлекает данные столбцов из SQL-представления с возможным ограничением количества записей. |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLServerViewData.md) | &nbsp; | Извлекает данные из представления базы данных SQL с возможностью ограничения записей. |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLServerViews.md) | &nbsp; | Извлекает список представлений из базы данных SQL Server. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SQLServerViewSchema.md) | &nbsp; | Извлекает определение схемы SQL для представления SQL Server. |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-SQLServerQuery.md) | &nbsp; | Выполняет один или несколько SQL-запросов к базе данных SQL Server с поддержкой транзакций. |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | Выполняет запросы к базам данных SQL Server с поддержкой параметров и транзакций. |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/Docs/ru-RU/New-SQLServerDatabase.md) | nsqldb | Создает новую базу данных SQL Server. |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/Docs/ru-RU/Confirm-InstallationConsent.md) | &nbsp; | Подтверждает согласие пользователя на установку стороннего программного обеспечения, используя настройки для постоянного выбора. |
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/Docs/ru-RU/Copy-FilesToDateFolder.md) | &nbsp; | Копирует файлы, соответствующие критериям поиска, в подпапки, сгруппированные по дате. |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/Docs/ru-RU/Copy-IdenticalParamValues.md) | &nbsp; | Копирует значения параметров из привязанных параметров в новую хеш-таблицу на основе возможных параметров другой функции. |
| [EnsurePester](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsurePester.md) | &nbsp; | Обеспечивает доступность фреймворка тестирования Pester для использования. |
| [Expand-Path](https://github.com/genXdev/genXdev/Docs/ru-RU/Expand-Path.md) | ep | Расширяет любую заданную ссылку на файл до полного пути. |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/Docs/ru-RU/Find-DuplicateFiles.md) | fdf | Find duplicate files across multiple directories based on configurable criteria. |
| [Find-Item](https://github.com/genXdev/genXdev/Docs/ru-RU/Find-Item.md) | l | Поиск файлов и каталогов с расширенными возможностями фильтрации. |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-MediaFileCreationDate.md) | &nbsp; | Extracts the best-effort creation date for media and other files. |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-Fasti.md) | fasti | Извлекает файлы архивов в текущей директории в отдельные папки и удаляет их после этого. |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/Docs/ru-RU/Move-FilesToDateFolder.md) | &nbsp; | Перемещает файлы, соответствующие критериям поиска, в подпапки на основе даты. |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/Docs/ru-RU/Move-ItemWithTracking.md) | &nbsp; | Перемещает файлы и каталоги, сохраняя ссылки на файловую систему и ссылки. |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/Docs/ru-RU/Move-ToRecycleBin.md) | &nbsp; | Безопасно перемещает файлы и папки в корзину Windows. |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/Docs/ru-RU/ReadJsonWithRetry.md) | &nbsp; | Читает JSON-файл с логикой повторных попыток и автоматической очисткой блокировки. |
| [Remove-AllItems](https://github.com/genXdev/genXdev/Docs/ru-RU/Remove-AllItems.md) | sdel | Рекурсивно удаляет всё содержимое из директории с продвинутой обработкой ошибок. |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/Docs/ru-RU/Remove-ItemWithFallback.md) | rmf | Удаляет файлы или каталоги с несколькими резервными механизмами для надежного удаления. |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/Docs/ru-RU/Remove-OnReboot.md) | &nbsp; | Помечает файлы или каталоги для удаления во время следующей загрузки системы. |
| [Rename-InProject](https://github.com/genXdev/genXdev/Docs/ru-RU/Rename-InProject.md) | rip | Выполняет замену текста во всем проекте каталога. |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/Docs/ru-RU/ResolveInputObjectFileNames.md) | &nbsp; | Разворачивает входные объекты в имена файлов и каталогов, поддерживая различные фильтры и опции вывода. |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-FoundLocation.md) | lcd | Находит первый совпадающий файл или папку и устанавливает на него местоположение. |
| [Set-LocationParent](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-LocationParent.md) | .. | Изменяет текущее местоположение на родительский каталог и отображает его содержимое. |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-LocationParent2.md) | ... | Перемещается на два уровня вверх по иерархии файловой системы. |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-LocationParent3.md) | .... | Поднимается на три уровня вверх по иерархии файловой системы. |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-LocationParent4.md) | ..... | Перемещается на четыре уровня вверх по иерархии файловой системы. |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-LocationParent5.md) | ...... | Перемещается на пять уровней вверх по иерархии файловой системы. |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/Docs/ru-RU/Start-RoboCopy.md) | xc, rc | Предоставляет оболочку PowerShell для утилиты Microsoft Robust Copy (Robocopy). |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/Docs/ru-RU/Write-FileAtomic.md) | &nbsp; | Атомарно записывает байты в файл для предотвращения повреждения. |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/Docs/ru-RU/Write-JsonFileAtomic.md) | &nbsp; | Атомарно записывает объект в файл в формате JSON для предотвращения повреждений. |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/Docs/ru-RU/Write-TextFileAtomic.md) | &nbsp; | Атомарно записывает текст в файл для предотвращения повреждений. |
| [WriteFileOutput](https://github.com/genXdev/genXdev/Docs/ru-RU/WriteFileOutput.md) | &nbsp; | Выводит информацию о файлах с гиперссылками на отображаемые имена для улучшения пользовательского опыта. |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/Docs/ru-RU/alignScript.md) | &nbsp; | Возвращает строку (с измененным отступом) предоставленной строки скриптблока |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/Docs/ru-RU/ConvertTo-HashTable.md) | &nbsp; | Преобразует объект PSCustomObject в хеш-таблицу рекурсивно. |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureGenXdev.md) | &nbsp; | Обеспечивает полную загрузку всех модулей GenXdev путем вызова всех командлетов Ensure*. |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureNuGetAssembly.md) | &nbsp; | Загружает и загружает сборки .NET из пакетов NuGet на основе ключа или идентификатора пакета. |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-BCP47LanguageDictionary.md) | &nbsp; | Возвращает словарь всех установленных языковых тегов BCP 47 и их отображаемых имен. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-DefaultWebLanguage.md) | &nbsp; | Получает ключ языка веб-интерфейса по умолчанию на основе текущих языковых настроек системы. |
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-GenXDevCmdlet.md) | gcmds | Извлекает и выводит список всех командлетов GenXdev и их подробности. |
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ImageGeolocation.md) | &nbsp; | Извлекает данные геолокации из файла изображения. |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ImageMetadata.md) | &nbsp; | Извлекает полные метаданные из файла изображения. |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-WebLanguageDictionary.md) | &nbsp; | Возвращает обратный словарь для всех языков, поддерживаемых поиском Google. |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/Docs/ru-RU/Import-GenXdevModules.md) | reloadgenxdev | Импортирует все модули PowerShell GenXdev в глобальную область видимости. |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/Docs/ru-RU/Initialize-SearchPaths.md) | &nbsp; | Инициализирует и настраивает пути поиска системы для управления пакетами. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | Выполняет блок сценария для каждого модуля GenXdev в рабочей области. |
| [Out-Serial](https://github.com/genXdev/genXdev/Docs/ru-RU/Out-Serial.md) | &nbsp; | Отправляет строку в последовательный порт |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/Docs/ru-RU/Remove-JSONComments.md) | &nbsp; | Удаляет комментарии из содержимого JSON. |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/Docs/ru-RU/resetdefaultmonitor.md) | &nbsp; | Восстанавливает конфигурацию дополнительного монитора по умолчанию. |
| [secondscreen](https://github.com/genXdev/genXdev/Docs/ru-RU/secondscreen.md) | &nbsp; | Устанавливает конфигурацию второго монитора по умолчанию. |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | Настройка обработки пользовательских команд не найдена |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/Docs/ru-RU/Show-GenXdevCmdlet.md) | cmds | Отображает модули GenXdev PowerShell с их командлетами и псевдонимами. |
| [Show-Verb](https://github.com/genXdev/genXdev/Docs/ru-RU/Show-Verb.md) | showverbs | Показывает краткий алфавитный список всех командлетов PowerShell. |
| [sidebyside](https://github.com/genXdev/genXdev/Docs/ru-RU/sidebyside.md) | &nbsp; | Устанавливает конфигурацию параллельного просмотра по умолчанию. |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/Docs/ru-RU/Test-UnattendedMode.md) | &nbsp; | Обнаруживает, работает ли PowerShell в автоматическом/автономном режиме. |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/Docs/ru-RU/Convert-PhysicsUnit.md) | &nbsp; | Converts a value from one physics unit to another within the same category. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ApparentSizeAtArmLength.md) | &nbsp; | Вычисляет видимый размер объекта на расстоянии вытянутой руки. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-AtEyeLengthSizeInMM.md) | &nbsp; | Вычисляет видимый размер объекта на расстоянии вытянутой руки в миллиметрах. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | Вычисляет силу Архимеда. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | Вычисляет центростремительное ускорение. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | Вычисляет доплеровски сдвинутую частоту. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | Вычисляет силу лобового сопротивления. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | Вычисление второй космической скорости. |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-FreeFallDistance.md) | &nbsp; | Вычисляет расстояние падения при свободном падении за заданный промежуток времени. |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-FreeFallHeight.md) | &nbsp; | Вычисляет высоту падения при свободном падении за заданный промежуток времени. |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-FreeFallTime.md) | &nbsp; | Вычисляет время, необходимое объекту для падения с заданной высоты при свободном падении. |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | Вычисляет скорость удара по высоте. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | Вычисляет кинетическую энергию. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-LightTravelTimeByDistance.md) | &nbsp; | Рассчитывает время, за которое свет проходит расстояние. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | Вычисляет увеличение для линзы. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-MomentumByMassAndVelocity.md) | &nbsp; | Вычисляет линейный импульс. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | Рассчитывает орбитальную скорость. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | Вычисляет гравитационную потенциальную энергию. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | Вычисляет дальность полета снаряда. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | Вычисляет угол преломления, используя закон Снеллиуса. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | Вычисляет резонансную частоту для закрытой трубы. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-SoundTravelDistanceByTime.md) | &nbsp; | Вычисляет расстояние, которое проходит звук за заданное время. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | Вычисляет терминальную скорость. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | Вычисляет время полета снаряда. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | Вычисляет скорость волны. |

---

## GenXdev.Media.ytdlp

| Command | Aliases | Description |
|:---|:---|:---|
| [StabilizeVideo](https://github.com/genXdev/genXdev/Docs/ru-RU/StabilizeVideo.md) | &nbsp; | Стабилизирует самый новый или указанный .mp4 файл с помощью FFmpeg + vid.stab (без черных границ). |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/Docs/ru-RU/ConvertTo-Uris.md) | &nbsp; | Разбирает строки на наличие любого валидного URI. |
| [Invoke-WebbrowserTabPollingScript](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-WebbrowserTabPollingScript.md) | &nbsp; | Выполняет фоновый скрипт опроса в ранее выбранной вкладке веб-браузера. |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-AllPossibleQueries.md) | qq | Открывает все возможные типы запросов для заданных поисковых терминов или URL-адресов. |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-BingCopilotQuery.md) | aibc | Открывает запрос Bing CoPilot в веб-браузере |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | Открывает запрос ChatGPT в веб-браузере. |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-CloudLLMChat.md) | ask | Открывает облачный интерфейс чата LLM для запросов к ИИ. |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | Открывает запрос DeepSeek в веб-браузере |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-GithubCopilotQuery.md) | aigc, askghcopilot | Открывает запрос Github CoPilot в веб-браузере |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-GoogleGeminiQuery.md) | aigg, askgemini | Открывает запрос Google Gemini в веб-браузере |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-XGrokQuery.md) | aixg, askxgrok | Открывает запрос X Grok в веб-браузере |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-NextAffirmation.md) | WhatAboutIt | Возвращает случайный аффирмационный текст из API affirmations.dev. |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-WikipediaSummary.md) | wikitxt | Retrieves a summary of a topic from Wikipedia. |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Clear-YoutubeWatched](https://github.com/genXdev/genXdev/Docs/ru-RU/Clear-YoutubeWatched.md) | &nbsp; | Очищает историю просмотров YouTube из локального хранилища браузера. |
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Copy-PDFsFromGoogleQuery.md) | &nbsp; | Загружает PDF-файлы, найденные через результаты поиска Google. |
| [Get-GoogleSearchResultUrls](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-GoogleSearchResultUrls.md) | qlinksget | Выполняет поиск в Google и возвращает ссылки |
| [Open-AllGoogleLinks](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-AllGoogleLinks.md) | qlinks | Выполняет бесконечный автоматический поиск в Google. |
| [Open-AllYoutubeVideos](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-AllYoutubeVideos.md) | qvideos, qyt | Открывает и управляет видео на YouTube в окне браузера с помощью клавиатурных сокращений. |
| [Open-BingQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-BingQuery.md) | bq | Открывает поисковый запрос Bing в веб-браузере. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-BuiltWithSiteInfo.md) | &nbsp; | Открывает запросы сайта BuiltWith в веб-браузере. |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-GithubQuery.md) | qgithub, qgh | Открывает запрос поиска по репозиториям GitHub в веб-браузере или выполняет расширенный поиск через REST API GitHub с поддержкой всех доступных квалификаторов и категорий поиска (репозитории, код, задачи, пользователи, коммиты, обсуждения, темы, вики). |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-GoogleQuery.md) | q | Открывает запросы Google в веб-браузере с настраиваемыми параметрами и обширными возможностями настройки. |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-GoogleSiteInfo.md) | &nbsp; | Открывает запросы информации о сайте Google в веб-браузере. |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-GrokipediaQuery.md) | wiki | Открывает запрос Grokipedia в веб-браузере. |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-IMDBQuery.md) | imdb | Открывает поисковый запрос IMDB в веб-браузере. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-InstantStreetViewQuery.md) | isv | Открывает запросы InstantStreetView в веб-браузере. |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-MovieQuote.md) | moviequote | Opens a video of a movie quote in a web browser. |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-SearchEngine.md) | q | Открывает поисковый запрос в указанной поисковой системе с помощью веб-браузера. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-SimularWebSiteInfo.md) | simularsite | Открывает информацию о сайте SimilarWeb для указанных URL-адресов в веб-браузере. |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-StackOverflowQuery.md) | qso | Открывает поисковые запросы в Stack Overflow в веб-браузере. |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-WaybackMachineSiteInfo.md) | wayback | Открывает информацию о сайте Wayback Machine в веб-браузере. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-WebsiteAndPerformQuery.md) | owaq | Открывает веб-страницу в веб-браузере и выполняет один или несколько запросов. |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-WhoisHostSiteInfo.md) | whois | Открывает запрос информации о хосте Whois в веб-браузере. |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-WikipediaNLQuery.md) | wikinl | Открывает поиск по голландской Википедии в веб-браузере. |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-WikipediaQuery.md) | wikipedia | Открывает запрос к Википедии в веб-браузере. |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-WolframAlphaQuery.md) | qalpha | Открывает запрос Wolfram Alpha в веб-браузере. |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-YoutubeQuery.md) | youtube | Открывает поисковые запросы YouTube в веб-браузере. |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-GameOfLife.md) | gameoflife, conway | Открывает симуляцию игры «Жизнь» Конвея в веб-браузере. |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-GenXdevAppCatalog.md) | appcatalog | Открывает каталог прогрессивных веб-приложений GenXdev в веб-браузере. |
| [Open-Timeline](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-Timeline.md) | timeline | Открывает интерактивную временную шкалу, показывающую текущее время, дату, век и тысячелетие. |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-ViralSimulation.md) | viral | Открывает игру-симулятор эпидемии в веб-браузере с широкими возможностями настройки. |
| [Open-Yab](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-Yab.md) | yab | Открывает игру YAB в веб-браузере с настраиваемыми параметрами. |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-YabAIBattle.md) | yabbattle | Открывает игру YabAI Battle в веб-браузере. |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Clear-WebbrowserTabSiteApplicationData](https://github.com/genXdev/genXdev/Docs/ru-RU/Clear-WebbrowserTabSiteApplicationData.md) | clearsitedata | Очищает все данные хранилища браузера для текущей вкладки в Edge или Chrome. |
| [Close-Webbrowser](https://github.com/genXdev/genXdev/Docs/ru-RU/Close-Webbrowser.md) | wbc | Закрывает один или несколько экземпляров веб-браузера выборочно. |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/Docs/ru-RU/Close-WebbrowserTab.md) | ct, CloseTab | Закрывает текущую выбранную вкладку веб-браузера. |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/Docs/ru-RU/Export-BrowserBookmarks.md) | &nbsp; | Экспортирует закладки браузера в JSON-файл. |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/Docs/ru-RU/Find-BrowserBookmark.md) | bookmarks | Находит закладки из одного или нескольких веб-браузеров. |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-BrowserBookmark.md) | gbm | Возвращает все закладки из установленных веб-браузеров. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-DefaultWebbrowser.md) | &nbsp; | Возвращает настроенный веб-браузер по умолчанию для текущего пользователя. |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-PlaywrightSessionReference.md) | &nbsp; | Получает ссылку на текущий сеанс браузера Playwright. |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-Webbrowser.md) | &nbsp; | Возвращает коллекцию установленных современных веб-браузеров. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-WebbrowserTabDomNodes.md) | wl | Запрашивает и управляет узлами DOM в активной вкладке браузера с помощью CSS-селекторов. |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/Docs/ru-RU/Import-BrowserBookmarks.md) | &nbsp; | Импортирует закладки из файла или коллекции в веб-браузер. |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/Docs/ru-RU/Import-GenXdevBookmarkletMenu.md) | &nbsp; | Импортирует букмарклеты GenXdev JavaScript в коллекции закладок браузера. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-WebbrowserEvaluation.md) | Eval, et | Выполняет JavaScript-код на выбранной вкладке веб-браузера. |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-BrowserBookmarks.md) | sites | Открывает закладки браузера, соответствующие указанным критериям поиска. |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-Webbrowser.md) | wb | Открывает URL-адреса в одном или нескольких окнах браузера с возможностью позиционирования и стилизации. |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-WebbrowserSideBySide.md) | wbn | Запускает новое окно веб-браузера с определенным позиционированием. |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/Docs/ru-RU/Select-WebbrowserTab.md) | st | Выбирает вкладку браузера из работающих браузеров, управляемых Playwright. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-BrowserVideoFullscreen.md) | fsvideo | Максимизирует первый элемент видео, найденный на текущей вкладке браузера. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-WebbrowserTabLocation.md) | lt, Nav | Navigates the current web browser tab to a specified URL. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/Docs/ru-RU/Show-WebsiteInAllBrowsers.md) | &nbsp; | Одновременно открывает URL в нескольких браузерах в мозаичном расположении. |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/Docs/ru-RU/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | Через порт отладки подключается к существующему экземпляру браузера. |
| [ensurePlaywright](https://github.com/genXdev/genXdev/Docs/ru-RU/ensurePlaywright.md) | &nbsp; | Обеспечивает наличие сборки Playwright .NET и двоичных файлов браузера. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-PlaywrightProfileDirectory.md) | &nbsp; | Возвращает директорию профиля браузера Playwright для постоянных сеансов. |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/Docs/ru-RU/Open-PlayWrightBrowser.md) | spb | Запускает браузер, управляемый Playwright, с постоянным профилем пользователя. |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/Docs/ru-RU/Resume-WebbrowserTabVideo.md) | wbvideoplay | Возобновляет воспроизведение видео на вкладке браузера YouTube. |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/Docs/ru-RU/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | Приостанавливает воспроизведение видео во всех активных сеансах браузера. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/Docs/ru-RU/Unprotect-WebbrowserTab.md) | wbctrl | Управляет выбранной вкладкой веб-браузера для интерактивного взаимодействия. |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/Docs/ru-RU/CurrentUserHasElevatedRights.md) | &nbsp; | Проверяет, имеет ли текущий пользователь повышенные права. |
| [EnsureDockerDesktop](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureDockerDesktop.md) | &nbsp; | Обеспечивает установку и доступность Docker Desktop для операций контейнеризации. |
| [EnsurePSTools](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsurePSTools.md) | &nbsp; | Обеспечивает установку и доступность инструментов Sysinternals (PSTools). |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ActiveUser.md) | gusers | Получает список уникальных имен пользователей из активных системных процессов. |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ChildProcesses.md) | &nbsp; | Получает все процессы, которые являются потомками текущего процесса PowerShell. |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ClipboardFiles.md) | getclipfiles, gcbf | Получает файлы из буфера обмена Windows, которые были установлены для операций с файлами, таких как копирование/вставка. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-CurrentFocusedProcess.md) | &nbsp; | Возвращает объект процесса окна, которое в данный момент имеет фокус ввода. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-DesktopScalingFactor.md) | &nbsp; | Извлекает коэффициент масштабирования дисплея Windows (настройка DPI) для указанного монитора. |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-ForegroundWindow.md) | &nbsp; | Получает дескриптор активного окна переднего плана. |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-KnownFolderPath.md) | folder | Получает путь к известной папке Windows с помощью API Windows Shell32. |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-MonitorCount.md) | &nbsp; | Возвращает общее количество подключенных к системе дисплеев. |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-MpCmdRunPath.md) | &nbsp; | Возвращает путь к исполняемому файлу Windows Defender MpCmdRun.exe. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-OpenedFileHandleProcesses.md) | &nbsp; | Запускает процессы, имеющие открытые файловые дескрипторы к указанным файлам. |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-PowershellMainWindow.md) | &nbsp; | Возвращает вспомогательный объект окна для главного окна терминала PowerShell. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-PowershellMainWindowProcess.md) | &nbsp; | Возвращает объект процесса для окна, в котором размещается терминал PowerShell. |
| [Get-Window](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-Window.md) | &nbsp; | Получает информацию об окне для указанных процессов или дескрипторов окон. |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-WindowPosition.md) | gwp | Получает информацию о положении и состоянии окон. |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/Docs/ru-RU/Initialize-ScheduledTaskScripts.md) | &nbsp; | Создает запланированные задачи, которые запускают сценарии PowerShell через заданные интервалы. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/Docs/ru-RU/Invoke-WindowsUpdate.md) | updatewindows | Проверяет актуальность обновлений Windows и при необходимости устанавливает доступные обновления. |
| [Pop-Window](https://github.com/genXdev/genXdev/Docs/ru-RU/Pop-Window.md) | popw | Извлекает последний вспомогательный объект активного окна из стека с возможностью модификации. |
| [Push-Window](https://github.com/genXdev/genXdev/Docs/ru-RU/Push-Window.md) | pushw | Помещает текущее окно в стек окон с необязательными изменениями. |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/Docs/ru-RU/Save-DesktopScreenShot.md) | &nbsp; | Делает снимок экрана указанного монитора и сохраняет его по указанному пути. |
| [Send-Key](https://github.com/genXdev/genXdev/Docs/ru-RU/Send-Key.md) | sendkeys, invokekeys | Отправляет имитируемые нажатия клавиш в окно или процесс. |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/Docs/ru-RU/Send-WakeOnLan.md) | &nbsp; | Отправляет магический пакет Wake-on-LAN для пробуждения удаленных компьютеров в сети. |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-ClipboardFiles.md) | setclipfiles, scbf | Устанавливает файлы в буфер обмена Windows для операций с файлами, таких как копирование/вставка. |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-ForegroundWindow.md) | &nbsp; | Переводит указанное окно на передний план и делает его активным окном. |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-KnownFolderPath.md) | &nbsp; | Изменяет физический путь известной папки Windows. |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-TaskbarAlignment.md) | &nbsp; | Настраивает выравнивание панели задач Windows 11+ между центральным и левым положением. |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-WindowPosition.md) | wp | Позиционирует и изменяет размер окон, если указаны явные параметры позиционирования. |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-WindowPositionForSecondary.md) | wps | Размещает окно на дополнительном мониторе с указанными параметрами расположения. |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/Docs/ru-RU/Set-WindowsWallpaper.md) | &nbsp; | Устанавливает случайные обои из указанной директории. |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/Docs/ru-RU/Start-ProcessWithPriority.md) | nice | Запускает процесс с указанным уровнем приоритета. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/Docs/ru-RU/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | Сканирует файлы или каталоги на наличие вредоносных программ с помощью Защитника Windows. |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/Docs/ru-RU/Add-WireGuardPeer.md) | &nbsp; | Добавляет новую конфигурацию клиента WireGuard VPN (peer) на сервер. |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/Docs/ru-RU/EnsureWireGuard.md) | &nbsp; | Обеспечивает установку и запуск службы WireGuard VPN через Docker-контейнер. |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-WireGuardPeerQRCode.md) | &nbsp; | Generates a QR code for a WireGuard VPN peer configuration. |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-WireGuardPeers.md) | &nbsp; | Получает информацию обо всех настроенных пирах WireGuard VPN в системе. |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/Docs/ru-RU/Get-WireGuardStatus.md) | &nbsp; | Получает подробную информацию о статусе VPN-сервера WireGuard. |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/Docs/ru-RU/Remove-WireGuardPeer.md) | &nbsp; | Удаляет конфигурацию пира WireGuard VPN. |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/Docs/ru-RU/Reset-WireGuardConfiguration.md) | &nbsp; | Сбрасывает конфигурацию сервера WireGuard VPN, удаляя всех пиров. |
