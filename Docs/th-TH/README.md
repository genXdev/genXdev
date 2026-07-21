# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-21.

## GenXdev

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXDevCmdlet.md) | gcmds | ดึงข้อมูลและแสดงรายการ cmdlet ทั้งหมดของ GenXdev พร้อมรายละเอียด |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-GenXdevCmdlet.md) | cmds | แสดงโมดูล PowerShell ของ GenXDev พร้อมด้วย cmdlets และนามแฝง (aliases) |

---

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AILLMSettings.md) | &nbsp; | รับการตั้งค่า LLM สำหรับการดำเนินการ AI ใน GenXdev.AI. |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SpeechToText.md) | &nbsp; | แปลงไฟล์เสียงเป็นข้อความโดยใช้โมเดลจดจำเสียงพูด Whisper ของ OpenAI |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-TextTranslation.md) | translate | แปลข้อความเป็นภาษาอื่นโดยใช้ AI |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-VectorSimilarity.md) | &nbsp; | คำนวณความคล้ายคลึงโคไซน์ระหว่างเวกเตอร์สองเวกเตอร์ |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-WinMerge.md) | &nbsp; | เปิดใช้ WinMerge เพื่อเปรียบเทียบไฟล์สองไฟล์แบบเคียงข้างกัน |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Merge-TranslationCache.md) | &nbsp; | จัดการแคชการแปลแบบถาวรด้วยการเขียนดิสก์แบบกลุ่มตามภาษา |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-LLMAudioChat.md) | llmaudiochat | สร้างเซสชันสนทนาเสียงโต้ตอบกับโมเดล LLM |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-LLMTextChat.md) | llmchat | เริ่มเซสชันแชทข้อความแบบโต้ตอบที่มีความสามารถของ AI |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Receive-RealTimeSpeechToText.md) | &nbsp; | แปลงเสียงนำเข้าแบบเรียลไทม์เป็นข้อความโดยใช้โมเดล Whisper AI |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AILLMSettings.md) | &nbsp; | กำหนดการตั้งค่า LLM สำหรับการดำเนินการ AI ใน GenXdev.AI |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | ตั้งค่าการจัดการคำสั่งที่หาไม่พบแบบกำหนดเอง พร้อมตัวช่วย AI ที่เป็นตัวเลือก |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-DeepLinkImageFile.md) | &nbsp; | ทดสอบว่าเส้นทางไฟล์ที่ระบุเป็นไฟล์รูปภาพที่ถูกต้องและมีรูปแบบที่รองรับหรือไม่ |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Compare-ImageFaces.md) | comparefaces | เปรียบเทียบใบหน้าในภาพสองภาพที่แตกต่างกันและส่งคืนความคล้ายคลึงกันโดยใช้ DeepStack |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageDetectedFaces.md) | &nbsp; | จดจำใบหน้าในรูปภาพที่อัปโหลดโดยเปรียบเทียบกับใบหน้าที่รู้จักโดยใช้ DeepStack |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageDetectedObjects.md) | &nbsp; | ตรวจจับและจำแนกประเภทวัตถุในภาพที่อัปโหลดโดยใช้ DeepStack |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageDetectedScenes.md) | &nbsp; | จำแนกรูปภาพเป็นหนึ่งใน 365 หมวดหมู่ฉากโดยใช้ DeepStack |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-RegisteredFaces.md) | &nbsp; | ดึงรายการของตัวระบุใบหน้าที่ลงทะเบียนทั้งหมดจาก DeepStack |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageEnhancement.md) | enhanceimage | ปรับปรุงภาพโดยขยายขนาด 4 เท่า พร้อมเพิ่มคุณภาพด้วย DeepStack |
| [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Register-AllFaces.md) | UpdateFaces | อัปเดตโปรไฟล์การจดจำใบหน้าทั้งหมดจากไฟล์รูปภาพในไดเรกทอรี faces |
| [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Register-Face.md) | &nbsp; | ลงทะเบียนใบหน้าใหม่กับ API การจดจำใบหน้าของ DeepStack |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Unregister-AllFaces.md) | &nbsp; | ลบใบหน้าที่ลงทะเบียนทั้งหมดออกจากระบบรู้จำใบหน้า DeepStack |
| [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Unregister-Face.md) | &nbsp; | ลบใบหน้าที่ลงทะเบียนแล้วโดยใช้รหัสประจำตัวจาก DeepStack |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-EmoticonsToText.md) | emojify | ปรับปรุงข้อความโดยเพิ่มอิโมจิที่เหมาะสมกับบริบทโดยใช้ AI |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertFrom-CorporateSpeak.md) | uncorporatize | แปลงบทสนทนาทางธุรกิจที่สุภาพและเป็นทางการให้เป็นภาษาที่ตรงไปตรงมาและชัดเจนโดยใช้ AI |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | แปลงภาษาที่มีชั้นเชิงหรือภาษาแบบทูตให้เป็นภาษาที่ตรงไปตรงมา ชัดเจน และเข้าใจง่าย |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-CorporateSpeak.md) | corporatize | แปลงข้อความที่ตรงไปตรงมาหรือหยาบคายเป็นภาษาธุรกิจที่สุภาพและเป็นมืออาชีพโดยใช้ AI |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-DiplomaticSpeak.md) | diplomatize | แปลงข้อความที่ตรงไปตรงมาหรือรุนแรงให้เป็นภาษาทางการทูตที่สุภาพและมีชั้นเชิง |
| [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-Image.md) | findimages, li | ค้นหาไฟล์ภาพและข้อมูลเมตาในไดเรกทอรีที่ระบุพร้อมความสามารถในการกรองและการแสดงผลแบบแกลเลอรีในเบราว์เซอร์ที่เป็นตัวเลือก |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AIKnownFacesRootpath.md) | &nbsp; | รับไดเรกทอรีที่กำหนดค่าสำหรับไฟล์ภาพใบหน้าที่ใช้ในการดำเนินการของ GenXdev.AI |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AIMetaLanguage.md) | getimgmetalang | รับการกำหนดค่าภาษาเริ่มต้นสำหรับการดำเนินการเกี่ยวกับเมทาดาต้าของรูปภาพ |
| [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Fallacy.md) | dispicetext | วิเคราะห์ข้อความเพื่อระบุความผิดพลาดเชิงตรรกะโดยใช้การตรวจจับด้วย AI |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | จับข้อความข้อผิดพลาดจากสตรีมต่างๆ และใช้ LLM เพื่อแนะนำการแก้ไข |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SimularMovieTitles.md) | &nbsp; | ค้นหาชื่อภาพยนตร์ที่คล้ายกันโดยพิจารณาจากคุณสมบัติทั่วไป |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-AIPowershellCommand.md) | hint | สร้างและดำเนินการคำสั่ง PowerShell โดยใช้ความช่วยเหลือจาก AI |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageFacesUpdate.md) | imagepeopledetection | อัปเดตเมทาดาทาการรู้จำใบหน้าสำหรับไฟล์รูปภาพในไดเรกทอรีที่ระบุ |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | อัปเดตเมทาดาทาของรูปภาพด้วยคำอธิบายและคำสำคัญที่สร้างโดย AI |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageMetadataUpdate.md) | imagepropdetection | อัปเดตข้อมูลเมตา EXIF สำหรับรูปภาพในไดเรกทอรี |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | อัปเดตข้อมูลเมตาการตรวจจับวัตถุสำหรับไฟล์รูปภาพในไดเร็กทอรีที่ระบุ |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageScenesUpdate.md) | imagescenedetection | อัปเดตข้อมูลเมตาการจำแนกประเภทฉากสำหรับไฟล์รูปภาพในไดเรกทอรีที่ระบุ |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMBooleanEvaluation.md) | equalstrue | ประเมินคำสั่งโดยใช้ AI เพื่อตรวจสอบว่าเป็นจริงหรือเท็จ |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMQuery.md) | qllm, llm | ส่งคำถามไปยัง API การสนทนาของ Large Language Chat ที่เข้ากันได้กับ OpenAI และประมวลผลการตอบกลับ |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMStringListEvaluation.md) | getlist, getstring | แยกหรือสร้างรายการสตริงที่เกี่ยวข้องจากข้อความอินพุตโดยใช้การวิเคราะห์ AI |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMTextTransformation.md) | spellcheck | แปลงข้อความโดยใช้การประมวลผลด้วย AI |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-QueryImageContent.md) | &nbsp; | วิเคราะห์เนื้อหารูปภาพโดยใช้ความสามารถ AI ด้านการมองเห็น |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-ImageMetaData.md) | removeimagedata | ลบไฟล์เมทาดาต้าของรูปภาพออกจากไดเรกทอรีรูปภาพ |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-FoundImageFaces.md) | saveimagefaces | บันทึกภาพใบหน้าที่ถูกครอบจากผลการค้นหารูปภาพแบบดัชนี |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-Transcriptions.md) | &nbsp; | สร้างไฟล์คำบรรยายสำหรับไฟล์เสียงและวิดีโอโดยใช้ OpenAI Whisper |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIKnownFacesRootpath.md) | &nbsp; | กำหนดไดเรกทอรีสำหรับไฟล์ภาพใบหน้าที่ใช้ในการดำเนินการของ GenXdev.AI |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIMetaLanguage.md) | &nbsp; | ตั้งค่าภาษาเริ่มต้นและไดเรกทอรีรูปภาพ (ตามตัวเลือก) สำหรับการดำเนินการเมทาดาทาของรูปภาพของ GenXdev.AI |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-FoundImagesInBrowser.md) | showfoundimages | แสดงผลลัพธ์การค้นหารูปภาพในเว็บแกลเลอรีแบบผนังอิฐ |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-AudioTranscription.md) | transcribefile, transcribe | ถอดเสียงจากไฟล์เสียง ไฟล์วิดีโอ หรืออุปกรณ์บันทึกเป็นข้อความ |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Update-AllImageMetaData.md) | updateallimages | อัปเดตคำสำคัญ ใบหน้า วัตถุ และฉากของภาพเป็นชุดในหลายไดเรกทอรีของระบบ |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-FeatureLineToREADME.md) | feature | เพิ่มบรรทัดคุณสมบัติลงในไฟล์ README พร้อมประทับเวลา |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-IdeaLineToREADME.md) | idea | เพิ่มรายการไอเดียไปยังไฟล์ README.md |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-IssueLineToREADME.md) | issue | เพิ่มรายการปัญหาลงในไฟล์ README.md |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-LineToREADME.md) | &nbsp; | เพิ่มบรรทัดลงในไฟล์มาร์กดาวน์ README.md ในส่วนที่ระบุ |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-ReleaseNoteLineToREADME.md) | releasenote | เพิ่มบรรทัด ReleaseNote ลงในไฟล์ README พร้อมประทับเวลา |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-TodoLineToREADME.md) | todo | เพิ่มรายการสิ่งที่ต้องทำลงในไฟล์ README.md |
| [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Features.md) | features | แสดงคุณลักษณะจากไฟล์ README.md |
| [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Ideas.md) | ideas | แสดงแนวคิดจากไฟล์ README.md |
| [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Issues.md) | issues | แสดงปัญหาจากไฟล์ README.md |
| [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Refactor.md) | refactors | ดึงข้อมูลคำจำกัดความของการรีแฟกเตอร์จากการตั้งค่า GenXdev ตามรูปแบบชื่อ |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-RefactorReport.md) | refactorreport | สร้างรายงานโดยละเอียดเกี่ยวกับการดำเนินการปรับโครงสร้างและสถานะของพวกเขา |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ReleaseNotes.md) | releasenotes | แสดง ReleaseNotes จากไฟล์ README.md |
| [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Todoos.md) | todoos | แสดงรายการสิ่งที่ต้องทำจากไฟล์ README.md |
| [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-Refactor.md) | newrefactor | สร้างชุดรีแฟกเตอร์ใหม่สำหรับงานแปลงโค้ด |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-SourceFileInIde.md) | editcode | เปิดไฟล์ต้นฉบับใน IDE ที่ต้องการ (Visual Studio Code หรือ Visual Studio) |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Publish-ReleaseNotesToManifest.md) | pubrelnotes | เผยแพร่บันทึกการเปลี่ยนแปลงที่ยังไม่เสร็จสมบูรณ์จาก README.md ไปยังแถบรายการโมดูล |
| [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-Refactor.md) | &nbsp; | ลบชุดรีแฟกเตอร์ออกจากระบบตั้งค่า GenXdev |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-NextRefactor.md) | nextrefactor | ดำเนินการต่อหรือเริ่มเซสชันการปรับโครงสร้างโค้ดใหม่ |
| [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Update-Refactor.md) | updaterefactor | อัปเดตและจัดการชุดการรีแฟคเตอร์ รวมถึงการเลือกไฟล์และการประมวลผล |
| [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/VSCode.md) | &nbsp; | เปิดไฟล์หนึ่งไฟล์ขึ้นไปใน Visual Studio Code. |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GitChangedFiles.md) | gitchanged | รับรายการไฟล์ที่มีการเปลี่ยนแปลงในพื้นที่เก็บ Git |
| [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-GitCommit.md) | commit | สร้างและพุชคอมมิต git ใหม่พร้อมกับการเปลี่ยนแปลงทั้งหมด |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/PermanentlyDeleteGitFolders.md) | &nbsp; | ลบโฟลเดอร์ที่ระบุอย่างถาวรออกจากทุกสาขาในพื้นที่เก็บ Git |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-GenXdevCmdlet.md) | improvecmdlet | ปรับปรุงเอกสารและการใช้งาน cmdlet ของ GenXdev ผ่านความช่วยเหลือจาก AI |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-GenXdevCmdletTests.md) | improvecmdlettests | ยืนยันและปรับปรุง unit-test ของ cmdlet เฉพาะของ GenXdev |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | ตรวจสอบการใช้งาน dependencies ระหว่างโมดูล GenXdev เพื่อให้แน่ใจว่ารักษาลำดับชั้นของโมดูลอย่างถูกต้อง |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-GenXdevTest.md) | rungenxdevtests | เรียกใช้การทดสอบหน่วยสำหรับโมดูล โมดูลย่อย หรือ cmdlet ของ GenXdev พร้อมการดีบักอัจฉริยะและการแก้ไขข้อผิดพลาดด้วย AI |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-ModuleDefinition.md) | &nbsp; | ช่วยในการปรับโครงสร้างไฟล์ซอร์สโค้ด PowerShell โดยใช้ความช่วยเหลือจาก AI |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureCopilotKeyboardShortCut.md) | &nbsp; | กำหนดค่าปุ่มลัดของ GitHub Copilot Chat ใน Visual Studio Code |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureDefaultGenXdevRefactors.md) | &nbsp; | รับประกันว่าคำจำกัดความการปรับโครงสร้าง GenXdev เริ่มต้นพร้อมใช้งาน |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-CmdletMetaData.md) | &nbsp; | ดึงข้อมูลเมตาสำหรับ cmdlet ของ GenXdev ที่ระบุ โดยสามารถแปลข้อความช่วยเหลือเป็นภาษาอื่นได้ |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXDevModule.md) | &nbsp; | ดึงข้อมูลโมดูล GenXDev ทั้งหมดจากพาธที่ระบุ |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXDevModuleInfo.md) | &nbsp; | ดึงข้อมูลโดยละเอียดเกี่ยวกับโมดูล PowerShell ของ GenXdev |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | ดึงข้อมูลโมดูล GenXDev ตามลำดับการพึ่งพา |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ModuleCmdletMetaData.md) | &nbsp; | ดึงข้อมูลเมทาดาทาสำหรับ cmdlet ทั้งหมดในโมดูล PowerShell |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-GenXdevPSFormatter.md) | &nbsp; | จัดรูปแบบไฟล์สคริปต์ PowerShell โดยใช้กฎการจัดรูปแบบของ PSScriptAnalyzer |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | เรียกใช้ PowerShell Script Analyzer เพื่อวิเคราะห์สคริปต์ PowerShell ว่าสอดคล้องกับข้อกำหนดและแนวทางปฏิบัติที่ดีที่สุด |
| [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-ModuleMarkdownHelp.md) | &nbsp; | สร้างไฟล์ช่วยเหลือ Markdown ที่สมบูรณ์สำหรับโมดูล PowerShell ใดๆ |
| [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-ModuleXmlHelp.md) | &nbsp; | สร้างไฟล์ช่วยเหลือ MAML XML สำหรับโมดูล PowerShell ใดๆ |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Search-GenXdevCmdlet.md) | searchcmdlet | ค้นหา cmdlet ของ GenXdev และเปิดใน IDE เพื่อแก้ไขตามต้องการ |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | เปิดคำสั่ง cmdlet ของ GenXdev ที่ระบุใน Visual Studio Code |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-ArrayTemplate.md) | FormatArray | จัดรูปแบบชุดของวัตถุโดยใช้สตริงเทมเพลตที่มีตัวยึดตำแหน่งคุณสมบัติ สร้างสตริงที่จัดรูปแบบแล้วเดียว |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-DoubleEmptyLines.md) | &nbsp; | ลบบรรทัดว่างที่ซ้ำกัน (ติดกัน) ออกจากสตริงโค้ด โดยสามารถจัดรูปแบบเอาต์พุตใหม่ได้ตามต้องการ |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-IsSpeaking.md) | iss | ส่งคืนค่าเป็นจริงหากเอ็นจินข้อความเป็นเสียงกำลังพูดอยู่ |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-MicrosoftShellTab.md) | x | สร้างแท็บ Windows Terminal ใหม่ที่รัน PowerShell. |
| [Now](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Now.md) | &nbsp; | ส่งกลับวันที่และเวลาของระบบปัจจุบันเป็นออบเจ็กต์ DateTime |
| [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/SayDate.md) | &nbsp; | พูดวันที่ปัจจุบันโดยใช้การสังเคราะห์ข้อความเป็นเสียง |
| [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/SayTime.md) | &nbsp; | ประกาศเวลาปัจจุบันโดยใช้ข้อความเป็นเสียงพูด |
| [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/secondscreen.md) | &nbsp; | ตั้งค่าการกำหนดค่าจอภาพที่สองเริ่มต้น |
| [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/sidebyside.md) | &nbsp; | กำหนดค่าการจัดวางแบบเคียงข้างเริ่มต้น |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-SnakeGame.md) | snake | เริ่มเกมงูง่ายๆ ในคอนโซล |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-TextToSpeech.md) | say | แปลงข้อความเป็นคำพูดโดยใช้เอ็นจิ้นประสาทเสียง TTS ของ Microsoft Edge |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Stop-TextToSpeech.md) | sst | หยุดการส่งออกข้อความเป็นเสียงพูดที่กำลังดำเนินอยู่ทันที |
| [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/UtcNow.md) | &nbsp; | รับวันที่และเวลาปัจจุบันในรูปแบบ UTC (เวลาสากลเชิงพิกัด) |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-KeyValueStoreNames.md) | getstorenames | ดึงชื่อของที่เก็บคีย์-ค่าที่มีอยู่ |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-KeyValueStorePath.md) | &nbsp; | รับเส้นทางไฟล์สำหรับที่เก็บคีย์-ค่า |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-StoreKeys.md) | getkeys | ดึงชื่อคีย์ทั้งหมดสำหรับที่เก็บคีย์-ค่าที่กำหนด |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ValueByKeyFromStore.md) | getvalue | ดึงค่าจากที่จัดเก็บข้อมูลแบบคีย์-ค่าที่ใช้ JSON |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Initialize-KeyValueStores.md) | &nbsp; | เริ่มต้นโครงสร้างไดเรกทอรี KeyValueStore สำหรับจัดเก็บในเครื่องและ OneDrive |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyFromStore.md) | removekey | ลบคีย์ออกจากพื้นที่จัดเก็บคีย์-ค่า |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyValueStore.md) | &nbsp; | ลบที่เก็บคู่คีย์-ค่า |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-ValueByKeyInStore.md) | setvalue | จัดการคู่คีย์-ค่าในพื้นที่เก็บข้อมูลที่ใช้ไฟล์ JSON |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Sync-KeyValueStore.md) | &nbsp; | ซิงโครไนซ์ไฟล์ JSON ที่เก็บคู่คีย์-ค่าระหว่างเครื่องท้องถิ่นและ OneDrive |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreference.md) | getPreference | ดึงค่า preference จากที่เก็บ preferences ของ GenXdev |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreferenceNames.md) | getPreferenceNames | ดึงชื่อการตั้งค่าทั้งหมดจากที่เก็บเซสชันและฐานข้อมูล |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | รับเส้นทางฐานข้อมูลที่กำหนดค่าไว้สำหรับไฟล์ข้อมูลการตั้งค่าที่ใช้ในการดำเนินการของ GenXdev.Data |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-GenXdevPreference.md) | removePreference | ลบค่ากำหนดออกจากที่จัดเก็บค่ากำหนดของ GenXdev. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | ตั้งค่าค่าเริ่มต้นในที่จัดเก็บการตั้งค่า GenXdev |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevPreference.md) | setPreference | ตั้งค่ากำหนดในที่เก็บการกำหนดค่าของ GenXdev |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | กำหนดเส้นทางฐานข้อมูลสำหรับการตั้งค่าที่ใช้ในการดำเนินการของ GenXdev.Data |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteSchema.md) | &nbsp; | เรียกค้นข้อมูลสคีมาที่สมบูรณ์จากฐานข้อมูล SQLite |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteTableColumnData.md) | &nbsp; | ดึงข้อมูลจากคอลัมน์ที่ระบุในตารางฐานข้อมูล SQLite |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteTableData.md) | &nbsp; | ดึงข้อมูลจากตารางฐานข้อมูล SQLite โดยสามารถจำกัดจำนวนเรคคอร์ดได้ |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteTables.md) | &nbsp; | ดึงรายชื่อตารางจากฐานข้อมูล SQLite |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteTableSchema.md) | &nbsp; | ดึงข้อมูลสคีมาสำหรับตาราง SQLite ที่ระบุ |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteTransaction.md) | getsqltx, newsqltx | สร้างและส่งคืนวัตถุธุรกรรม SQLite สำหรับการดำเนินการเป็นชุด |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteViewColumnData.md) | &nbsp; | ดึงข้อมูลคอลัมน์จากวิว SQLite พร้อมการจำกัดจำนวนระเบียนที่เป็นตัวเลือก |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteViewData.md) | &nbsp; | ดึงข้อมูลจากมุมมองฐานข้อมูล SQLite โดยสามารถจำกัดจำนวนระเบียนได้ |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteViews.md) | &nbsp; | ดึงรายการมุมมองจากฐานข้อมูล SQLite |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteViewSchema.md) | &nbsp; | เรียกดึงคำจำกัดความสคีมา SQL สำหรับมุมมอง SQLite |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-SQLiteQuery.md) | &nbsp; | ดำเนินการคำสั่ง SQL หนึ่งคำสั่งหรือมากกว่ากับฐานข้อมูล SQLite โดยรองรับการทำธุรกรรม |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-SQLiteStudio.md) | &nbsp; | ดำเนินการค้นหาฐานข้อมูล SQLite โดยรองรับพารามิเตอร์และธุรกรรม |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-SQLiteDatabase.md) | nsqldb | สร้างไฟล์ฐานข้อมูล SQLite ใหม่ |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerSchema.md) | &nbsp; | ดึงข้อมูลสคีมาที่สมบูรณ์จากฐานข้อมูล SQL Server |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerTableColumnData.md) | &nbsp; | ดึงข้อมูลจากคอลัมน์ที่ระบุในตารางฐานข้อมูล SQL |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerTableData.md) | &nbsp; | ดึงข้อมูลจากตารางฐานข้อมูล SQL พร้อมการจำกัดจำนวนเรคคอร์ดแบบเลือกได้ |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerTables.md) | &nbsp; | เรียกข้อมูลรายชื่อตารางจากฐานข้อมูล SQL Server |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerTableSchema.md) | &nbsp; | ดึงข้อมูลสคีมาสำหรับตารางเซิร์ฟเวอร์ SQL ที่ระบุ |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerTransaction.md) | getsqltx, newsqltx | สร้างและส่งคืนออบเจกต์ธุรกรรมของ SQL Server สำหรับการดำเนินการแบบแบตช์ |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerViewColumnData.md) | &nbsp; | ดึงข้อมูลคอลัมน์จากมุมมอง SQL โดยสามารถจำกัดจำนวนระเบียนได้ |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerViewData.md) | &nbsp; | ดึงข้อมูลจากมุมมองฐานข้อมูล SQL โดยสามารถจำกัดจำนวนเรคคอร์ดได้ |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerViews.md) | &nbsp; | ดึงรายการวิวจากฐานข้อมูล SQL Server |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerViewSchema.md) | &nbsp; | ดึงข้อมูลนิยามสคีมา SQL สำหรับมุมมองเซิร์ฟเวอร์ SQL |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-SQLServerQuery.md) | &nbsp; | ดำเนินการคิวรี SQL หนึ่งรายการหรือมากกว่ากับฐานข้อมูล SQL Server โดยมีการสนับสนุนธุรกรรม |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | ดำเนินการค้นหาฐานข้อมูล SQL Server ด้วยการสนับสนุนพารามิเตอร์และธุรกรรม |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-SQLServerDatabase.md) | nsqldb | สร้างฐานข้อมูล SQL Server ใหม่ |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-FilesToDateFolder.md) | &nbsp; | คัดลอกไฟล์ที่ตรงกับเงื่อนไขการค้นหาไปยังโฟลเดอร์ย่อยที่แบ่งตามวันที่ |
| [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Expand-Path.md) | ep | ขยายการอ้างอิงไฟล์ที่ระบุให้เป็นชื่อพาธแบบเต็ม |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-DuplicateFiles.md) | fdf | ค้นหาไฟล์ที่ซ้ำกันข้ามหลายไดเรกทอรีตามเกณฑ์ที่กำหนดค่าได้ |
| [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-Item.md) | l | ค้นหาไฟล์และไดเรกทอรีด้วยตัวเลือกการกรองขั้นสูง |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-Fasti.md) | fasti | แยกไฟล์บีบอัดในไดเรกทอรีปัจจุบันไปยังโฟลเดอร์ของตัวเอง และลบไฟล์เหล่านั้นหลังจากนั้น |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-FilesToDateFolder.md) | &nbsp; | ย้ายไฟล์ที่ตรงตามเกณฑ์การค้นหาไปยังโฟลเดอร์ย่อยตามวันที่ |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-ItemWithTracking.md) | &nbsp; | ย้ายไฟล์และไดเรกทอรีในขณะที่รักษาลิงก์และข้อมูลอ้างอิงของระบบไฟล์ไว้ |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-ToRecycleBin.md) | &nbsp; | ย้ายไฟล์และไดเรกทอรีไปยังถังรีไซเคิลของ Windows อย่างปลอดภัย |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ReadJsonWithRetry.md) | &nbsp; | อ่านไฟล์ JSON ด้วยตรรกะการลองอีกครั้งและการล้างล็อกอัตโนมัติ |
| [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-AllItems.md) | sdel | ลบเนื้อหาทั้งหมดออกจากไดเรกทอรีแบบเรียกซ้ำพร้อมการจัดการข้อผิดพลาดขั้นสูง |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-ItemWithFallback.md) | rmf | ลบไฟล์หรือไดเรกทอรีด้วยกลไกสำรองหลายรายการเพื่อการลบที่เชื่อถือได้ |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-OnReboot.md) | &nbsp; | ทำเครื่องหมายไฟล์หรือไดเรกทอรีสำหรับการลบระหว่างการบูตระบบครั้งถัดไป |
| [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Rename-InProject.md) | rip | ดำเนินการแทนที่ข้อความทั่วทั้งไดเรกทอรีโครงการ |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-FoundLocation.md) | lcd | ค้นหาไฟล์หรือโฟลเดอร์ที่ตรงกันเป็นอันดับแรกและกำหนดตำแหน่งไปยังไฟล์หรือโฟลเดอร์นั้น |
| [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent.md) | .. | เปลี่ยนตำแหน่งปัจจุบันไปยังไดเรกทอรีหลักและแสดงรายการเนื้อหา |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent2.md) | ... | นำทางขึ้นไปสองระดับไดเรกทอรีในลำดับชั้นของระบบไฟล์ |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent3.md) | .... | เลื่อนระดับขึ้นไปสามไดเรกทอรีในลำดับชั้นของระบบไฟล์ |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent4.md) | ..... | นำทางขึ้นไปยังสี่ระดับไดเรกทอรีในลำดับชั้นของระบบไฟล์ |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent5.md) | ...... | นำทางขึ้นไปห้าระดับไดเรกทอรีในลำดับชั้นระบบไฟล์ |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-RoboCopy.md) | xc, rc | มี wrapper สำหรับ PowerShell สำหรับยูทิลิตี้ Robust Copy (RoboCopy) ของ Microsoft |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-FileAtomic.md) | &nbsp; | เขียนไบต์ไปยังไฟล์แบบอะตอมิกเพื่อป้องกันการเสียหาย |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-JsonFileAtomic.md) | &nbsp; | เขียนออบเจ็กต์เป็น JSON ไปยังไฟล์อย่างอะตอมมิกเพื่อป้องกันความเสียหาย |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-TextFileAtomic.md) | &nbsp; | เขียนข้อความลงในไฟล์แบบอะตอมมิกเพื่อป้องกันการเสียหาย |

---

## GenXdev.Hardware

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AudioDeviceNames.md) | &nbsp; | เรียกดูชื่อของอุปกรณ์เสียงที่มีสำหรับการจับภาพเสียงจากไมโครโฟนหรือเดสก์ท็อป |
| [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-CpuCore.md) | &nbsp; | คำนวณและส่งกลับจำนวนรวมของคอร์ซีพียูเชิงตรรกะในระบบ |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-HasCapableGpu.md) | &nbsp; | ตรวจสอบว่ามี GPU ที่รองรับ CUDA และมีหน่วยความจำเพียงพอหรือไม่ |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MonitorCount.md) | &nbsp; | ดึงจำนวนจอภาพทั้งหมดที่เชื่อมต่อกับระบบ |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-NumberOfCpuCores.md) | &nbsp; | คำนวณและส่งกลับจำนวนรวมของคอร์ซีพียูเชิงตรรกะในระบบ |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-CpuAvx.md) | &nbsp; | ทดสอบว่า CPU รองรับชุดคำสั่ง AVX และ AVX2 หรือไม่ |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/alignScript.md) | &nbsp; | ส่งคืนสตริง (ที่มีการเปลี่ยนการเยื้อง) ของสตริงบล็อกสคริปต์ที่ให้มา |
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Approve-NewTextFileContent.md) | &nbsp; | การเปรียบเทียบและอนุมัติเนื้อหาไฟล์แบบโต้ตอบโดยใช้ WinMerge |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-RefactorFile.md) | &nbsp; | ดำเนินการปรับโครงสร้างโค้ดบนไฟล์ต้นฉบับโดยใช้ IDE และเทมเพลตคำสั่ง AI ที่ระบุ |
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Confirm-InstallationConsent.md) | &nbsp; | ยืนยันความยินยอมของผู้ใช้ในการติดตั้งซอฟต์แวร์ของบริษัทอื่น โดยใช้การตั้งค่าสำหรับตัวเลือกถาวร |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Convert-DotNetTypeToLLMType.md) | &nbsp; | แปลงชื่อชนิดข้อมูล .NET เป็นชื่อชนิดข้อมูล LLM (Language Model) |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-HashTable.md) | &nbsp; | แปลง PSCustomObject เป็น HashTable แบบเรียกซ้ำ |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | แปลงฟังก์ชัน PowerShell เป็นคำจำกัดความของฟังก์ชัน API ของ OpenAI LLM |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-IdenticalParamValues.md) | &nbsp; | คัดลอกค่าพารามิเตอร์จากพารามิเตอร์ที่ถูกผูกไว้ไปยัง hashtable ใหม่ตามพารามิเตอร์ที่เป็นไปได้ของฟังก์ชันอื่น |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureGenXdev.md) | &nbsp; | ตรวจสอบให้แน่ใจว่าโมดูล GenXdev ทั้งหมดถูกโหลดอย่างถูกต้องโดยเรียกใช้ cmdlets Ensure* ทั้งหมด |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureNuGetAssembly.md) | &nbsp; | ดาวน์โหลดและโหลดแอสเซมบลี .NET จากแพ็กเกจ NuGet โดยอิงตามคีย์หรือ ID ของแพ็กเกจ |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/GenerateMasonryLayoutHtml.md) | &nbsp; | สร้างแกลเลอรี HTML แบบเค้าโครงแบบ Masonry ที่ตอบสนองจากข้อมูลรูปภาพ |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AIDefaultLLMSettings.md) | &nbsp; | รับการกำหนดค่าเริ่มต้น LLM ทั้งหมดที่มีสำหรับการดำเนินการ AI ใน GenXdev.AI |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-BCP47LanguageDictionary.md) | &nbsp; | ส่งกลับพจนานุกรมของแท็กภาษา BCP 47 ที่ติดตั้งทั้งหมดและชื่อที่แสดง |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-DefaultWebLanguage.md) | &nbsp; | รับคีย์ภาษาเว็บเริ่มต้นตามการตั้งค่าภาษาปัจจุบันของระบบ |
| [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-JsonExampleFromSchema.md) | &nbsp; | สร้างสตริง JSON ตัวอย่างที่มนุษย์อ่านได้จากคำจำกัดความของ JSON Schema |
| [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-LLMJsonOutput.md) | &nbsp; | แยก JSON ที่ถูกต้องจากข้อความตอบกลับของ LLM โดยใช้ฮิวริสติกแบบพยายามอย่างดีที่สุด |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WebLanguageDictionary.md) | &nbsp; | ส่งคืนพจนานุกรมแบบย้อนกลับสำหรับภาษาทั้งหมดที่ Google Search รองรับ |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Import-GenXdevModules.md) | reloadgenxdev | นำเข้าโมดูล PowerShell ทั้งหมดของ GenXdev สู่ขอบเขตระดับโกลบอล |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Initialize-SearchPaths.md) | &nbsp; | เริ่มต้นและกำหนดค่าเส้นทางการค้นหาระบบสำหรับการจัดการแพ็กเกจ |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-CommandFromToolCall.md) | &nbsp; | ดำเนินการเรียกใช้ฟังก์ชันเครื่องมือด้วยการตรวจสอบความถูกต้องและการกรองพารามิเตอร์ |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | ดำเนินการสคริปต์บล็อกในแต่ละโมดูล GenXdev ในพื้นที่ทำงาน |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-JSONComments.md) | &nbsp; | ลบความคิดเห็นออกจากเนื้อหา JSON |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/resetdefaultmonitor.md) | &nbsp; | เรียกคืนการกำหนดค่าจอภาพสำรองเริ่มต้น |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ResolveInputObjectFileNames.md) | &nbsp; | ขยายอ็อบเจกต์อินพุตเป็นชื่อไฟล์และไดเร็กทอรี รองรับตัวกรองและตัวเลือกเอาต์พุตที่หลากหลาย |
| [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-Verb.md) | showverbs | แสดงรายการคำกริยาของ PowerShell ทั้งหมดแบบเรียงลำดับตามตัวอักษรสั้นๆ |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-RefactorLLMSelection.md) | &nbsp; | ประเมินไฟล์ต้นฉบับเพื่อตรวจสอบความเหมาะสมในการปรับโครงสร้างโดยใช้การวิเคราะห์ด้วย LLM |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-UnattendedMode.md) | &nbsp; | ตรวจจับว่า PowerShell กำลังทำงานในโหมดอัตโนมัติ/ไม่มีผู้ใช้หรือไม่ |
| [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/WriteFileOutput.md) | &nbsp; | แสดงข้อมูลไฟล์พร้อมชื่อที่แสดงแบบมีไฮเปอร์ลิงก์เพื่อประสบการณ์ผู้ใช้ที่ดีขึ้น |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Convert-PhysicsUnit.md) | &nbsp; | แปลงค่าจากหน่วยฟิสิกส์หนึ่งไปยังอีกหน่วยหนึ่งภายในหมวดหมู่เดียวกัน |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ApparentSizeAtArmLength.md) | &nbsp; | คำนวณขนาดที่ปรากฏของวัตถุที่ระยะแขนเหยียดออก |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AtEyeLengthSizeInMM.md) | &nbsp; | คำนวณขนาดปรากฏในหน่วยมิลลิเมตรของวัตถุที่ระยะแขนยื่น |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | คำนวณแรงลอยตัว |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | คำนวณความเร่งสู่ศูนย์กลาง |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | คำนวณความถี่ที่ถูกเลื่อนเนื่องจากดอปเปลอร์ |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | คำนวณแรงต้าน |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | คำนวณความเร็วหลุดพ้น |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-FreeFallDistance.md) | &nbsp; | คำนวณระยะทางที่ตกลงมาในช่วงเวลาที่กำหนดสำหรับการตกอย่างอิสระ |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-FreeFallHeight.md) | &nbsp; | คำนวณระยะทางที่ตกลงมาในช่วงเวลาที่กำหนดภายใต้แรงโน้มถ่วง |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-FreeFallTime.md) | &nbsp; | คำนวณเวลาที่วัตถุใช้ในการตกจากความสูงที่กำหนดระหว่างการตกอย่างอิสระ |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | คำนวณความเร็วกระแทกจากความสูง |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | คำนวณพลังงานจลน์ |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-LightTravelTimeByDistance.md) | &nbsp; | คำนวณเวลาที่แสงใช้เดินทางตามระยะทาง |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | คำนวณกำลังขยายสำหรับเลนส์ |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MomentumByMassAndVelocity.md) | &nbsp; | คำนวณโมเมนตัมเชิงเส้น |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | คำนวณความเร็วในวงโคจร |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | คำนวณพลังงานศักย์โน้มถ่วง |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | คำนวณระยะการยิงของโพรเจกไทล์ |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | คำนวณมุมหักเหโดยใช้กฎของสเนลล์ |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | คำนวณความถี่เรโซแนนซ์สำหรับท่อปิด |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SoundTravelDistanceByTime.md) | &nbsp; | คำนวณระยะทางที่เสียงเดินทางในเวลาที่กำหนด |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | คำนวณความเร็วปลาย |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | คำนวณระยะเวลาการเคลื่อนที่ของโพรเจกไทล์ |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | คำนวณความเร็วคลื่น |

---

## GenXdev.Media

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageGeolocation.md) | &nbsp; | แยกข้อมูลตำแหน่งทางภูมิศาสตร์จากไฟล์รูปภาพ |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageMetadata.md) | &nbsp; | แยกข้อมูลเมตาที่ครอบคลุมจากไฟล์รูปภาพ |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MediaFileCreationDate.md) | &nbsp; | แยกวันที่สร้างแบบ best-effort สำหรับไฟล์สื่อและไฟล์อื่นๆ |
| [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-MediaFile.md) | vlcmedia, media, findmedia | เปิดและเล่นไฟล์มีเดียโดยใช้ VLC media player พร้อมตัวเลือกการกรองและการกำหนดค่าขั้นสูง |
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-VlcMediaPlayer.md) | vlc | เปิดใช้งานและควบคุม VLC Media Player ด้วยตัวเลือกการกำหนดค่าที่ครอบคลุม |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-VlcMediaPlayerLyrics.md) | vlclyrics | เปิดเว็บเบราว์เซอร์เพื่อค้นหาเนื้อเพลงของสื่อที่กำลังเล่นใน VLC |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | กำหนดโฟกัสไปที่หน้าต่างโปรแกรมเล่นสื่อ VLC |
| [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/StabilizeVideo.md) | &nbsp; | ทำให้ไฟล์ .mp4 ใหม่ล่าสุดหรือที่ระบุมีความเสถียรโดยใช้ FFmpeg + vid.stab (ไม่มีขอบดำ) |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | ให้ VLC Media Player เลื่อนไปยังรายการถัดไปในเพลย์ลิสต์ปัจจุบัน |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | ย้ายไปยังรายการก่อนหน้าในเพลย์ลิสต์ของ VLC Media Player |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | สลับสถานะปิดเสียงของ VLC Media Player |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | สลับสถานะหยุดชั่วคราว/เล่นของ VLC Media Player |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | สลับโหมดเล่นซ้ำใน VLC Media Player |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-Uris.md) | &nbsp; | แยกวิเคราะห์สตริงสำหรับ URI ที่ถูกต้องใดๆ |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-AllPossibleQueries.md) | qq | เปิดประเภทคำค้นหาที่เป็นไปได้ทั้งหมดสำหรับคำค้นหาหรือ URL ที่กำหนด |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-BingCopilotQuery.md) | aibc | เปิดข้อความค้นหา Bing CoPilot ในเว็บเบราว์เซอร์ |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | เปิดคำถาม ChatGPT ในเว็บเบราว์เซอร์ |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-CloudLLMChat.md) | ask | เปิดอินเทอร์เฟซแชท LLM คลาวด์สำหรับสอบถามข้อมูล AI |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | เปิดการสอบถาม DeepSeek ในเว็บเบราว์เซอร์ |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-GithubCopilotQuery.md) | aigc, askghcopilot | เปิดการสอบถาม Github CoPilot ในเว็บเบราว์เซอร์ |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-GoogleGeminiQuery.md) | aigg, askgemini | เปิดการค้นหา Google Gemini ในเว็บเบราว์เซอร์ |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-XGrokQuery.md) | aixg, askxgrok | เปิดการค้นหา X Grok ในเว็บเบราว์เซอร์ |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-NextAffirmation.md) | WhatAboutIt | ส่งคืนข้อความให้กำลังใจแบบสุ่มจาก API affirmations.dev |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WikipediaSummary.md) | wikitxt | ดึงข้อมูลสรุปของหัวข้อจากวิกิพีเดีย |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-PDFsFromGoogleQuery.md) | &nbsp; | ดาวน์โหลดไฟล์ PDF ที่พบจากผลการค้นหาของ Google |
| [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-BingQuery.md) | bq | เปิดคำค้นหา Bing ในเว็บเบราว์เซอร์ |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-BuiltWithSiteInfo.md) | &nbsp; | เปิดการค้นหาเว็บไซต์ BuiltWith ในเว็บเบราว์เซอร์ |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-GithubQuery.md) | qgithub, qgh | เปิดการค้นหาคลังเก็บ GitHub ในเว็บเบราว์เซอร์หรือดำเนินการค้นหาขั้นสูงกับ GitHub REST API ที่รองรับตัวระบุทั้งหมดที่มีและหมวดหมู่การค้นหา (คลังเก็บ, โค้ด, ปัญหา, ผู้ใช้, การคอมมิต, การอภิปราย, หัวข้อ, วิกิ) |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-GoogleQuery.md) | &nbsp; | เปิดคำค้นหาของ Google ในเว็บเบราว์เซอร์พร้อมการตั้งค่าที่กำหนดได้และตัวเลือกการปรับแต่งที่หลากหลาย |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-GoogleSiteInfo.md) | &nbsp; | เปิดการค้นหาข้อมูลไซต์ Google ในเว็บเบราว์เซอร์ |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-GrokipediaQuery.md) | wiki | เปิดแบบสอบถาม Grokipedia ในเว็บเบราว์เซอร์ |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-IMDBQuery.md) | imdb | เปิดการค้นหา IMDB ในเว็บเบราว์เซอร์ |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-InstantStreetViewQuery.md) | isv | เปิดการค้นหา InstantStreetView ในเว็บเบราว์เซอร์ |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-MovieQuote.md) | moviequote | เปิดวิดีโอคำพูดจากภาพยนตร์ในเว็บเบราว์เซอร์ |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-SearchEngine.md) | q | เปิดคำค้นหาในเครื่องมือค้นหาที่ระบุโดยใช้เว็บเบราว์เซอร์ |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-SimularWebSiteInfo.md) | simularsite | เปิดข้อมูลเว็บไซต์ SimilarWeb สำหรับ URL ที่ระบุในเว็บเบราว์เซอร์ |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-StackOverflowQuery.md) | qso | เปิดการค้นหา Stack Overflow ในเว็บเบราว์เซอร์ |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WaybackMachineSiteInfo.md) | wayback | เปิดข้อมูลไซต์ WaybackMachine ในเว็บเบราว์เซอร์ |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WebsiteAndPerformQuery.md) | owaq | เปิดหน้าเว็บในเว็บเบราว์เซอร์และดำเนินการค้นหาหนึ่งรายการขึ้นไป |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WhoisHostSiteInfo.md) | whois | เปิดการสอบถามข้อมูลโฮสต์ Whois ในเว็บเบราว์เซอร์ |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WikipediaNLQuery.md) | wikinl | เปิดการค้นหาภาษาดัตช์ของ Wikipedia ในเว็บเบราว์เซอร์ |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WikipediaQuery.md) | wikipedia | เปิดการค้นหาวิกิพีเดียในเว็บเบราว์เซอร์ |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WolframAlphaQuery.md) | qalpha | เปิดการค้นหา Wolfram Alpha ในเว็บเบราว์เซอร์ |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-YoutubeQuery.md) | youtube | เปิดการค้นหา YouTube ในเว็บเบราว์เซอร์ |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-GameOfLife.md) | gameoflife, conway | เปิดเกมจำลองชีวิตของ Conway ในเว็บเบราว์เซอร์ |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-GenXdevAppCatalog.md) | appcatalog | เปิดแค็ตตาล็อกแอปพลิเคชันเว็บแบบก้าวหน้าของ GenXdev ในเว็บเบราว์เซอร์ |
| [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-Timeline.md) | timeline | เปิดเส้นเวลาแบบโต้ตอบที่แสดงเวลา วันที่ ศตวรรษ และสหัสวรรษปัจจุบัน |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-ViralSimulation.md) | viral | เปิดเกมจำลองการแพร่เชื้อในเว็บเบราว์เซอร์พร้อมตัวเลือกการกำหนดค่าที่ครอบคลุม |
| [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-Yab.md) | yab | เปิดเกม YAB ในเว็บเบราว์เซอร์ด้วยการตั้งค่าที่ปรับแต่งได้ |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-YabAIBattle.md) | yabbattle | เปิดเกม YabAI Battle ในเว็บเบราว์เซอร์ |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Close-Webbrowser.md) | wbc | ปิดอินสแตนซ์ของเว็บเบราว์เซอร์หนึ่งรายการขึ้นไปแบบเลือกได้ |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Close-WebbrowserTab.md) | ct, CloseTab | ปิดแท็บเว็บเบราว์เซอร์ที่เลือกอยู่ในขณะนี้ |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Export-BrowserBookmarks.md) | &nbsp; | ส่งออกบุ๊กมาร์กของเบราว์เซอร์ไปยังไฟล์ JSON |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-BrowserBookmark.md) | bookmarks | ค้นหาบุ๊กมาร์กจากเว็บเบราว์เซอร์หนึ่งรายการขึ้นไป |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-BrowserBookmark.md) | gbm | ส่งคืนบุ๊กมาร์กทั้งหมดจากเว็บเบราว์เซอร์ที่ติดตั้งไว้ |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-DefaultWebbrowser.md) | &nbsp; | ส่งคืนเว็บเบราว์เซอร์เริ่มต้นที่กำหนดค่าสำหรับผู้ใช้ปัจจุบัน |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PlaywrightSessionReference.md) | &nbsp; | รับการอ้างอิงถึงเซสชันเบราว์เซอร์ Playwright ปัจจุบัน |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Webbrowser.md) | &nbsp; | ส่งกลับชุดของเว็บเบราว์เซอร์สมัยใหม่ที่ติดตั้งแล้ว |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WebbrowserTabDomNodes.md) | wl | ค้นหาและจัดการโหนด DOM ในแท็บเบราว์เซอร์ที่ใช้งานอยู่โดยใช้ตัวเลือก CSS |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Import-BrowserBookmarks.md) | &nbsp; | นำเข้าบุ๊กมาร์กจากไฟล์หรือคอลเลกชันไปยังเว็บเบราว์เซอร์ |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Import-GenXdevBookmarkletMenu.md) | &nbsp; | นำเข้า JavaScript bookmarklets ของ GenXdev ไปยังคอลเลกชันบุ๊กมาร์กของเบราว์เซอร์ |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-WebbrowserEvaluation.md) | Eval, et | ดำเนินการโค้ด JavaScript ในแท็บเว็บเบราว์เซอร์ที่เลือก |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-BrowserBookmarks.md) | sites | เปิดบุ๊กมาร์กเบราว์เซอร์ที่ตรงกับเกณฑ์การค้นหาที่ระบุ |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-Webbrowser.md) | wb | เปิด URL ในหน้าต่างเบราว์เซอร์อย่างน้อยหนึ่งหน้าต่าง โดยสามารถกำหนดตำแหน่งและรูปแบบได้ |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WebbrowserSideBySide.md) | wbn | เปิดหน้าต่างเว็บเบราว์เซอร์ใหม่พร้อมตำแหน่งที่ระบุ |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Select-WebbrowserTab.md) | st | เลือกแท็บเบราว์เซอร์จากเบราว์เซอร์ที่จัดการโดย Playwright ที่กำลังทำงานอยู่ |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-BrowserVideoFullscreen.md) | fsvideo | ขยายองค์ประกอบวิดีโอแรกที่พบในแท็บเบราว์เซอร์ปัจจุบันให้ใหญ่ที่สุด |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-WebbrowserTabLocation.md) | lt, Nav | นำทางแท็บเบราว์เซอร์ปัจจุบันไปยัง URL ที่ระบุ |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-WebsiteInAllBrowsers.md) | &nbsp; | เปิด URL ในเบราว์เซอร์หลายตัวพร้อมกันในรูปแบบโมเสก |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | เชื่อมต่อไปยังอินสแตนซ์เบราว์เซอร์ที่มีอยู่ผ่านพอร์ตดีบัก |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PlaywrightProfileDirectory.md) | &nbsp; | รับไดเรกทอรีโปรไฟล์เบราว์เซอร์ของ Playwright สำหรับเซสชันแบบถาวร |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-PlayWrightBrowser.md) | spb | เริ่มต้นเบราว์เซอร์ที่จัดการโดย Playwright พร้อมโปรไฟล์ผู้ใช้ถาวร |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Resume-WebbrowserTabVideo.md) | wbvideoplay | ดำเนินการเล่นวิดีโอต่อในแท็บเบราว์เซอร์ YouTube |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | หยุดการเล่นวิดีโอในเซสชันเบราว์เซอร์ที่ใช้งานอยู่ทั้งหมด |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Unprotect-WebbrowserTab.md) | wbctrl | ควบคุมแท็บเบราว์เซอร์ที่เลือกไว้เพื่อการจัดการแบบโต้ตอบ |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/CurrentUserHasElevatedRights.md) | &nbsp; | ตรวจสอบว่าผู้ใช้ปัจจุบันมีสิทธิ์ระดับสูงหรือไม่ |
| [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Enable-Screensaver.md) | &nbsp; | เริ่มการทำงานโปรแกรมรักษาหน้าจอ Windows ที่กำหนดค่าไว้ |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ActiveUser.md) | gusers | ดึงรายชื่อผู้ใช้ที่ไม่ซ้ำกันจากกระบวนการของระบบที่กำลังทำงานอยู่ |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ChildProcesses.md) | &nbsp; | ดึงข้อมูลกระบวนการทั้งหมดที่เป็นกระบวนการสืบทอดของกระบวนการ PowerShell ปัจจุบัน |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ClipboardFiles.md) | getclipfiles, gcbf | รับไฟล์จากคลิปบอร์ดของ Windows ที่ถูกตั้งค่าสำหรับการดำเนินการไฟล์ เช่น การคัดลอก/วาง |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-CurrentFocusedProcess.md) | &nbsp; | เรียกคืนอ็อบเจกต์กระบวนการของหน้าต่างที่มีโฟกัสของแป้นพิมพ์อยู่ในขณะนี้ |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-DesktopScalingFactor.md) | &nbsp; | ดึงค่าสเกลการแสดงผลของ Windows (การตั้งค่า DPI) สำหรับจอภาพที่ระบุ |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ForegroundWindow.md) | &nbsp; | รับค่า handle ของหน้าต่างที่กำลังทำงานอยู่ด้านหน้าในขณะนั้น |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-KnownFolderPath.md) | folder | รับเส้นทางของโฟลเดอร์ที่รู้จักของ Windows โดยใช้ Windows Shell32 API |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MpCmdRunPath.md) | &nbsp; | รับเส้นทางไปยังไฟล์ปฏิบัติการ MpCmdRun.exe ของ Windows Defender |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-OpenedFileHandleProcesses.md) | &nbsp; | ดึงข้อมูลกระบวนการที่มีแฮนเดิลไฟล์เปิดไปยังไฟล์ที่ระบุ |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PowershellMainWindow.md) | &nbsp; | ส่งคืนออบเจ็กต์ตัวช่วยหน้าต่างสำหรับหน้าต่างหลักของเทอร์มินัล PowerShell |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PowershellMainWindowProcess.md) | &nbsp; | ส่งคืนออบเจ็กต์กระบวนการสำหรับหน้าต่างที่โฮสต์เทอร์มินัล PowerShell |
| [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Window.md) | &nbsp; | รับข้อมูลหน้าต่างสำหรับกระบวนการที่ระบุหรือที่จับหน้าต่างที่ระบุ |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WindowPosition.md) | gwp | รับข้อมูลตำแหน่งและสถานะของหน้าต่าง |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Initialize-ScheduledTaskScripts.md) | &nbsp; | สร้างงานตามกำหนดการที่เรียกใช้สคริปต์ PowerShell ในช่วงเวลาที่กำหนด |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-WindowsUpdate.md) | updatewindows | ตรวจสอบว่า Windows เป็นเวอร์ชันล่าสุดหรือไม่ และสามารถติดตั้งการอัปเดตที่มีอยู่ได้ตามต้องการ |
| [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Pop-Window.md) | popw | นำตัวช่วยหน้าต่างที่ใช้งานล่าสุดออกจากสแต็ก โดยสามารถปรับเปลี่ยนได้ตามต้องการ |
| [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Push-Window.md) | pushw | ผลักหน้าต่างปัจจุบันไปยังสแต็กหน้าต่างโดยมีการปรับเปลี่ยนตามตัวเลือก |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-DesktopScreenShot.md) | &nbsp; | จับภาพหน้าจอของมอนิเตอร์ที่ระบุและบันทึกไปยังเส้นทางที่กำหนด |
| [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Send-Key.md) | sendkeys, invokekeys | ส่งการกดแป้นพิมพ์จำลองไปยังหน้าต่างหรือกระบวนการ |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Send-WakeOnLan.md) | &nbsp; | ส่งแพ็กเก็ต Wake-on-LAN เพื่อปลุกเครื่องคอมพิวเตอร์ระยะไกลบนเครือข่าย |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-ClipboardFiles.md) | setclipfiles, scbf | ตั้งค่าไฟล์ไปยังคลิปบอร์ดของ Windows สำหรับการดำเนินการกับไฟล์ เช่น การคัดลอก/วาง |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-ForegroundWindow.md) | &nbsp; | นำหน้าต่างที่ระบุมาอยู่เบื้องหน้าและทำให้เป็นหน้าต่างที่ใช้งานอยู่ |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-KnownFolderPath.md) | &nbsp; | แก้ไขเส้นทางจริงของโฟลเดอร์ที่รู้จักใน Windows |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-MonitorPowerOff.md) | poweroff | ปิดการจ่ายไฟให้กับจอภาพที่เชื่อมต่อทั้งหมด |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | เปิดไฟจอมอนิเตอร์ |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-TaskbarAlignment.md) | &nbsp; | กำหนดการจัดตำแหน่งแถบงานใน Windows 11+ ระหว่างตำแหน่งกึ่งกลางและซ้าย |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-WindowPosition.md) | wp | จัดตำแหน่งและปรับขนาดหน้าต่างเมื่อมีการระบุพารามิเตอร์การวางตำแหน่งอย่างชัดเจน |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-WindowPositionForSecondary.md) | wps | วางตำแหน่งหน้าต่างบนจอภาพรองด้วยตัวเลือกเค้าโครงที่ระบุ |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-WindowsWallpaper.md) | &nbsp; | กำหนดวอลเปเปอร์แบบสุ่มจากไดเรกทอรีที่ระบุ |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-ProcessWithPriority.md) | nice | เริ่มกระบวนการด้วยระดับลำดับความสำคัญที่ระบุ |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | สแกนไฟล์หรือไดเรกทอรีเพื่อหามัลแวร์โดยใช้ Windows Defender |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-WireGuardPeer.md) | &nbsp; | เพิ่มการกำหนดค่า WireGuard VPN peer (ไคลเอนต์) ใหม่ให้กับเซิร์ฟเวอร์ |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureWireGuard.md) | &nbsp; | รับประกันว่าบริการ VPN WireGuard ได้รับการติดตั้งและกำลังทำงานผ่านคอนเทนเนอร์ Docker |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WireGuardPeerQRCode.md) | &nbsp; | สร้างรหัส QR สำหรับการกำหนดค่าคู่สัญญา WireGuard VPN |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WireGuardPeers.md) | &nbsp; | รับข้อมูลเกี่ยวกับคู่ WireGuard VPN ทั้งหมดที่กำหนดค่าบนระบบ |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WireGuardStatus.md) | &nbsp; | รับข้อมูลสถานะโดยละเอียดเกี่ยวกับเซิร์ฟเวอร์ WireGuard VPN |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-WireGuardPeer.md) | &nbsp; | ลบการกำหนดค่าเพื่อน WireGuard VPN |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Reset-WireGuardConfiguration.md) | &nbsp; | รีเซ็ตการกำหนดค่าเซิร์ฟเวอร์ WireGuard VPN โดยลบไคลเอ็นต์ทั้งหมดออก |
