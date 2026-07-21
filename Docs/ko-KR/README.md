# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-21.

## GenXdev

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXDevCmdlet.md) | gcmds | 모든 GenXdev cmdlet과 그 세부 정보를 검색하고 나열합니다. |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Show-GenXdevCmdlet.md) | cmds | GenXdev PowerShell 모듈과 해당 cmdlet 및 별칭을 표시합니다. |

---

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AILLMSettings.md) | &nbsp; | GenXdev.AI의 AI 작업을 위한 LLM 설정을 가져옵니다. |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SpeechToText.md) | &nbsp; | OpenAI의 Whisper 음성 인식 모델을 사용하여 오디오 파일을 텍스트로 변환합니다. |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-TextTranslation.md) | translate | AI를 사용하여 텍스트를 다른 언어로 번역합니다. |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-VectorSimilarity.md) | &nbsp; | 두 벡터 간의 코사인 유사도를 계산합니다. |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-WinMerge.md) | &nbsp; | 두 파일을 나란히 비교하기 위해 WinMerge를 실행합니다. |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Merge-TranslationCache.md) | &nbsp; | 언어별로 디스크에 일괄 쓰기 작업을 수행하는 영구 번역 캐시를 관리합니다. |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-LLMAudioChat.md) | llmaudiochat | LLM 모델과 대화형 오디오 채팅 세션을 만듭니다. |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-LLMTextChat.md) | llmchat | AI 기능을 사용하여 대화형 텍스트 채팅 세션을 시작합니다. |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Receive-RealTimeSpeechToText.md) | &nbsp; | Whisper AI 모델을 사용하여 실시간 오디오 입력을 텍스트로 변환합니다. |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AILLMSettings.md) | &nbsp; | GenXdev.AI에서 AI 작업을 위한 LLM 설정을 지정합니다. |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | 선택적 AI 지원을 통해 사용자 지정 명령어를 찾을 수 없는 경우의 처리를 설정합니다. |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-DeepLinkImageFile.md) | &nbsp; | 지정된 파일 경로가 지원되는 형식의 유효한 이미지 파일인지 테스트합니다. |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Compare-ImageFaces.md) | comparefaces | DeepStack를 사용하여 두 개의 다른 이미지에서 얼굴을 비교하고 유사성을 반환합니다. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ImageDetectedFaces.md) | &nbsp; | DeepStack를 사용하여 알려진 얼굴과 비교하여 업로드된 이미지에서 얼굴을 인식합니다. |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ImageDetectedObjects.md) | &nbsp; | DeepStack를 사용하여 업로드된 이미지에서 객체를 감지하고 분류합니다. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ImageDetectedScenes.md) | &nbsp; | DeepStack를 사용하여 이미지를 365개의 장면 범주 중 하나로 분류합니다. |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-RegisteredFaces.md) | &nbsp; | DeepStack에서 등록된 모든 얼굴 식별자 목록을 검색합니다. |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageEnhancement.md) | enhanceimage | DeepStack를 사용하여 이미지를 4배로 확대하고 품질을 향상시킵니다. |
| [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Register-AllFaces.md) | UpdateFaces | faces 디렉토리의 이미지 파일에서 모든 얼굴 인식 프로필을 업데이트합니다. |
| [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Register-Face.md) | &nbsp; | DeepStack 얼굴 인식 API에 새 얼굴을 등록합니다. |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Unregister-AllFaces.md) | &nbsp; | DeepStack 얼굴 인식 시스템에서 등록된 모든 얼굴을 제거합니다. |
| [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Unregister-Face.md) | &nbsp; | DeepStack에서 등록된 얼굴을 식별자로 삭제합니다. |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-EmoticonsToText.md) | emojify | AI를 사용하여 문맥에 맞는 이모티콘을 추가하여 텍스트를 향상시킵니다. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertFrom-CorporateSpeak.md) | uncorporatize | 정중하고 전문적인 회사체의 말을 AI를 사용하여 직접적이고 명확한 언어로 변환합니다. |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | 외교적이거나 완곡한 언어를 직접적이고 명확하며 직설적인 언어로 변환합니다. |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-CorporateSpeak.md) | corporatize | AI를 사용하여 직설적이거나 거친 텍스트를 정중하고 전문적인 기업체 스타일로 변환합니다. |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-DiplomaticSpeak.md) | diplomatize | 직접적이거나 노골적인 텍스트를 예의 바르고 세심한 외교적 언어로 변환합니다. |
| [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-Image.md) | findimages, li | 필터링 기능과 선택적 브라우저 기반 갤러리 표시를 통해 지정된 디렉터리에서 이미지 파일과 메타데이터를 검색합니다. |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AIKnownFacesRootpath.md) | &nbsp; | GenXdev.AI 작업에 사용되는 얼굴 이미지 파일의 구성된 디렉터리를 가져옵니다. |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AIMetaLanguage.md) | getimgmetalang | 이미지 메타데이터 작업에 대해 구성된 기본 언어를 가져옵니다. |
| [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Fallacy.md) | dispicetext | AI 기반 감지를 사용하여 텍스트를 분석하고 논리적 오류를 식별합니다. |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | 다양한 스트림에서 오류 메시지를 캡처하고 LLM을 사용하여 수정 사항을 제안합니다. |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SimularMovieTitles.md) | &nbsp; | 공통 속성을 기준으로 유사한 영화 제목을 찾습니다. |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-AIPowershellCommand.md) | hint | AI 지원을 사용하여 PowerShell 명령을 생성하고 실행합니다. |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageFacesUpdate.md) | imagepeopledetection | 지정된 디렉터리에 있는 이미지 파일의 얼굴 인식 메타데이터를 업데이트합니다. |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | AI 생성 설명 및 키워드를 사용하여 이미지 메타데이터를 업데이트합니다. |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageMetadataUpdate.md) | imagepropdetection | 디렉터리의 이미지에 대한 EXIF 메타데이터를 업데이트합니다. |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | 지정된 디렉토리에 있는 이미지 파일에 대한 개체 검출 메타데이터를 업데이트합니다. |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageScenesUpdate.md) | imagescenedetection | 지정된 디렉터리에 있는 이미지 파일의 장면 분류 메타데이터를 업데이트합니다. |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMBooleanEvaluation.md) | equalstrue | AI를 사용하여 문장을 평가하고 참 또는 거짓을 판단합니다. |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMQuery.md) | qllm, llm | OpenAI 호환 대규모 언어 채팅 완성 API에 쿼리를 전송하고 응답을 처리합니다. |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMStringListEvaluation.md) | getlist, getstring | AI 분석을 사용하여 입력 텍스트에서 관련 문자열을 추출하거나 생성합니다. |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMTextTransformation.md) | spellcheck | AI 기반 처리를 사용하여 텍스트를 변환합니다. |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-QueryImageContent.md) | &nbsp; | AI 시각 기능을 사용하여 이미지 콘텐츠 분석 |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-ImageMetaData.md) | removeimagedata | 이미지 디렉터리에서 이미지 메타데이터 파일을 제거합니다. |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Save-FoundImageFaces.md) | saveimagefaces | 인덱싱된 이미지 검색 결과에서 잘린 얼굴 이미지를 저장합니다. |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Save-Transcriptions.md) | &nbsp; | OpenAI Whisper를 사용하여 오디오 및 비디오 파일의 자막 파일을 생성합니다. |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AIKnownFacesRootpath.md) | &nbsp; | GenXdev.AI 작업에 사용되는 얼굴 이미지 파일의 디렉터리를 설정합니다. |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AIMetaLanguage.md) | &nbsp; | GenXdev.AI 이미지 메타데이터 작업의 기본 언어와 선택적으로 이미지 디렉터리를 설정합니다. |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Show-FoundImagesInBrowser.md) | showfoundimages | 메이슨리 레이아웃 웹 갤러리에 이미지 검색 결과를 표시합니다. |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-AudioTranscription.md) | transcribefile, transcribe | 오디오 파일, 비디오 파일 또는 녹음 장치에서 텍스트로 변환합니다. |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Update-AllImageMetaData.md) | updateallimages | 여러 시스템 디렉터리에서 이미지 키워드, 얼굴, 개체 및 장면을 일괄 업데이트합니다. |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-FeatureLineToREADME.md) | feature | 타임스탬프와 함께 README 파일에 기능 라인을 추가합니다. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-IdeaLineToREADME.md) | idea | README.md 파일에 아이디어 항목을 추가합니다. |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-IssueLineToREADME.md) | issue | README.md 파일에 이슈 항목을 추가합니다. |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-LineToREADME.md) | &nbsp; | 지정된 섹션의 README.md 마크다운 파일에 줄을 추가합니다. |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-ReleaseNoteLineToREADME.md) | releasenote | 타임스탬프와 함께 README 파일에 ReleaseNote 줄을 추가합니다. |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-TodoLineToREADME.md) | todo | README.md 파일에 할 일 항목을 추가합니다. |
| [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Features.md) | features | README.md 파일의 기능을 표시합니다. |
| [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Ideas.md) | ideas | README.md 파일의 아이디어를 표시합니다. |
| [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Issues.md) | issues | README.md 파일에서 문제를 표시합니다. |
| [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Refactor.md) | refactors | 이름 패턴을 기반으로 GenXdev 기본 설정에서 리팩터 정의를 검색합니다. |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-RefactorReport.md) | refactorreport | 리팩터링 작업 및 해당 상태에 대한 상세 보고서를 생성합니다. |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ReleaseNotes.md) | releasenotes | README.md 파일에서 릴리스 정보를 표시합니다. |
| [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Todoos.md) | todoos | README.md 파일에서 할 일 항목을 표시합니다. |
| [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-Refactor.md) | newrefactor | 코드 변환 작업을 위한 새로운 리팩터링 집합을 생성합니다. |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-SourceFileInIde.md) | editcode | 선호하는 IDE(Visual Studio Code 또는 Visual Studio)에서 소스 파일을 엽니다. |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Publish-ReleaseNotesToManifest.md) | pubrelnotes | README.md에서 완료되지 않은 릴리스 노트를 모듈 매니페스트에 게시합니다. |
| [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-Refactor.md) | &nbsp; | GenXdev 환경 설정 시스템에서 리팩터 집합을 제거합니다. |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-NextRefactor.md) | nextrefactor | 코드 리팩터링 세션을 계속하거나 다시 시작합니다. |
| [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Update-Refactor.md) | updaterefactor | 파일 선택 및 처리를 포함한 리팩터링 집합을 업데이트하고 관리합니다. |
| [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/VSCode.md) | &nbsp; | Visual Studio Code에서 하나 이상의 파일을 엽니다. |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GitChangedFiles.md) | gitchanged | Git 리포지토리에서 변경된 파일 목록을 가져옵니다. |
| [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-GitCommit.md) | commit | 변경 사항을 모두 포함하는 새 git 커밋을 생성하고 푸시합니다. |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/PermanentlyDeleteGitFolders.md) | &nbsp; | Git 저장소의 모든 브랜치에서 지정된 폴더를 영구적으로 삭제합니다. |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-GenXdevCmdlet.md) | improvecmdlet | AI 지원을 통해 GenXdev cmdlet 설명서 및 구현을 개선합니다. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-GenXdevCmdletTests.md) | improvecmdlettests | 지정된 GenXdev cmdlet의 단위 테스트를 검증하고 개선합니다. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | GenXdev 모듈 간의 종속성 사용을 검증하여 적절한 모듈 계층 구조가 유지되도록 합니다. |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-GenXdevTest.md) | rungenxdevtests | GenXdev 모듈, 하위 모듈 또는 cmdlet에 대한 단위 테스트를 실행하며 지능형 디버깅 및 AI 기반 오류 해결 기능을 제공합니다. |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-ModuleDefinition.md) | &nbsp; | AI 지원을 사용하여 PowerShell 소스 코드 파일 리팩토링을 지원합니다. |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureCopilotKeyboardShortCut.md) | &nbsp; | Visual Studio Code에서 GitHub Copilot Chat 키보드 단축키를 구성합니다. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureDefaultGenXdevRefactors.md) | &nbsp; | 기본 GenXdev 리팩터링 정의를 사용할 수 있도록 합니다. |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-CmdletMetaData.md) | &nbsp; | 지정된 GenXdev cmdlet에 대한 메타데이터를 검색하고, 선택적으로 도움말 텍스트를 다른 언어로 번역합니다. |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXDevModule.md) | &nbsp; | 지정된 경로에서 모든 GenXDev 모듈을 검색합니다. |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXDevModuleInfo.md) | &nbsp; | GenXdev PowerShell 모듈에 대한 자세한 정보를 검색합니다. |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | GenXDev 모듈을 종속성 순서대로 검색합니다. |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ModuleCmdletMetaData.md) | &nbsp; | PowerShell 모듈에 있는 모든 cmdlet의 메타데이터를 검색합니다. |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-GenXdevPSFormatter.md) | &nbsp; | PSScriptAnalyzer 형식 규칙을 사용하여 PowerShell 스크립트 파일의 서식을 지정합니다. |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | PowerShell 스크립트 분석기를 호출하여 규정 준수 및 모범 사례에 대해 PowerShell 스크립트를 분석합니다. |
| [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-ModuleMarkdownHelp.md) | &nbsp; | 모든 PowerShell 모듈에 대한 풍부한 Markdown 도움말 파일을 생성합니다. |
| [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-ModuleXmlHelp.md) | &nbsp; | 모든 PowerShell 모듈에 대한 MAML XML 도움말 파일을 생성합니다. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Search-GenXdevCmdlet.md) | searchcmdlet | GenXdev cmdlet을 검색하고 선택적으로 IDE에서 편집을 위해 엽니다. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | 지정된 GenXdev cmdlet을 Visual Studio Code에서 엽니다. |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-ArrayTemplate.md) | FormatArray | 속성 자리 표시자가 포함된 템플릿 문자열을 사용하여 개체 컬렉션의 형식을 지정하고 단일 형식 문자열을 생성합니다. |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-DoubleEmptyLines.md) | &nbsp; | 코드 문자열에서 연속된 빈 줄을 제거하고, 선택적으로 출력 형식을 다시 지정합니다. |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-IsSpeaking.md) | iss | TTS 엔진이 말하고 있으면 true를 반환합니다. |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-MicrosoftShellTab.md) | x | PowerShell을 실행하는 새 Windows 터미널 탭을 만듭니다. |
| [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Now.md) | &nbsp; | 현재 시스템 날짜와 시간을 DateTime 개체로 반환합니다. |
| [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/SayDate.md) | &nbsp; | 음성 합성을 사용하여 현재 날짜를 말합니다. |
| [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/SayTime.md) | &nbsp; | 텍스트 음성 변환을 사용하여 현재 시간을 알립니다. |
| [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/secondscreen.md) | &nbsp; | 기본 보조 모니터 구성을 설정합니다. |
| [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/sidebyside.md) | &nbsp; | 기본 나란히 보기 구성을 설정합니다. |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-SnakeGame.md) | snake | 콘솔에서 간단한 뱀 게임을 시작합니다. |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-TextToSpeech.md) | say | Microsoft Edge의 신경망 TTS 엔진을 사용하여 텍스트를 음성으로 변환합니다. |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Stop-TextToSpeech.md) | sst | 진행 중인 텍스트 음성 변환 출력을 즉시 중지합니다. |
| [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/UtcNow.md) | &nbsp; | 현재 UTC(협정 세계시) 날짜와 시간을 가져옵니다. |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-KeyValueStoreNames.md) | getstorenames | 사용 가능한 키-값 저장소의 이름을 검색합니다. |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-KeyValueStorePath.md) | &nbsp; | 키-값 저장소에 대한 파일 경로를 가져옵니다. |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-StoreKeys.md) | getkeys | 주어진 키-값 저장소에 대한 모든 키 이름을 검색합니다. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ValueByKeyFromStore.md) | getvalue | JSON 기반 키-값 저장소에서 값을 검색합니다. |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Initialize-KeyValueStores.md) | &nbsp; | 로컬 및 OneDrive 저장소를 위한 KeyValueStore 디렉터리 구조를 초기화합니다. |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-KeyFromStore.md) | removekey | 키-값 저장소에서 키를 제거합니다. |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-KeyValueStore.md) | &nbsp; | 키-값 저장소를 제거합니다. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-ValueByKeyInStore.md) | setvalue | JSON 파일 기반 저장소에서 키-값 쌍을 관리합니다. |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Sync-KeyValueStore.md) | &nbsp; | 로컬 및 OneDrive 키-값 저장소 JSON 파일을 동기화합니다. |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXdevPreference.md) | getPreference | GenXdev 환경 설정 저장소에서 환경 설정 값을 검색합니다. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXdevPreferenceNames.md) | getPreferenceNames | 세션 저장소와 데이터베이스 저장소에서 모든 기본 설정 이름을 가져옵니다. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | GenXdev.Data 작업에 사용되는 기본 설정 데이터 파일의 구성된 데이터베이스 경로를 가져옵니다. |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-GenXdevPreference.md) | removePreference | GenXdev 기본 설정 저장소에서 기본 설정 값을 제거합니다. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | GenXdev 기본 설정 저장소에서 기본 설정값을 설정합니다. |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevPreference.md) | setPreference | GenXdev 기본 설정 저장소에서 기본 설정 값을 설정합니다. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | GenXdev.Data 작업에 사용되는 환경 설정의 데이터베이스 경로를 설정합니다. |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteSchema.md) | &nbsp; | SQLite 데이터베이스에서 전체 스키마 정보를 검색합니다. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteTableColumnData.md) | &nbsp; | SQLite 데이터베이스 테이블의 특정 열에서 데이터를 검색합니다. |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteTableData.md) | &nbsp; | SQLite 데이터베이스 테이블에서 선택적 레코드 제한으로 데이터를 검색합니다. |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteTables.md) | &nbsp; | SQLite 데이터베이스에서 테이블 이름 목록을 검색합니다. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteTableSchema.md) | &nbsp; | 지정된 SQLite 테이블의 스키마 정보를 검색합니다. |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteTransaction.md) | getsqltx, newsqltx | 일괄 작업을 위한 SQLite 트랜잭션 개체를 만들고 반환합니다. |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteViewColumnData.md) | &nbsp; | SQLite 뷰에서 선택적 레코드 제한을 적용하여 열 데이터를 검색합니다. |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteViewData.md) | &nbsp; | SQLite 데이터베이스 뷰에서 선택적으로 레코드 수를 제한하여 데이터를 검색합니다. |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteViews.md) | &nbsp; | SQLite 데이터베이스에서 뷰 목록을 검색합니다. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteViewSchema.md) | &nbsp; | SQLite 뷰에 대한 SQL 스키마 정의를 검색합니다. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-SQLiteQuery.md) | &nbsp; | 트랜잭션 지원을 통해 SQLite 데이터베이스에 대해 하나 이상의 SQL 쿼리를 실행합니다. |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-SQLiteStudio.md) | &nbsp; | 매개변수 및 트랜잭션을 지원하는 SQLite 데이터베이스 쿼리를 실행합니다. |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-SQLiteDatabase.md) | nsqldb | 새 SQLite 데이터베이스 파일을 생성합니다. |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerSchema.md) | &nbsp; | SQL Server 데이터베이스에서 전체 스키마 정보를 검색합니다. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerTableColumnData.md) | &nbsp; | SQL 데이터베이스 테이블의 특정 열에서 데이터를 검색합니다. |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerTableData.md) | &nbsp; | 선택적 레코드 제한과 함께 SQL 데이터베이스 테이블에서 데이터를 검색합니다. |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerTables.md) | &nbsp; | SQL Server 데이터베이스에서 테이블 이름 목록을 검색합니다. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerTableSchema.md) | &nbsp; | 지정된 SQL Server 테이블의 스키마 정보를 검색합니다. |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerTransaction.md) | getsqltx, newsqltx | 일괄 작업을 위한 SQL Server 트랜잭션 개체를 만들고 반환합니다. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerViewColumnData.md) | &nbsp; | 레코드 제한 옵션을 사용하여 SQL 뷰에서 열 데이터를 검색합니다. |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerViewData.md) | &nbsp; | 선택적 레코드 제한이 있는 SQL 데이터베이스 뷰에서 데이터를 검색합니다. |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerViews.md) | &nbsp; | SQL Server 데이터베이스에서 뷰 목록을 검색합니다. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerViewSchema.md) | &nbsp; | SQL Server 뷰에 대한 SQL 스키마 정의를 검색합니다. |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-SQLServerQuery.md) | &nbsp; | 트랜잭션 지원을 통해 SQL Server 데이터베이스에 대해 하나 이상의 SQL 쿼리를 실행합니다. |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | 매개변수 및 트랜잭션을 지원하는 SQL Server 데이터베이스 쿼리를 실행합니다. |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-SQLServerDatabase.md) | nsqldb | 새 SQL Server 데이터베이스를 만듭니다. |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Copy-FilesToDateFolder.md) | &nbsp; | 검색 조건과 일치하는 파일을 날짜 기반 하위 폴더로 복사합니다. |
| [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Expand-Path.md) | ep | 지정된 파일 참조를 전체 경로 이름으로 확장합니다. |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-DuplicateFiles.md) | fdf | 구성 가능한 기준에 따라 여러 디렉터리에서 중복 파일을 찾습니다. |
| [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-Item.md) | l | 고급 필터링 옵션으로 파일과 디렉터리를 검색합니다. |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-Fasti.md) | fasti | 현재 디렉터리에 있는 아카이브 파일을 각각의 폴더로 추출한 후 삭제합니다. |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Move-FilesToDateFolder.md) | &nbsp; | 검색 조건과 일치하는 파일을 날짜 기준 하위 폴더로 이동합니다. |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Move-ItemWithTracking.md) | &nbsp; | 파일과 디렉터리를 이동하면서 파일 시스템 링크와 참조를 보존합니다. |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Move-ToRecycleBin.md) | &nbsp; | 파일 및 디렉터리를 안전하게 Windows 휴지통으로 이동합니다. |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ReadJsonWithRetry.md) | &nbsp; | 재시도 로직과 자동 잠금 정리를 사용하여 JSON 파일을 읽습니다. |
| [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-AllItems.md) | sdel | 고급 오류 처리를 통해 디렉터리의 모든 콘텐츠를 재귀적으로 제거합니다. |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-ItemWithFallback.md) | rmf | 여러 대체 메커니즘을 사용하여 안정적으로 파일 또는 디렉터리를 삭제합니다. |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-OnReboot.md) | &nbsp; | 다음 시스템 부팅 시 삭제할 파일 또는 디렉터리를 표시합니다. |
| [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Rename-InProject.md) | rip | 프로젝트 디렉터리 전체에서 텍스트 바꾸기를 수행합니다. |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-FoundLocation.md) | lcd | 첫 번째 일치하는 파일이나 폴더를 찾아 해당 위치로 설정합니다. |
| [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent.md) | .. | 현재 위치를 부모 디렉터리로 변경하고 그 내용을 나열합니다. |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent2.md) | ... | 파일 시스템 계층 구조에서 두 수준 위로 이동합니다. |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent3.md) | .... | 파일 시스템 계층 구조에서 세 디렉터리 수준 위로 이동합니다. |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent4.md) | ..... | 파일 시스템 계층 구조에서 네 디렉터리 수준 위로 이동합니다. |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-LocationParent5.md) | ...... | 파일 시스템 계층 구조에서 상위 디렉터리로 5레벨 이동합니다. |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-RoboCopy.md) | xc, rc | Microsoft의 Robust Copy (RoboCopy) 유틸리티를 위한 PowerShell 래퍼를 제공합니다. |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-FileAtomic.md) | &nbsp; | 파일 손상을 방지하기 위해 바이트를 파일에 원자적으로 씁니다. |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-JsonFileAtomic.md) | &nbsp; | 손상을 방지하기 위해 원자적으로 JSON으로 개체를 파일에 씁니다. |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Write-TextFileAtomic.md) | &nbsp; | 원자적으로 텍스트를 파일에 써서 손상을 방지합니다. |

---

## GenXdev.Hardware

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AudioDeviceNames.md) | &nbsp; | 마이크 또는 데스크탑 오디오 캡처에 사용 가능한 오디오 장치의 이름을 검색합니다. |
| [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-CpuCore.md) | &nbsp; | 시스템의 논리적 CPU 코어 총 개수를 계산하여 반환합니다. |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-HasCapableGpu.md) | &nbsp; | CUDA를 지원하는 충분한 메모리를 가진 GPU가 있는지 확인합니다. |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-MonitorCount.md) | &nbsp; | 시스템에 연결된 디스플레이 모니터의 총 개수를 가져옵니다. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-NumberOfCpuCores.md) | &nbsp; | 시스템의 논리적 CPU 코어 총 개수를 계산하여 반환합니다. |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-CpuAvx.md) | &nbsp; | CPU가 AVX 및 AVX2 명령어 세트를 지원하는지 테스트합니다. |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/alignScript.md) | &nbsp; | 제공된 스크립트블록 문자열의 들여쓰기를 변경한 문자열을 반환합니다. |
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Approve-NewTextFileContent.md) | &nbsp; | WinMerge를 사용한 대화형 파일 내용 비교 및 승인. |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-RefactorFile.md) | &nbsp; | 지정된 IDE와 AI 프롬프트 템플릿을 사용하여 소스 파일에 대한 리팩터링 작업을 실행합니다. |
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Confirm-InstallationConsent.md) | &nbsp; | 타사 소프트웨어 설치에 대한 사용자 동의를 확인하며, 지속적인 선택을 위해 기본 설정을 사용합니다. |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Convert-DotNetTypeToLLMType.md) | &nbsp; | .NET 형식 이름을 LLM(언어 모델) 형식 이름으로 변환합니다. |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-HashTable.md) | &nbsp; | PSCustomObject를 해시테이블로 재귀적으로 변환합니다. |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | PowerShell 함수를 LLM OpenAI API 함수 정의로 변환합니다. |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Copy-IdenticalParamValues.md) | &nbsp; | 바인딩된 매개변수의 값을 기반으로 다른 함수의 가능한 매개변수에 따라 새 해시테이블에 매개변수 값을 복사합니다. |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureGenXdev.md) | &nbsp; | 모든 GenXdev 모듈이 올바르게 로드되었는지 확인하기 위해 모든 Ensure* cmdlet을 호출합니다. |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureNuGetAssembly.md) | &nbsp; | 패키지 키 또는 ID를 기반으로 NuGet 패키지에서 .NET 어셈블리를 다운로드하고 로드합니다. |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/GenerateMasonryLayoutHtml.md) | &nbsp; | 이미지 데이터로 반응형 메이슨리 레이아웃 HTML 갤러리를 생성합니다. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AIDefaultLLMSettings.md) | &nbsp; | GenXdev.AI에서 AI 작업을 위한 모든 사용 가능한 기본 LLM 설정 구성을 가져옵니다. |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-BCP47LanguageDictionary.md) | &nbsp; | 설치된 모든 BCP 47 언어 태그와 해당 표시 이름의 사전을 반환합니다. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-DefaultWebLanguage.md) | &nbsp; | 시스템의 현재 언어 설정에 따라 기본 웹 언어 키를 가져옵니다. |
| [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-JsonExampleFromSchema.md) | &nbsp; | JSON 스키마 정의에서 사람이 읽을 수 있는 예제 JSON 문자열을 생성합니다. |
| [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-LLMJsonOutput.md) | &nbsp; | LLM 응답 텍스트에서 최선의 휴리스틱을 사용하여 유효한 JSON을 추출합니다. |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-WebLanguageDictionary.md) | &nbsp; | Google 검색에서 지원하는 모든 언어에 대해 역방향 사전을 반환합니다. |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Import-GenXdevModules.md) | reloadgenxdev | 모든 GenXdev PowerShell 모듈을 전역 범위로 가져옵니다. |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Initialize-SearchPaths.md) | &nbsp; | 패키지 관리를 위한 시스템 검색 경로를 초기화하고 구성합니다. |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-CommandFromToolCall.md) | &nbsp; | 검증 및 매개변수 필터링을 통해 도구 호출 함수를 실행합니다. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | 작업 영역에 있는 각 GenXdev 모듈에서 스크립트 블록을 실행합니다. |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-JSONComments.md) | &nbsp; | JSON 콘텐츠에서 주석을 제거합니다. |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/resetdefaultmonitor.md) | &nbsp; | 기본 보조 모니터 구성을 복원합니다. |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ResolveInputObjectFileNames.md) | &nbsp; | 입력 개체를 파일 및 디렉터리 이름으로 확장하며, 다양한 필터 및 출력 옵션을 지원합니다. |
| [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Show-Verb.md) | showverbs | 모든 PowerShell 동사의 짧은 알파벳순 목록을 표시합니다. |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-RefactorLLMSelection.md) | &nbsp; | LLM 분석을 사용하여 리팩토링 적합성을 평가하기 위해 소스 파일을 평가합니다. |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-UnattendedMode.md) | &nbsp; | PowerShell이 무인/자동화 모드로 실행 중인지 감지합니다. |
| [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/WriteFileOutput.md) | &nbsp; | 향상된 사용자 경험을 위해 하이퍼링크된 표시 이름으로 파일 정보를 출력합니다. |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Convert-PhysicsUnit.md) | &nbsp; | 동일한 범주 내에서 한 물리 단위의 값을 다른 단위로 변환합니다. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ApparentSizeAtArmLength.md) | &nbsp; | 팔 길이에서 물체의 겉보기 크기를 계산합니다. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AtEyeLengthSizeInMM.md) | &nbsp; | 팔 길이에서 물체의 겉보기 크기를 mm 단위로 계산합니다. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | 부력을 계산합니다. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | 구심 가속도를 계산합니다. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | 도플러 이동 주파수를 계산합니다. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | 항력을 계산합니다. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | 탈출 속도를 계산합니다. |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-FreeFallDistance.md) | &nbsp; | 주어진 시간 동안 자유 낙하 시 낙하 거리를 계산합니다. |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-FreeFallHeight.md) | &nbsp; | 주어진 시간 동안 자유 낙하한 높이를 계산합니다. |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-FreeFallTime.md) | &nbsp; | 자유 낙하 중 물체가 주어진 높이에서 떨어지는 데 필요한 시간을 계산합니다. |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | 높이로부터 충돌 속도를 계산합니다. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | 운동 에너지를 계산합니다. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-LightTravelTimeByDistance.md) | &nbsp; | 빛이 거리를 이동하는 데 걸리는 시간을 계산합니다. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | 렌즈의 배율을 계산합니다. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-MomentumByMassAndVelocity.md) | &nbsp; | 선형 운동량을 계산합니다. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | 궤도 속도를 계산합니다. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | 중력 위치 에너지를 계산합니다. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | 발사체의 사거리를 계산합니다. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | 스넬의 법칙을 사용하여 굴절각을 계산합니다. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | 닫힌 관의 공명 주파수를 계산합니다. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SoundTravelDistanceByTime.md) | &nbsp; | 주어진 시간 동안 소리가 이동하는 거리를 계산합니다. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | 종단 속도를 계산합니다. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | 발사체의 비행 시간을 계산합니다. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | 파동 속도를 계산합니다. |

---

## GenXdev.Media

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ImageGeolocation.md) | &nbsp; | 이미지 파일에서 지리적 위치 데이터를 추출합니다. |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ImageMetadata.md) | &nbsp; | 이미지 파일에서 포괄적인 메타데이터를 추출합니다. |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-MediaFileCreationDate.md) | &nbsp; | 미디어 및 기타 파일의 최선 노력 생성 날짜를 추출합니다. |
| [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-MediaFile.md) | vlcmedia, media, findmedia | VLC 미디어 플레이어를 사용하여 고급 필터링 및 구성 옵션으로 미디어 파일을 열고 재생합니다. |
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-VlcMediaPlayer.md) | vlc | VLC 미디어 플레이어를 다양한 구성 옵션과 함께 실행하고 제어합니다. |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-VlcMediaPlayerLyrics.md) | vlclyrics | 현재 재생 중인 VLC 미디어의 가사를 검색하기 위해 웹 브라우저를 엽니다. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | VLC 미디어 플레이어 창에 포커스를 설정합니다. |
| [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/StabilizeVideo.md) | &nbsp; | FFmpeg + vid.stab을 사용하여 최신 또는 지정된 .mp4 파일을 안정화합니다(검은 테두리 없음). |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | VLC 미디어 플레이어에서 현재 재생 목록의 다음 항목으로 이동합니다. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | VLC 미디어 플레이어 재생 목록에서 이전 항목으로 이동합니다. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | VLC 미디어 플레이어의 음소거 상태를 전환합니다. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | VLC 미디어 플레이어의 일시 중지/재생 상태를 전환합니다. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | VLC 미디어 플레이어에서 반복 모드를 전환합니다. |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-Uris.md) | &nbsp; | 모든 유효한 URI에 대해 문자열을 구문 분석합니다. |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-AllPossibleQueries.md) | qq | 지정된 검색어나 URL에 대해 가능한 모든 쿼리 유형을 엽니다. |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-BingCopilotQuery.md) | aibc | 웹 브라우저에서 Bing CoPilot 쿼리를 엽니다 |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | 웹 브라우저에서 ChatGPT 쿼리를 엽니다. |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-CloudLLMChat.md) | ask | AI 쿼리를 위한 클라우드 LLM 채팅 인터페이스를 엽니다. |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | 웹 브라우저에서 DeepSeek 쿼리를 엽니다. |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-GithubCopilotQuery.md) | aigc, askghcopilot | 웹 브라우저에서 GitHub Copilot 쿼리를 엽니다. |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-GoogleGeminiQuery.md) | aigg, askgemini | 웹 브라우저에서 Google Gemini 쿼리를 엽니다. |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-XGrokQuery.md) | aixg, askxgrok | 웹 브라우저에서 X Grok 쿼리를 엽니다 |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-NextAffirmation.md) | WhatAboutIt | affirmations.dev API에서 무작위 긍정 문구를 반환합니다. |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-WikipediaSummary.md) | wikitxt | 위키백과에서 주제에 대한 요약을 검색합니다. |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Copy-PDFsFromGoogleQuery.md) | &nbsp; | Google 검색 결과에서 찾은 PDF 파일을 다운로드합니다. |
| [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-BingQuery.md) | bq | 웹 브라우저에서 Bing 검색 쿼리를 엽니다. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-BuiltWithSiteInfo.md) | &nbsp; | 웹 브라우저에서 BuiltWith 웹사이트 쿼리를 엽니다. |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-GithubQuery.md) | qgithub, qgh | 웹 브라우저에서 GitHub 리포지토리 검색 쿼리를 열거나 사용 가능한 모든 한정자와 검색 범주(리포지토리, 코드, 이슈, 사용자, 커밋, 토론, 토픽, 위키)를 지원하는 GitHub REST API에 대해 고급 검색을 실행합니다. |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-GoogleQuery.md) | &nbsp; | 구성 가능한 설정과 광범위한 사용자 지정 옵션을 통해 Google 쿼리를 웹 브라우저에서 엽니다. |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-GoogleSiteInfo.md) | &nbsp; | 웹 브라우저에서 Google 사이트 정보 쿼리를 엽니다. |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-GrokipediaQuery.md) | wiki | 웹 브라우저에서 Grokipedia 쿼리를 엽니다. |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-IMDBQuery.md) | imdb | 웹 브라우저에서 IMDB 검색 쿼리를 엽니다. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-InstantStreetViewQuery.md) | isv | 웹 브라우저에서 InstantStreetView 쿼리를 엽니다. |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-MovieQuote.md) | moviequote | 웹 브라우저에서 영화 명대사 동영상을 엽니다. |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-SearchEngine.md) | q | 웹 브라우저를 사용하여 지정된 검색 엔진에서 검색 쿼리를 엽니다. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-SimularWebSiteInfo.md) | simularsite | 지정된 URL에 대한 SimilarWeb 웹사이트 정보를 웹 브라우저에서 엽니다. |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-StackOverflowQuery.md) | qso | 웹 브라우저에서 Stack Overflow 검색 쿼리를 엽니다. |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WaybackMachineSiteInfo.md) | wayback | 웹 브라우저에서 WaybackMachine 사이트 정보를 엽니다. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WebsiteAndPerformQuery.md) | owaq | 웹 브라우저에서 웹페이지를 열고 하나 이상의 쿼리를 수행합니다. |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WhoisHostSiteInfo.md) | whois | 웹 브라우저에서 Whois 호스트 정보 조회를 엽니다. |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WikipediaNLQuery.md) | wikinl | 네덜란드어 위키백과 검색을 웹 브라우저에서 엽니다. |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WikipediaQuery.md) | wikipedia | 웹 브라우저에서 Wikipedia 쿼리를 엽니다. |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WolframAlphaQuery.md) | qalpha | 웹 브라우저에서 Wolfram Alpha 쿼리를 엽니다. |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-YoutubeQuery.md) | youtube | 웹 브라우저에서 YouTube 검색어를 엽니다. |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-GameOfLife.md) | gameoflife, conway | 웹 브라우저에서 콘웨이의 생명 게임 시뮬레이션을 엽니다. |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-GenXdevAppCatalog.md) | appcatalog | 웹 브라우저에서 GenXdev 프로그레시브 웹 앱 카탈로그를 엽니다. |
| [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-Timeline.md) | timeline | 현재 시간, 날짜, 세기, 천년을 표시하는 대화형 타임라인을 엽니다. |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-ViralSimulation.md) | viral | 웹 브라우저에서 광범위한 구성 옵션을 제공하는 바이러스 시뮬레이션 게임을 엽니다. |
| [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-Yab.md) | yab | YAB 게임을 구성 가능한 설정으로 웹 브라우저에서 엽니다. |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-YabAIBattle.md) | yabbattle | 웹 브라우저에서 YabAI 배틀 게임을 엽니다. |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Close-Webbrowser.md) | wbc | 하나 이상의 웹브라우저 인스턴스를 선택적으로 닫습니다. |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Close-WebbrowserTab.md) | ct, CloseTab | 현재 선택된 웹브라우저 탭을 닫습니다. |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Export-BrowserBookmarks.md) | &nbsp; | 브라우저 북마크를 JSON 파일로 내보냅니다. |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-BrowserBookmark.md) | bookmarks | 하나 이상의 웹 브라우저에서 책갈피를 찾습니다. |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-BrowserBookmark.md) | gbm | 설치된 웹 브라우저에서 모든 책갈피를 반환합니다. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-DefaultWebbrowser.md) | &nbsp; | 현재 사용자에 대해 구성된 기본 웹 브라우저를 반환합니다. |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-PlaywrightSessionReference.md) | &nbsp; | 현재 Playwright 브라우저 세션에 대한 참조를 가져옵니다. |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Webbrowser.md) | &nbsp; | 설치된 최신 웹 브라우저 컬렉션을 반환합니다. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-WebbrowserTabDomNodes.md) | wl | 활성 브라우저 탭에서 CSS 선택기를 사용하여 DOM 노드를 쿼리하고 조작합니다. |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Import-BrowserBookmarks.md) | &nbsp; | 파일이나 컬렉션에서 웹 브라우저로 책갈피를 가져옵니다. |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Import-GenXdevBookmarkletMenu.md) | &nbsp; | GenXdev JavaScript 북마크릿을 브라우저 북마크 컬렉션으로 가져옵니다. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-WebbrowserEvaluation.md) | Eval, et | 선택한 웹 브라우저 탭에서 JavaScript 코드를 실행합니다. |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-BrowserBookmarks.md) | sites | 지정된 검색 조건과 일치하는 브라우저 책갈피를 엽니다. |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-Webbrowser.md) | wb | 하나 이상의 브라우저 창에서 선택적 위치 지정 및 스타일링과 함께 URL을 엽니다. |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WebbrowserSideBySide.md) | wbn | 특정 위치에 새 웹 브라우저 창을 시작합니다. |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Select-WebbrowserTab.md) | st | Playwright에서 관리되는 실행 중인 브라우저에서 브라우저 탭을 선택합니다. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-BrowserVideoFullscreen.md) | fsvideo | 현재 브라우저 탭에서 발견된 첫 번째 비디오 요소를 최대화합니다. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-WebbrowserTabLocation.md) | lt, Nav | 현재 웹 브라우저 탭을 지정된 URL로 이동합니다. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Show-WebsiteInAllBrowsers.md) | &nbsp; | 모자이크 레이아웃으로 여러 브라우저에서 동시에 URL을 엽니다. |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | 디버깅 포트를 통해 기존 브라우저 인스턴스에 연결합니다. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-PlaywrightProfileDirectory.md) | &nbsp; | 지속형 세션을 위한 Playwright 브라우저 프로필 디렉터리를 가져옵니다. |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-PlayWrightBrowser.md) | spb | 지속적인 사용자 프로필로 Playwright 관리 브라우저를 시작합니다. |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Resume-WebbrowserTabVideo.md) | wbvideoplay | YouTube 브라우저 탭에서 비디오 재생을 재개합니다. |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | 모든 활성 브라우저 세션에서 비디오 재생을 일시 중지합니다. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Unprotect-WebbrowserTab.md) | wbctrl | 선택된 웹 브라우저 탭을 대화형 조작을 위해 제어합니다. |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/CurrentUserHasElevatedRights.md) | &nbsp; | 현재 사용자에게 상승된 권한이 있는지 확인합니다. |
| [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Enable-Screensaver.md) | &nbsp; | 구성된 Windows 화면 보호기를 시작합니다. |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ActiveUser.md) | gusers | 현재 활성 시스템 프로세스에서 고유한 사용자 이름 목록을 검색합니다. |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ChildProcesses.md) | &nbsp; | 현재 PowerShell 프로세스의 모든 하위 프로세스를 검색합니다. |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ClipboardFiles.md) | getclipfiles, gcbf | 복사/붙여넣기와 같은 파일 작업을 위해 Windows 클립보드에서 설정된 파일을 가져옵니다. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-CurrentFocusedProcess.md) | &nbsp; | 현재 키보드 포커스를 가진 창의 프로세스 개체를 검색합니다. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-DesktopScalingFactor.md) | &nbsp; | 지정된 모니터의 Windows 디스플레이 배율(DPI 설정)을 검색합니다. |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ForegroundWindow.md) | &nbsp; | 현재 활성 포그라운드 창의 핸들을 가져옵니다. |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-KnownFolderPath.md) | folder | Windows Shell32 API를 사용하여 Windows 알려진 폴더의 경로를 가져옵니다. |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-MpCmdRunPath.md) | &nbsp; | Windows Defender MpCmdRun.exe 실행 파일의 경로를 가져옵니다. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-OpenedFileHandleProcesses.md) | &nbsp; | 지정된 파일에 대한 열린 파일 핸들을 가진 프로세스를 검색합니다. |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-PowershellMainWindow.md) | &nbsp; | PowerShell 터미널의 기본 창에 대한 창 도우미 개체를 반환합니다. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-PowershellMainWindowProcess.md) | &nbsp; | PowerShell 터미널을 호스팅하는 창의 프로세스 개체를 반환합니다. |
| [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Window.md) | &nbsp; | 지정된 프로세스 또는 창 핸들에 대한 창 정보를 가져옵니다. |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-WindowPosition.md) | gwp | 창의 위치 및 상태 정보를 가져옵니다. |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Initialize-ScheduledTaskScripts.md) | &nbsp; | 지정된 간격으로 PowerShell 스크립트를 실행하는 예약된 작업을 만듭니다. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-WindowsUpdate.md) | updatewindows | Windows가 최신 상태인지 확인하고 선택적으로 사용 가능한 업데이트를 설치합니다. |
| [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Pop-Window.md) | popw | 스택에서 선택적 수정과 함께 마지막 활성 창 도우미를 팝합니다. |
| [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Push-Window.md) | pushw | 선택적 수정과 함께 현재 창을 창 스택으로 밀어 넣습니다. |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Save-DesktopScreenShot.md) | &nbsp; | 지정된 모니터의 스크린샷을 캡처하여 지정된 경로에 저장합니다. |
| [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Send-Key.md) | sendkeys, invokekeys | 창이나 프로세스에 시뮬레이션된 키 입력을 보냅니다. |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Send-WakeOnLan.md) | &nbsp; | Wake-on-LAN 매직 패킷을 전송하여 네트워크상의 원격 컴퓨터를 깨웁니다. |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-ClipboardFiles.md) | setclipfiles, scbf | 파일 작업(예: 복사/붙여넣기)을 위해 파일을 Windows 클립보드로 설정합니다. |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-ForegroundWindow.md) | &nbsp; | 지정된 창을 전면으로 가져와 활성 창으로 만듭니다. |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-KnownFolderPath.md) | &nbsp; | Windows 알려진 폴더의 실제 경로를 수정합니다. |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-MonitorPowerOff.md) | poweroff | 연결된 모든 모니터의 전원을 끕니다. |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | 모니터 전원을 켭니다. |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-TaskbarAlignment.md) | &nbsp; | Windows 11+ 작업 표시줄 정렬을 가운데와 왼쪽 위치 간에 구성합니다. |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-WindowPosition.md) | wp | 명시적 위치 매개 변수가 제공될 때 창을 배치하고 크기를 조정합니다. |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-WindowPositionForSecondary.md) | wps | 지정된 레이아웃 옵션을 사용하여 보조 모니터에 창을 배치합니다. |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-WindowsWallpaper.md) | &nbsp; | 지정된 디렉터리에서 무작위 배경화면을 설정합니다. |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-ProcessWithPriority.md) | nice | 지정된 우선 순위 수준으로 프로세스를 시작합니다. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | Windows Defender를 사용하여 파일 또는 디렉터리에서 맬웨어를 검사합니다. |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-WireGuardPeer.md) | &nbsp; | 서버에 새로운 WireGuard VPN 피어(클라이언트) 구성을 추가합니다. |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureWireGuard.md) | &nbsp; | Docker 컨테이너를 통해 WireGuard VPN 서비스가 설치되고 실행 중인지 확인합니다. |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-WireGuardPeerQRCode.md) | &nbsp; | WireGuard VPN 피어 구성을 위한 QR 코드를 생성합니다. |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-WireGuardPeers.md) | &nbsp; | 시스템에 구성된 모든 WireGuard VPN 피어에 대한 정보를 가져옵니다. |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-WireGuardStatus.md) | &nbsp; | WireGuard VPN 서버에 대한 자세한 상태 정보를 가져옵니다. |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-WireGuardPeer.md) | &nbsp; | WireGuard VPN 피어 구성을 제거합니다. |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Reset-WireGuardConfiguration.md) | &nbsp; | WireGuard VPN 서버 구성을 재설정하여 모든 피어를 제거합니다. |
