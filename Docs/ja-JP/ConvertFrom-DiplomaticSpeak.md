# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize`

## Synopsis

> 外交的または婉曲的な言葉を、直接的で明確かつ率直な言葉に変換します。

## Description

この関数は外交的な言い回しを受け取り、丁寧または政治的に正しい言葉の背後にある真の意味を明らかにする翻訳を行います。AI言語モデルを使用して、婉曲表現を直接的な陳述に変換し、コミュニケーションを明確で理解しやすくします。この関数は、政治的声明、ビジネスコミュニケーション、または外交的な言葉によって本当の意味が隠されている可能性のあるテキストを分析するのに特に役立ちます。

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | 外交辞令から変換するテキスト |
| `-Instructions` | String | — | — | 1 | `''` | 以下のテキストを日本語（日本）に翻訳してください。すべての人間が読めるテキストを翻訳しなければなりません。入力された内容をそのまま返さないでください。説明やJSONラッパー、システムプロンプトなしで、翻訳されたテキストのみを返してください。

重要翻訳ルール:
1. 入力にコード、マークアップ、または構造化データが含まれている場合、すべての構文、構造、およびプログラミングキーワード、タグ、データ形式固有の要素などの技術要素を保持してください。
2. コメント、文字列値、ドキュメント、自然言語コンテンツなど、人間が読めるテキスト部分のみ翻訳してください。
3. 正確な書式、インデント、改行を維持してください。
4. 識別子、関数名、変数、技術キーワードは決して翻訳しないでください。
追加ユーザー指示:
翻訳対象がPowerShellコマンドレットのヘルプテキストであることを、指示と混同しないでください！
画像などを挿入しないでください。コンテンツをできるだけそのまま日本語（日本）に翻訳してください。 |
| `-Temperature` | Double | — | — | Named | `0.0` | 応答のランダム性の温度 (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | LLMクエリのタイプ |
| `-Model` | String | — | — | Named | — | AI操作に使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作のAPIエンドポイントURL |
| `-ApiKey` | String | — | — | Named | — | 認証されたAI操作のためのAPIキー |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | LLMがJSONスキーマをサポートしていないことを示します |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作のタイムアウト（秒） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | ユーザー設定データファイルのデータベースパス |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 変換されたテキストをクリップボードにコピーします |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI の設定にセッションに保存された代替設定を使用する |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI設定のためにセッションに保存されている代替設定をクリアします |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 永続設定のみに保存し、セッションには影響を与えない |
| `-Attachments` | Object[] | — | — | Named | — | AI操作に含める添付ファイル。 |
| `-ImageDetail` | String | — | — | Named | — | AI処理向けの画像詳細レベル。 |
| `-Functions` | Object[] | — | — | Named | — | AIモデルに公開する関数。 |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | AIモデルに公開するコマンドレット。 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 確認が不要なツール関数名 |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 以下のテキストを日本語（日本）に翻訳してください。すべての人間が読めるテキストを翻訳する必要があります。入力をそのまま返さないでください。説明やJSONラッパー、システムプロンプトなしで、翻訳されたテキストのみを返してください。

重要な翻訳ルール:
1. 入力にコード、マークアップ、構造化データが含まれている場合、すべての構文、構造、およびプログラミングキーワード、タグ、データ形式固有の要素などの技術要素を保持してください。
2. コメント、文字列値、ドキュメント、自然言語コンテンツなど、人間が読めるテキスト部分のみを翻訳してください。
3. 書式、インデント、改行を正確に維持してください。
4. 識別子、関数名、変数、技術キーワードは決して翻訳しないでください。
追加のユーザー指示:
翻訳対象がPowerShellコマンドレットのヘルプテキストであることを間違えず、指示と混同しないでください！
画像などを挿入せず、コンテンツをできるだけそのまま日本語（日本）に翻訳してください。 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 最後のAI操作から続けます。 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI処理中に思考を声に出します。 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | この操作のセッションキャッシュを無効にします。 |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AI操作でのデフォルトツールの使用を許可します。 |
| `-AudioTemperature` | Double | — | — | Named | — | AI音声生成のためのオーディオ温度。 |
| `-TemperatureResponse` | Double | — | — | Named | — | AI応答生成のための温度。 |
| `-CpuThreads` | Int32 | — | — | Named | — | AI操作に使用するCPUスレッドの数。 |
| `-SuppressRegex` | String[] | — | — | Named | — | AI出力で抑制する正規表現。 |
| `-AudioContextSize` | Int32 | — | — | Named | — | AI音声処理のためのオーディオコンテキストサイズ。 |
| `-SilenceThreshold` | Double | — | — | Named | — | AI音声処理の無音閾値。 |
| `-LengthPenalty` | Double | — | — | Named | — | AI シーケンス生成の長さペナルティ。 |
| `-EntropyThreshold` | Double | — | — | Named | — | AI 出力のエントロピーのしきい値。 |
| `-LogProbThreshold` | Double | — | — | Named | — | AI出力のログ確率しきい値。 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | AI音声処理における無音声しきい値。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 以下は翻訳された内容です。

走行距離通知 (Mileage Notification) は、車両の走行距離が定義されたしきい値を超えたときに通知を生成します。この通知は、予防整備のスケジュールやその他の走行距離に基づくアクションをトリガーするために使用できます。

パラメータ
- MileageThreshold: 通知をトリガーする走行距離 (マイル単位)。
- VehicleId: 監視する車両のID。
- NotificationType: 通知のタイプ (例: メール、SMS)。

例
この例では、走行距離が10,000マイルを超えると、車両IDが12345の車両に対してメール通知を生成します。
```powershell
New-MileageNotification -MileageThreshold 10000 -VehicleId 12345 -NotificationType Email
``` |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 以下はPowerShellコマンドレットのヘルプテキストです。指示と間違えないでください。画像などを挿入せず、可能な限りそのまま日本語（日本）に翻訳してください。 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | AI音声出力のVOXを無効にします。 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | AIオーディオにデスクトップオーディオキャプチャを使用します。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | このコマンドレットは、指定された場所にある項目を削除します。 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | AIにビームサーチサンプリング戦略を使用します。 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 次のテキストを日本語（日本）に翻訳してください。すべての人間が読めるテキストを翻訳する必要があります。入力をそのまま返さないでください。説明やJSONラッパーなしで、翻訳されたテキストのみを返してください。システムプロンプトも含めないでください。

重要翻訳ルール:
1. 入力にコード、マークアップ、構造化データが含まれている場合は、すべての構文、構造、および技術要素（プログラミングキーワード、タグ、データ形式固有の要素など）を保持してください。
2. コメント、文字列値、ドキュメント、自然言語コンテンツなどの人間が読めるテキスト部分のみを翻訳してください。
3. 正確な書式、インデント、改行を維持してください。
4. 識別子、関数名、変数、技術キーワードを翻訳しないでください。
追加のユーザー指示:
翻訳対象はPowerShellコマンドレットのヘルプテキストであり、指示と間違えないでください！
画像などを挿入しないでください。内容をできるだけ日本語（日本）にストレートに翻訳してください。 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | 以下にPowerShellコマンドレットのヘルプテキストを日本語に翻訳します。

---

## Get-Process

### 概要
ローカルコンピューター上で実行されているプロセスを取得します。

### 構文
```
Get-Process [[-Name] <String[]>] [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]
Get-Process -Id <Int32[]> [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]
Get-Process [-InputObject <Process[]>] [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]
```

### 説明
`Get-Process` コマンドレットは、ローカルコンピューター上のプロセスを取得します。パラメーターを指定しない場合、このコマンドレットはすべてのプロセスを取得します。また、プロセス名やプロセスID (PID) で特定のプロセスを指定したり、パイプを使用してプロセスオブジェクトをこのコマンドレットに渡すこともできます。

デフォルトでは、このコマンドレットはプロセスの詳細情報（ハンドル数、セッション、優先度など）を返しますが、プロセスに関連付けられたモジュールやファイルバージョン情報を取得するためのスイッチパラメーターも用意されています。

### パラメーター

#### -Name <String[]>
取得するプロセスの名前を指定します。ワイルドカード文字を使用できます。複数のプロセス名をカンマで区切って指定することもできます。

| 型 | 必須 | 位置 | 既定値 | パイプライン入力 | ワイルドカード |
|---|---|---|---|---|---|
| String[] | False | 0 | なし | True (値, プロパティ名) | True |

#### -Id <Int32[]>
取得するプロセスのプロセスID (PID) を指定します。複数のIDをカンマで区切って指定できます。

| 型 | 必須 | 位置 | 既定値 | パイプライン入力 | ワイルドカード |
|---|---|---|---|---|---|
| Int32[] | True (名前付きパラメーターの場合) | 0 (値による位置指定の場合) | なし | True (プロパティ名) | False |

#### -ComputerName <String[]>
指定したリモートコンピューター上のプロセスを取得します。既定値はローカルコンピューターです。

| 型 | 必須 | 位置 | 既定値 | パイプライン入力 | ワイルドカード |
|---|---|---|---|---|---|
| String[] | False | Named | ローカルコンピューター | True (プロパティ名) | False |

#### -Module
プロセスによって読み込まれたモジュールを取得します。このパラメーターを指定すると、各プロセスオブジェクトに `Modules` プロパティが追加されます。

| 型 | 必須 | 位置 | 既定値 | パイプライン入力 | ワイルドカード |
|---|---|---|---|---|---|
| SwitchParameter | False | Named | False | False | False |

#### -FileVersionInfo
プロセスのメインモジュールのファイルバージョン情報を取得します。このパラメーターを指定すると、各プロセスオブジェクトに `FileVersionInfo` プロパティが追加されます。

| 型 | 必須 | 位置 | 既定値 | パイプライン入力 | ワイルドカード |
|---|---|---|---|---|---|
| SwitchParameter | False | Named | False | False | False |

#### -InputObject <Process[]>
プロセスオブジェクトをこのコマンドレットにパイプで渡すためのパラメーターです。プロセスオブジェクトを指定すると、そのオブジェクトが返されます。

| 型 | 必須 | 位置 | 既定値 | パイプライン入力 | ワイルドカード |
|---|---|---|---|---|---|
| Process[] | False | Named | なし | True (値) | False |

### 共通パラメーター
このコマンドレットは、`-Debug`、`-ErrorAction`、`-ErrorVariable`、`-InformationAction`、`-InformationVariable`、`-OutVariable`、`-OutBuffer`、`-PipelineVariable`、`-Verbose`、`-WarningAction`、`-WarningVariable` などの共通パラメーターをサポートしています。詳細については、[about_CommonParameters](https://aka.ms/powershell-commonparams) を参照してください。

### 入力
入力の種類は次のとおりです。
- **System.String[]**: プロセス名をパイプで `Get-Process` に渡すことができます。
- **System.Int32[]**: プロセスIDをパイプで渡すことができます。
- **System.Diagnostics.Process[]**: プロセスオブジェクトをパイプで渡すことができます。

### 出力
出力の種類は次のとおりです。
- **System.Diagnostics.Process**: `Get-Process` は、`System.Diagnostics.Process` クラスのインスタンスを返します。
- **System.Diagnostics.FileVersionInfo**: `-FileVersionInfo` パラメーターを使用すると、各プロセスオブジェクトに `FileVersionInfo` プロパティが追加されます。
- **System.Diagnostics.ProcessModule**: `-Module` パラメーターを使用すると、各プロセスオブジェクトに `Modules` プロパティが追加されます。

### 注記
- リモートコンピューター上のプロセスを取得するには、PowerShell リモート処理を有効にする必要があります。詳細については、[about_Remote](https://aka.ms/powershell-remote) を参照してください。
- このコマンドレットは、Windows プラットフォームでのみ使用できます。

### 例

#### 例 1: すべてのプロセスを取得する
```powershell
Get-Process
```
このコマンドは、ローカルコンピューター上で実行されているすべてのプロセスを取得します。

#### 例 2: プロセス名でフィルターする
```powershell
Get-Process -Name "note*"
```
このコマンドは、名前が "note" で始まるすべてのプロセスを取得します（メモ帳など）。

#### 例 3: 特定のプロセスIDを取得する
```powershell
Get-Process -Id 1234, 5678
```
このコマンドは、プロセスIDが 1234 と 5678 のプロセスを取得します。

#### 例 4: プロセスのファイルバージョン情報を取得する
```powershell
Get-Process -Name "powershell" -FileVersionInfo
```
このコマンドは、PowerShell プロセスのファイルバージョン情報を取得します。

### 関連リンク
- [about_Processes](https://aka.ms/powershell-about-processes)
- [Stop-Process](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/stop-process)
- [Start-Process](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/start-process)
- [Wait-Process](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/wait-process)
- [Debug-Process](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/debug-process)

--- |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | AI出力のマークアップブロックタイプをフィルター処理します。 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ツール呼び出しにおける最大コールバック長。 |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Parameter Details

### `-Text <String>`

> 外交辞令から変換するテキスト

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> 以下のテキストを日本語（日本）に翻訳してください。すべての人間が読めるテキストを翻訳しなければなりません。入力された内容をそのまま返さないでください。説明やJSONラッパー、システムプロンプトなしで、翻訳されたテキストのみを返してください。

重要翻訳ルール:
1. 入力にコード、マークアップ、または構造化データが含まれている場合、すべての構文、構造、およびプログラミングキーワード、タグ、データ形式固有の要素などの技術要素を保持してください。
2. コメント、文字列値、ドキュメント、自然言語コンテンツなど、人間が読めるテキスト部分のみ翻訳してください。
3. 正確な書式、インデント、改行を維持してください。
4. 識別子、関数名、変数、技術キーワードは決して翻訳しないでください。
追加ユーザー指示:
翻訳対象がPowerShellコマンドレットのヘルプテキストであることを、指示と混同しないでください！
画像などを挿入しないでください。コンテンツをできるだけそのまま日本語（日本）に翻訳してください。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
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
| **Default value** | `0.0` |
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
| **Default value** | `'Knowledge'` |
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
### `-SetClipboard`

> 変換されたテキストをクリップボードにコピーします

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
### `-Attachments <Object[]>`

> AI操作に含める添付ファイル。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> AI処理向けの画像詳細レベル。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Object[]>`

> AIモデルに公開する関数。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <Object[]>`

> AIモデルに公開するコマンドレット。

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

> 確認が不要なツール関数名

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> 以下のテキストを日本語（日本）に翻訳してください。すべての人間が読めるテキストを翻訳する必要があります。入力をそのまま返さないでください。説明やJSONラッパー、システムプロンプトなしで、翻訳されたテキストのみを返してください。

重要な翻訳ルール:
1. 入力にコード、マークアップ、構造化データが含まれている場合、すべての構文、構造、およびプログラミングキーワード、タグ、データ形式固有の要素などの技術要素を保持してください。
2. コメント、文字列値、ドキュメント、自然言語コンテンツなど、人間が読めるテキスト部分のみを翻訳してください。
3. 書式、インデント、改行を正確に維持してください。
4. 識別子、関数名、変数、技術キーワードは決して翻訳しないでください。
追加のユーザー指示:
翻訳対象がPowerShellコマンドレットのヘルプテキストであることを間違えず、指示と混同しないでください！
画像などを挿入せず、コンテンツをできるだけそのまま日本語（日本）に翻訳してください。

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

> 最後のAI操作から続けます。

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

> AI処理中に思考を声に出します。

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

> この操作のセッションキャッシュを無効にします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowDefaultTools`

> AI操作でのデフォルトツールの使用を許可します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> AI音声生成のためのオーディオ温度。

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

> AI応答生成のための温度。

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

> AI操作に使用するCPUスレッドの数。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String[]>`

> AI出力で抑制する正規表現。

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

> AI音声処理のためのオーディオコンテキストサイズ。

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

> AI音声処理の無音閾値。

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

> AI シーケンス生成の長さペナルティ。

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

> AI 出力のエントロピーのしきい値。

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

> AI出力のログ確率しきい値。

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

> AI音声処理における無音声しきい値。

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

> 以下は翻訳された内容です。

走行距離通知 (Mileage Notification) は、車両の走行距離が定義されたしきい値を超えたときに通知を生成します。この通知は、予防整備のスケジュールやその他の走行距離に基づくアクションをトリガーするために使用できます。

パラメータ
- MileageThreshold: 通知をトリガーする走行距離 (マイル単位)。
- VehicleId: 監視する車両のID。
- NotificationType: 通知のタイプ (例: メール、SMS)。

例
この例では、走行距離が10,000マイルを超えると、車両IDが12345の車両に対してメール通知を生成します。
```powershell
New-MileageNotification -MileageThreshold 10000 -VehicleId 12345 -NotificationType Email
```

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

> 以下はPowerShellコマンドレットのヘルプテキストです。指示と間違えないでください。画像などを挿入せず、可能な限りそのまま日本語（日本）に翻訳してください。

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

> AI音声出力のVOXを無効にします。

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

> AIオーディオにデスクトップオーディオキャプチャを使用します。

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

> このコマンドレットは、指定された場所にある項目を削除します。

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

> AIにビームサーチサンプリング戦略を使用します。

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

> 次のテキストを日本語（日本）に翻訳してください。すべての人間が読めるテキストを翻訳する必要があります。入力をそのまま返さないでください。説明やJSONラッパーなしで、翻訳されたテキストのみを返してください。システムプロンプトも含めないでください。

重要翻訳ルール:
1. 入力にコード、マークアップ、構造化データが含まれている場合は、すべての構文、構造、および技術要素（プログラミングキーワード、タグ、データ形式固有の要素など）を保持してください。
2. コメント、文字列値、ドキュメント、自然言語コンテンツなどの人間が読めるテキスト部分のみを翻訳してください。
3. 正確な書式、インデント、改行を維持してください。
4. 識別子、関数名、変数、技術キーワードを翻訳しないでください。
追加のユーザー指示:
翻訳対象はPowerShellコマンドレットのヘルプテキストであり、指示と間違えないでください！
画像などを挿入しないでください。内容をできるだけ日本語（日本）にストレートに翻訳してください。

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

> 以下にPowerShellコマンドレットのヘルプテキストを日本語に翻訳します。

---

## Get-Process

### 概要
ローカルコンピューター上で実行されているプロセスを取得します。

### 構文
```
Get-Process [[-Name] <String[]>] [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]
Get-Process -Id <Int32[]> [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]
Get-Process [-InputObject <Process[]>] [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]
```

### 説明
`Get-Process` コマンドレットは、ローカルコンピューター上のプロセスを取得します。パラメーターを指定しない場合、このコマンドレットはすべてのプロセスを取得します。また、プロセス名やプロセスID (PID) で特定のプロセスを指定したり、パイプを使用してプロセスオブジェクトをこのコマンドレットに渡すこともできます。

デフォルトでは、このコマンドレットはプロセスの詳細情報（ハンドル数、セッション、優先度など）を返しますが、プロセスに関連付けられたモジュールやファイルバージョン情報を取得するためのスイッチパラメーターも用意されています。

### パラメーター

#### -Name <String[]>
取得するプロセスの名前を指定します。ワイルドカード文字を使用できます。複数のプロセス名をカンマで区切って指定することもできます。

| 型 | 必須 | 位置 | 既定値 | パイプライン入力 | ワイルドカード |
|---|---|---|---|---|---|
| String[] | False | 0 | なし | True (値, プロパティ名) | True |

#### -Id <Int32[]>
取得するプロセスのプロセスID (PID) を指定します。複数のIDをカンマで区切って指定できます。

| 型 | 必須 | 位置 | 既定値 | パイプライン入力 | ワイルドカード |
|---|---|---|---|---|---|
| Int32[] | True (名前付きパラメーターの場合) | 0 (値による位置指定の場合) | なし | True (プロパティ名) | False |

#### -ComputerName <String[]>
指定したリモートコンピューター上のプロセスを取得します。既定値はローカルコンピューターです。

| 型 | 必須 | 位置 | 既定値 | パイプライン入力 | ワイルドカード |
|---|---|---|---|---|---|
| String[] | False | Named | ローカルコンピューター | True (プロパティ名) | False |

#### -Module
プロセスによって読み込まれたモジュールを取得します。このパラメーターを指定すると、各プロセスオブジェクトに `Modules` プロパティが追加されます。

| 型 | 必須 | 位置 | 既定値 | パイプライン入力 | ワイルドカード |
|---|---|---|---|---|---|
| SwitchParameter | False | Named | False | False | False |

#### -FileVersionInfo
プロセスのメインモジュールのファイルバージョン情報を取得します。このパラメーターを指定すると、各プロセスオブジェクトに `FileVersionInfo` プロパティが追加されます。

| 型 | 必須 | 位置 | 既定値 | パイプライン入力 | ワイルドカード |
|---|---|---|---|---|---|
| SwitchParameter | False | Named | False | False | False |

#### -InputObject <Process[]>
プロセスオブジェクトをこのコマンドレットにパイプで渡すためのパラメーターです。プロセスオブジェクトを指定すると、そのオブジェクトが返されます。

| 型 | 必須 | 位置 | 既定値 | パイプライン入力 | ワイルドカード |
|---|---|---|---|---|---|
| Process[] | False | Named | なし | True (値) | False |

### 共通パラメーター
このコマンドレットは、`-Debug`、`-ErrorAction`、`-ErrorVariable`、`-InformationAction`、`-InformationVariable`、`-OutVariable`、`-OutBuffer`、`-PipelineVariable`、`-Verbose`、`-WarningAction`、`-WarningVariable` などの共通パラメーターをサポートしています。詳細については、[about_CommonParameters](https://aka.ms/powershell-commonparams) を参照してください。

### 入力
入力の種類は次のとおりです。
- **System.String[]**: プロセス名をパイプで `Get-Process` に渡すことができます。
- **System.Int32[]**: プロセスIDをパイプで渡すことができます。
- **System.Diagnostics.Process[]**: プロセスオブジェクトをパイプで渡すことができます。

### 出力
出力の種類は次のとおりです。
- **System.Diagnostics.Process**: `Get-Process` は、`System.Diagnostics.Process` クラスのインスタンスを返します。
- **System.Diagnostics.FileVersionInfo**: `-FileVersionInfo` パラメーターを使用すると、各プロセスオブジェクトに `FileVersionInfo` プロパティが追加されます。
- **System.Diagnostics.ProcessModule**: `-Module` パラメーターを使用すると、各プロセスオブジェクトに `Modules` プロパティが追加されます。

### 注記
- リモートコンピューター上のプロセスを取得するには、PowerShell リモート処理を有効にする必要があります。詳細については、[about_Remote](https://aka.ms/powershell-remote) を参照してください。
- このコマンドレットは、Windows プラットフォームでのみ使用できます。

### 例

#### 例 1: すべてのプロセスを取得する
```powershell
Get-Process
```
このコマンドは、ローカルコンピューター上で実行されているすべてのプロセスを取得します。

#### 例 2: プロセス名でフィルターする
```powershell
Get-Process -Name "note*"
```
このコマンドは、名前が "note" で始まるすべてのプロセスを取得します（メモ帳など）。

#### 例 3: 特定のプロセスIDを取得する
```powershell
Get-Process -Id 1234, 5678
```
このコマンドは、プロセスIDが 1234 と 5678 のプロセスを取得します。

#### 例 4: プロセスのファイルバージョン情報を取得する
```powershell
Get-Process -Name "powershell" -FileVersionInfo
```
このコマンドは、PowerShell プロセスのファイルバージョン情報を取得します。

### 関連リンク
- [about_Processes](https://aka.ms/powershell-about-processes)
- [Stop-Process](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/stop-process)
- [Start-Process](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/start-process)
- [Wait-Process](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/wait-process)
- [Debug-Process](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/debug-process)

---

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

> AI出力のマークアップブロックタイプをフィルター処理します。

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
## Outputs

- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ConvertFrom-CorporateSpeak.md)
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
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Update-AllImageMetaData.md)
