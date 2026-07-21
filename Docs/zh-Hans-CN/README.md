# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-21.

## GenXdev

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXDevCmdlet.md) | gcmds | 检索并列出所有 GenXdev cmdlet 及其详细信息。 |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Show-GenXdevCmdlet.md) | cmds | 显示 GenXdev PowerShell 模块及其 cmdlet 和别名。 |

---

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-AILLMSettings.md) | &nbsp; | 获取 GenXdev.AI 中 AI 操作的 LLM 设置。 |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SpeechToText.md) | &nbsp; | 使用OpenAI的Whisper语音识别模型将音频文件转换为文本。 |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-TextTranslation.md) | translate | 使用人工智能将文本翻译成另一种语言。 |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-VectorSimilarity.md) | &nbsp; | 计算两个向量之间的余弦相似度。 |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-WinMerge.md) | &nbsp; | 启动 WinMerge 并排比较两个文件。 |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Merge-TranslationCache.md) | &nbsp; | 管理每种语言具有批量磁盘写入的持久翻译缓存。 |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-LLMAudioChat.md) | llmaudiochat | 创建一个与LLM模型进行交互式音频聊天的会话。 |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-LLMTextChat.md) | llmchat | 启动与AI功能的交互式文本聊天会话。 |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Receive-RealTimeSpeechToText.md) | &nbsp; | 使用 Whisper AI 模型将实时音频输入转换为文本。 |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-AILLMSettings.md) | &nbsp; | 设置 GenXdev.AI 中 AI 操作的 LLM 设置。 |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | 设置自定义命令未找到处理，可选 AI 辅助。 |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Test-DeepLinkImageFile.md) | &nbsp; | 测试指定的文件路径是否为具有支持格式的有效图像文件。 |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Compare-ImageFaces.md) | comparefaces | 使用 DeepStack 比较两张不同图像中的人脸并返回其相似度。 |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ImageDetectedFaces.md) | &nbsp; | 使用DeepStack将上传图像中的人脸与已知人脸进行比较，从而识别人脸。 |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ImageDetectedObjects.md) | &nbsp; | 使用 DeepStack 对上传的图像中的物体进行检测和分类。 |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ImageDetectedScenes.md) | &nbsp; | 使用DeepStack将图像分类为365个场景类别之一。 |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-RegisteredFaces.md) | &nbsp; | 从DeepStack检索所有已注册的人脸标识符列表。 |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-ImageEnhancement.md) | enhanceimage | 利用DeepStack将图像放大4倍，同时提升画质。 |
| [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Register-AllFaces.md) | UpdateFaces | 更新 faces 目录中图像文件的所有人脸识别配置文件。 |
| [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Register-Face.md) | &nbsp; | 向DeepStack人脸识别API注册一个新的人脸。 |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Unregister-AllFaces.md) | &nbsp; | 从DeepStack人脸识别系统中删除所有已注册的人脸。 |
| [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Unregister-Face.md) | &nbsp; | 根据标识符从DeepStack中删除已注册的人脸。 |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Add-EmoticonsToText.md) | emojify | 使用AI添加符合语境的表情符号来增强文本。 |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertFrom-CorporateSpeak.md) | uncorporatize | Converts polite, professional corporate language into direct, plain speech using AI. |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | 将外交或委婉的语言转化为直接、清晰、明了的语言。 |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertTo-CorporateSpeak.md) | corporatize | Transforms direct or blunt text into polished, professional corporate communication using artificial intelligence. |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertTo-DiplomaticSpeak.md) | diplomatize | The user has provided a set of instructions, but the instructions themselves are not the content to be translated. The actual content to be translated is missing from the input. Please provide the text you wish to have translated. |
| [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Find-Image.md) | findimages, li | 在指定目录中搜索图像文件和元数据，支持过滤功能，并可选基于浏览器的画廊展示。 |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-AIKnownFacesRootpath.md) | &nbsp; | 获取用于 GenXdev.AI 操作的面部图像文件的配置目录。 |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-AIMetaLanguage.md) | getimgmetalang | 获取为图像元数据操作配置的默认语言。 |
| [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-Fallacy.md) | dispicetext | 使用人工智能驱动的检测功能分析文本，识别逻辑谬误。 |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | 从各种流中捕获错误消息，并使用LLM建议修复方法。 |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SimularMovieTitles.md) | &nbsp; | 根据共同属性查找相似的电影标题。 |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-AIPowershellCommand.md) | hint | 使用 AI 辅助生成并执行 PowerShell 命令。 |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-ImageFacesUpdate.md) | imagepeopledetection | 更新指定目录中图像文件的人脸识别元数据。 |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | 使用AI生成的描述和关键词更新图像元数据。 |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-ImageMetadataUpdate.md) | imagepropdetection | 为目录中的图像更新 EXIF 元数据。 |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | 更新指定目录中图像文件的对象检测元数据。 |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-ImageScenesUpdate.md) | imagescenedetection | 更新指定目录中图像文件的场景分类元数据。 |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-LLMBooleanEvaluation.md) | equalstrue | 使用 AI 判断一条陈述的真假。 |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-LLMQuery.md) | qllm, llm | 向兼容OpenAI的大型语言聊天完成API发送查询并处理响应。 |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-LLMStringListEvaluation.md) | getlist, getstring | 使用 AI 分析从输入文本中提取或生成相关字符串列表。 |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-LLMTextTransformation.md) | spellcheck | 使用基于AI的处理转换文本。 |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-QueryImageContent.md) | &nbsp; | 使用 AI 视觉功能分析图像内容 |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-ImageMetaData.md) | removeimagedata | 从图像目录中删除图像元数据文件。 |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Save-FoundImageFaces.md) | saveimagefaces | 从索引图像搜索结果中保存裁剪的面部图像。 |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Save-Transcriptions.md) | &nbsp; | 使用 OpenAI Whisper 为音频和视频文件生成字幕文件。 |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-AIKnownFacesRootpath.md) | &nbsp; | 设置 GenXdev.AI 操作中使用的人脸图像文件目录。 |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-AIMetaLanguage.md) | &nbsp; | 为GenXdev.AI图像元数据操作设置默认语言以及可选的图像目录。 |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Show-FoundImagesInBrowser.md) | showfoundimages | 以瀑布流布局网页画廊显示图像搜索结果。 |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-AudioTranscription.md) | transcribefile, transcribe | 将音频文件、视频文件或录音设备的内容转录为文本 |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Update-AllImageMetaData.md) | updateallimages | 跨多个系统目录批量更新图像关键词、人脸、物体和场景。 |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Add-FeatureLineToREADME.md) | feature | 向 README 文件中添加一条带时间戳的功能行。 |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Add-IdeaLineToREADME.md) | idea | 向 README.md 文件添加一个想法项。 |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Add-IssueLineToREADME.md) | issue | 向 README.md 文件添加一个议题项。 |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Add-LineToREADME.md) | &nbsp; | 在指定部分的README.md Markdown文件中添加一行。 |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Add-ReleaseNoteLineToREADME.md) | releasenote | 向 README 文件添加带时间戳的 ReleaseNote 行。 |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Add-TodoLineToREADME.md) | todo | 在 README.md 文件中添加一个待办事项。 |
| [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-Features.md) | features | 显示 README.md 文件中的功能。 |
| [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-Ideas.md) | ideas | 显示来自 README.md 文件的想法。 |
| [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-Issues.md) | issues | 显示 README.md 文件中的问题。 |
| [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-Refactor.md) | refactors | 根据名称模式从 GenXdev 首选项中检索重构定义。 |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-RefactorReport.md) | refactorreport | 生成重构操作及其状态的详细报告。 |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ReleaseNotes.md) | releasenotes | 显示来自README.md文件的发布说明。 |
| [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-Todoos.md) | todoos | 显示来自 README.md 文件的待办事项。 |
| [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-Refactor.md) | newrefactor | 为代码转换任务创建一个新的重构集。 |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-SourceFileInIde.md) | editcode | 在首选 IDE（Visual Studio Code 或 Visual Studio）中打开源文件。 |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Publish-ReleaseNotesToManifest.md) | pubrelnotes | 将未完成的发布说明从README.md发布到模块清单。 |
| [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-Refactor.md) | &nbsp; | 从 GenXdev 首选项系统中删除重构集。 |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-NextRefactor.md) | nextrefactor | 继续或重新开始代码重构会话。 |
| [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Update-Refactor.md) | updaterefactor | 更新和管理重构集，包括文件选择和处理。 |
| [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/VSCode.md) | &nbsp; | 在 Visual Studio Code 中打开一个或多个文件。 |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GitChangedFiles.md) | gitchanged | 获取Git仓库中更改的文件列表。 |
| [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-GitCommit.md) | commit | 创建并推送包含所有更改的新的git提交。 |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/PermanentlyDeleteGitFolders.md) | &nbsp; | 从 Git 仓库的所有分支中永久删除指定的文件夹。 |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-GenXdevCmdlet.md) | improvecmdlet | 通过AI辅助改进GenXdev cmdlet文档和实现。 |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-GenXdevCmdletTests.md) | improvecmdlettests | 断言并改进指定的GenXdev cmdlet的单元测试。 |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | 验证跨 GenXdev 模块的依赖使用情况，以确保维护正确的模块层次结构。 |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-GenXdevTest.md) | rungenxdevtests | 为GenXdev模块、子模块或cmdlet执行单元测试，具备智能调试和AI驱动的错误解析功能。 |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-ModuleDefinition.md) | &nbsp; | 使用 AI 辅助重构 PowerShell 源代码文件。 |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/EnsureCopilotKeyboardShortCut.md) | &nbsp; | 在 Visual Studio Code 中配置 GitHub Copilot Chat 键盘快捷键。 |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/EnsureDefaultGenXdevRefactors.md) | &nbsp; | 确保默认的 GenXdev 重构定义可用。 |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-CmdletMetaData.md) | &nbsp; | 检索指定 GenXdev cmdlet 的元数据，可选择将帮助文本翻译为其他语言。 |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXDevModule.md) | &nbsp; | 从指定路径检索所有 GenXDev 模块。 |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXDevModuleInfo.md) | &nbsp; | 获取 GenXdev PowerShell 模块的详细信息。 |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | 按依赖顺序检索 GenXDev 模块。 |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ModuleCmdletMetaData.md) | &nbsp; | 检索 PowerShell 模块中所有 cmdlet 的元数据。 |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-GenXdevPSFormatter.md) | &nbsp; | 使用 PSScriptAnalyzer 格式化规则对 PowerShell 脚本文件进行格式化。 |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | 调用 PowerShell 脚本分析器来分析 PowerShell 脚本是否符合规范并遵循最佳实践。 |
| [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-ModuleMarkdownHelp.md) | &nbsp; | 为任何PowerShell模块生成丰富的Markdown帮助文件。 |
| [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-ModuleXmlHelp.md) | &nbsp; | 为任何 PowerShell 模块生成 MAML XML 帮助文件。 |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Search-GenXdevCmdlet.md) | searchcmdlet | 搜索 GenXdev cmdlet，并可选择在 IDE 中打开进行编辑。 |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | 在 Visual Studio Code 中打开指定的 GenXdev cmdlet。 |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Add-ArrayTemplate.md) | FormatArray | 使用包含属性占位符的模板字符串格式化对象集合，生成单个格式化字符串。 |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-DoubleEmptyLines.md) | &nbsp; | 从代码字符串中删除连续的双空行，可选地重新格式化输出。 |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-IsSpeaking.md) | iss | 如果文本转语音引擎正在朗读，则返回 true。 |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-MicrosoftShellTab.md) | x | 创建一个运行 PowerShell 的新 Windows 终端标签页。 |
| [Now](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Now.md) | &nbsp; | 返回当前系统日期和时间作为 DateTime 对象。 |
| [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/SayDate.md) | &nbsp; | 使用文本转语音合成说出当前日期。 |
| [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/SayTime.md) | &nbsp; | 使用文本转语音功能播报当前时间。 |
| [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/secondscreen.md) | &nbsp; | 设置默认第二显示器配置。 |
| [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/sidebyside.md) | &nbsp; | 设置默认的并行配置。 |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-SnakeGame.md) | snake | 在控制台中启动一个简单的贪吃蛇游戏。 |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-TextToSpeech.md) | say | 使用微软Edge的神经TTS引擎将文本转换为语音。 |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Stop-TextToSpeech.md) | sst | 立即停止任何正在进行的文本转语音输出。 |
| [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/UtcNow.md) | &nbsp; | 获取当前 UTC（协调世界时）日期和时间。 |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-KeyValueStoreNames.md) | getstorenames | 检索可用键值存储的名称。 |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-KeyValueStorePath.md) | &nbsp; | 获取键值存储的文件路径。 |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-StoreKeys.md) | getkeys | 检索给定键值存储中的所有键名。 |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ValueByKeyFromStore.md) | getvalue | 从基于 JSON 的键值存储中检索值。 |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Initialize-KeyValueStores.md) | &nbsp; | 初始化用于本地和 OneDrive 存储的 KeyValueStore 目录结构。 |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-KeyFromStore.md) | removekey | 从键值存储中移除一个键。 |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-KeyValueStore.md) | &nbsp; | 删除一个键值存储。 |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-ValueByKeyInStore.md) | setvalue | 管理基于 JSON 文件存储中的键值对。 |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Sync-KeyValueStore.md) | &nbsp; | 同步本地和 OneDrive 键值存储 JSON 文件。 |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXdevPreference.md) | getPreference | 从 GenXdev 首选项存储中检索首选项值。 |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXdevPreferenceNames.md) | getPreferenceNames | 从会话存储和数据库存储中获取所有偏好名称。 |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | 获取用于 GenXdev.Data 操作的偏好数据文件的已配置数据库路径。 |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-GenXdevPreference.md) | removePreference | 从 GenXdev 首选项存储中移除一个首选项值。 |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | 在 GenXdev 首选项存储中设置默认首选项值。 |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-GenXdevPreference.md) | setPreference | 在 GenXdev 首选项存储中设置一个首选项值。 |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | 设置用于 GenXdev.Data 操作的首选项的数据库路径。 |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLiteSchema.md) | &nbsp; | 从 SQLite 数据库中检索完整的架构信息。 |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLiteTableColumnData.md) | &nbsp; | 从 SQLite 数据库表中的特定列检索数据。 |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLiteTableData.md) | &nbsp; | 从 SQLite 数据库表中检索数据，可选择限制记录数。 |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLiteTables.md) | &nbsp; | 从 SQLite 数据库中检索表名列表。 |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLiteTableSchema.md) | &nbsp; | 获取指定 SQLite 表的结构信息。 |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLiteTransaction.md) | getsqltx, newsqltx | 创建并返回一个用于批量操作的 SQLite 事务对象。 |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLiteViewColumnData.md) | &nbsp; | 从 SQLite 视图中检索列数据，并可选择限制记录数。 |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLiteViewData.md) | &nbsp; | 从 SQLite 数据库视图中检索数据，可限制返回记录数。 |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLiteViews.md) | &nbsp; | 从 SQLite 数据库中检索视图列表。 |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLiteViewSchema.md) | &nbsp; | 检索 SQLite 视图的 SQL 架构定义。 |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-SQLiteQuery.md) | &nbsp; | 在SQLite数据库中执行一个或多个SQL查询，支持事务。 |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-SQLiteStudio.md) | &nbsp; | 执行SQLite数据库查询，支持参数和事务。 |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-SQLiteDatabase.md) | nsqldb | 创建一个新的 SQLite 数据库文件。 |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLServerSchema.md) | &nbsp; | 从 SQL Server 数据库中检索完整的架构信息。 |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLServerTableColumnData.md) | &nbsp; | 从SQL数据库表的特定列中检索数据。 |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLServerTableData.md) | &nbsp; | 从SQL数据库表中检索数据，可选限制记录数。 |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLServerTables.md) | &nbsp; | 从 SQL Server 数据库中检索表名称列表。 |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLServerTableSchema.md) | &nbsp; | 检索指定 SQL Server 表的架构信息。 |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLServerTransaction.md) | getsqltx, newsqltx | 创建并返回一个用于批量操作的SQL Server事务对象。 |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLServerViewColumnData.md) | &nbsp; | 从SQL视图中检索列数据，并支持可选的记录限制。 |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLServerViewData.md) | &nbsp; | 从SQL数据库视图中检索数据，并可选择限制记录数。 |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLServerViews.md) | &nbsp; | 从 SQL Server 数据库中检索视图列表。 |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SQLServerViewSchema.md) | &nbsp; | 检索 SQL Server 视图的 SQL 架构定义。 |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-SQLServerQuery.md) | &nbsp; | 对一个SQL Server数据库执行一条或多条SQL查询，支持事务。 |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | 执行SQL Server数据库查询，支持参数和事务。 |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-SQLServerDatabase.md) | nsqldb | 创建一个新的 SQL Server 数据库。 |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Copy-FilesToDateFolder.md) | &nbsp; | 将匹配搜索条件的文件复制到基于日期的子文件夹中。 |
| [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Expand-Path.md) | ep | 将任何给定的文件引用扩展为完整路径名。 |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Find-DuplicateFiles.md) | fdf | 根据可配置的条件在多个目录中查找重复文件。 |
| [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Find-Item.md) | l | 使用高级筛选选项搜索文件和目录。 |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-Fasti.md) | fasti | 提取当前目录中的存档文件到各自的文件夹，然后删除这些存档文件。 |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Move-FilesToDateFolder.md) | &nbsp; | 将匹配搜索条件的文件移动到基于日期的子文件夹中。 |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Move-ItemWithTracking.md) | &nbsp; | 移动文件和目录，同时保留文件系统链接和引用。 |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Move-ToRecycleBin.md) | &nbsp; | 安全地将文件和目录移动到 Windows 回收站。 |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ReadJsonWithRetry.md) | &nbsp; | 包含重试逻辑和自动锁清理的 JSON 文件读取。 |
| [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-AllItems.md) | sdel | 以高级错误处理功能递归删除目录中的所有内容。 |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-ItemWithFallback.md) | rmf | 通过多种回退机制可靠地删除文件或目录。 |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-OnReboot.md) | &nbsp; | 在下次系统启动时标记文件或目录以进行删除。 |
| [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Rename-InProject.md) | rip | 在整个项目目录中执行文本替换。 |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-FoundLocation.md) | lcd | 查找第一个匹配的文件或文件夹，并将当前位置设置为该文件或文件夹。 |
| [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent.md) | .. | 将当前位置更改为父目录并列出其内容。 |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent2.md) | ... | 在文件系统层次结构中向上导航两级目录。 |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent3.md) | .... | 在文件系统层次结构中向上导航三个目录级别。 |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent4.md) | ..... | 在文件系统层次结构中向上导航四级目录。 |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent5.md) | ...... | 在文件系统层次结构中向上导航五个目录级别。 |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-RoboCopy.md) | xc, rc | 为 Microsoft 的稳健复制（RoboCopy）实用程序提供 PowerShell 封装。 |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Write-FileAtomic.md) | &nbsp; | 以原子方式将字节写入文件以防止损坏。 |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Write-JsonFileAtomic.md) | &nbsp; | 以原子方式将对象作为 JSON 写入文件以防止损坏。 |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Write-TextFileAtomic.md) | &nbsp; | 以原子方式写入文本文件，防止损坏。 |

---

## GenXdev.Hardware

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-AudioDeviceNames.md) | &nbsp; | 检索可用于麦克风或桌面音频捕获的音频设备名称。 |
| [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-CpuCore.md) | &nbsp; | 计算并返回系统中逻辑 CPU 核心的总数。 |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-HasCapableGpu.md) | &nbsp; | 确定是否存在具有足够内存的、支持 CUDA 的 GPU。 |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-MonitorCount.md) | &nbsp; | 获取连接到系统的显示器总数。 |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-NumberOfCpuCores.md) | &nbsp; | 计算并返回系统中逻辑 CPU 核心的总数。 |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Test-CpuAvx.md) | &nbsp; | 测试 CPU 是否支持 AVX 和 AVX2 指令集。 |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/alignScript.md) | &nbsp; | 返回一个字符串（带有更改的缩进），来自提供的脚本块字符串 |
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Approve-NewTextFileContent.md) | &nbsp; | 使用 WinMerge 进行交互式文件内容比较与审批。 |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-RefactorFile.md) | &nbsp; | 使用指定的IDE和AI提示模板对源文件执行重构操作。 |
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Confirm-InstallationConsent.md) | &nbsp; | 确认用户同意安装第三方软件时，使用偏好设置以进行持久化选择。 |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Convert-DotNetTypeToLLMType.md) | &nbsp; | 将 .NET 类型名称转换为 LLM（语言模型）类型名称。 |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertTo-HashTable.md) | &nbsp; | 将 PSCustomObject 递归转换为哈希表。 |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | 将PowerShell函数转换为LLM OpenAI API函数定义。 |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Copy-IdenticalParamValues.md) | &nbsp; | 根据另一个函数的可能参数，将绑定参数中的参数值复制到新的哈希表中。 |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/EnsureGenXdev.md) | &nbsp; | 通过调用所有 Ensure* cmdlet 确保所有 GenXdev 模块正确加载。 |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/EnsureNuGetAssembly.md) | &nbsp; | 根据包键或 ID 从 NuGet 包下载并加载 .NET 程序集。 |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/GenerateMasonryLayoutHtml.md) | &nbsp; | 根据图像数据生成响应式瀑布流布局HTML画廊。 |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-AIDefaultLLMSettings.md) | &nbsp; | 获取GenXdev.AI中用于AI操作的所有可用默认LLM设置配置。 |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-BCP47LanguageDictionary.md) | &nbsp; | 返回所有已安装的 BCP 47 语言标记及其显示名称的字典。 |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-DefaultWebLanguage.md) | &nbsp; | 根据系统当前语言设置获取默认的Web语言键。 |
| [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-JsonExampleFromSchema.md) | &nbsp; | 从 JSON Schema 定义生成人类可读的示例 JSON 字符串。 |
| [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-LLMJsonOutput.md) | &nbsp; | 从LLM响应文本中提取有效的JSON，使用最佳启发式方法。 |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-WebLanguageDictionary.md) | &nbsp; | 返回一个反向字典，适用于谷歌搜索支持的所有语言。 |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Import-GenXdevModules.md) | reloadgenxdev | 将所有 GenXdev PowerShell 模块导入全局作用域。 |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Initialize-SearchPaths.md) | &nbsp; | 初始化并配置包管理的系统搜索路径。 |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-CommandFromToolCall.md) | &nbsp; | 执行工具调用函数，并带验证和参数过滤。 |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | 在工作区中的每个 GenXdev 模块上执行脚本块。 |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-JSONComments.md) | &nbsp; | 从 JSON 内容中移除注释。 |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/resetdefaultmonitor.md) | &nbsp; | 恢复默认的辅助显示器配置。 |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ResolveInputObjectFileNames.md) | &nbsp; | 将输入对象扩展为文件和目录名称，支持各种筛选和输出选项。 |
| [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Show-Verb.md) | showverbs | 显示所有 PowerShell 动词的简短字母顺序列表。 |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Test-RefactorLLMSelection.md) | &nbsp; | 使用LLM分析评估源文件的重构可行性。 |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Test-UnattendedMode.md) | &nbsp; | 检测 PowerShell 是否以无人值守/自动模式运行。 |
| [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/WriteFileOutput.md) | &nbsp; | 以超链接显示名称输出文件信息，以提升用户体验。 |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Convert-PhysicsUnit.md) | &nbsp; | 将值从同一类别的一个物理单位转换为另一个物理单位。 |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ApparentSizeAtArmLength.md) | &nbsp; | 计算一臂距离处物体的表观大小。 |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-AtEyeLengthSizeInMM.md) | &nbsp; | 计算手臂长度处物体的表观尺寸（毫米）。 |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | 计算浮力。 |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | 计算向心加速度。 |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | 计算多普勒频移后的频率。 |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | 计算阻力。 |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | 计算逃逸速度。 |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-FreeFallDistance.md) | &nbsp; | 计算给定时间内自由落体的下落距离。 |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-FreeFallHeight.md) | &nbsp; | 计算给定时间内自由落体下落的高度。 |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-FreeFallTime.md) | &nbsp; | 计算物体在自由落体中下落给定高度所需的时间。 |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | 根据高度计算撞击速度。 |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | 计算动能。 |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-LightTravelTimeByDistance.md) | &nbsp; | 计算光传播一段距离所需的时间。 |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | 计算透镜的放大倍率。 |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-MomentumByMassAndVelocity.md) | &nbsp; | 计算线性动量。 |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | 计算轨道速度。 |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | 计算重力势能。 |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | 计算射弹的射程。 |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | 根据斯涅尔定律计算折射角。 |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | 计算闭管谐振频率。 |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-SoundTravelDistanceByTime.md) | &nbsp; | 计算声音在给定时间内传播的距离。 |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | 计算终端速度。 |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | 计算抛射体的飞行时间。 |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | 计算波速。 |

---

## GenXdev.Media

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ImageGeolocation.md) | &nbsp; | 从图像文件中提取地理定位数据。 |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ImageMetadata.md) | &nbsp; | 从图像文件中提取全面的元数据。 |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-MediaFileCreationDate.md) | &nbsp; | 提取媒体和其他文件的最佳近似创建日期。 |
| [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-MediaFile.md) | vlcmedia, media, findmedia | 打开并使用VLC媒体播放器播放媒体文件，支持高级筛选和配置选项。 |
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-VlcMediaPlayer.md) | vlc | 启动并控制VLC媒体播放器，具有丰富的配置选项。 |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-VlcMediaPlayerLyrics.md) | vlclyrics | 打开网页浏览器，搜索当前正在播放的VLC媒体的歌词。 |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | 将焦点设置到 VLC 媒体播放器窗口。 |
| [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/StabilizeVideo.md) | &nbsp; | 使用 FFmpeg + vid.stab 稳定最新或指定的 .mp4 文件（无黑边）。 |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | 将VLC媒体播放器前进到当前播放列表中的下一项。 |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | 移动到 VLC 媒体播放器播放列表中的上一个项目。 |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | 切换 VLC 媒体播放器的静音状态。 |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | 切换 VLC 媒体播放器的暂停/播放状态。 |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | 在VLC媒体播放器中切换重复模式。 |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertTo-Uris.md) | &nbsp; | 解析字符串以查找任何有效的 URI。 |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-AllPossibleQueries.md) | qq | 为给定的搜索词或URL打开所有可能的查询类型。 |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-BingCopilotQuery.md) | aibc | 在网络浏览器中打开 Bing CoPilot 查询 |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | 在网络浏览器中打开ChatGPT查询。 |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-CloudLLMChat.md) | ask | 打开用于AI查询的云LLM聊天界面。 |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | 在网页浏览器中打开 DeepSeek 查询 |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-GithubCopilotQuery.md) | aigc, askghcopilot | 在网页浏览器中打开 GitHub Copilot 查询 |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-GoogleGeminiQuery.md) | aigg, askgemini | 在网络浏览器中打开 Google Gemini 查询 |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-XGrokQuery.md) | aixg, askxgrok | 在网络浏览器中打开一个X Grok查询 |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-NextAffirmation.md) | WhatAboutIt | 从 affirmations.dev API 返回一条随机肯定语。 |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-WikipediaSummary.md) | wikitxt | 从维基百科检索主题摘要。 |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Copy-PDFsFromGoogleQuery.md) | &nbsp; | 下载通过谷歌搜索结果找到的PDF文件。 |
| [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-BingQuery.md) | bq | 在Web浏览器中打开Bing搜索查询。 |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-BuiltWithSiteInfo.md) | &nbsp; | 在网页浏览器中打开 BuiltWith 网站查询。 |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-GithubQuery.md) | qgithub, qgh | 在网页浏览器中打开 GitHub 仓库搜索查询，或针对 GitHub REST API 执行高级搜索，支持所有可用的限定符和搜索类别（仓库、代码、问题、用户、提交、讨论、主题、Wiki）。 |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-GoogleQuery.md) | &nbsp; | 在网页浏览器中打开谷歌查询，提供可配置的设置和广泛的定制选项。 |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-GoogleSiteInfo.md) | &nbsp; | 在网页浏览器中打开 Google 站点信息查询。 |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-GrokipediaQuery.md) | wiki | 在网页浏览器中打开 Grokipedia 查询。 |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-IMDBQuery.md) | imdb | 在网页浏览器中打开 IMDB 搜索查询。 |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-InstantStreetViewQuery.md) | isv | 在网页浏览器中打开InstantStreetView查询。 |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-MovieQuote.md) | moviequote | 在网络浏览器中打开一段电影台词视频。 |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-SearchEngine.md) | q | 在指定的搜索引擎中使用 Web 浏览器打开搜索查询。 |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-SimularWebSiteInfo.md) | simularsite | 在网页浏览器中打开指定 URL 的 SimilarWeb 网站信息。 |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-StackOverflowQuery.md) | qso | 在网络浏览器中打开 Stack Overflow 搜索查询。 |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WaybackMachineSiteInfo.md) | wayback | 在 Web 浏览器中打开 WaybackMachine 网站信息。 |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WebsiteAndPerformQuery.md) | owaq | 在网页浏览器中打开一个网页并执行一个或多个查询。 |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WhoisHostSiteInfo.md) | whois | 在网络浏览器中打开 Whois 主机信息查询。 |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WikipediaNLQuery.md) | wikinl | 在网页浏览器中打开荷兰语维基百科搜索。 |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WikipediaQuery.md) | wikipedia | 在网页浏览器中打开维基百科查询。 |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WolframAlphaQuery.md) | qalpha | 在网络浏览器中打开 Wolfram Alpha 查询。 |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-YoutubeQuery.md) | youtube | 在网络浏览器中打开 YouTube 搜索查询。 |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-GameOfLife.md) | gameoflife, conway | 在网页浏览器中打开康威生命游戏模拟。 |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-GenXdevAppCatalog.md) | appcatalog | 在网页浏览器中打开 GenXdev 渐进式网络应用目录。 |
| [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-Timeline.md) | timeline | 打开一个互动时间线，显示当前时间、日期、世纪和千年。 |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-ViralSimulation.md) | viral | 在网络浏览器中打开一款病毒模拟游戏，提供丰富的配置选项。 |
| [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-Yab.md) | yab | 在网页浏览器中打开YAB游戏，并提供可配置设置。 |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-YabAIBattle.md) | yabbattle | 在网页浏览器中打开 YabAI 战斗游戏。 |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Close-Webbrowser.md) | wbc | 有选择地关闭一个或多个浏览器实例。 |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Close-WebbrowserTab.md) | ct, CloseTab | 关闭当前选中的浏览器选项卡。 |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Export-BrowserBookmarks.md) | &nbsp; | 将浏览器书签导出到 JSON 文件。 |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Find-BrowserBookmark.md) | bookmarks | 从多个 Web 浏览器中查找书签。 |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-BrowserBookmark.md) | gbm | 从已安装的网页浏览器返回所有书签。 |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-DefaultWebbrowser.md) | &nbsp; | 返回当前用户配置的默认 Web 浏览器。 |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-PlaywrightSessionReference.md) | &nbsp; | 获取对当前 Playwright 浏览器会话的引用。 |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-Webbrowser.md) | &nbsp; | 返回已安装的现代 Web 浏览器的集合。 |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-WebbrowserTabDomNodes.md) | wl | 使用CSS选择器查询并操作活动浏览器选项卡中的DOM节点。 |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Import-BrowserBookmarks.md) | &nbsp; | 从文件或收藏集中导入书签到网页浏览器。 |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Import-GenXdevBookmarkletMenu.md) | &nbsp; | 将 GenXDev JavaScript 书签导入浏览器书签集合。 |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-WebbrowserEvaluation.md) | Eval, et | 在选定的网页浏览器标签中执行JavaScript代码。 |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-BrowserBookmarks.md) | sites | 打开与指定搜索条件匹配的浏览器书签。 |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-Webbrowser.md) | wb | 在一个或多个浏览器窗口中打开URL，并可选择设置位置和样式。 |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WebbrowserSideBySide.md) | wbn | 启动一个新的网页浏览器窗口，并指定其位置。 |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Select-WebbrowserTab.md) | st | 从正在运行的 Playwright 管理的浏览器中选择一个浏览器选项卡。 |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-BrowserVideoFullscreen.md) | fsvideo | 最大化当前浏览器标签页中找到的第一个视频元素。 |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-WebbrowserTabLocation.md) | lt, Nav | 将当前 Web 浏览器选项卡导航到指定的 URL。 |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Show-WebsiteInAllBrowsers.md) | &nbsp; | 以马赛克布局在多个浏览器中同时打开一个 URL。 |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | 通过调试端口连接到现有的浏览器实例。 |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-PlaywrightProfileDirectory.md) | &nbsp; | 获取用于持久化会话的 Playwright 浏览器配置文件目录。 |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-PlayWrightBrowser.md) | spb | 启动一个带有持久用户配置文件的 Playwright 管理浏览器。 |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Resume-WebbrowserTabVideo.md) | wbvideoplay | 在 YouTube 浏览器标签页中恢复视频播放。 |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | 在所有活跃的浏览器会话中暂停视频播放。 |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Unprotect-WebbrowserTab.md) | wbctrl | 获取对选定网页浏览器选项卡的控制权以进行交互式操作。 |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/CurrentUserHasElevatedRights.md) | &nbsp; | 检查当前用户是否具有提升的权限。 |
| [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Enable-Screensaver.md) | &nbsp; | 启动配置的 Windows 屏幕保护程序。 |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ActiveUser.md) | gusers | 检索当前系统活动进程中唯一的用户名列表。 |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ChildProcesses.md) | &nbsp; | 检索当前 PowerShell 进程的所有后代进程。 |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ClipboardFiles.md) | getclipfiles, gcbf | 从用于复制/粘贴等文件操作的Windows剪贴板获取文件。 |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-CurrentFocusedProcess.md) | &nbsp; | 检索当前拥有键盘焦点的窗口的进程对象。 |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-DesktopScalingFactor.md) | &nbsp; | 检索指定显示器的 Windows 显示缩放比例（DPI 设置）。 |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ForegroundWindow.md) | &nbsp; | 获取当前活动前台窗口的句柄。 |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-KnownFolderPath.md) | folder | 使用 Windows Shell32 API 获取 Windows 已知文件夹的路径。 |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-MpCmdRunPath.md) | &nbsp; | 获取 Windows Defender MpCmdRun.exe 可执行文件的路径。 |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-OpenedFileHandleProcesses.md) | &nbsp; | 检索对指定文件持有打开句柄的进程。 |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-PowershellMainWindow.md) | &nbsp; | 返回 PowerShell 终端主窗口的窗口帮助对象。 |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-PowershellMainWindowProcess.md) | &nbsp; | 返回承载 PowerShell 终端窗口的进程对象。 |
| [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-Window.md) | &nbsp; | 获取指定进程或窗口句柄的窗口信息。 |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-WindowPosition.md) | gwp | 获取窗口的位置和状态信息。 |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Initialize-ScheduledTaskScripts.md) | &nbsp; | 创建按指定间隔运行 PowerShell 脚本的计划任务。 |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-WindowsUpdate.md) | updatewindows | 检查Windows是否为最新状态，并可选择安装可用更新。 |
| [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Pop-Window.md) | popw | 从堆栈中弹出最后一个活动窗口助手，并可选择进行修改。 |
| [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Push-Window.md) | pushw | 将当前窗口推入窗口堆栈，并可选择进行修改。 |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Save-DesktopScreenShot.md) | &nbsp; | 捕获指定显示器的屏幕截图并保存到指定路径。 |
| [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Send-Key.md) | sendkeys, invokekeys | 向窗口或进程发送模拟的键盘按键。 |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Send-WakeOnLan.md) | &nbsp; | 发送一个Wake-on-LAN魔法数据包以唤醒网络上的远程计算机。 |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-ClipboardFiles.md) | setclipfiles, scbf | 将文件设置到Windows剪贴板中，用于复制/粘贴等文件操作。 |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-ForegroundWindow.md) | &nbsp; | 将指定的窗口带到前台，并将其设为活动窗口。 |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-KnownFolderPath.md) | &nbsp; | 修改Windows已知文件夹的物理路径。 |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-MonitorPowerOff.md) | poweroff | 关闭所有已连接显示器的电源。 |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | 打开显示器电源。 |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-TaskbarAlignment.md) | &nbsp; | 配置 Windows 11+ 任务栏对齐方式，在居中和左对齐之间切换。 |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-WindowPosition.md) | wp | 当提供了显式定位参数时，可定位并调整窗口大小。 |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-WindowPositionForSecondary.md) | wps | 在辅助显示器上按指定的布局选项定位窗口。 |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-WindowsWallpaper.md) | &nbsp; | 从指定目录中随机设置一张壁纸。 |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-ProcessWithPriority.md) | nice | 以指定的优先级级别启动进程。 |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | 使用 Windows Defender 扫描文件或目录以查找恶意软件。 |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Add-WireGuardPeer.md) | &nbsp; | 向服务器添加新的 WireGuard VPN 对等（客户端）配置。 |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/EnsureWireGuard.md) | &nbsp; | 确保通过 Docker 容器安装并运行 WireGuard VPN 服务。 |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-WireGuardPeerQRCode.md) | &nbsp; | 为 WireGuard VPN 对等配置生成 QR 码。 |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-WireGuardPeers.md) | &nbsp; | 获取系统上所有已配置的 WireGuard VPN 对等体的信息。 |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-WireGuardStatus.md) | &nbsp; | 获取 WireGuard VPN 服务器的详细状态信息。 |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-WireGuardPeer.md) | &nbsp; | 删除一个WireGuard VPN对等体配置。 |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Reset-WireGuardConfiguration.md) | &nbsp; | 重置 WireGuard VPN 服务器配置，移除所有对等点。 |
