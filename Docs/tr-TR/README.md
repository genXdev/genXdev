# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-21.

## GenXdev

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXDevCmdlet.md) | gcmds | Tüm GenXdev cmdlet'lerini ve ayrıntılarını alır ve listeler. |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-GenXdevCmdlet.md) | cmds | GenXdev PowerShell modüllerini cmdlet'leri ve takma adlarıyla görüntüler. |

---

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AILLMSettings.md) | &nbsp; | GenXdev.AI'de AI işlemleri için LLM ayarlarını alır. |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SpeechToText.md) | &nbsp; | OpenAI'nin Whisper konuşma tanıma modelini kullanarak ses dosyalarını metne dönüştürür. |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-TextTranslation.md) | translate | Yapay zeka kullanarak metni başka bir dile çevirir. |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-VectorSimilarity.md) | &nbsp; | İki vektör arasındaki kosinüs benzerliğini hesaplar. |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-WinMerge.md) | &nbsp; | İki dosyayı yan yana karşılaştırmak için WinMerge'i başlatır. |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Merge-TranslationCache.md) | &nbsp; | Her dil için toplu disk yazmalarıyla kalıcı çeviri önbelleğini yönetir. |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-LLMAudioChat.md) | llmaudiochat | Bir LLM modeliyle etkileşimli bir sesli sohbet oturumu oluşturur. |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-LLMTextChat.md) | llmchat | Yapay zeka yetenekleriyle etkileşimli bir metin sohbet oturumu başlatır. |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Receive-RealTimeSpeechToText.md) | &nbsp; | Whisper AI modelini kullanarak gerçek zamanlı ses girişini metne dönüştürür. |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-AILLMSettings.md) | &nbsp; | GenXdev.AI'deki AI işlemleri için LLM ayarlarını yapılandırır. |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | Yapay zeka yardımı ile isteğe bağlı olarak özel komut bulunamadı işleme ayarlar. |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-DeepLinkImageFile.md) | &nbsp; | Belirtilen dosya yolunun desteklenen bir formata sahip geçerli bir resim dosyası olup olmadığını test eder. |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Compare-ImageFaces.md) | comparefaces | DeepStack kullanarak iki farklı görüntüdeki yüzleri karşılaştırır ve benzerliklerini döndürür. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageDetectedFaces.md) | &nbsp; | DeepStack kullanarak yüklenen bir görüntüdeki yüzleri, bilinen yüzlerle karşılaştırarak tanır. |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageDetectedObjects.md) | &nbsp; | DeepStack kullanarak yüklenen bir görüntüdeki nesneleri algılar ve sınıflandırır. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageDetectedScenes.md) | &nbsp; | DeepStack kullanarak bir görüntüyü 365 sahne kategorisinden birine sınıflandırır. |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-RegisteredFaces.md) | &nbsp; | DeepStack'tan kayıtlı tüm yüz tanımlayıcılarının listesini alır. |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageEnhancement.md) | enhanceimage | DeepStack kullanarak görüntüyü 4 kat büyütüp kalitesini artırarak iyileştirir. |
| [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Register-AllFaces.md) | UpdateFaces | Yüzler dizinindeki resim dosyalarından tüm yüz tanıma profillerini günceller. |
| [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Register-Face.md) | &nbsp; | DeepStack yüz tanıma API'si ile yeni bir yüz kaydeder. |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Unregister-AllFaces.md) | &nbsp; | DeepStack yüz tanıma sisteminden kayıtlı tüm yüzleri kaldırır. |
| [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Unregister-Face.md) | &nbsp; | DeepStack'ten kayıtlı bir yüzü, tanımlayıcısına göre siler. |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-EmoticonsToText.md) | emojify | Yapay zeka kullanarak bağlama uygun emoticonlar ekleyerek metni zenginleştirir. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertFrom-CorporateSpeak.md) | uncorporatize | Kurumsal veya resmi dili yapay zeka kullanarak doğrudan ve net hale getirir. |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | Diplomatik veya nazik dili doğrudan, net ve açık sözlü dile dönüştürür. |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-CorporateSpeak.md) | corporatize | AI kullanarak doğrudan veya sert metinleri kibar, profesyonel kurumsal dile dönüştürür. |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-DiplomaticSpeak.md) | diplomatize | Kaba veya doğrudan metni kibar, diplomatik bir dile dönüştürür. |
| [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-Image.md) | findimages, li | Belirtilen dizinlerde filtreleme özellikleri ve isteğe bağlı tarayıcı tabanlı galeri görüntüleme ile resim dosyalarını ve meta verilerini arar. |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIKnownFacesRootpath.md) | &nbsp; | GenXdev.AI işlemlerinde kullanılan yüz görüntü dosyaları için yapılandırılmış dizini alır. |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIMetaLanguage.md) | getimgmetalang | Görüntü meta veri işlemleri için yapılandırılmış varsayılan dili alır. |
| [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Fallacy.md) | dispicetext | AI destekli algılama kullanarak mantıksal safsataları belirlemek için metni analiz eder. |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | Çeşitli akışlardan hata mesajlarını yakalar ve düzeltmeler önermek için LLM kullanır. |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SimularMovieTitles.md) | &nbsp; | Ortak özelliklere dayalı olarak benzer film başlıklarını bulur. |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-AIPowershellCommand.md) | hint | Yapay zeka yardımıyla PowerShell komutları oluşturur ve çalıştırır. |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageFacesUpdate.md) | imagepeopledetection | Belirtilen bir dizindeki görüntü dosyaları için yüz tanıma meta verilerini günceller. |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | Yapay zeka tarafından oluşturulan açıklamalar ve anahtar kelimelerle resim meta verilerini günceller. |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageMetadataUpdate.md) | imagepropdetection | Bir dizindeki görsellerin EXIF meta verilerini günceller. |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | Belirtilen bir dizindeki resim dosyaları için nesne algılama meta verilerini günceller. |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageScenesUpdate.md) | imagescenedetection | Belirtilen bir dizindeki resim dosyaları için sahne sınıflandırma meta verilerini günceller. |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMBooleanEvaluation.md) | equalstrue | Bir ifadeyi doğru mu yanlış mı olduğunu belirlemek için AI kullanarak değerlendirir. |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMQuery.md) | qllm, llm | Sorguları, OpenAI uyumlu bir Büyük Dil Sohbet tamamlama API'sine gönderir ve yanıtları işler. |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMStringListEvaluation.md) | getlist, getstring | AI analizi kullanarak giriş metninden ilgili dizeleri çıkarır veya oluşturur. |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMTextTransformation.md) | spellcheck | Yapay zeka destekli işleme kullanarak metni dönüştürür. |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-QueryImageContent.md) | &nbsp; | AI görüş yeteneklerini kullanarak görüntü içeriğini analiz eder |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-ImageMetaData.md) | removeimagedata | Görüntü meta veri dosyalarını görüntü dizinlerinden kaldırır. |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Save-FoundImageFaces.md) | saveimagefaces | Dizinlenmiş görüntü arama sonuçlarından kırpılmış yüz görüntülerini kaydeder. |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Save-Transcriptions.md) | &nbsp; | OpenAI Whisper kullanarak ses ve video dosyaları için altyazı dosyaları oluşturur. |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-AIKnownFacesRootpath.md) | &nbsp; | GenXdev.AI işlemlerinde kullanılan yüz görüntü dosyaları için dizini ayarlar. |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-AIMetaLanguage.md) | &nbsp; | GenXdev.AI görüntü meta verisi işlemleri için varsayılan dili ve isteğe bağlı olarak görüntü dizinlerini ayarlar. |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-FoundImagesInBrowser.md) | showfoundimages | Görsel arama sonuçlarını masonry düzeninde bir web galerisinde görüntüler. |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-AudioTranscription.md) | transcribefile, transcribe | Bir ses dosyasını, video dosyasını veya kayıt cihazını metne dönüştürür |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Update-AllImageMetaData.md) | updateallimages | Birden çok sistem dizinindeki görüntü anahtar kelimelerini, yüzleri, nesneleri ve sahneleri toplu olarak günceller. |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-FeatureLineToREADME.md) | feature | README dosyasına zaman damgasıyla birlikte bir özellik satırı ekler. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-IdeaLineToREADME.md) | idea | README.md dosyasına bir fikir öğesi ekler. |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-IssueLineToREADME.md) | issue | README.md dosyasına bir sorun öğesi ekler. |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-LineToREADME.md) | &nbsp; | Belirtilen bir bölüme README.md işaretleme dosyasına bir satır ekler. |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-ReleaseNoteLineToREADME.md) | releasenote | README dosyasına zaman damgalı bir ReleaseNote satırı ekler. |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-TodoLineToREADME.md) | todo | README.md dosyasına bir yapılacak öğe ekler. |
| [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Features.md) | features | Bir README.md dosyasındaki özellikleri görüntüler. |
| [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Ideas.md) | ideas | Bir README.md dosyasındaki fikirleri görüntüler. |
| [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Issues.md) | issues | Bir README.md dosyasından sorunları görüntüler. |
| [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Refactor.md) | refactors | Ad desenlerine göre GenXdev tercihlerinden refactor tanımlarını alır. |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-RefactorReport.md) | refactorreport | Yeniden düzenleme işlemlerinin ve durumlarının ayrıntılı bir raporunu oluşturur. |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ReleaseNotes.md) | releasenotes | Bir README.md dosyasından ReleaseNotes'ları görüntüler. |
| [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Todoos.md) | todoos | README.md dosyasındaki yapılacak işler öğelerini görüntüler. |
| [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-Refactor.md) | newrefactor | Kod dönüştürme görevleri için yeni bir yeniden düzenleme seti oluşturur. |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-SourceFileInIde.md) | editcode | Tercih edilen IDE'de (Visual Studio Code veya Visual Studio) bir kaynak dosyası açar. |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Publish-ReleaseNotesToManifest.md) | pubrelnotes | Tamamlanmamış sürüm notlarını README.md'den modül bildirimine yayımlar. |
| [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-Refactor.md) | &nbsp; | GenXdev tercih sisteminden yeniden düzenleme kümelerini kaldırır. |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-NextRefactor.md) | nextrefactor | Bir kod yeniden düzenleme oturumunu sürdürür veya yeniden başlatır. |
| [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Update-Refactor.md) | updaterefactor | Yeniden düzenleme setlerini günceller ve yönetir; dosya seçimi ve işleme dahil. |
| [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/VSCode.md) | &nbsp; | Visual Studio Code'da bir veya daha fazla dosyayı açar. |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GitChangedFiles.md) | gitchanged | Bir Git deposunda değiştirilen dosyaların listesini alın. |
| [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-GitCommit.md) | commit | Tüm değişikliklerle yeni bir git commit'i oluşturur ve gönderir. |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/PermanentlyDeleteGitFolders.md) | &nbsp; | Bir Git deposundaki tüm dallardan belirtilen klasörleri kalıcı olarak siler. |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-GenXdevCmdlet.md) | improvecmdlet | GenXdev cmdlet belgelerini ve uygulamasını yapay zeka yardımıyla iyileştirir. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-GenXdevCmdletTests.md) | improvecmdlettests | Belirtilen bir GenXdev cmdlet'inin birim testlerini onaylar ve iyileştirir. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | GenXdev modülleri arasında bağımlılık kullanımını doğrulayarak uygun modül hiyerarşisinin korunmasını sağlar. |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-GenXdevTest.md) | rungenxdevtests | GenXdev modülleri, alt modülleri veya cmdlet'leri için akıllı hata ayıklama ve yapay zeka destekli hata çözümü ile birim testlerini çalıştırır. |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-ModuleDefinition.md) | &nbsp; | AI yardımıyla PowerShell kaynak kod dosyalarını yeniden düzenlemeye yardımcı olur. |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureCopilotKeyboardShortCut.md) | &nbsp; | Visual Studio Code'da GitHub Copilot Sohbet klavye kısayollarını yapılandırır. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureDefaultGenXdevRefactors.md) | &nbsp; | Varsayılan GenXdev yeniden düzenleme tanımlarının mevcut olduğundan emin olur. |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-CmdletMetaData.md) | &nbsp; | Belirtilen bir GenXdev cmdlet'i için meta verileri alır, yardım metnini isteğe bağlı olarak başka bir dile çevirir. |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXDevModule.md) | &nbsp; | Belirtilen bir yoldan tüm GenXDev modüllerini alır. |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXDevModuleInfo.md) | &nbsp; | GenXdev PowerShell modülleri hakkında ayrıntılı bilgiler alır. |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | GenXDev modüllerini bağımlılık sırasına göre alır. |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ModuleCmdletMetaData.md) | &nbsp; | Bir PowerShell modülündeki tüm cmdlet'lerin meta verilerini alır. |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-GenXdevPSFormatter.md) | &nbsp; | PSScriptAnalyzer biçimlendirme kurallarını kullanarak PowerShell betik dosyalarını biçimlendirir. |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | PowerShell Betik Çözümleyicisini çağırarak PowerShell betiklerini uyumluluk ve en iyi uygulamalar açısından analiz eder. |
| [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-ModuleMarkdownHelp.md) | &nbsp; | Herhangi bir PowerShell modülü için zengin Markdown yardım dosyaları oluşturur. |
| [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-ModuleXmlHelp.md) | &nbsp; | Herhangi bir PowerShell modülü için MAML XML yardım dosyaları oluşturur. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Search-GenXdevCmdlet.md) | searchcmdlet | Bir GenXdev cmdlet'ini arar ve isteğe bağlı olarak düzenleme için bir IDE'de açar. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | Belirtilen GenXdev cmdlet'ini Visual Studio Code'da açar. |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-ArrayTemplate.md) | FormatArray | Özellik yer tutucularına sahip bir şablon dizesi kullanarak bir nesne koleksiyonunu biçimlendirir ve tek bir biçimlendirilmiş dize üretir. |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-DoubleEmptyLines.md) | &nbsp; | Bir kod dizesinden ardışık çift boş satırları kaldırır, isteğe bağlı olarak çıktıyı yeniden biçimlendirir. |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-IsSpeaking.md) | iss | Metin-konuşma motoru konuşuyorsa true değerini döndürür. |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-MicrosoftShellTab.md) | x | PowerShell çalıştıran yeni bir Windows Terminal sekmesi oluşturur. |
| [Now](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Now.md) | &nbsp; | Geçerli sistem tarihini ve saatini DateTime nesnesi olarak döndürür. |
| [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/SayDate.md) | &nbsp; | Geçerli tarihi metin-konuşma sentezi kullanarak söyler. |
| [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/SayTime.md) | &nbsp; | Metin-konuşma kullanarak geçerli saati duyurur. |
| [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/secondscreen.md) | &nbsp; | Varsayılan ikinci monitör yapılandırmasını ayarlar. |
| [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/sidebyside.md) | &nbsp; | Varsayılan yan yana yapılandırmayı ayarlar. |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-SnakeGame.md) | snake | Konsolda basit bir Snake oyunu başlatır. |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-TextToSpeech.md) | say | Microsoft Edge'in nöral TTS motorunu kullanarak metni konuşmaya dönüştürür. |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Stop-TextToSpeech.md) | sst | Devam eden herhangi bir metin-konuşma çıktısını anında durdurur. |
| [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/UtcNow.md) | &nbsp; | Geçerli UTC (Eşgüdümlü Evrensel Zaman) tarihini ve saatini alır. |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-KeyValueStoreNames.md) | getstorenames | Mevcut anahtar-değer depolarının adlarını alır. |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-KeyValueStorePath.md) | &nbsp; | Anahtar-değer deposunun dosya yolunu alır. |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-StoreKeys.md) | getkeys | Belirtilen anahtar-değer deposu için tüm anahtar adlarını alır. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ValueByKeyFromStore.md) | getvalue | JSON tabanlı bir anahtar-değer deposundan bir değer alır. |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Initialize-KeyValueStores.md) | &nbsp; | Yerel ve OneDrive depolama için KeyValueStore dizin yapısını başlatır. |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-KeyFromStore.md) | removekey | Bir anahtar-değer deposundan bir anahtarı kaldırır. |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-KeyValueStore.md) | &nbsp; | Bir anahtar-değer deposunu kaldırır. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-ValueByKeyInStore.md) | setvalue | Bir JSON dosyası tabanlı depoda anahtar-değer çiftlerini yönetir. |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Sync-KeyValueStore.md) | &nbsp; | Yerel ve OneDrive anahtar-değer deposu JSON dosyalarını eşitler. |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXdevPreference.md) | getPreference | GenXdev tercihler deposundan bir tercih değeri alır. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXdevPreferenceNames.md) | getPreferenceNames | Oturum depolama ve veritabanı depolarından tüm tercih adlarını alır. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | GenXdev.Data işlemlerinde kullanılan tercih verisi dosyaları için yapılandırılmış veritabanı yolunu alır. |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-GenXdevPreference.md) | removePreference | GenXdev tercih deposundan bir tercih değerini kaldırır. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | GenXdev tercih deposunda varsayılan bir tercih değeri ayarlar. |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevPreference.md) | setPreference | GenXdev tercih deposunda bir tercih değeri ayarlar. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | GenXDev.Data işlemlerinde kullanılan tercihler için veritabanı yolunu ayarlar. |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteSchema.md) | &nbsp; | Bir SQLite veritabanından tam şema bilgilerini alır. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteTableColumnData.md) | &nbsp; | Bir SQLite veritabanı tablosundaki belirli bir sütundan veri alır. |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteTableData.md) | &nbsp; | İsteğe bağlı kayıt sınırlaması ile bir SQLite veritabanı tablosundan veri alır. |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteTables.md) | &nbsp; | Bir SQLite veritabanındaki tablo adlarının listesini alır. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteTableSchema.md) | &nbsp; | Belirtilen bir SQLite tablosu için şema bilgilerini alır. |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteTransaction.md) | getsqltx, newsqltx | Toplu işlemler için bir SQLite işlem nesnesi oluşturur ve döndürür. |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteViewColumnData.md) | &nbsp; | İsteğe bağlı kayıt sınırlaması ile bir SQLite görünümünden sütun verilerini alır. |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteViewData.md) | &nbsp; | İsteğe bağlı kayıt sınırlamasıyla bir SQLite veritabanı görünümünden veri alır. |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteViews.md) | &nbsp; | Bir SQLite veritabanındaki görünümlerin listesini alır. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteViewSchema.md) | &nbsp; | Bir SQLite görünümü için SQL şema tanımını alır. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-SQLiteQuery.md) | &nbsp; | Bir SQLite veritabanına, işlem desteği ile bir veya daha fazla SQL sorgusu yürütür. |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-SQLiteStudio.md) | &nbsp; | Parametreler ve işlemler desteğiyle SQLite veritabanı sorgularını yürütür. |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-SQLiteDatabase.md) | nsqldb | Yeni bir SQLite veritabanı dosyası oluşturur. |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLServerSchema.md) | &nbsp; | Bir SQL Server veritabanından tam şema bilgilerini alır. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLServerTableColumnData.md) | &nbsp; | Bir SQL veritabanı tablosundaki belirli bir sütundan veri alır. |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLServerTableData.md) | &nbsp; | Bir SQL veritabanı tablosundan, isteğe bağlı kayıt sınırlaması ile veri alır. |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLServerTables.md) | &nbsp; | Bir SQL Server veritabanından tablo adlarının listesini alır. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLServerTableSchema.md) | &nbsp; | Belirtilen bir SQL Server tablosu için şema bilgilerini alır. |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLServerTransaction.md) | getsqltx, newsqltx | Toplu işlemler için bir SQL Server işlem nesnesi oluşturur ve döndürür. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLServerViewColumnData.md) | &nbsp; | Bir SQL görünümünden sütun verilerini isteğe bağlı kayıt sınırlaması ile alır. |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLServerViewData.md) | &nbsp; | Bir SQL veritabanı görünümünden isteğe bağlı kayıt sınırlamasıyla veri alır. |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLServerViews.md) | &nbsp; | Bir SQL Server veritabanından görünümlerin listesini alır. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLServerViewSchema.md) | &nbsp; | Bir SQL Server görünümü için SQL şema tanımını alır. |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-SQLServerQuery.md) | &nbsp; | Bir veya daha fazla SQL sorgusunu, işlem desteği ile bir SQL Server veritabanına karşı yürütür. |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | Parametre ve işlem desteği ile SQL Server veritabanı sorgularını yürütür. |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-SQLServerDatabase.md) | nsqldb | Yeni bir SQL Server veritabanı oluşturur. |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Copy-FilesToDateFolder.md) | &nbsp; | Arama kriterleriyle eşleşen dosyaları tarih bazlı alt klasörlere kopyalar. |
| [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Expand-Path.md) | ep | Verilen herhangi bir dosya referansını tam bir yol adına genişletir. |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-DuplicateFiles.md) | fdf | Birden çok dizinde yapılandırılabilir ölçütlere göre yinelenen dosyaları bulur. |
| [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-Item.md) | l | Gelişmiş filtreleme seçenekleri ile dosya ve dizinleri arayın. |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-Fasti.md) | fasti | Geçerli dizindeki arşiv dosyalarını kendi klasörlerine çıkarır ve ardından siler. |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Move-FilesToDateFolder.md) | &nbsp; | Arama ölçütleriyle eşleşen dosyaları tarih tabanlı alt klasörlere taşır. |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Move-ItemWithTracking.md) | &nbsp; | Dosyaları ve dizinleri, dosya sistemi bağlantılarını ve başvurularını koruyarak taşır. |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Move-ToRecycleBin.md) | &nbsp; | Dosyaları ve dizinleri güvenli bir şekilde Windows Geri Dönüşüm Kutusu'na taşır. |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ReadJsonWithRetry.md) | &nbsp; | JSON dosyasını yeniden deneme mantığı ve otomatik kilit temizleme ile okur. |
| [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-AllItems.md) | sdel | Gelişmiş hata işleme ile bir dizindeki tüm içeriği yinelemeli olarak kaldırır. |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-ItemWithFallback.md) | rmf | Güvenilir silme için birden çok geri dönüş mekanizmasıyla dosyaları veya dizinleri kaldırır. |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-OnReboot.md) | &nbsp; | Bir sonraki sistem başlangıcında silinmek üzere dosya veya dizinleri işaretler. |
| [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Rename-InProject.md) | rip | Bir proje dizini boyunca metin değiştirme işlemi gerçekleştirir. |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-FoundLocation.md) | lcd | İlk eşleşen dosyayı veya klasörü bulur ve konumu buna ayarlar. |
| [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent.md) | .. | Geçerli konumu üst dizine değiştirir ve içeriğini listeler. |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent2.md) | ... | Dosya sistemi hiyerarşisinde iki dizin seviyesi yukarı çıkar. |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent3.md) | .... | Dosya sistemi hiyerarşisinde üç dizin seviyesi yukarı gider. |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent4.md) | ..... | Dosya sistemi hiyerarşisinde dört dizin düzeyi yukarı gider. |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent5.md) | ...... | Dosya sistemi hiyerarşisinde beş dizin seviyesi yukarı gider. |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-RoboCopy.md) | xc, rc | Microsoft'in sağlam kopyalama (RoboCopy) yardımcı programı için bir PowerShell sarmalayıcısı sağlar. |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-FileAtomic.md) | &nbsp; | Bozulmayı önlemek için atomik olarak dosyaya bayt yazar. |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-JsonFileAtomic.md) | &nbsp; | Bir nesneyi, bozulmayı önlemek için atomik olarak JSON dosyasına yazar. |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-TextFileAtomic.md) | &nbsp; | Bozulmayı önlemek için metni atomik olarak bir dosyaya yazar. |

---

## GenXdev.Hardware

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AudioDeviceNames.md) | &nbsp; | Mikrofon veya masaüstü ses yakalama için kullanılabilir ses cihazlarının adlarını alır. |
| [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-CpuCore.md) | &nbsp; | Sistemdeki mantıksal CPU çekirdeklerinin toplam sayısını hesaplar ve döndürür. |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-HasCapableGpu.md) | &nbsp; | Yeterli belleğe sahip CUDA uyumlu bir GPU'nun mevcut olup olmadığını belirler. |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MonitorCount.md) | &nbsp; | Sisteme bağlı olan ekran monitörlerinin toplam sayısını alır. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-NumberOfCpuCores.md) | &nbsp; | Sistemdeki mantıksal CPU çekirdeklerinin toplam sayısını hesaplar ve döndürür. |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-CpuAvx.md) | &nbsp; | CPU'nun AVX ve AVX2 komut kümelerini destekleyip desteklemediğini test eder. |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/alignScript.md) | &nbsp; | Sağlanan bir script bloğu dizesinin (değiştirilmiş girintileme ile) bir dize döndürür |
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Approve-NewTextFileContent.md) | &nbsp; | WinMerge kullanarak etkileşimli dosya içerik karşılaştırması ve onaylama. |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-RefactorFile.md) | &nbsp; | Belirtilen IDE ve yapay zeka istem şablonunu kullanarak bir kaynak dosyada yeniden düzenleme işlemi gerçekleştirir. |
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Confirm-InstallationConsent.md) | &nbsp; | Kalıcı seçimler için tercihleri kullanarak, üçüncü taraf yazılım yüklemek için kullanıcı onayını onaylar. |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Convert-DotNetTypeToLLMType.md) | &nbsp; | .NET tür adlarını LLM (Dil Modeli) tür adlarına dönüştürür. |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-HashTable.md) | &nbsp; | Bir PSCustomObject'i yinelemeli olarak bir HashTable'a dönüştürür. |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | PowerShell işlevlerini LLM OpenAI API işlev tanımlarına dönüştürür. |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Copy-IdenticalParamValues.md) | &nbsp; | Bağlı parametrelerden, başka bir işlevin olası parametrelerine dayalı olarak yeni bir karma tablosuna parametre değerlerini kopyalar. |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureGenXdev.md) | &nbsp; | Tüm GenXdev modüllerinin doğru şekilde yüklendiğinden emin olmak için tüm Ensure* cmdlet'lerini çağırır. |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureNuGetAssembly.md) | &nbsp; | NuGet paketlerinden paket anahtarı veya kimliğine göre .NET derlemelerini indirir ve yükler. |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/GenerateMasonryLayoutHtml.md) | &nbsp; | Görüntü verilerinden duyarlı bir duvar örgüsü düzeni HTML galerisi oluşturur. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIDefaultLLMSettings.md) | &nbsp; | GenXdev.AI'deki AI işlemleri için tüm mevcut varsayılan LLM ayarları yapılandırmalarını alır. |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-BCP47LanguageDictionary.md) | &nbsp; | Tüm yüklü BCP 47 dil etiketlerini ve bunların görünen adlarını içeren bir sözlük döndürür. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-DefaultWebLanguage.md) | &nbsp; | Sistemin geçerli dil ayarlarına göre varsayılan web dil anahtarını alır. |
| [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-JsonExampleFromSchema.md) | &nbsp; | Bir JSON Şema tanımından insan tarafından okunabilir bir örnek JSON dizisi oluşturur. |
| [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-LLMJsonOutput.md) | &nbsp; | PowerShell cmdlet yardım metinlerini çeviriyorum. Lütfen çevrilecek metni sağlayın. |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WebLanguageDictionary.md) | &nbsp; | Google Arama tarafından desteklenen tüm diller için tersine çevrilmiş bir sözlük döndürür. |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Import-GenXdevModules.md) | reloadgenxdev | Tüm GenXdev PowerShell modüllerini global kapsama aktarır. |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Initialize-SearchPaths.md) | &nbsp; | Paket yönetimi için sistem arama yollarını başlatır ve yapılandırır. |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-CommandFromToolCall.md) | &nbsp; | Doğrulama ve parametre filtreleme ile bir araç çağrı işlevi yürütür. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | Çalışma alanındaki her GenXdev modülünde bir betik bloğu yürütür. |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-JSONComments.md) | &nbsp; | JSON içeriğinden yorumları kaldırır. |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/resetdefaultmonitor.md) | &nbsp; | Varsayılan ikincil monitör yapılandırmasını geri yükler. |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ResolveInputObjectFileNames.md) | &nbsp; | Giriş nesnelerini, çeşitli filtreleri ve çıktı seçeneklerini destekleyerek dosya ve dizin adlarına genişletir. |
| [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-Verb.md) | showverbs | Tüm PowerShell fiillerinin kısa bir alfabetik listesini gösterir. |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-RefactorLLMSelection.md) | &nbsp; | Yeniden düzenleme uygunluğu için kaynak dosyaları LLM analizi kullanarak değerlendirir. |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-UnattendedMode.md) | &nbsp; | PowerShell'in katılımsız/otomatik modda çalışıp çalışmadığını algılar. |
| [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/WriteFileOutput.md) | &nbsp; | Kullanıcı deneyimini geliştirmek için köprü bağlantılı görüntüleme adlarıyla dosya bilgilerini çıkarır. |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Convert-PhysicsUnit.md) | &nbsp; | Aynı kategori içindeki bir fiziksel birimi başka bir birime dönüştürür. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ApparentSizeAtArmLength.md) | &nbsp; | Bir nesnenin kol mesafesindeki görünen boyutunu hesaplar. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AtEyeLengthSizeInMM.md) | &nbsp; | Bir nesnenin kol boyu mesafesindeki görünür boyutunu mm cinsinden hesaplar. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | Kaldırma kuvvetini hesaplar. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | Merkezcil ivmeyi hesaplar. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | Doppler kaydırılmış frekansı hesaplar. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | Sürükleme kuvvetini hesaplar. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | Kaçış hızını hesaplar. |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-FreeFallDistance.md) | &nbsp; | Serbest düşüş sırasında belirli bir süre için düşülen mesafeyi hesaplar. |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-FreeFallHeight.md) | &nbsp; | Belirli bir süre boyunca serbest düşüşte düşülen yüksekliği hesaplar. |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-FreeFallTime.md) | &nbsp; | Serbest düşüş sırasında bir cismin belirli bir yükseklikten düşmesi için gereken süreyi hesaplar. |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | Yükseklikten çarpma hızını hesaplar. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | Kinetik enerji hesaplar. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-LightTravelTimeByDistance.md) | &nbsp; | Işığın bir mesafeyi kat etmesi için geçen süreyi hesaplar. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | Mercek için büyütmeyi hesaplar. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MomentumByMassAndVelocity.md) | &nbsp; | Doğrusal momentumu hesaplar. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | Yörünge hızını hesaplar. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | Yerçekimi potansiyel enerjisini hesaplar. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | Bir merminin menzilini hesaplar. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | Snell yasasını kullanarak kırılma açısını hesaplar. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | Kapalı bir boru için rezonans frekansını hesaplar. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SoundTravelDistanceByTime.md) | &nbsp; | Belirli bir sürede sesin kat ettiği mesafeyi hesaplar. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | Terminal hızını hesaplar. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | Bir merminin uçuş süresini hesaplar. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | Dalga hızını hesaplar. |

---

## GenXdev.Media

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageGeolocation.md) | &nbsp; | Bir resim dosyasından coğrafi konum verilerini çıkarır. |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageMetadata.md) | &nbsp; | Bir görüntü dosyasından kapsamlı meta verileri ayıklar. |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MediaFileCreationDate.md) | &nbsp; | Medya ve diğer dosyalar için en iyi çaba tarihini ayıklar. |
| [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-MediaFile.md) | vlcmedia, media, findmedia | VLC medya oynatıcısını kullanarak medya dosyalarını gelişmiş filtreleme ve yapılandırma seçenekleriyle açar ve oynatır. |
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-VlcMediaPlayer.md) | vlc | Kapsamlı yapılandırma seçenekleriyle VLC Media Player'ı başlatır ve kontrol eder. |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-VlcMediaPlayerLyrics.md) | vlclyrics | Şu anda VLC'de oynatılan medyanın şarkı sözlerini aramak için bir web tarayıcısı açar. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | Odağı VLC medya oynatıcı penceresine ayarlar. |
| [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/StabilizeVideo.md) | &nbsp; | FFmpeg + vid.stab kullanarak en yeni veya belirtilen .mp4 dosyasını kararlı hale getirir (siyah kenarlıksız). |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | VLC Media Player'ı geçerli oynatma listesindeki bir sonraki öğeye ilerletir. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | VLC Media Player oynatma listesinde önceki öğeye geçer. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | VLC Medya Oynatıcısının sessiz durumunu değiştirir. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | VLC Medya Oynatıcısının duraklat/oynat durumunu değiştirir. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | VLC Medya Oynatıcı'da tekrar modunu açar/kapatır. |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-Uris.md) | &nbsp; | Geçerli herhangi bir URI için dizeleri ayrıştırır. |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-AllPossibleQueries.md) | qq | Verilen arama terimleri veya URL'ler için mümkün olan tüm sorgu türlerini açar. |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-BingCopilotQuery.md) | aibc | Bir Bing CoPilot sorgusunu web tarayıcısında açar |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | Bir ChatGPT sorgusunu web tarayıcısında açar. |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-CloudLLMChat.md) | ask | Yapay zeka sorguları için bir bulut LLM sohbet arayüzü açar. |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | DeepSeek sorgusunu bir web tarayıcısında açar |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GithubCopilotQuery.md) | aigc, askghcopilot | Bir Github CoPilot sorgusunu web tarayıcısında açar |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GoogleGeminiQuery.md) | aigg, askgemini | Bir Google Gemini sorgusunu web tarayıcısında açar |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-XGrokQuery.md) | aixg, askxgrok | Bir X Grok sorgusunu web tarayıcısında açar |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-NextAffirmation.md) | WhatAboutIt | affirmations.dev API'sinden rastgele bir onaylama metni döndürür. |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WikipediaSummary.md) | wikitxt | Wikipedia'dan bir konunun özetini alır. |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Copy-PDFsFromGoogleQuery.md) | &nbsp; | Google arama sonuçlarında bulunan PDF dosyalarını indirir. |
| [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-BingQuery.md) | bq | Bir Bing arama sorgusunu bir web tarayıcısında açar. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-BuiltWithSiteInfo.md) | &nbsp; | Bir web tarayıcısında BuiltWith web sitesi sorgularını açar. |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GithubQuery.md) | qgithub, qgh | Bir Github deposu arama sorgusunu bir web tarayıcısında açar veya tüm mevcut niteleyicileri ve arama kategorilerini (depolar, kod, sorunlar, kullanıcılar, commit'ler, tartışmalar, konular, wikiler) destekleyerek GitHub REST API'sine karşı gelişmiş aramalar yürütür. |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GoogleQuery.md) | &nbsp; | Google sorgularını, yapılandırılabilir ayarlar ve kapsamlı özelleştirme seçenekleriyle bir web tarayıcısında açar. |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GoogleSiteInfo.md) | &nbsp; | Google site bilgi sorgularını bir web tarayıcısında açar. |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GrokipediaQuery.md) | wiki | Bir Grokipedia sorgusunu bir web tarayıcısında açar. |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-IMDBQuery.md) | imdb | Bir IMDB arama sorgusunu web tarayıcısında açar. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-InstantStreetViewQuery.md) | isv | InstantStreetView sorgularını bir web tarayıcısında açar. |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-MovieQuote.md) | moviequote | Bir film alıntısının videosunu web tarayıcısında açar. |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-SearchEngine.md) | q | Belirtilen arama motorunda bir arama sorgusunu web tarayıcısı kullanarak açar. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-SimularWebSiteInfo.md) | simularsite | Belirtilen URL'ler için SimilarWeb web sitesi bilgilerini bir web tarayıcısında açar. |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-StackOverflowQuery.md) | qso | Stack Overflow arama sorgularını bir web tarayıcısında açar. |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WaybackMachineSiteInfo.md) | wayback | Bir web tarayıcısında WaybackMachine site bilgilerini açar. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WebsiteAndPerformQuery.md) | owaq | Bir web sayfasını bir web tarayıcısında açar ve bir veya daha fazla sorgu gerçekleştirir. |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WhoisHostSiteInfo.md) | whois | Bir web tarayıcısında Whois ana bilgisayar bilgisi sorgusu açar. |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WikipediaNLQuery.md) | wikinl | Hollanda Wikipedia aramalarını bir web tarayıcısında açar. |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WikipediaQuery.md) | wikipedia | Bir Wikipedia sorgusunu web tarayıcısında açar. |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WolframAlphaQuery.md) | qalpha | Bir Wolfram Alpha sorgusunu bir web tarayıcısında açar. |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-YoutubeQuery.md) | youtube | YouTube arama sorgularını bir web tarayıcısında açar. |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GameOfLife.md) | gameoflife, conway | Conway'in Game of Life simülasyonunu bir web tarayıcısında açar. |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GenXdevAppCatalog.md) | appcatalog | GenXdev progresif web uygulamaları kataloğunu bir web tarayıcısında açar. |
| [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-Timeline.md) | timeline | Geçerli zamanı, tarihi, yüzyılı ve milenyumu gösteren etkileşimli bir zaman çizelgesi açar. |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-ViralSimulation.md) | viral | Bir web tarayıcısında kapsamlı yapılandırma seçenekleriyle bir viral simülasyon oyunu açar. |
| [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-Yab.md) | yab | YAB oyununu yapılandırılabilir ayarlarla bir web tarayıcısında açar. |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-YabAIBattle.md) | yabbattle | YabAI Battle oyununu bir web tarayıcısında açar. |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Close-Webbrowser.md) | wbc | Bir veya daha fazla web tarayıcı örneğini seçmeli olarak kapatır. |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Close-WebbrowserTab.md) | ct, CloseTab | Şu anda seçili olan web tarayıcı sekmesini kapatır. |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Export-BrowserBookmarks.md) | &nbsp; | Tarayıcı yer imlerini bir JSON dosyasına dışa aktarır. |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-BrowserBookmark.md) | bookmarks | Bir veya daha fazla web tarayıcısından yer imlerini bulur. |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-BrowserBookmark.md) | gbm | Yüklü web tarayıcılarındaki tüm yer imlerini döndürür. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-DefaultWebbrowser.md) | &nbsp; | Geçerli kullanıcı için yapılandırılmış varsayılan web tarayıcısını döndürür. |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-PlaywrightSessionReference.md) | &nbsp; | Geçerli Playwright tarayıcı oturumuna bir başvuru alır. |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Webbrowser.md) | &nbsp; | Yüklenmiş modern web tarayıcılarının bir koleksiyonunu döndürür. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WebbrowserTabDomNodes.md) | wl | Etkin tarayıcı sekmesinde CSS seçicileri kullanarak DOM düğümlerini sorgular ve yönetir. |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Import-BrowserBookmarks.md) | &nbsp; | Bir dosyadan veya koleksiyondan yer imlerini bir web tarayıcısına aktarır. |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Import-GenXdevBookmarkletMenu.md) | &nbsp; | GenXdev JavaScript yer imi uygulamalarını tarayıcı yer imi koleksiyonlarına aktarır. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-WebbrowserEvaluation.md) | Eval, et | Seçili bir web tarayıcı sekmesinde JavaScript kodu çalıştırır. |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-BrowserBookmarks.md) | sites | Belirtilen arama ölçütleriyle eşleşen tarayıcı yer imlerini açar. |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-Webbrowser.md) | wb | URL'leri isteğe bağlı konumlandırma ve stil ile bir veya daha fazla tarayıcı penceresinde açar. |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WebbrowserSideBySide.md) | wbn | Belirli bir konumlandırma ile yeni bir web tarayıcı penceresi başlatır. |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Select-WebbrowserTab.md) | st | Playwright tarafından yönetilen çalışan tarayıcılardan bir sekme seçer. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-BrowserVideoFullscreen.md) | fsvideo | Geçerli tarayıcı sekmesinde bulunan ilk video öğesini büyütür. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-WebbrowserTabLocation.md) | lt, Nav | Geçerli web tarayıcı sekmesini belirtilen URL'ye yönlendirir. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-WebsiteInAllBrowsers.md) | &nbsp; | Bir URL'yi eşzamanlı olarak mozaik düzende birden çok tarayıcıda açar. |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | Mevcut bir tarayıcı örneğine hata ayıklama portu üzerinden bağlanır. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-PlaywrightProfileDirectory.md) | &nbsp; | Kalıcı oturumlar için Playwright tarayıcı profil dizinini alır. |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-PlayWrightBrowser.md) | spb | Kalıcı bir kullanıcı profiliyle Playwright tarafından yönetilen bir tarayıcı başlatır. |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Resume-WebbrowserTabVideo.md) | wbvideoplay | Bir YouTube tarayıcı sekmesinde video oynatımını sürdürür. |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | Tüm etkin tarayıcı oturumlarında video oynatmayı duraklatır. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Unprotect-WebbrowserTab.md) | wbctrl | Seçili bir web tarayıcı sekmesinin kontrolünü etkileşimli düzenleme için ele alır. |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/CurrentUserHasElevatedRights.md) | &nbsp; | Geçerli kullanıcının yükseltilmiş haklara sahip olup olmadığını denetler. |
| [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Enable-Screensaver.md) | &nbsp; | Yapılandırılan Windows ekran koruyucusunu başlatır. |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ActiveUser.md) | gusers | Şu anda etkin olan sistem işlemlerinden benzersiz kullanıcı adlarının bir listesini alır. |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ChildProcesses.md) | &nbsp; | Geçerli PowerShell işleminin alt işlemleri olan tüm işlemleri alır. |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ClipboardFiles.md) | getclipfiles, gcbf | Dosya işlemleri (kopyala/yapıştır gibi) için ayarlanmış Windows panosundan dosyaları alır. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-CurrentFocusedProcess.md) | &nbsp; | Klavye odağına sahip pencerenin işlem nesnesini alır. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-DesktopScalingFactor.md) | &nbsp; | Belirtilen bir monitör için Windows ekran ölçekleme faktörünü (DPI ayarı) alır. |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ForegroundWindow.md) | &nbsp; | Şu anda etkin olan ön plan penceresinin tanıtıcısını alır. |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-KnownFolderPath.md) | folder | Windows Shell32 API'sini kullanarak bir Windows bilinen klasörünün yolunu alır. |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MpCmdRunPath.md) | &nbsp; | Windows Defender MpCmdRun.exe yürütülebilir dosyasının yolunu alır. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-OpenedFileHandleProcesses.md) | &nbsp; | Belirtilen dosyalara açık dosya tanıtıcıları olan işlemleri alır. |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-PowershellMainWindow.md) | &nbsp; | PowerShell terminalinin ana penceresi için bir pencere yardımcı nesnesi döndürür. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-PowershellMainWindowProcess.md) | &nbsp; | PowerShell terminalini barındıran pencere için işlem nesnesini döndürür. |
| [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Window.md) | &nbsp; | Belirtilen işlemler veya pencere tutamaçları için pencere bilgilerini alır. |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WindowPosition.md) | gwp | Pencerelerin konum ve durum bilgilerini alır. |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Initialize-ScheduledTaskScripts.md) | &nbsp; | Belirtilen aralıklarla PowerShell betiklerini çalıştıran zamanlanmış görevler oluşturur. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-WindowsUpdate.md) | updatewindows | Windows'un güncel olup olmadığını denetler ve isteğe bağlı olarak mevcut güncellemeleri yükler. |
| [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Pop-Window.md) | popw | İsteğe bağlı değişikliklerle son etkin pencere yardımcısını yığından çıkarır. |
| [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Push-Window.md) | pushw | Geçerli pencereyi isteğe bağlı değişikliklerle birlikte pencere yığınına iter. |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Save-DesktopScreenShot.md) | &nbsp; | Belirtilen monitörün ekran görüntüsünü yakalar ve belirtilen yola kaydeder. |
| [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Send-Key.md) | sendkeys, invokekeys | Bir pencereye veya sürece simülasyon tuş vuruşları gönderir. |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Send-WakeOnLan.md) | &nbsp; | Ağdaki uzak bilgisayarları uyandırmak için bir Wake-on-LAN sihirli paketi gönderir. |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-ClipboardFiles.md) | setclipfiles, scbf | Dosyaları, kopyalama/yapıştırma gibi dosya işlemleri için Windows panosuna ayarlar. |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-ForegroundWindow.md) | &nbsp; | Belirtilen pencereyi ön plana getirir ve onu etkin pencere yapar. |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-KnownFolderPath.md) | &nbsp; | Bir Windows bilinen klasörünün fiziksel yolunu değiştirir. |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-MonitorPowerOff.md) | poweroff | Bağlı tüm monitörlerin gücünü kapatır. |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | Monitör gücünü açar. |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-TaskbarAlignment.md) | &nbsp; | Windows 11+ görev çubuğu hizalamasını merkez ve sol konumlar arasında yapılandırır. |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-WindowPosition.md) | wp | Açık konumlandırma parametreleri sağlandığında pencereleri konumlandırır ve yeniden boyutlandırır. |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-WindowPositionForSecondary.md) | wps | Bir pencereyi belirtilen düzen seçenekleriyle ikincil monitöre konumlandırır. |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-WindowsWallpaper.md) | &nbsp; | Belirtilen bir dizinden rastgele bir duvar kağıdı ayarlar. |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-ProcessWithPriority.md) | nice | Belirtilen öncelik düzeyinde bir işlem başlatır. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | Windows Defender kullanarak dosya veya dizinleri kötü amaçlı yazılımlara karşı tarar. |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-WireGuardPeer.md) | &nbsp; | Sunucuya yeni bir WireGuard VPN eş (istemci) yapılandırması ekler. |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureWireGuard.md) | &nbsp; | WireGuard VPN hizmetinin Docker konteyneri aracılığıyla kurulu ve çalışır durumda olmasını sağlar. |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WireGuardPeerQRCode.md) | &nbsp; | Bir WireGuard VPN eş yapılandırması için bir QR kodu oluşturur. |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WireGuardPeers.md) | &nbsp; | Sistemde yapılandırılmış tüm WireGuard VPN eşleri hakkında bilgi alır. |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WireGuardStatus.md) | &nbsp; | WireGuard VPN sunucusu hakkında ayrıntılı durum bilgilerini alır. |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-WireGuardPeer.md) | &nbsp; | Bir WireGuard VPN eş yapılandırmasını kaldırır. |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Reset-WireGuardConfiguration.md) | &nbsp; | WireGuard VPN sunucu yapılandırmasını sıfırlar ve tüm eşleri kaldırır. |
