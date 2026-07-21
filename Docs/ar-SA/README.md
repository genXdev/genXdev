# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-21.

## GenXdev

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXDevCmdlet.md) | gcmds | يسترد ويسرد جميع أوامر GenXdev وتفاصيلها. |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-GenXdevCmdlet.md) | cmds | يعرض وحدات GenXdev في PowerShell مع أوامرها cmdlets والأسماء المستعارة. |

---

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AILLMSettings.md) | &nbsp; | يحصل على إعدادات LLM لعمليات الذكاء الاصطناعي في GenXdev.AI. |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SpeechToText.md) | &nbsp; | يحول ملفات الصوت إلى نص باستخدام نموذج التعرف على الكلام Whisper من OpenAI. |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-TextTranslation.md) | translate | يترجم النص إلى لغة أخرى باستخدام الذكاء الاصطناعي. |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-VectorSimilarity.md) | &nbsp; | تحسب التشابه التجميعي بين متجهين. |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-WinMerge.md) | &nbsp; | يطلق WinMerge لمقارنة ملفين جنبًا إلى جنب. |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Merge-TranslationCache.md) | &nbsp; | يدير ذاكرة التخزين المؤقت للترجمة الدائمة مع عمليات كتابة القرص المجمعة لكل لغة. |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-LLMAudioChat.md) | llmaudiochat | ينشئ جلسة محادثة صوتية تفاعلية مع نموذج LLM. |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-LLMTextChat.md) | llmchat | يبدأ جلسة محادثة نصية تفاعلية مع قدرات الذكاء الاصطناعي. |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Receive-RealTimeSpeechToText.md) | &nbsp; | يحول إدخال الصوت في الوقت الفعلي إلى نص باستخدام نموذج Whisper AI. |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AILLMSettings.md) | &nbsp; | يضبط إعدادات LLM لعمليات الذكاء الاصطناعي في GenXdev.AI. |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | يقوم بإعداد معالجة مخصصة للأوامر غير موجودة مع مساعدة اختيارية من الذكاء الاصطناعي. |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-DeepLinkImageFile.md) | &nbsp; | اختبار ما إذا كان مسار الملف المحدد هو ملف صورة صالح بتنسيق مدعوم. |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Compare-ImageFaces.md) | comparefaces | يقارن الوجوه في صورتين مختلفتين ويعيد درجة التشابه بينهما باستخدام DeepStack. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedFaces.md) | &nbsp; | يتعرف على الوجوه في صورة مرفوعة من خلال مقارنتها بوجوه معروفة باستخدام DeepStack. |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedObjects.md) | &nbsp; | يكتشف ويصنف الكائنات في صورة مرفوعة باستخدام DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedScenes.md) | &nbsp; | يصّنف صورة إلى واحدة من 365 فئة مشهد باستخدام DeepStack. |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-RegisteredFaces.md) | &nbsp; | يسترد قائمة بجميع معرفات الوجوه المسجلة من DeepStack. |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageEnhancement.md) | enhanceimage | يعزز الصورة بتكبيرها 4 مرات مع تحسين الجودة باستخدام DeepStack. |
| [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Register-AllFaces.md) | UpdateFaces | يقوم بتحديث جميع ملفات التعرف على الوجوه من ملفات الصور في دليل الوجوه. |
| [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Register-Face.md) | &nbsp; | يسجل وجهًا جديدًا باستخدام واجهة برمجة تطبيقات التعرف على الوجوه من DeepStack. |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Unregister-AllFaces.md) | &nbsp; | يزيل جميع الوجوه المسجلة من نظام التعرف على الوجوه DeepStack. |
| [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Unregister-Face.md) | &nbsp; | يقوم بحذف وجه مسجل حسب معرفه من DeepStack. |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-EmoticonsToText.md) | emojify | يعزز النص عن طريق إضافة رموز تعبيرية مناسبة للسياق باستخدام الذكاء الاصطناعي. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertFrom-CorporateSpeak.md) | uncorporatize | يحول الخطاب المؤسسي المهذب والاحترافي إلى لغة مباشرة وواضحة باستخدام الذكاء الاصطناعي. |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | يحول اللغة الدبلوماسية أو اللبقة إلى لغة مباشرة وواضحة ومباشرة. |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-CorporateSpeak.md) | corporatize | يحول النص المباشر أو الفظ إلى لغة مهنية مهذبة ومحترمة باستخدام الذكاء الاصطناعي. |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-DiplomaticSpeak.md) | diplomatize | يحوِّل النص المباشر أو الفظ إلى لغة دبلوماسية مهذبة ولبقة. |
| [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-Image.md) | findimages, li | يبحث عن ملفات الصور والبيانات الوصفية في أدلة محددة مع إمكانيات التصفية وعرض اختياري في معرض يعتمد على المتصفح. |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AIKnownFacesRootpath.md) | &nbsp; | يحصل على الدليل المهيأ لملفات صور الوجوه المستخدمة في عمليات GenXdev.AI. |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AIMetaLanguage.md) | getimgmetalang | يحصل على اللغة الافتراضية المهيأة لعمليات بيانات الصور الوصفية. |
| [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Fallacy.md) | dispicetext | يحلل النص لتحديد المغالطات المنطقية باستخدام الكشف المدعوم بالذكاء الاصطناعي. |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | يلتقط رسائل الخطأ من مصادر متعددة ويستخدم نموذج اللغة لتقديم اقتراحات الإصلاح. |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SimularMovieTitles.md) | &nbsp; | البحث عن عناوين أفلام متشابهة بناءً على الخصائص المشتركة. |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-AIPowershellCommand.md) | hint | يقوم بإنشاء وتنفيذ أوامر PowerShell باستخدام المساعدة من الذكاء الاصطناعي. |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageFacesUpdate.md) | imagepeopledetection | يقوم بتحديث بيانات تعريف التعرف على الوجه لملفات الصور في دليل محدد. |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | يقوم بتحديث بيانات الصورة الوصفية باستخدام أوصاف وكلمات مفتاحية تم إنشاؤها بواسطة الذكاء الاصطناعي. |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageMetadataUpdate.md) | imagepropdetection | تحديث بيانات EXIF الوصفية للصور في مجلد. |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | يقوم بتحديث بيانات تعريف اكتشاف الكائنات لملفات الصور في دليل محدد. |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageScenesUpdate.md) | imagescenedetection | يقوم بتحديث بيانات تعريف تصنيف المشهد لملفات الصور في دليل محدد. |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-LLMBooleanEvaluation.md) | equalstrue | يقيم عبارة باستخدام الذكاء الاصطناعي لتحديد ما إذا كانت صحيحة أم خاطئة. |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-LLMQuery.md) | qllm, llm | يرسل استعلامات إلى واجهة برمجة تطبيقات إكمال الدردشة للغة الكبيرة المتوافقة مع OpenAI ويعالج الردود. |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-LLMStringListEvaluation.md) | getlist, getstring | استخراج أو إنشاء قائمة من السلاسل النصية ذات الصلة من النص المدخل باستخدام تحليل الذكاء الاصطناعي. |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-LLMTextTransformation.md) | spellcheck | يحول النص باستخدام معالجة تعمل بالذكاء الاصطناعي. |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-QueryImageContent.md) | &nbsp; | يحلل محتوى الصورة باستخدام قدرات الرؤية الذكاء الاصطناعي |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-ImageMetaData.md) | removeimagedata | يزيل ملفات بيانات الصور الوصفية من أدلة الصور. |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Save-FoundImageFaces.md) | saveimagefaces | يحفظ صور الوجوه المقتصة من نتائج البحث عن الصور المفهرسة. |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Save-Transcriptions.md) | &nbsp; | يُولّد ملفات ترجمة للملفات الصوتية والفيديو باستخدام ويسبر من أوبن إيه آي. |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AIKnownFacesRootpath.md) | &nbsp; | يضبط دليل ملفات صور الوجوه المستخدمة في عمليات GenXdev.AI. |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AIMetaLanguage.md) | &nbsp; | يقوم بتعيين اللغة الافتراضية وأدلة الصور اختيارياً لعمليات بيانات وصف الصور الخاصة بـ GenXdev.AI. |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-FoundImagesInBrowser.md) | showfoundimages | يعرض نتائج البحث عن الصور في معرض ويب بتخطيط البناء. |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-AudioTranscription.md) | transcribefile, transcribe | ينسخ ملف صوتي، ملف فيديو، أو جهاز تسجيل إلى نص |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Update-AllImageMetaData.md) | updateallimages | تحديث دفعة للكلمات الرئيسية للصور والوجوه والكائنات والمشاهد عبر أدلة نظام متعددة. |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-FeatureLineToREADME.md) | feature | يضيف سطر ميزة إلى ملف README مع طابع زمني. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-IdeaLineToREADME.md) | idea | يُضيف عنصر فكرة إلى ملف README.md. |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-IssueLineToREADME.md) | issue | يضيف عنصر مشكلة إلى ملف README.md. |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-LineToREADME.md) | &nbsp; | يضيف سطرًا إلى ملف README.md الخاص بـ Markdown في قسم محدد. |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-ReleaseNoteLineToREADME.md) | releasenote | يُضيف سطر ReleaseNote إلى ملف README مع طابع زمني. |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-TodoLineToREADME.md) | todo | يضيف عنصر مهام إلى ملف README.md. |
| [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Features.md) | features | يعرض الميزات من ملف README.md. |
| [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Ideas.md) | ideas | يعرض الأفكار من ملف README.md. |
| [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Issues.md) | issues | يعرض المشكلات من ملف README.md. |
| [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Refactor.md) | refactors | يسترد تعريفات إعادة الهيكلة من تفضيلات GenXdev بناءً على أنماط الأسماء. |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-RefactorReport.md) | refactorreport | ينشئ تقريرًا مفصلاً عن عمليات إعادة الهيكلة وحالتها. |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ReleaseNotes.md) | releasenotes | يعرض ReleaseNotes من ملف README.md. |
| [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Todoos.md) | todoos | يعرض عناصر المهام من ملف README.md. |
| [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-Refactor.md) | newrefactor | إنشاء مجموعة إعادة هيكلة جديدة لمهام تحويل الكود. |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-SourceFileInIde.md) | editcode | يفتح ملف مصدري في بيئة التطوير المتكاملة المفضلة (Visual Studio Code أو Visual Studio). |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Publish-ReleaseNotesToManifest.md) | pubrelnotes | ينشر ملاحظات الإصدار غير المكتملة من README.md إلى بيان الوحدة النمطية. |
| [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-Refactor.md) | &nbsp; | يقوم بإزالة مجموعات إعادة الهيكلة من نظام تفضيلات GenXdev. |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-NextRefactor.md) | nextrefactor | يواصل أو يعيد جلسة إعادة هيكلة الشفرة. |
| [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Update-Refactor.md) | updaterefactor | يقوم بإدارة وتحديث مجموعات إعادة الهيكلة بما في ذلك اختيار الملفات ومعالجتها. |
| [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/VSCode.md) | &nbsp; | يفتح ملفًا واحدًا أو أكثر في Visual Studio Code. |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GitChangedFiles.md) | gitchanged | احصل على قائمة الملفات التي تم تغييرها في مستودع Git. |
| [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-GitCommit.md) | commit | ينشئ ويدفع التزام git جديد بجميع التغييرات. |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/PermanentlyDeleteGitFolders.md) | &nbsp; | يحذف المجلدات المحددة بشكل دائم من جميع الفروع في مستودع Git. |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-GenXdevCmdlet.md) | improvecmdlet | تعمل على تحسين توثيق وتنفيذ أوامر GenXdev cmdlet من خلال المساعدة بالذكاء الاصطناعي. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-GenXdevCmdletTests.md) | improvecmdlettests | تؤكد وتحسن اختبارات الوحدة الخاصة بأمر cmdlet محدد من GenXdev. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | يتحقق من استخدام التبعيات عبر وحدات GenXdev النمطية لضمان الحفاظ على التسلسل الهرمي الصحيح للوحدات. |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-GenXdevTest.md) | rungenxdevtests | ينفذ اختبارات الوحدات لوحدات GenXdev النمطية أو الوحدات الفرعية أو أوامر cmdlets مع تصحيح أخطاء ذكي وحل أخطاء مدعوم بالذكاء الاصطناعي. |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-ModuleDefinition.md) | &nbsp; | يساعد في إعادة هيكلة ملفات كود مصدر PowerShell باستخدام مساعدة الذكاء الاصطناعي. |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureCopilotKeyboardShortCut.md) | &nbsp; | يقوم بتكوين اختصارات لوحة المفاتيح لـ GitHub Copilot Chat في Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureDefaultGenXdevRefactors.md) | &nbsp; | يضمن توفر تعريفات إعادة هيكلة GenXdev الافتراضية. |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-CmdletMetaData.md) | &nbsp; | يسترد بيانات التعريف الخاصة بأمر GenXdev المحدد، مع إمكانية ترجمة نص المساعدة إلى لغة أخرى. |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXDevModule.md) | &nbsp; | استرداد جميع وحدات GenXDev من مسار محدد. |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXDevModuleInfo.md) | &nbsp; | استرداد معلومات مفصلة حول وحدات GenXdev الخاصة بـ PowerShell. |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | استرداد وحدات GenXDev بترتيب التبعية. |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ModuleCmdletMetaData.md) | &nbsp; | يقوم باسترداد البيانات الوصفية لجميع أدوات cmdlet في وحدة PowerShell. |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-GenXdevPSFormatter.md) | &nbsp; | تنسيق ملفات البرامج النصية لـ PowerShell باستخدام قواعد تنسيق PSScriptAnalyzer. |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | يستدعي محلل نصوص PowerShell لتحليل نصوص PowerShell للتحقق من الامتثال وأفضل الممارسات. |
| [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-ModuleMarkdownHelp.md) | &nbsp; | ينشئ ملفات تعليمات Markdown غنية لأي وحدة PowerShell. |
| [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-ModuleXmlHelp.md) | &nbsp; | يقوم بإنشاء ملفات تعليمات MAML XML لأي وحدة نمطية في PowerShell. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Search-GenXdevCmdlet.md) | searchcmdlet | يبحث عن أمر GenXdev cmdlet، ويفتحه اختيارياً في بيئة تطوير متكاملة (IDE) للتحرير. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | يفتح أمر GenXdev المحدد في Visual Studio Code. |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-ArrayTemplate.md) | FormatArray | يقوم بتنسيق مجموعة من الكائنات باستخدام سلسلة قالب تحتوي على عناصر نائبة للخصائص، مما ينتج سلسلة منسقة واحدة. |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-DoubleEmptyLines.md) | &nbsp; | يزيل الأسطر الفارغة المزدوجة (المتتالية) من سلسلة نص برمجي، مع إمكانية إعادة تنسيق المخرجات. |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-IsSpeaking.md) | iss | يُرجع قيمة صحيحة إذا كان محرك تحويل النص إلى كلام يتحدث. |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-MicrosoftShellTab.md) | x | إنشاء علامة تبويب جديدة في محطة Windows Terminal تعمل بواسطة PowerShell. |
| [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Now.md) | &nbsp; | إرجاع تاريخ ووقت النظام الحاليين ككائن DateTime. |
| [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/SayDate.md) | &nbsp; | ينطق التاريخ الحالي باستخدام التوليف الصوتي للنص. |
| [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/SayTime.md) | &nbsp; | يعلن الوقت الحالي باستخدام تحويل النص إلى كلام. |
| [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/secondscreen.md) | &nbsp; | تعيين التكوين الافتراضي للشاشة الثانية. |
| [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/sidebyside.md) | &nbsp; | تعيين التكوين الافتراضي للتشغيل جنبًا إلى جنب. |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-SnakeGame.md) | snake | يبدأ لعبة ثعبان بسيطة في وحدة التحكم. |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-TextToSpeech.md) | say | يحول النص إلى كلام باستخدام محرك TTS العصبي من Microsoft Edge. |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Stop-TextToSpeech.md) | sst | يوقف فورًا أي إخراج نص إلى كلام قيد التنفيذ. |
| [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/UtcNow.md) | &nbsp; | يحصل على التاريخ والوقت الحاليين بالتوقيت العالمي المنسق (UTC). |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-KeyValueStoreNames.md) | getstorenames | يسترجع أسماء مخازن المفاتيح والقيم المتاحة. |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-KeyValueStorePath.md) | &nbsp; | يحصل على مسار الملف لمخزن قيمة المفتاح. |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-StoreKeys.md) | getkeys | استرداد جميع أسماء المفاتيح لمخزن قيمة المفتاح المحدد. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ValueByKeyFromStore.md) | getvalue | استرداد قيمة من مخزن قيم رئيسي قائم على JSON. |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Initialize-KeyValueStores.md) | &nbsp; | يقوم بتهيئة بنية دليل KeyValueStore للتخزين المحلي والتخزين في OneDrive. |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-KeyFromStore.md) | removekey | يزيل مفتاحًا من مخزن القيمة-المفتاح. |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-KeyValueStore.md) | &nbsp; | يزيل مخزن القيم الأساسية. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-ValueByKeyInStore.md) | setvalue | يدير أزواج المفاتيح والقيم في مخزن قائم على ملفات JSON. |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Sync-KeyValueStore.md) | &nbsp; | مزامنة ملفات JSON لمخزن المفاتيح والقيم المحلية و OneDrive. |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreference.md) | getPreference | يسترد قيمة تفضيل من مخزن تفضيلات GenXdev. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreferenceNames.md) | getPreferenceNames | يحصل على جميع أسماء التفضيلات من تخزين الجلسة و مخازن قاعدة البيانات. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | يحصل على مسار قاعدة البيانات المهيأة لملفات بيانات التفضيلات المستخدمة في عمليات GenXdev.Data. |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-GenXdevPreference.md) | removePreference | يزيل قيمة تفضيل من مخزن تفضيلات GenXdev. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | يعيّن قيمة تفضيل افتراضية في متجر تفضيلات GenXdev. |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreference.md) | setPreference | يضبط قيمة تفضيل في مخزن تفضيلات GenXdev. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | يُعيّن مسار قاعدة البيانات للتفضيلات المستخدمة في عمليات GenXdev.Data. |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLiteSchema.md) | &nbsp; | استرداد معلومات المخطط الكامل من قاعدة بيانات SQLite. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLiteTableColumnData.md) | &nbsp; | يسترد البيانات من عمود محدد في جدول قاعدة بيانات SQLite. |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLiteTableData.md) | &nbsp; | يسترد البيانات من جدول قاعدة بيانات SQLite مع إمكانية تحديد عدد السجلات. |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLiteTables.md) | &nbsp; | يسترد قائمة بأسماء الجداول من قاعدة بيانات SQLite. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLiteTableSchema.md) | &nbsp; | استرداد معلومات المخطط لجداول قاعدة بيانات SQLite المحددة. |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLiteTransaction.md) | getsqltx, newsqltx | يقوم بإنشاء وإرجاع كائن معاملة SQLite لعمليات الدُفعة. |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLiteViewColumnData.md) | &nbsp; | يجلب بيانات الأعمدة من عرض SQLite مع تحديد اختياري للسجلات. |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLiteViewData.md) | &nbsp; | يسترد البيانات من عرض قاعدة بيانات SQLite مع إمكانية تحديد عدد السجلات. |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLiteViews.md) | &nbsp; | استرداد قائمة من العروض من قاعدة بيانات SQLite. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLiteViewSchema.md) | &nbsp; | يسترد تعريف مخطط SQL لعرض SQLite. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-SQLiteQuery.md) | &nbsp; | ينفذ استعلام SQL واحدًا أو أكثر مقابل قاعدة بيانات SQLite مع دعم المعاملات. |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-SQLiteStudio.md) | &nbsp; | تنفيذ استعلامات قاعدة بيانات SQLite مع دعم المعاملات والمعاملات. |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-SQLiteDatabase.md) | nsqldb | ينشئ ملف قاعدة بيانات SQLite جديدة. |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLServerSchema.md) | &nbsp; | استرداد معلومات المخطط الكامل من قاعدة بيانات SQL Server. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLServerTableColumnData.md) | &nbsp; | يسترد البيانات من عمود معين في جدول قاعدة بيانات SQL. |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLServerTableData.md) | &nbsp; | يسترجع البيانات من جدول قاعدة بيانات SQL مع تحديد اختياري للعدد الأقصى للسجلات. |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLServerTables.md) | &nbsp; | استرداد قائمة بأسماء الجداول من قاعدة بيانات SQL Server. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLServerTableSchema.md) | &nbsp; | استرداد معلومات المخطط لجدول SQL Server محدد. |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLServerTransaction.md) | getsqltx, newsqltx | يقوم بإنشاء وإرجاع كائن معاملة SQL Server لعمليات الدفعات. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLServerViewColumnData.md) | &nbsp; | يسترد بيانات الأعمدة من عرض SQL مع إمكانية تحديد عدد السجلات. |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLServerViewData.md) | &nbsp; | يسترد البيانات من عرض قاعدة بيانات SQL مع إمكانية تحديد عدد السجلات. |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLServerViews.md) | &nbsp; | استرداد قائمة من العروض من قاعدة بيانات SQL Server. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SQLServerViewSchema.md) | &nbsp; | يسترجع تعريف مخطط SQL لعرض SQL Server. |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-SQLServerQuery.md) | &nbsp; | يقوم بتنفيذ استعلام SQL واحد أو أكثر على قاعدة بيانات SQL Server مع دعم المعاملات. |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | ينفذ استعلامات قاعدة بيانات SQL Server مع دعم المعاملات والعمليات. |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-SQLServerDatabase.md) | nsqldb | ينشئ قاعدة بيانات جديدة لخادم SQL. |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Copy-FilesToDateFolder.md) | &nbsp; | ينسخ الملفات التي تطابق معايير البحث إلى مجلدات فرعية حسب التاريخ. |
| [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Expand-Path.md) | ep | يقوم بتوسيع أي مرجع ملف معين إلى مسار كامل. |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-DuplicateFiles.md) | fdf | البحث عن الملفات المكررة عبر أدلة متعددة بناءً على معايير قابلة للتكوين. |
| [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-Item.md) | l | ابحث عن الملفات والدلائل باستخدام خيارات تصفية متقدمة. |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-Fasti.md) | fasti | استخراج ملفات الأرشيف في الدليل الحالي إلى مجلداتها الخاصة وحذفها بعد ذلك. |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Move-FilesToDateFolder.md) | &nbsp; | ينقل الملفات التي تطابق معايير البحث إلى مجلدات فرعية قائمة على التاريخ. |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Move-ItemWithTracking.md) | &nbsp; | ينقل الملفات والأدلة مع الحفاظ على روابط نظام الملفات والمراجع. |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Move-ToRecycleBin.md) | &nbsp; | ينقل الملفات والمجلدات إلى سلة المحذوفات في ويندوز بأمان. |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ReadJsonWithRetry.md) | &nbsp; | يقرأ ملف JSON مع منطق إعادة المحاولة وتنظيف القفل تلقائيًا. |
| [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-AllItems.md) | sdel | يقوم بإزالة جميع المحتويات من دليل بشكل متكرر مع معالجة متقدمة للأخطاء. |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-ItemWithFallback.md) | rmf | يزيل الملفات أو الدلائل بآليات احتياطية متعددة للحذف الموثوق. |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-OnReboot.md) | &nbsp; | يقوم بتمييز الملفات أو المجلدات للحذف أثناء بدء تشغيل النظام التالي. |
| [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Rename-InProject.md) | rip | يقوم بإجراء استبدال النص في جميع أنحاء دليل المشروع. |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-FoundLocation.md) | lcd | يعثر على أول ملف أو مجلد مطابق ويضبط الموقع عليه. |
| [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent.md) | .. | يغير الموقع الحالي إلى المجلد الأصل ويعرض محتوياته. |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent2.md) | ... | ينتقل لأعلى مستويين من الدليل في التسلسل الهرمي لنظام الملفات. |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent3.md) | .... | ينتقل لأعلى ثلاثة مستويات من الدليل في التسلسل الهرمي لنظام الملفات. |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent4.md) | ..... | ينتقل لأعلى أربعة مستويات دليل في التسلسل الهرمي لنظام الملفات. |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent5.md) | ...... | ينتقل إلى أعلى خمسة مستويات من الدليل في التسلسل الهرمي لنظام الملفات. |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-RoboCopy.md) | xc, rc | يوفر غلاف PowerShell لأداة النسخ المتين من Microsoft (RoboCopy). |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-FileAtomic.md) | &nbsp; | يكتب البايتات إلى ملف بشكل ذري لمنع التلف. |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-JsonFileAtomic.md) | &nbsp; | يكتب كائنًا بتنسيق JSON إلى ملف بطريقة ذرية لمنع التلف. |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-TextFileAtomic.md) | &nbsp; | يكتب نصًا إلى ملف بشكل ذري لمنع التلف. |

---

## GenXdev.Hardware

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AudioDeviceNames.md) | &nbsp; | استرداد أسماء أجهزة الصوت المتاحة لالتقاط الميكروفون أو صوت سطح المكتب. |
| [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-CpuCore.md) | &nbsp; | يقوم بحساب وإرجاع العدد الإجمالي للنوى المنطقية لوحدة المعالجة المركزية في النظام. |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-HasCapableGpu.md) | &nbsp; | تحديد ما إذا كانت وحدة معالجة رسوميات (GPU) تدعم CUDA وتحتوي على ذاكرة كافية موجودة. |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MonitorCount.md) | &nbsp; | الحصول على العدد الإجمالي لشاشات العرض المتصلة بالنظام. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-NumberOfCpuCores.md) | &nbsp; | يقوم بحساب وإرجاع العدد الإجمالي للنوى المنطقية لوحدة المعالجة المركزية في النظام. |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-CpuAvx.md) | &nbsp; | يختبر ما إذا كانت وحدة المعالجة المركزية تدعم مجموعتي التعليمات AVX و AVX2. |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/alignScript.md) | &nbsp; | إرجاع سلسلة (مع تغيير المسافة البادئة) من سلسلة كتلة البرنامج النصي المقدمة |
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Approve-NewTextFileContent.md) | &nbsp; | مقارنة تفاعلية لمحتوى الملفات والموافقة عليها باستخدام WinMerge. |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-RefactorFile.md) | &nbsp; | ينفذ عملية إعادة هيكلة على ملف مصدر باستخدام بيئة التطوير المتكاملة (IDE) المحددة ونموذج موجه الذكاء الاصطناعي. |
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Confirm-InstallationConsent.md) | &nbsp; | يؤكد موافقة المستخدم على تثبيت برامج الطرف الثالث، باستخدام التفضيلات للخيارات المستمرة. |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Convert-DotNetTypeToLLMType.md) | &nbsp; | تحويل أسماء أنواع .NET إلى أسماء أنواع LLM (نموذج اللغة). |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-HashTable.md) | &nbsp; | تحويل كائن PSCustomObject إلى جدول تجزئة بشكل تكراري. |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | يحول دوال PowerShell إلى تعريفات دوال OpenAI API. |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Copy-IdenticalParamValues.md) | &nbsp; | ينسخ قيم المعاملات من المعاملات المرتبطة إلى جدول تجزئة جديد بناءً على المعاملات المحتملة لدالة أخرى. |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureGenXdev.md) | &nbsp; | يضمن تحميل جميع وحدات GenXdev بشكل صحيح عن طريق استدعاء جميع أوامر cmdlets الخاصة بـ Ensure*. |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureNuGetAssembly.md) | &nbsp; | يقوم بتنزيل وتحميل تجميعات .NET من حزم NuGet بناءً على مفتاح الحزمة أو المعرف. |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/GenerateMasonryLayoutHtml.md) | &nbsp; | ينشئ معرض HTML بتصميم متجاوب من نمط البناء الحجري من بيانات الصور. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AIDefaultLLMSettings.md) | &nbsp; | يسترد جميع تكوينات إعدادات LLM الافتراضية المتاحة لعمليات الذكاء الاصطناعي في GenXdev.AI. |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-BCP47LanguageDictionary.md) | &nbsp; | إرجاع قاموس بجميع علامات لغة BCP 47 المثبتة وأسمائها المعروضة. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-DefaultWebLanguage.md) | &nbsp; | يحصل على مفتاح اللغة الافتراضية للويب بناءً على إعدادات اللغة الحالية للنظام. |
| [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-JsonExampleFromSchema.md) | &nbsp; | يُنشئ سلسلة JSON قابلة للقراءة البشرية من تعريف مخطط JSON. |
| [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-LLMJsonOutput.md) | &nbsp; | استخراج JSON صالح من نص استجابة نموذج اللغة باستخدام أفضل جهد تبسيطي. |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WebLanguageDictionary.md) | &nbsp; | إرجاع قاموس معكوس لجميع اللغات التي تدعمها بحث Google. |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Import-GenXdevModules.md) | reloadgenxdev | يستورد جميع وحدات GenXdev PowerShell النمطية إلى النطاق العام. |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Initialize-SearchPaths.md) | &nbsp; | يقوم بتهيئة وتكوين مسارات البحث النظامية لإدارة الحزم. |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-CommandFromToolCall.md) | &nbsp; | تنفذ استدعاء دالة أداة مع التحقق من الصحة وتصفية المعلمات. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | ينفذ كتلة برنامج نصي على كل وحدة GenXdev في مساحة العمل. |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-JSONComments.md) | &nbsp; | إزالة التعليقات من محتوى JSON. |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/resetdefaultmonitor.md) | &nbsp; | استعادة التكوين الافتراضي للشاشة الثانوية. |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ResolveInputObjectFileNames.md) | &nbsp; | يوسع كائنات الإدخال إلى أسماء الملفات والأدلة، مع دعم عوامل تصفية وخيارات إخراج متنوعة. |
| [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-Verb.md) | showverbs | يعرض قائمة أبجدية قصيرة بجميع أفعال PowerShell. |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-RefactorLLMSelection.md) | &nbsp; | يقوم بتقييم ملفات المصدر لتحديد أهلية إعادة الهيكلة باستخدام تحليل LLM. |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-UnattendedMode.md) | &nbsp; | يكتشف ما إذا كان PowerShell يعمل في وضع غير مراقب/آلي. |
| [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/WriteFileOutput.md) | &nbsp; | يعرض معلومات الملف مع أسماء عرض مرتبطة بصلات لتحسين تجربة المستخدم. |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Convert-PhysicsUnit.md) | &nbsp; | تحويل قيمة من وحدة فيزيائية إلى أخرى ضمن نفس الفئة. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ApparentSizeAtArmLength.md) | &nbsp; | يحسب الحجم الظاهري لجسم على مسافة الذراع. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AtEyeLengthSizeInMM.md) | &nbsp; | يحسب الحجم الظاهري بالملليمتر لجسم على مسافة طول الذراع. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | يحسب قوة الطفو. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | تحسب التسارع المركزي. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | يحسب تردد تحول دوبلر. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | حساب قوة السحب. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | تحسب سرعة الإفلات. |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-FreeFallDistance.md) | &nbsp; | يحسب المسافة المقطوعة أثناء السقوط الحر لفترة زمنية معينة. |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-FreeFallHeight.md) | &nbsp; | تحسب الارتفاع الذي سقط خلاله السقوط الحر لفترة زمنية معينة. |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-FreeFallTime.md) | &nbsp; | تحسب الوقت اللازم لجسم ما للسقوط من ارتفاع معين أثناء السقوط الحر. |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | يحتسب سرعة الارتطام من الارتفاع. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | تحسب الطاقة الحركية. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-LightTravelTimeByDistance.md) | &nbsp; | حساب الوقت الذي يستغرقه الضوء لقطع مسافة. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | تحسب التكبير لعدسة. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MomentumByMassAndVelocity.md) | &nbsp; | يحسب الزخم الخطي. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | يحسب السرعة المدارية. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | تحسب طاقة الجاذبية الكامنة. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | يحسب مدى المقذوف. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | يحسب زاوية الانكسار باستخدام قانون سنيل. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | يحسب تردد الرنين لأنبوب مغلق. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SoundTravelDistanceByTime.md) | &nbsp; | تحسب المسافة التي يقطعها الصوت في وقت معين. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | يحسب السرعة الحدية. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | تحسب زمن طيران المقذوف. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | تحسب سرعة الموجة. |

---

## GenXdev.Media

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageGeolocation.md) | &nbsp; | يستخرج بيانات الموقع الجغرافي من ملف صورة. |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageMetadata.md) | &nbsp; | يستخرج بيانات وصفية شاملة من ملف صورة. |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MediaFileCreationDate.md) | &nbsp; | استخراج تاريخ الإنشاء الأكثر دقة لملفات الوسائط والملفات الأخرى. |
| [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-MediaFile.md) | vlcmedia, media, findmedia | يفتح ويشغل ملفات الوسائط باستخدام مشغل في إل سي مع خيارات تصفية وتكوين متقدمة. |
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-VlcMediaPlayer.md) | vlc | يقوم بتشغيل مشغل الوسائط VLC والتحكم فيه مع خيارات تكوين واسعة. |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-VlcMediaPlayerLyrics.md) | vlclyrics | يفتح متصفح ويب للبحث عن كلمات أغنية يتم تشغيلها حالياً في مشغل الوسائط VLC. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | تعيين التركيز إلى نافذة مشغل الوسائط VLC. |
| [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/StabilizeVideo.md) | &nbsp; | يقوم بتثبيت أحدث ملف .mp4 أو الملف المحدد باستخدام FFmpeg + vid.stab (بدون حدود سوداء). |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | يتقدم مشغل وسائط VLC إلى العنصر التالي في قائمة التشغيل الحالية. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | ينتقل إلى العنصر السابق في قائمة تشغيل مشغل وسائط VLC. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | يقوم بتبديل حالة كتم الصوت في مشغل وسائط VLC. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | يبدّل حالة الإيقاف المؤقت/التشغيل لمشغل الوسائط VLC. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | يقوم بتبديل وضع التكرار في مشغل الوسائط VLC. |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-Uris.md) | &nbsp; | يقوم بتحليل السلاسل النصية لأي URI صالح. |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-AllPossibleQueries.md) | qq | يفتح جميع أنواع الاستعلام الممكنة لمصطلحات البحث أو عناوين URL المقدمة. |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-BingCopilotQuery.md) | aibc | يفتح استعلام Bing CoPilot في متصفح ويب |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | يفتح استعلام ChatGPT في متصفح ويب. |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-CloudLLMChat.md) | ask | يفتح واجهة دردشة سحابية LLM للاستعلامات الذكية. |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | يفتح استعلام DeepSeek في متصفح ويب |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GithubCopilotQuery.md) | aigc, askghcopilot | يفتح استعلام Github CoPilot في متصفح ويب |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GoogleGeminiQuery.md) | aigg, askgemini | يفتح استعلام Google Gemini في متصفح ويب |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-XGrokQuery.md) | aixg, askxgrok | يفتح استعلام X Grok في متصفح ويب |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-NextAffirmation.md) | WhatAboutIt | يُرجع نص تأكيد عشوائيًا من واجهة برمجة التطبيقات affirmations.dev. |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WikipediaSummary.md) | wikitxt | استرداد ملخص لموضوع من ويكيبيديا. |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Copy-PDFsFromGoogleQuery.md) | &nbsp; | تنزيل ملفات PDF الموجودة عبر نتائج بحث Google. |
| [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-BingQuery.md) | bq | يفتح استعلام بحث Bing في متصفح ويب. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-BuiltWithSiteInfo.md) | &nbsp; | يفتح استعلامات موقع BuiltWith في متصفح الويب. |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GithubQuery.md) | qgithub, qgh | يفتح استعلام بحث في مستودع جيت‌هب في متصفح ويب أو ينفذ عمليات بحث متقدمة ضد واجهة برمجة تطبيقات جيت‌هب REST مع دعم جميع المؤهلات المتاحة وفئات البحث (المستودعات، الكود، المشكلات، المستخدمين، الالتزامات، المناقشات، المواضيع، الويكي). |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GoogleQuery.md) | &nbsp; | يفتح استعلامات جوجل في متصفح ويب مع إعدادات قابلة للتكوين وخيارات تخصيص واسعة. |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GoogleSiteInfo.md) | &nbsp; | يفتح استعلامات معلومات موقع Google في متصفح ويب. |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GrokipediaQuery.md) | wiki | يفتح استعلام Grokipedia في متصفح الويب. |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-IMDBQuery.md) | imdb | يفتح استعلام بحث IMDB في متصفح الويب. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-InstantStreetViewQuery.md) | isv | يفتح استعلامات InstantStreetView في متصفح ويب. |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-MovieQuote.md) | moviequote | يفتح مقطع فيديو لاقتباس من فيلم في متصفح ويب. |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-SearchEngine.md) | q | يفتح استعلام بحث في محرك البحث المحدد باستخدام متصفح ويب. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-SimularWebSiteInfo.md) | simularsite | يفتح معلومات موقع SimilarWeb للروابط المحددة في متصفح ويب. |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-StackOverflowQuery.md) | qso | يفتح استعلامات بحث Stack Overflow في متصفح الويب. |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WaybackMachineSiteInfo.md) | wayback | يفتح معلومات موقع WaybackMachine في متصفح الويب. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WebsiteAndPerformQuery.md) | owaq | يفتح صفحة ويب في متصفح ويب ويقوم بإجراء استعلام واحد أو أكثر. |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WhoisHostSiteInfo.md) | whois | يفتح استعلام معلومات مضيف Whois في متصفح ويب. |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WikipediaNLQuery.md) | wikinl | يفتح عمليات البحث في ويكيبيديا الهولندية في متصفح ويب. |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WikipediaQuery.md) | wikipedia | يفتح استعلام ويكيبيديا في متصفح ويب. |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WolframAlphaQuery.md) | qalpha | يفتح استعلام Wolfram Alpha في متصفح الويب. |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-YoutubeQuery.md) | youtube | يفتح استعلامات بحث YouTube في متصفح ويب. |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GameOfLife.md) | gameoflife, conway | يفتح محاكاة لعبة الحياة لكونواي في متصفح ويب. |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GenXdevAppCatalog.md) | appcatalog | يفتح كتالوج تطبيقات الويب التقدمية من GenXdev في متصفح ويب. |
| [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-Timeline.md) | timeline | يفتح خط زمني تفاعلي يعرض الوقت الحالي والتاريخ والقرن والألفية. |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-ViralSimulation.md) | viral | يفتح لعبة محاكاة فيروسية في متصفح ويب مع خيارات تكوين واسعة. |
| [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-Yab.md) | yab | يفتح لعبة YAB في متصفح ويب مع إعدادات قابلة للتكوين. |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-YabAIBattle.md) | yabbattle | يفتح لعبة YabAI Battle في متصفح الويب. |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Close-Webbrowser.md) | wbc | يغلق واحدًا أو أكثر من مثيلات متصفح الويب بشكل انتقائي. |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Close-WebbrowserTab.md) | ct, CloseTab | يغلق علامة التبويب المحددة حالياً في متصفح الويب. |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Export-BrowserBookmarks.md) | &nbsp; | يقوم بتصدير إشارات المتصفح المرجعية إلى ملف JSON. |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-BrowserBookmark.md) | bookmarks | البحث عن الإشارات المرجعية من متصفح ويب واحد أو أكثر. |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-BrowserBookmark.md) | gbm | يسترجع جميع الإشارات المرجعية من متصفحات الويب المثبتة. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-DefaultWebbrowser.md) | &nbsp; | يعيد متصفح الويب الافتراضي المكوّن للمستخدم الحالي. |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PlaywrightSessionReference.md) | &nbsp; | يحصل على مرجع إلى جلسة متصفح Playwright الحالية. |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Webbrowser.md) | &nbsp; | يُرجع مجموعة من متصفحات الويب الحديثة المثبتة. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WebbrowserTabDomNodes.md) | wl | يستعلم ويعالج عُقد DOM في علامة التبويب النشطة للمتصفح باستخدام محددات CSS. |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Import-BrowserBookmarks.md) | &nbsp; | استيراد الإشارات المرجعية من ملف أو مجموعة إلى متصفح ويب. |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Import-GenXdevBookmarkletMenu.md) | &nbsp; | يقوم باستيراد إشارات جافا سكريبت الخاصة بـ GenXdev في مجموعات الإشارات المرجعية للمتصفح. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-WebbrowserEvaluation.md) | Eval, et | ينفذ كود جافا سكريبت في علامة تبويب متصفح محددة. |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-BrowserBookmarks.md) | sites | يفتح إشارات المتصفح التي تطابق معايير البحث المحددة. |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-Webbrowser.md) | wb | يفتح عناوين URL في نافذة متصفح واحدة أو أكثر مع إمكانية تحديد الموضع والتنسيق. |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WebbrowserSideBySide.md) | wbn | يطلق نافذة متصفح ويب جديدة مع تحديد موضع محدد. |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Select-WebbrowserTab.md) | st | يحدد علامة تبويب متصفح من المتصفحات التي يديرها Playwright قيد التشغيل. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-BrowserVideoFullscreen.md) | fsvideo | يكبر أول عنصر فيديو موجود في علامة التبويب الحالية للمتصفح. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-WebbrowserTabLocation.md) | lt, Nav | ينقل علامة تبويب متصفح الويب الحالية إلى عنوان URL محدد. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-WebsiteInAllBrowsers.md) | &nbsp; | يفتح رابط URL في عدة متصفحات في وقت واحد بتخطيط فسيفسائي. |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | يتصل بمثيل متصفح موجود عبر منفذ التصحيح. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PlaywrightProfileDirectory.md) | &nbsp; | يحصل على دليل ملف تعريف متصفح Playwright للجلسات المستمرة. |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-PlayWrightBrowser.md) | spb | يبدأ تشغيل متصفح يديره Playwright مع ملف تعريف مستخدم دائم. |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Resume-WebbrowserTabVideo.md) | wbvideoplay | يستأنف تشغيل الفيديو في علامة تبويب متصفح يوتيوب. |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | إيقاف تشغيل الفيديو مؤقتًا في جميع جلسات المتصفح النشطة. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Unprotect-WebbrowserTab.md) | wbctrl | يتحكم في علامة تبويب متصفح ويب محددة للتلاعب التفاعلي. |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/CurrentUserHasElevatedRights.md) | &nbsp; | يتحقق مما إذا كان المستخدم الحالي يمتلك صلاحيات مرتفعة. |
| [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Enable-Screensaver.md) | &nbsp; | يبدأ تشغيل شاشة التوقف المكونة في ويندوز. |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ActiveUser.md) | gusers | يسترد قائمة بأسماء المستخدمين الفريدة من عمليات النظام النشطة حاليًا. |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ChildProcesses.md) | &nbsp; | يسترد جميع العمليات التي تنتمي إلى عملية PowerShell الحالية. |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ClipboardFiles.md) | getclipfiles, gcbf | يحصل على الملفات من الحافظة في Windows التي تم تعيينها لعمليات الملفات مثل النسخ واللصق. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-CurrentFocusedProcess.md) | &nbsp; | يسترد كائن العملية الخاص بالنافذة التي تحمل التركيز الحالي للوحة المفاتيح. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-DesktopScalingFactor.md) | &nbsp; | يسترد عامل تحجيم العرض في Windows (إعداد DPI) لشاشة محددة. |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ForegroundWindow.md) | &nbsp; | الحصول على مقبض النافذة الأمامية النشطة حاليًا. |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-KnownFolderPath.md) | folder | يحصل على مسار مجلد معروف في Windows باستخدام واجهة برمجة تطبيقات Shell32 في Windows. |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MpCmdRunPath.md) | &nbsp; | يعيد المسار إلى الملف القابل للتنفيذ MpCmdRun.exe الخاص بـ Windows Defender. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-OpenedFileHandleProcesses.md) | &nbsp; | يسترد العمليات التي لديها مقابض ملفات مفتوحة للملفات المحددة. |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PowershellMainWindow.md) | &nbsp; | إرجاع كائن مساعد نافذة للنافذة الرئيسية لمحطة PowerShell. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PowershellMainWindowProcess.md) | &nbsp; | يُرجع كائن العملية للنافذة التي تستضيف محطة PowerShell. |
| [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Window.md) | &nbsp; | يحصل على معلومات النافذة للعمليات المحددة أو مقابض النوافذ. |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WindowPosition.md) | gwp | يحصل على معلومات الموقع والحالة للنوافذ. |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Initialize-ScheduledTaskScripts.md) | &nbsp; | ينشئ مهامًا مجدولة تقوم بتشغيل نصوص PowerShell بفترات زمنية محددة. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-WindowsUpdate.md) | updatewindows | يتحقق مما إذا كان Windows محدثًا ويقوم اختياريًا بتثبيت التحديثات المتاحة. |
| [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Pop-Window.md) | popw | ينبثق آخر مساعد نافذة نشط من المكدس مع تعديلات اختيارية. |
| [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Push-Window.md) | pushw | يدفع الإطار الحالي إلى مكدّس الإطارات مع تعديلات اختيارية. |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Save-DesktopScreenShot.md) | &nbsp; | يلتقط لقطة شاشة للشاشة المحددة ويحفظها في المسار المحدد. |
| [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Send-Key.md) | sendkeys, invokekeys | يرسل ضغطات مفاتيح محاكاة إلى نافذة أو عملية. |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Send-WakeOnLan.md) | &nbsp; | يرسل حزمة Wake-on-LAN السحرية لإيقاظ أجهزة الكمبيوتر البعيدة على الشبكة. |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-ClipboardFiles.md) | setclipfiles, scbf | يضبط الملفات في الحافظة لنظام التشغيل ويندوز لعمليات الملفات مثل النسخ/اللصق. |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-ForegroundWindow.md) | &nbsp; | يجلب النافذة المحددة إلى المقدمة ويجعلها النافذة النشطة. |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-KnownFolderPath.md) | &nbsp; | يقوم بتعديل المسار الفعلي لمجلد معروف في نظام ويندوز. |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-MonitorPowerOff.md) | poweroff | يقوم بإيقاف تشغيل الطاقة عن جميع الشاشات المتصلة. |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | يقوم بتشغيل طاقة الشاشة. |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-TaskbarAlignment.md) | &nbsp; | تكوين محاذاة شريط المهام في ويندوز 11+ بين الموضعين المركزي والأيسر. |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-WindowPosition.md) | wp | وضع النوافذ وتغيير حجمها عند تقديم معلمات تحديد المواقع الصريحة. |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-WindowPositionForSecondary.md) | wps | ضع النافذة على الشاشة الثانوية مع خيارات تخطيط محددة. |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-WindowsWallpaper.md) | &nbsp; | تعيين خلفية عشوائية من دليل محدد. |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-ProcessWithPriority.md) | nice | يبدأ عملية بمستوى أولوية محدد. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | يقوم بفحص الملفات أو المجلدات بحثًا عن البرامج الضارة باستخدام Windows Defender. |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-WireGuardPeer.md) | &nbsp; | يضيف تكوين عميل (نظير) جديد لـ WireGuard VPN إلى الخادم. |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureWireGuard.md) | &nbsp; | يضمن تثبيت خدمة WireGuard VPN وتشغيلها عبر حاوية Docker. |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WireGuardPeerQRCode.md) | &nbsp; | يُولّد رمز QR لتهيئة نظير VPN لـ WireGuard. |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WireGuardPeers.md) | &nbsp; | يحصل على معلومات حول جميع أقران WireGuard VPN المكونة على النظام. |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WireGuardStatus.md) | &nbsp; | يحصل على معلومات مفصلة حول حالة خادم WireGuard VPN. |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-WireGuardPeer.md) | &nbsp; | يزيل تكوين النظير لشبكة WireGuard VPN. |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Reset-WireGuardConfiguration.md) | &nbsp; | يقوم بإعادة تعيين تكوين خادم WireGuard VPN، وإزالة جميع النظراء. |
