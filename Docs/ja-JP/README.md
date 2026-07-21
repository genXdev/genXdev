# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-21.

## GenXdev

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXDevCmdlet.md) | gcmds | すべてのGenXdevコマンドレットとその詳細を取得して一覧表示します。 |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Show-GenXdevCmdlet.md) | cmds | GenXdev PowerShell モジュールとそのコマンドレットおよびエイリアスを表示します。 |

---

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-AILLMSettings.md) | &nbsp; | GenXdev.AI の AI 操作のための LLM 設定を取得します。 |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SpeechToText.md) | &nbsp; | OpenAIのWhisper音声認識モデルを使用して、音声ファイルをテキストに変換します。 |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-TextTranslation.md) | translate | AIを使用してテキストを別の言語に翻訳します。 |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-VectorSimilarity.md) | &nbsp; | 2つのベクトル間のコサイン類似度を計算します。 |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-WinMerge.md) | &nbsp; | WinMergeを起動して、2つのファイルを並べて比較します。 |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Merge-TranslationCache.md) | &nbsp; | 言語ごとにバッチ書き込みで永続的翻訳キャッシュを管理します。 |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-LLMAudioChat.md) | llmaudiochat | LLMモデルとインタラクティブな音声チャットセッションを作成します。 |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-LLMTextChat.md) | llmchat | AI機能を備えた対話型テキストチャットセッションを開始します。 |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Receive-RealTimeSpeechToText.md) | &nbsp; | Whisper AIモデルを使用して、リアルタイムの音声入力をテキストに変換します。 |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-AILLMSettings.md) | &nbsp; | GenXdev.AI の AI 操作における LLM 設定を設定します。 |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | AI支援を含むカスタムコマンドが見つからない場合の処理を設定します。 |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Test-DeepLinkImageFile.md) | &nbsp; | 指定されたファイルパスが、サポートされている形式の有効な画像ファイルであるかどうかをテストします。 |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Compare-ImageFaces.md) | comparefaces | DeepStackを使用して、2つの異なる画像内の顔を比較し、その類似度を返します。 |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ImageDetectedFaces.md) | &nbsp; | DeepStackを使用して、既知の顔と比較することで、アップロードされた画像内の顔を認識します。 |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ImageDetectedObjects.md) | &nbsp; | DeepStack を使用して、アップロードされた画像内のオブジェクトを検出し、分類します。 |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ImageDetectedScenes.md) | &nbsp; | DeepStack を使用して、画像を 365 のシーンカテゴリのいずれかに分類します。 |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-RegisteredFaces.md) | &nbsp; | DeepStackからすべての登録済み顔識別子のリストを取得します。 |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-ImageEnhancement.md) | enhanceimage | DeepStackを使用して画像を4倍に拡大し、品質を向上させて強化します。 |
| [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Register-AllFaces.md) | UpdateFaces | faces ディレクトリ内の画像ファイルからすべての顔認識プロファイルを更新します。 |
| [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Register-Face.md) | &nbsp; | DeepStack 顔認識 API に新しい顔を登録します。 |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Unregister-AllFaces.md) | &nbsp; | DeepStack顔認識システムから登録済みのすべての顔を削除します。 |
| [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Unregister-Face.md) | &nbsp; | DeepStackから登録された顔をその識別子によって削除します。 |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-EmoticonsToText.md) | emojify | AIを使用して、文脈に適した絵文字を追加することでテキストを強化します。 |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ConvertFrom-CorporateSpeak.md) | uncorporatize | 丁寧で専門的な企業用語を、AIを使って直接的で明確な言葉に変換します。 |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | 外交的または婉曲的な言葉を、直接的で明確かつ率直な言葉に変換します。 |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ConvertTo-CorporateSpeak.md) | corporatize | 直接的な表現や率直な内容を、AIを用いて丁寧で専門的な企業向け表現に変換します。 |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ConvertTo-DiplomaticSpeak.md) | diplomatize | 直接的な表現や率直な文章を、丁寧で tactful な外交的表現に変換します。 |
| [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Find-Image.md) | findimages, li | 指定されたディレクトリ内の画像ファイルとメタデータを、フィルタリング機能とオプションのブラウザベースのギャラリー表示で検索します。 |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-AIKnownFacesRootpath.md) | &nbsp; | GenXdev.AI 操作で使用される顔画像ファイル用の構成済みディレクトリを取得します。 |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-AIMetaLanguage.md) | getimgmetalang | イメージメタデータ操作に対して構成されている既定の言語を取得します。 |
| [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Fallacy.md) | dispicetext | AIを活用した検出により、テキストを分析して論理的誤謬を特定します。 |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | さまざまなストリームからエラーメッセージをキャプチャし、LLMを使用して修正を提案します。 |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SimularMovieTitles.md) | &nbsp; | 共通のプロパティに基づいて類似の映画タイトルを検索します。 |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-AIPowershellCommand.md) | hint | AI支援を使用してPowerShellコマンドを生成および実行します。 |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-ImageFacesUpdate.md) | imagepeopledetection | 指定されたディレクトリ内の画像ファイルの顔認識メタデータを更新します。 |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | AI が生成した説明とキーワードで画像メタデータを更新します。 |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-ImageMetadataUpdate.md) | imagepropdetection | ディレクトリ内の画像のEXIFメタデータを更新します。 |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | 指定されたディレクトリ内の画像ファイルのオブジェクト検出メタデータを更新します。 |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-ImageScenesUpdate.md) | imagescenedetection | 指定されたディレクトリ内の画像ファイルのシーン分類メタデータを更新します。 |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-LLMBooleanEvaluation.md) | equalstrue | AIを使用してステートメントを評価し、それが真か偽かを判断します。 |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-LLMQuery.md) | qllm, llm | OpenAI互換のLarge Language Chat補完APIにクエリを送信し、応答を処理します。 |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-LLMStringListEvaluation.md) | getlist, getstring | AI分析を使用して、入力テキストから関連する文字列のリストを抽出または生成します。 |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-LLMTextTransformation.md) | spellcheck | AI駆動処理を使用してテキストを変換します。 |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-QueryImageContent.md) | &nbsp; | AIビジョン機能を使用して画像コンテンツを分析します |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-ImageMetaData.md) | removeimagedata | 画像ディレクトリから画像メタデータファイルを削除します。 |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Save-FoundImageFaces.md) | saveimagefaces | インデックス化された画像検索結果から切り取った顔画像を保存します。 |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Save-Transcriptions.md) | &nbsp; | OpenAI Whisperを使用して、オーディオファイルとビデオファイルの字幕ファイルを生成します。 |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-AIKnownFacesRootpath.md) | &nbsp; | GenXdev.AI の操作で使用される顔画像ファイルのディレクトリを設定します。 |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-AIMetaLanguage.md) | &nbsp; | GenXdev.AI 画像メタデータ操作のデフォルト言語と、オプションで画像ディレクトリを設定します。 |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Show-FoundImagesInBrowser.md) | showfoundimages | 画像検索結果をメイソンリーレイアウトのWebギャラリーで表示します。 |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-AudioTranscription.md) | transcribefile, transcribe | オーディオファイル、ビデオファイル、または録音デバイスからテキストに書き起こします |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Update-AllImageMetaData.md) | updateallimages | 複数のシステムディレクトリ全体でイメージキーワード、顔、オブジェクト、およびシーンを一括更新します。 |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-FeatureLineToREADME.md) | feature | タイムスタンプ付きでREADMEファイルに機能行を追加します。 |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-IdeaLineToREADME.md) | idea | アイデア項目をREADME.mdファイルに追加します。 |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-IssueLineToREADME.md) | issue | READMEmdファイルに課題項目を追加します。 |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-LineToREADME.md) | &nbsp; | 指定されたセクションに、README.md マークダウンファイルに行を追加します。 |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-ReleaseNoteLineToREADME.md) | releasenote | タイムスタンプ付きのReleaseNote行をREADMEファイルに追加します。 |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-TodoLineToREADME.md) | todo | ToDoアイテムをREADME.mdファイルに追加します。 |
| [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Features.md) | features | README.md ファイルから機能を表示します。 |
| [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Ideas.md) | ideas | README.md ファイルからアイデアを表示します。 |
| [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Issues.md) | issues | README.md ファイルから問題を表示します。 |
| [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Refactor.md) | refactors | GenXdev の設定から名前パターンに基づいてリファクタ定義を取得します。 |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-RefactorReport.md) | refactorreport | リファクタリング操作とそのステータスの詳細レポートを生成します。 |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ReleaseNotes.md) | releasenotes | README.mdファイルからリリースノートを表示します。 |
| [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Todoos.md) | todoos | README.mdファイルからTodo項目を表示します。 |
| [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-Refactor.md) | newrefactor | コード変換タスク用の新しいリファクタリングセットを作成します。 |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-SourceFileInIde.md) | editcode | 優先IDE（Visual Studio Code または Visual Studio）でソースファイルを開きます。 |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Publish-ReleaseNotesToManifest.md) | pubrelnotes | 未完了のリリースノートをREADME.mdからモジュールマニフェストに公開します。 |
| [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-Refactor.md) | &nbsp; | GenXdev 設定システムからリファクターセットを削除します。 |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-NextRefactor.md) | nextrefactor | コードリファクタリングセッションを続行または再開します。 |
| [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Update-Refactor.md) | updaterefactor | リファクタリングセットを更新および管理し、ファイルの選択と処理を含みます。 |
| [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/VSCode.md) | &nbsp; | Visual Studio Code で 1 つ以上のファイルを開きます。 |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GitChangedFiles.md) | gitchanged | Git リポジトリ内の変更されたファイルの一覧を取得します。 |
| [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-GitCommit.md) | commit | すべての変更を含む新しいgitコミットを作成してプッシュします。 |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/PermanentlyDeleteGitFolders.md) | &nbsp; | Git リポジトリ内の全ブランチから、指定されたフォルダを完全に削除します。 |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Assert-GenXdevCmdlet.md) | improvecmdlet | AI支援を通じてGenXdevコマンドレットのドキュメントと実装を改善します。 |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Assert-GenXdevCmdletTests.md) | improvecmdlettests | 指定された GenXdev コマンドレットの単体テストをアサートし、改善します。 |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | GenXdev モジュール全体での依存関係の使用を検証し、適切なモジュール階層が維持されていることを確認します。 |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Assert-GenXdevTest.md) | rungenxdevtests | GenXdevモジュール、サブモジュール、またはコマンドレットの単体テストを実行し、インテリジェントなデバッグとAIによるエラー解決を行います。 |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Assert-ModuleDefinition.md) | &nbsp; | AI アシスタンスを使用して PowerShell ソースコードファイルのリファクタリングを支援します。 |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/EnsureCopilotKeyboardShortCut.md) | &nbsp; | Visual Studio Code で GitHub Copilot Chat のキーボード ショートカットを構成します。 |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/EnsureDefaultGenXdevRefactors.md) | &nbsp; | 既定のGenXdevリファクタリング定義が利用可能であることを保証します。 |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-CmdletMetaData.md) | &nbsp; | 指定されたGenXdevコマンドレットのメタデータを取得し、必要に応じてヘルプテキストを別の言語に翻訳します。 |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXDevModule.md) | &nbsp; | 指定されたパスからすべての GenXDev モジュールを取得します。 |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXDevModuleInfo.md) | &nbsp; | GenXdev PowerShellモジュールの詳細情報を取得します。 |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | GenXDev モジュールを依存関係の順序で取得します。 |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ModuleCmdletMetaData.md) | &nbsp; | PowerShellモジュール内のすべてのコマンドレットのメタデータを取得します。 |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-GenXdevPSFormatter.md) | &nbsp; | PSScriptAnalyzerのフォーマットルールを使用してPowerShellスクリプトファイルをフォーマットします。 |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | PowerShell Script Analyzerを呼び出して、PowerShellスクリプトのコンプライアンスとベストプラクティスを分析します。 |
| [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-ModuleMarkdownHelp.md) | &nbsp; | 任意のPowerShellモジュールのリッチなMarkdownヘルプファイルを生成します。 |
| [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-ModuleXmlHelp.md) | &nbsp; | 任意のPowerShellモジュール用のMAML XMLヘルプファイルを生成します。 |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Search-GenXdevCmdlet.md) | searchcmdlet | GenXdevコマンドレットを検索し、必要に応じてIDEで編集するために開きます。 |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | 指定されたGenXdevコマンドレットをVisual Studio Codeで開きます。 |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-ArrayTemplate.md) | FormatArray | プロパティプレースホルダーを持つテンプレート文字列を使用してオブジェクトのコレクションをフォーマットし、単一の書式設定された文字列を生成します。 |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-DoubleEmptyLines.md) | &nbsp; | コード文字列から二重（連続する）空行を削除し、必要に応じて出力を再フォーマットします。 |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-IsSpeaking.md) | iss | テキスト読み上げエンジンが発話中の場合に true を返します。 |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-MicrosoftShellTab.md) | x | PowerShellを実行する新しいWindows Terminalタブを作成します。 |
| [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Now.md) | &nbsp; | 現在のシステム日付と時刻をDateTimeオブジェクトとして返します。 |
| [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/SayDate.md) | &nbsp; | 現在の日付をテキスト読み上げ合成で発声します。 |
| [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/SayTime.md) | &nbsp; | テキスト読み上げを使用して現在の時刻を通知します。 |
| [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/secondscreen.md) | &nbsp; | 既定のセカンドモニターの構成を設定します。 |
| [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/sidebyside.md) | &nbsp; | 既定のサイドバイサイド構成を設定します。 |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-SnakeGame.md) | snake | コンソールでシンプルなスネークゲームを開始します。 |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-TextToSpeech.md) | say | Microsoft EdgeのニューラルTTSエンジンを使用してテキストを音声に変換します。 |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Stop-TextToSpeech.md) | sst | 進行中のテキスト読み上げを即座に停止します。 |
| [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/UtcNow.md) | &nbsp; | 現在のUTC（協定世界時）の日付と時刻を取得します。 |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-KeyValueStoreNames.md) | getstorenames | 利用可能なキー値ストアの名前を取得します。 |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-KeyValueStorePath.md) | &nbsp; | キーバリューストアのファイルパスを取得します。 |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-StoreKeys.md) | getkeys | 指定されたキー・バリューストアのすべてのキー名を取得します。 |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ValueByKeyFromStore.md) | getvalue | JSONベースのキーと値のストアから値を取得します。 |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Initialize-KeyValueStores.md) | &nbsp; | ローカルストレージとOneDriveストレージ用のKeyValueStoreディレクトリ構造を初期化します。 |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-KeyFromStore.md) | removekey | キーと値のストアからキーを削除します。 |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-KeyValueStore.md) | &nbsp; | キーと値のストアを削除します。 |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-ValueByKeyInStore.md) | setvalue | JSONファイルベースのストアでキーと値のペアを管理します。 |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Sync-KeyValueStore.md) | &nbsp; | ローカルとOneDriveのキー値ストアJSONファイルを同期します。 |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXdevPreference.md) | getPreference | GenXdev の設定ストアから設定値を取得します。 |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXdevPreferenceNames.md) | getPreferenceNames | セッションストレージとデータベースストアからすべての基本設定名を取得します。 |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | GenXdev.Data操作で使用されるユーザー設定データファイルの構成済みデータベースパスを取得します。 |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-GenXdevPreference.md) | removePreference | GenXdev プリファレンス ストアからプリファレンス値を削除します。 |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | GenXdevの設定ストアにデフォルトの設定値を設定します。 |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevPreference.md) | setPreference | GenXdev 設定ストアにユーザー設定値を設定します。 |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | GenXDev.Data 操作で使用される設定のデータベースパスを設定します。 |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLiteSchema.md) | &nbsp; | SQLite データベースから完全なスキーマ情報を取得します。 |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLiteTableColumnData.md) | &nbsp; | SQLite データベース テーブルの特定の列からデータを取得します。 |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLiteTableData.md) | &nbsp; | SQLite データベーステーブルからデータを取得します。レコード数を制限することもできます。 |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLiteTables.md) | &nbsp; | SQLiteデータベースからテーブル名の一覧を取得します。 |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLiteTableSchema.md) | &nbsp; | 指定されたSQLiteテーブルのスキーマ情報を取得します。 |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLiteTransaction.md) | getsqltx, newsqltx | バッチ操作のためのSQLiteトランザクションオブジェクトを作成して返します。 |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLiteViewColumnData.md) | &nbsp; | SQLite ビューから列データを取得し、レコード数を制限できます。 |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLiteViewData.md) | &nbsp; | オプションでレコード数を制限して、SQLiteデータベースビューからデータを取得します。 |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLiteViews.md) | &nbsp; | SQLite データベースからビューのリストを取得します。 |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLiteViewSchema.md) | &nbsp; | SQLiteビューのSQLスキーマ定義を取得します。 |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-SQLiteQuery.md) | &nbsp; | トランザクションサポートを備えたSQLiteデータベースに対して1つ以上のSQLクエリを実行します。 |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-SQLiteStudio.md) | &nbsp; | パラメータとトランザクションをサポートするSQLiteデータベースクエリを実行します。 |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-SQLiteDatabase.md) | nsqldb | 新しいSQLiteデータベースファイルを作成します。 |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLServerSchema.md) | &nbsp; | SQL Server データベースから完全なスキーマ情報を取得します。 |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLServerTableColumnData.md) | &nbsp; | SQLデータベーステーブルの特定の列からデータを取得します。 |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLServerTableData.md) | &nbsp; | SQLデータベーステーブルからデータを取得します。レコード数の制限もオプションで指定できます。 |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLServerTables.md) | &nbsp; | SQL Server データベースからテーブル名の一覧を取得します。 |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLServerTableSchema.md) | &nbsp; | 指定されたSQL Serverテーブルのスキーマ情報を取得します。 |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLServerTransaction.md) | getsqltx, newsqltx | バッチ操作用のSQL Serverトランザクションオブジェクトを作成して返します。 |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLServerViewColumnData.md) | &nbsp; | SQLビューから列データを取得し、オプションでレコード数を制限します。 |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLServerViewData.md) | &nbsp; | SQLデータベースビューからデータを取得します。レコード数を制限することもできます。 |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLServerViews.md) | &nbsp; | SQL Server データベースからビューの一覧を取得します。 |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SQLServerViewSchema.md) | &nbsp; | SQL Server ビューの SQL スキーマ定義を取得します。 |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-SQLServerQuery.md) | &nbsp; | トランザクション サポート付きで SQL Server データベースに対して 1 つ以上の SQL クエリを実行します。 |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | パラメーターとトランザクションをサポートしたSQL Serverデータベースクエリを実行します。 |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-SQLServerDatabase.md) | nsqldb | 新しいSQL Serverデータベースを作成します。 |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Copy-FilesToDateFolder.md) | &nbsp; | 検索条件に一致するファイルを日付ベースのサブフォルダーにコピーします。 |
| [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Expand-Path.md) | ep | 指定されたファイル参照を完全なパス名に展開します。 |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Find-DuplicateFiles.md) | fdf | 構成可能な基準に基づいて、複数のディレクトリにわたる重複ファイルを検出します。 |
| [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Find-Item.md) | l | 高度なフィルタリングオプションを使用してファイルとディレクトリを検索します。 |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-Fasti.md) | fasti | 現在のディレクトリにあるアーカイブファイルをそれぞれのフォルダに展開し、その後削除します。 |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Move-FilesToDateFolder.md) | &nbsp; | 検索条件に一致するファイルを日付ベースのサブフォルダーに移動します。 |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Move-ItemWithTracking.md) | &nbsp; | ファイルとディレクトリを移動し、ファイルシステムのリンクと参照を保持します。 |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Move-ToRecycleBin.md) | &nbsp; | ファイルとディレクトリを安全に Windows のごみ箱に移動します。 |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ReadJsonWithRetry.md) | &nbsp; | 再試行ロジックと自動ロッククリーンアップを使用してJSONファイルを読み取ります。 |
| [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-AllItems.md) | sdel | 高度なエラーハンドリングを使用して、ディレクトリからすべてのコンテンツを再帰的に削除します。 |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-ItemWithFallback.md) | rmf | 信頼性の高い削除のために複数のフォールバックメカニズムを使用してファイルまたはディレクトリを削除します。 |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-OnReboot.md) | &nbsp; | 次回のシステム起動時に削除するファイルまたはディレクトリをマークします。 |
| [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Rename-InProject.md) | rip | プロジェクト ディレクトリ全体でテキストの置換を実行します。 |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-FoundLocation.md) | lcd | 一致する最初のファイルまたはフォルダーを検索し、その場所に移動します。 |
| [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent.md) | .. | 現在の場所を親ディレクトリに変更し、その内容を一覧表示します。 |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent2.md) | ... | ファイルシステム階層内で2つ上のディレクトリレベルに移動します。 |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent3.md) | .... | ファイルシステム階層内の3つ上のディレクトリに移動します。 |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent4.md) | ..... | ファイルシステム階層内で 4 つ上のディレクトリ レベルに移動します。 |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent5.md) | ...... | ファイルシステム階層内で5つ上のディレクトリレベルに移動します。 |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-RoboCopy.md) | xc, rc | マイクロソフトのRobust Copy（RoboCopy）ユーティリティ用のPowerShellラッパーを提供します。 |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-FileAtomic.md) | &nbsp; | 破損を防ぐために、ファイルにアトミックにバイトを書き込みます。 |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-JsonFileAtomic.md) | &nbsp; | オブジェクトをJSONとしてアトミックにファイルに書き込み、破損を防ぎます。 |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-TextFileAtomic.md) | &nbsp; | 破損を防ぐためにテキストをアトミックにファイルに書き込みます。 |

---

## GenXdev.Hardware

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-AudioDeviceNames.md) | &nbsp; | マイクまたはデスクトップ音声キャプチャに使用可能なオーディオデバイスの名前を取得します。 |
| [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-CpuCore.md) | &nbsp; | システム内の論理CPUコアの総数を計算して返します。 |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-HasCapableGpu.md) | &nbsp; | 十分なメモリを搭載したCUDA対応GPUが存在するかどうかを判断します。 |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-MonitorCount.md) | &nbsp; | システムに接続されているディスプレイモニターの総数を取得します。 |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-NumberOfCpuCores.md) | &nbsp; | システム内の論理CPUコアの総数を計算して返します。 |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Test-CpuAvx.md) | &nbsp; | CPUがAVXおよびAVX2命令セットをサポートしているかどうかをテストします。 |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/alignScript.md) | &nbsp; | 指定されたスクリプトブロック文字列のインデントを変更した文字列を返します。 |
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Approve-NewTextFileContent.md) | &nbsp; | WinMergeを使用した対話的なファイル内容の比較と承認。 |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Assert-RefactorFile.md) | &nbsp; | 指定されたIDEとAIプロンプトテンプレートを使用して、ソースファイルにリファクタリング操作を実行します。 |
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Confirm-InstallationConsent.md) | &nbsp; | サードパーティ製ソフトウェアのインストールに関するユーザーの同意を確認し、永続的な選択の設定を使用します。 |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Convert-DotNetTypeToLLMType.md) | &nbsp; | .NET 型名を LLM（言語モデル）型名に変換します。 |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ConvertTo-HashTable.md) | &nbsp; | PSCustomObject を再帰的に HashTable に変換します。 |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | PowerShell 関数を LLM OpenAI API 関数定義に変換します。 |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Copy-IdenticalParamValues.md) | &nbsp; | バインドされたパラメーターから、別の関数の可能なパラメーターに基づいて新しいハッシュテーブルにパラメーター値をコピーします。 |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/EnsureGenXdev.md) | &nbsp; | すべての GenXdev モジュールが適切に読み込まれるように、すべての Ensure* コマンドレットを呼び出します。 |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/EnsureNuGetAssembly.md) | &nbsp; | NuGet パッケージのキーまたは ID に基づいて .NET アセンブリをダウンロードし、読み込みます。 |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/GenerateMasonryLayoutHtml.md) | &nbsp; | 画像データからレスポンシブなメーソンリーレイアウトのHTMLギャラリーを生成します。 |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-AIDefaultLLMSettings.md) | &nbsp; | GenXdev.AI での AI 操作に使用可能なすべてのデフォルト LLM 設定構成を取得します。 |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-BCP47LanguageDictionary.md) | &nbsp; | インストールされているすべてのBCP 47言語タグとその表示名の辞書を返します。 |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-DefaultWebLanguage.md) | &nbsp; | システムの現在の言語設定に基づいて、既定の Web 言語キーを取得します。 |
| [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-JsonExampleFromSchema.md) | &nbsp; | JSON スキーマ定義から人間が読めるサンプル JSON 文字列を生成します。 |
| [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-LLMJsonOutput.md) | &nbsp; | PowerShell コマンドレットのヘルプテキストを LLM 応答テキストから最善のヒューリスティックを使用して有効な JSON を抽出します。 |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-WebLanguageDictionary.md) | &nbsp; | Google 検索でサポートされているすべての言語の逆引き辞書を返します。 |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Import-GenXdevModules.md) | reloadgenxdev | すべてのGenXdev PowerShellモジュールをグローバルスコープにインポートします。 |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Initialize-SearchPaths.md) | &nbsp; | パッケージ管理のためのシステム検索パスを初期化および構成します。 |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-CommandFromToolCall.md) | &nbsp; | 検証とパラメータフィルタリングを使用してツール呼び出し関数を実行します。 |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | ワークスペース内の各 GenXdev モジュールに対してスクリプト ブロックを実行します。 |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-JSONComments.md) | &nbsp; | JSONコンテンツからコメントを削除します。 |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/resetdefaultmonitor.md) | &nbsp; | デフォルトのセカンダリモニター構成を復元します。 |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ResolveInputObjectFileNames.md) | &nbsp; | 入力オブジェクトをファイルおよびディレクトリ名に展開し、さまざまなフィルターと出力オプションをサポートします。 |
| [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Show-Verb.md) | showverbs | すべてのPowerShell動詞の短いアルファベット順の一覧を表示します。 |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Test-RefactorLLMSelection.md) | &nbsp; | LLM分析を使用して、リファクタリングの適格性についてソースファイルを評価します。 |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Test-UnattendedMode.md) | &nbsp; | PowerShellが無人/自動モードで実行されているかどうかを検出します。 |
| [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/WriteFileOutput.md) | &nbsp; | ハイパーリンク付きの表示名を使用してファイル情報を出力し、ユーザーエクスペリエンスを向上させます。 |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Convert-PhysicsUnit.md) | &nbsp; | 値を同じカテゴリ内の別の物理単位に変換します。 |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ApparentSizeAtArmLength.md) | &nbsp; | 腕の長さの距離にある物体の見かけのサイズを計算します。 |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-AtEyeLengthSizeInMM.md) | &nbsp; | 腕の長さにある物体のおおよそのサイズ（mm）を計算します。 |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | 浮力を計算します。 |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | 求心加速度を計算します。 |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | ドップラー偏移周波数を計算します。 |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | 抗力の計算を行います。 |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | 脱出速度を計算します。 |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-FreeFallDistance.md) | &nbsp; | 指定された時間における自由落下中の落下距離を計算します。 |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-FreeFallHeight.md) | &nbsp; | 指定された時間の自由落下中に落下した高さを計算します。 |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-FreeFallTime.md) | &nbsp; | 自由落下中に物体が与えられた高さを落下するのに必要な時間を計算します。 |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | 高さから衝突速度を計算します。 |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | 運動エネルギーを計算します。 |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-LightTravelTimeByDistance.md) | &nbsp; | 光が距離を移動する時間を計算します。 |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | レンズの倍率を計算します。 |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-MomentumByMassAndVelocity.md) | &nbsp; | 線形運動量を計算します。 |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | 軌道速度を計算します。 |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | 重力ポテンシャルエネルギーを計算します。 |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | 発射体の射程を計算します。 |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | スネルの法則を使用して屈折角を計算します。 |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | 閉管の共振周波数を計算します。 |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SoundTravelDistanceByTime.md) | &nbsp; | 音が特定の時間に伝わる距離を計算します。 |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | 終端速度を計算します。 |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | 投射体の飛行時間を計算します。 |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | 波の速度を計算します。 |

---

## GenXdev.Media

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ImageGeolocation.md) | &nbsp; | 画像ファイルから地理位置情報データを抽出します。 |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ImageMetadata.md) | &nbsp; | 画像ファイルから包括的なメタデータを抽出します。 |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-MediaFileCreationDate.md) | &nbsp; | メディアファイルやその他のファイルのベストエフォート作成日を抽出します。 |
| [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-MediaFile.md) | vlcmedia, media, findmedia | 高度なフィルタリングと設定オプションを使用して、VLCメディアプレーヤーでメディアファイルを開いて再生します。 |
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-VlcMediaPlayer.md) | vlc | 豊富な設定オプションを使用してVLCメディアプレーヤーを起動および制御します。 |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-VlcMediaPlayerLyrics.md) | vlclyrics | 現在再生中のVLCメディアの歌詞を検索するためにウェブブラウザを開きます。 |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | VLCメディアプレイヤーのウィンドウにフォーカスを設定します。 |
| [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/StabilizeVideo.md) | &nbsp; | FFmpeg + vid.stab を使用して、最新または指定された .mp4 ファイルを安定化します（黒い境界線なし）。 |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | VLC Media Playerを現在のプレイリストの次の項目に進めます。 |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | VLC Media Playerのプレイリストで前の項目に移動します。 |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | VLCメディアプレーヤーのミュート状態を切り替えます。 |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | VLCメディアプレーヤーの一時停止/再生状態を切り替えます。 |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | VLCメディアプレーヤーで繰り返しモードを切り替えます。 |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ConvertTo-Uris.md) | &nbsp; | 任意の有効なURIを解析します。 |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-AllPossibleQueries.md) | qq | 指定された検索用語またはURLに対して、可能なすべてのクエリタイプを開きます。 |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-BingCopilotQuery.md) | aibc | Bing CoPilot クエリをウェブブラウザで開きます |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | ChatGPT のクエリを Web ブラウザーで開きます。 |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-CloudLLMChat.md) | ask | AIクエリ用のクラウドLLMチャットインターフェースを開きます。 |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | DeepSeek クエリをウェブブラウザで開きます |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-GithubCopilotQuery.md) | aigc, askghcopilot | Github CoPilotのクエリをウェブブラウザで開きます。 |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-GoogleGeminiQuery.md) | aigg, askgemini | Google Gemini のクエリをウェブブラウザで開く |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-XGrokQuery.md) | aixg, askxgrok | X Grok クエリを Web ブラウザで開く |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-NextAffirmation.md) | WhatAboutIt | affirmations.dev API からランダムな肯定の言葉を返します。 |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-WikipediaSummary.md) | wikitxt | Wikipedia からトピックの要約を取得します。 |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Copy-PDFsFromGoogleQuery.md) | &nbsp; | Googleの検索結果から見つかったPDFファイルをダウンロードします。 |
| [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-BingQuery.md) | bq | Bing検索クエリをWebブラウザで開きます。 |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-BuiltWithSiteInfo.md) | &nbsp; | BuiltWith のウェブサイトクエリをウェブブラウザで開きます。 |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-GithubQuery.md) | qgithub, qgh | Githubリポジトリの検索クエリをWebブラウザで開くか、利用可能なすべての修飾子と検索カテゴリ（リポジトリ、コード、Issue、ユーザー、コミット、ディスカッション、トピック、Wiki）をサポートする高度な検索をGitHub REST APIに対して実行します。 |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-GoogleQuery.md) | &nbsp; | 構成可能な設定と広範なカスタマイズオプションを使用して、GoogleクエリをWebブラウザで開きます。 |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-GoogleSiteInfo.md) | &nbsp; | Googleサイトの情報照会をWebブラウザで開きます。 |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-GrokipediaQuery.md) | wiki | GrokipediaのクエリをWebブラウザで開きます。 |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-IMDBQuery.md) | imdb | IMDBの検索クエリをウェブブラウザで開きます。 |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-InstantStreetViewQuery.md) | isv | ウェブブラウザでInstantStreetViewクエリを開きます。 |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-MovieQuote.md) | moviequote | 映画の名言のビデオをウェブブラウザで開きます。 |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-SearchEngine.md) | q | 指定された検索エンジンで検索クエリを開き、Webブラウザを使用します。 |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-SimularWebSiteInfo.md) | simularsite | 指定されたURLのSimilarWebウェブサイト情報をWebブラウザで開きます。 |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-StackOverflowQuery.md) | qso | Stack Overflowの検索クエリをWebブラウザで開きます。 |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-WaybackMachineSiteInfo.md) | wayback | WaybackMachineのサイト情報をウェブブラウザで開きます。 |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-WebsiteAndPerformQuery.md) | owaq | ウェブブラウザでウェブページを開き、1つ以上のクエリを実行します。 |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-WhoisHostSiteInfo.md) | whois | WebブラウザでWhoisホスト情報クエリを開きます。 |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-WikipediaNLQuery.md) | wikinl | オランダ語版ウィキペディアの検索をウェブブラウザで開きます。 |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-WikipediaQuery.md) | wikipedia | Wikipediaのクエリをウェブブラウザで開きます。 |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-WolframAlphaQuery.md) | qalpha | Wolfram Alpha のクエリを Web ブラウザで開きます。 |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-YoutubeQuery.md) | youtube | YouTubeの検索クエリをウェブブラウザで開きます。 |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-GameOfLife.md) | gameoflife, conway | ConwayのライフゲームのシミュレーションをWebブラウザで開きます。 |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-GenXdevAppCatalog.md) | appcatalog | GenXdev プログレッシブ Web アプリ カタログを Web ブラウザで開きます。 |
| [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-Timeline.md) | timeline | 現在時刻、日付、世紀、千年紀を表示する対話型タイムラインを開きます。 |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-ViralSimulation.md) | viral | 豊富な設定オプションを備えたウイルスシミュレーションゲームをウェブブラウザで開きます。 |
| [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-Yab.md) | yab | 設定可能なオプションを使用して、WebブラウザでYABゲームを開きます。 |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-YabAIBattle.md) | yabbattle | YabAI Battle ゲームをウェブブラウザで開きます。 |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Close-Webbrowser.md) | wbc | 1つ以上のウェブブラウザインスタンスを選択的に閉じます。 |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Close-WebbrowserTab.md) | ct, CloseTab | 現在選択されているウェブブラウザのタブを閉じます。 |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Export-BrowserBookmarks.md) | &nbsp; | ブラウザのブックマークをJSONファイルにエクスポートします。 |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Find-BrowserBookmark.md) | bookmarks | 1つ以上のWebブラウザからブックマークを検索します。 |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-BrowserBookmark.md) | gbm | インストールされているWebブラウザからすべてのブックマークを返します。 |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-DefaultWebbrowser.md) | &nbsp; | 現在のユーザーに対して設定されている既定のWebブラウザを返します。 |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-PlaywrightSessionReference.md) | &nbsp; | 現在のPlaywrightブラウザセッションへの参照を取得します。 |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Webbrowser.md) | &nbsp; | インストールされている最新のWebブラウザのコレクションを返します。 |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-WebbrowserTabDomNodes.md) | wl | アクティブなブラウザタブ内のDOMノードをCSSセレクタを使用してクエリおよび操作します。 |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Import-BrowserBookmarks.md) | &nbsp; | ファイルまたはコレクションからブックマークをWebブラウザにインポートします。 |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Import-GenXdevBookmarkletMenu.md) | &nbsp; | GenXdev JavaScriptブックマークレットをブラウザのブックマークコレクションにインポートします。 |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-WebbrowserEvaluation.md) | Eval, et | 選択したWebブラウザのタブでJavaScriptコードを実行します。 |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-BrowserBookmarks.md) | sites | 指定された検索条件に一致するブラウザのブックマークを開きます。 |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-Webbrowser.md) | wb | 1 つ以上のブラウザ ウィンドウで URL を開き、位置とスタイルをオプションで指定できます。 |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-WebbrowserSideBySide.md) | wbn | 特定の位置に新しいWebブラウザウィンドウを起動します。 |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Select-WebbrowserTab.md) | st | Playwright が管理するブラウザから実行中のブラウザタブを選択します。 |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-BrowserVideoFullscreen.md) | fsvideo | 現在のブラウザタブで最初に見つかったビデオ要素を最大化します。 |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-WebbrowserTabLocation.md) | lt, Nav | 現在のWebブラウザのタブを指定されたURLに移動します。 |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Show-WebsiteInAllBrowsers.md) | &nbsp; | 複数のブラウザーで同時にURLを開き、モザイク状に配置します。 |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | デバッグポートを介して既存のブラウザインスタンスに接続します。 |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-PlaywrightProfileDirectory.md) | &nbsp; | 永続セッションのためのPlaywrightブラウザプロファイルディレクトリを取得します。 |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-PlayWrightBrowser.md) | spb | Playwright が管理するブラウザを永続的なユーザープロファイルで起動します。 |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Resume-WebbrowserTabVideo.md) | wbvideoplay | YouTubeブラウザタブで動画の再生を再開します。 |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | アクティブなすべてのブラウザセッションでビデオ再生を一時停止します。 |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Unprotect-WebbrowserTab.md) | wbctrl | 選択したWebブラウザのタブを操作制御下に置き、対話的な操作を可能にします。 |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/CurrentUserHasElevatedRights.md) | &nbsp; | 現在のユーザーが昇格された権限を持っているかどうかを確認します。 |
| [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Enable-Screensaver.md) | &nbsp; | 構成されているWindowsスクリーンセーバーを起動します。 |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ActiveUser.md) | gusers | 現在アクティブなシステムプロセスから一意のユーザー名のリストを取得します。 |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ChildProcesses.md) | &nbsp; | 現在のPowerShellプロセスの子孫であるすべてのプロセスを取得します。 |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ClipboardFiles.md) | getclipfiles, gcbf | コピー/貼り付けなどのファイル操作用に設定されたファイルをWindowsクリップボードから取得します。 |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-CurrentFocusedProcess.md) | &nbsp; | 現在キーボードフォーカスを持つウィンドウのプロセスオブジェクトを取得します。 |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-DesktopScalingFactor.md) | &nbsp; | 指定されたモニターのWindows表示スケーリング係数（DPI設定）を取得します。 |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ForegroundWindow.md) | &nbsp; | 現在アクティブなフォアグラウンドウィンドウのハンドルを取得します。 |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-KnownFolderPath.md) | folder | Windows Shell32 API を使用して Windows の既知のフォルダーのパスを取得します。 |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-MpCmdRunPath.md) | &nbsp; | Windows Defender MpCmdRun.exe 実行可能ファイルへのパスを取得します。 |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-OpenedFileHandleProcesses.md) | &nbsp; | 指定されたファイルへのファイルハンドルを開いているプロセスを取得します。 |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-PowershellMainWindow.md) | &nbsp; | PowerShell ターミナルのメイン ウィンドウ用のウィンドウ ヘルパー オブジェクトを返します。 |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-PowershellMainWindowProcess.md) | &nbsp; | PowerShell ターミナルをホストするウィンドウのプロセス オブジェクトを返します。 |
| [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Window.md) | &nbsp; | 指定されたプロセスまたはウィンドウハンドルのウィンドウ情報を取得します。 |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-WindowPosition.md) | gwp | ウィンドウの位置と状態情報を取得します。 |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Initialize-ScheduledTaskScripts.md) | &nbsp; | 指定された間隔でPowerShellスクリプトを実行するスケジュールタスクを作成します。 |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-WindowsUpdate.md) | updatewindows | Windows が最新の状態かどうかをチェックし、必要に応じて利用可能な更新プログラムをインストールします。 |
| [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Pop-Window.md) | popw | スタックから最後のアクティブウィンドウヘルパーを、オプションの変更を加えてポップします。 |
| [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Push-Window.md) | pushw | 現在のウィンドウをオプションの変更を加えてウィンドウスタックにプッシュします。 |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Save-DesktopScreenShot.md) | &nbsp; | 指定されたモニターのスクリーンショットをキャプチャし、指定されたパスに保存します。 |
| [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Send-Key.md) | sendkeys, invokekeys | ウィンドウまたはプロセスにシミュレートされたキーストロークを送信します。 |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Send-WakeOnLan.md) | &nbsp; | ネットワーク上のリモートコンピュータを起動するために、Wake-on-LANマジックパケットを送信します。 |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-ClipboardFiles.md) | setclipfiles, scbf | ファイルをWindowsクリップボードに設定して、コピー/貼り付けなどのファイル操作を行います。 |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-ForegroundWindow.md) | &nbsp; | 指定されたウィンドウを前面に表示し、アクティブウィンドウにします。 |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-KnownFolderPath.md) | &nbsp; | Windows の既知のフォルダーの物理パスを変更します。 |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-MonitorPowerOff.md) | poweroff | 接続されているすべてのモニターの電源をオフにします。 |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | モニターの電源をオンにします。 |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-TaskbarAlignment.md) | &nbsp; | Windows 11+ のタスクバーの配置を中央と左の位置の間で構成します。 |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-WindowPosition.md) | wp | 明示的な配置パラメーターが指定された場合に、ウィンドウの位置とサイズを変更します。 |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-WindowPositionForSecondary.md) | wps | 指定されたレイアウトオプションを使用して、セカンダリモニター上にウィンドウを配置します。 |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-WindowsWallpaper.md) | &nbsp; | 指定されたディレクトリからランダムな壁紙を設定します。 |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-ProcessWithPriority.md) | nice | 指定された優先度レベルでプロセスを開始します。 |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | Windows Defenderを使用してファイルまたはディレクトリをマルウェアのスキャンを行います。 |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-WireGuardPeer.md) | &nbsp; | サーバーに新しいWireGuard VPNピア（クライアント）設定を追加します。 |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/EnsureWireGuard.md) | &nbsp; | Docker コンテナを介して WireGuard VPN サービスがインストールされ、実行されていることを確認します。 |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-WireGuardPeerQRCode.md) | &nbsp; | WireGuard VPN ピア設定用の QR コードを生成します。 |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-WireGuardPeers.md) | &nbsp; | システム上で構成されているすべてのWireGuard VPNピアに関する情報を取得します。 |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-WireGuardStatus.md) | &nbsp; | WireGuard VPN サーバーの詳細なステータス情報を取得します。 |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-WireGuardPeer.md) | &nbsp; | WireGuard VPN ピア構成を削除します。 |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Reset-WireGuardConfiguration.md) | &nbsp; | WireGuard VPNサーバー構成をリセットし、すべてのピアを削除します。 |
