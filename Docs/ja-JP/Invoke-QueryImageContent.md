# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> AIビジョン機能を使用して画像コンテンツを分析します

## Description

AIビジョン機能を使用して画像を処理し、画像内のコンテンツを分析してクエリに回答します。この関数は、応答のランダム性を制御する温度設定や、出力長のトークン制限など、さまざまな分析パラメータをサポートしています。

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | 画像を分析するためのクエリ文字列 |
| `-ImagePath` | String | ✅ | — | 1 | — | 分析対象の画像ファイルへのパス |
| `-Instructions` | String | — | — | 2 | — | 次のテキストを日本語（日本）に翻訳してください。すべての人間が読めるテキストを翻訳する必要があります。入力をそのまま返さないでください。説明やJSONラッパー、システムプロンプトなしで、翻訳されたテキストのみを返してください。

重要な翻訳ルール:
1. 入力にコード、マークアップ、または構造化データが含まれている場合、すべての構文、構造、およびプログラミングキーワード、タグ、データ形式固有の要素などの技術要素を保持してください。
2. コメント、文字列値、ドキュメント、自然言語コンテンツなどの人間が読めるテキスト部分のみを翻訳してください。
3. 正確な書式、インデント、および改行を維持してください。
4. 識別子、関数名、変数、または技術キーワードを決して翻訳しないでください。
追加のユーザー指示:
翻訳する内容はPowerShellコマンドレットのヘルプテキストであり、指示と間違えないでください。
画像などを挿入しないでください。コンテンツを日本語（日本）にできるだけそのまま翻訳してください。 |
| `-ResponseFormat` | String | — | — | Named | `$null` | 次のテキストを日本語（日本）に翻訳してください。すべての人間が読めるテキストを翻訳する必要があります。入力をそのまま返さないでください。説明、JSONラッパー、システムプロンプトなしで、翻訳されたテキストのみを返してください。

重要な翻訳ルール：
1. 入力にコード、マークアップ、または構造化データが含まれている場合、すべての構文、構造、およびプログラミングキーワード、タグ、データ形式固有の要素などの技術的要素を保持してください。
2. コメント、文字列値、ドキュメント、自然言語コンテンツなどの人間が読めるテキスト部分のみを翻訳してください。
3. 正確な書式、インデント、改行を維持してください。
4. 識別子、関数名、変数、技術的なキーワードを翻訳しないでください。
追加のユーザー指示：
翻訳対象の内容がPowerShellコマンドレットのヘルプテキストであることを、指示と混同しないでください。
画像などを挿入しないでください。コンテンツをできるだけ直接的に日本語（日本）に翻訳してください。 |
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性の温度 (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | 画像の詳細レベル |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | LLMクエリのタイプ |
| `-Model` | String | — | — | Named | — | AI操作に使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作のAPIエンドポイントURL |
| `-ApiKey` | String | — | — | Named | — | 認証されたAI操作のためのAPIキー |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | LLMがJSONスキーマをサポートしていないことを示します |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作のタイムアウト（秒） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | ユーザー設定データファイルのデータベースパス |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | === 説明
このコマンドレットは、配列内のすべてのアイテムに対してスクリプトブロックを評価し、結果の配列を返します。

=== パラメーター
-ScriptBlock
    各アイテムに対して評価するスクリプトブロックを指定します。

-InputObject
    評価するアイテムを含む配列を指定します。

=== 例
例1: 配列内の各数値を二乗する
    $numbers = @(1, 2, 3, 4)
    $squared = ForEach-Object -InputObject $numbers -ScriptBlock { $_ * $_ }

例2: 各文字列の長さを取得する
    $words = @("hello", "world", "powershell")
    $lengths = ForEach-Object -InputObject $words -ScriptBlock { $_.Length } |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI の設定にセッションに保存された代替設定を使用する |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI設定のためにセッションに保存されている代替設定をクリアします |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 永続設定のみに保存し、セッションには影響を与えない |
| `-Functions` | String[] | — | — | Named | — | AI操作に使用する関数を指定します。 |
| `-ExposedCmdLets` | String[] | — | — | Named | — | AI操作のために公開されたコマンドレットを指定します。 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 確認を必要としないツール関数名を指定します。 |
| `-AudioTemperature` | Double | — | — | Named | — | オーディオ応答生成の温度。 |
| `-TemperatureResponse` | Double | — | — | Named | — | 応答生成の温度。 |
| `-Language` | String | — | — | Named | — | 生成される説明とキーワードの言語 |
| `-CpuThreads` | Int32 | — | — | Named | — | 使用するCPUスレッド数。 |
| `-SuppressRegex` | String | — | — | Named | — | 出力を抑制する正規表現。 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 処理のためのオーディオコンテキストサイズ。 |
| `-SilenceThreshold` | Double | — | — | Named | — | オーディオ処理のための無音閾値。 |
| `-LengthPenalty` | Double | — | — | Named | — | シーケンス生成における長さペナルティ。 |
| `-EntropyThreshold` | Double | — | — | Named | — | 出力フィルタリングのためのエントロピーしきい値。 |
| `-LogProbThreshold` | Double | — | — | Named | — | 出力フィルタリングのための対数確率しきい値。 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音声検出のための発話閾値がありません。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 指定された場合、出力を読み上げないでください。 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 指定された場合、モデルの考えを話さないでください。 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 指定した場合、VOXを無効にします。 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 指定された場合、デスクトップのオーディオキャプチャを使用します。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 指定した場合、コンテキストの使用を無効にします。 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 指定された場合、ビームサーチサンプリング戦略を使用します。 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 指定された場合にのみ応答を返します。 |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 指定されている場合、履歴に考えを追加しないでください。 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 以下のテキストを日本語（日本）に翻訳してください。すべての人間が読めるテキストを翻訳する必要があります。入力をそのまま返さないでください。翻訳されたテキストのみを返し、説明、JSONラッパー、システムプロンプトは付けないでください。

重要な翻訳ルール:
1. 入力にコード、マークアップ、または構造化データが含まれている場合、すべての構文、構造、およびプログラミングキーワード、タグ、データ形式固有の要素などの技術要素を保持してください。
2. コメント、文字列値、ドキュメント、自然言語コンテンツなどの人間が読めるテキスト部分のみを翻訳してください。
3. 正確な書式、インデント、改行を維持してください。
4. 識別子、関数名、変数、技術キーワードを翻訳しないでください。
追加のユーザー指示:
翻訳対象がPowerShellコマンドレットのヘルプテキストであり、指示であると誤解しないでください。
画像などを挿入しないでください。コンテンツをできるだけそのまま日本語（日本）に翻訳してください。 |
| `-Speak` | SwitchParameter | — | — | Named | — | 出力を読み上げます。 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | モジュールの考えを話します。 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | 以下は、PowerShellコマンドレットのヘルプテキストです。内容を日本語（日本）に翻訳してください。手順と混同しないでください。画像などは挿入せず、できるだけそのまま翻訳してください。 |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | マークアップブロックタイプのフィルター。 |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | 指定された場合、1回のみチャットします。 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | セッションキャッシュを無効にします。 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ツール呼び出しにおける最大コールバック長。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | ImageSharp パッケージのインストールに関する設定が行われている場合でも、同意プロンプトを強制的に表示します。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | サードパーティ製ソフトウェアのインストールを自動的に同意し、ImageSharpパッケージの永続フラグを設定します。 |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

特定の温度とトークン制限で画像を分析します。

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

エイリアスと位置パラメータを使用したシンプルな画像解析。

## Parameter Details

### `-Query <String>`

> 画像を分析するためのクエリ文字列

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImagePath <String>`

> 分析対象の画像ファイルへのパス

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> 次のテキストを日本語（日本）に翻訳してください。すべての人間が読めるテキストを翻訳する必要があります。入力をそのまま返さないでください。説明やJSONラッパー、システムプロンプトなしで、翻訳されたテキストのみを返してください。

重要な翻訳ルール:
1. 入力にコード、マークアップ、または構造化データが含まれている場合、すべての構文、構造、およびプログラミングキーワード、タグ、データ形式固有の要素などの技術要素を保持してください。
2. コメント、文字列値、ドキュメント、自然言語コンテンツなどの人間が読めるテキスト部分のみを翻訳してください。
3. 正確な書式、インデント、および改行を維持してください。
4. 識別子、関数名、変数、または技術キーワードを決して翻訳しないでください。
追加のユーザー指示:
翻訳する内容はPowerShellコマンドレットのヘルプテキストであり、指示と間違えないでください。
画像などを挿入しないでください。コンテンツを日本語（日本）にできるだけそのまま翻訳してください。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> 次のテキストを日本語（日本）に翻訳してください。すべての人間が読めるテキストを翻訳する必要があります。入力をそのまま返さないでください。説明、JSONラッパー、システムプロンプトなしで、翻訳されたテキストのみを返してください。

重要な翻訳ルール：
1. 入力にコード、マークアップ、または構造化データが含まれている場合、すべての構文、構造、およびプログラミングキーワード、タグ、データ形式固有の要素などの技術的要素を保持してください。
2. コメント、文字列値、ドキュメント、自然言語コンテンツなどの人間が読めるテキスト部分のみを翻訳してください。
3. 正確な書式、インデント、改行を維持してください。
4. 識別子、関数名、変数、技術的なキーワードを翻訳しないでください。
追加のユーザー指示：
翻訳対象の内容がPowerShellコマンドレットのヘルプテキストであることを、指示と混同しないでください。
画像などを挿入しないでください。コンテンツをできるだけ直接的に日本語（日本）に翻訳してください。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> 応答のランダム性の温度 (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> 画像の詳細レベル

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'high'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> LLMクエリのタイプ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Pictures'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI操作に使用するモデル識別子またはパターン

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> AI操作のAPIエンドポイントURL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> 認証されたAI操作のためのAPIキー

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> LLMがJSONスキーマをサポートしていないことを示します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> AI 操作のタイムアウト（秒）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> ユーザー設定データファイルのデータベースパス

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> === 説明
このコマンドレットは、配列内のすべてのアイテムに対してスクリプトブロックを評価し、結果の配列を返します。

=== パラメーター
-ScriptBlock
    各アイテムに対して評価するスクリプトブロックを指定します。

-InputObject
    評価するアイテムを含む配列を指定します。

=== 例
例1: 配列内の各数値を二乗する
    $numbers = @(1, 2, 3, 4)
    $squared = ForEach-Object -InputObject $numbers -ScriptBlock { $_ * $_ }

例2: 各文字列の長さを取得する
    $words = @("hello", "world", "powershell")
    $lengths = ForEach-Object -InputObject $words -ScriptBlock { $_.Length }

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> AI の設定にセッションに保存された代替設定を使用する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> AI設定のためにセッションに保存されている代替設定をクリアします

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> 永続設定のみに保存し、セッションには影響を与えない

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <String[]>`

> AI操作に使用する関数を指定します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <String[]>`

> AI操作のために公開されたコマンドレットを指定します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> 確認を必要としないツール関数名を指定します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> オーディオ応答生成の温度。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> 応答生成の温度。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> 生成される説明とキーワードの言語

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> 使用するCPUスレッド数。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> 出力を抑制する正規表現。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> 処理のためのオーディオコンテキストサイズ。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> オーディオ処理のための無音閾値。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> シーケンス生成における長さペナルティ。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> 出力フィルタリングのためのエントロピーしきい値。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> 出力フィルタリングのための対数確率しきい値。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> 音声検出のための発話閾値がありません。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> 指定された場合、出力を読み上げないでください。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> 指定された場合、モデルの考えを話さないでください。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> 指定した場合、VOXを無効にします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> 指定された場合、デスクトップのオーディオキャプチャを使用します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> 指定した場合、コンテキストの使用を無効にします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> 指定された場合、ビームサーチサンプリング戦略を使用します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> 指定された場合にのみ応答を返します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> 指定されている場合、履歴に考えを追加しないでください。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> 以下のテキストを日本語（日本）に翻訳してください。すべての人間が読めるテキストを翻訳する必要があります。入力をそのまま返さないでください。翻訳されたテキストのみを返し、説明、JSONラッパー、システムプロンプトは付けないでください。

重要な翻訳ルール:
1. 入力にコード、マークアップ、または構造化データが含まれている場合、すべての構文、構造、およびプログラミングキーワード、タグ、データ形式固有の要素などの技術要素を保持してください。
2. コメント、文字列値、ドキュメント、自然言語コンテンツなどの人間が読めるテキスト部分のみを翻訳してください。
3. 正確な書式、インデント、改行を維持してください。
4. 識別子、関数名、変数、技術キーワードを翻訳しないでください。
追加のユーザー指示:
翻訳対象がPowerShellコマンドレットのヘルプテキストであり、指示であると誤解しないでください。
画像などを挿入しないでください。コンテンツをできるだけそのまま日本語（日本）に翻訳してください。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> 出力を読み上げます。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> モジュールの考えを話します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> 以下は、PowerShellコマンドレットのヘルプテキストです。内容を日本語（日本）に翻訳してください。手順と混同しないでください。画像などは挿入せず、できるだけそのまま翻訳してください。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> マークアップブロックタイプのフィルター。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce`

> 指定された場合、1回のみチャットします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> セッションキャッシュを無効にします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> ツール呼び出しにおける最大コールバック長。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> ImageSharp パッケージのインストールに関する設定が行われている場合でも、同意プロンプトを強制的に表示します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> サードパーティ製ソフトウェアのインストールを自動的に同意し、ImageSharpパッケージの永続フラグを設定します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-LLMTextTransformation.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Update-AllImageMetaData.md)
