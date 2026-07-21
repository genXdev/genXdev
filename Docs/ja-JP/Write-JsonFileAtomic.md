# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> オブジェクトをJSONとしてアトミックにファイルに書き込み、破損を防ぎます。

## Description

* アトミック書き込み：一時ファイル＋リネーム戦略を使用して、プロセスが中断された場合にターゲットファイルが破損状態のままにならないようにします。
* リトライロジック：最大MaxRetries回、試行間にRetryDelayMsミリ秒の遅延を挟んで書き込みを再試行します。
* オブジェクトサポート：Hashtableだけでなく、任意のオブジェクトを受け入れます。System.Text.Jsonでシリアル化し、ネイティブにシリアル化できない複雑な.NET型はConvertTo-Jsonにフォールバックします。
* デバウンスサポート：DebounceMs > 0の場合、同じファイルへの高速連続書き込みが統合され、ファイルがDebounceMsミリ秒間触れられなかった場合に最後のペイロードのみが書き込まれます。
* ディレクトリ作成：親ディレクトリが存在しない場合、自動的に作成します。

## Syntax

```powershell
Write-JsonFileAtomic -FilePath <String> [[-Data] <Object>] [-AsArray] [-Compress] [-DebounceMs <Int32>] [-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-EnumsAsStrings] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 書き込むファイルへのパス。 |
| `-Data` | Object | — | — | 1 | — | JSON にシリアル化してファイルに書き込むオブジェクト。 |
| `-MaxRetries` | Int32 | — | — | Named | `0` | アトミック書き込み操作の最大再試行回数。デフォルトは4です。 |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 再試行間の遅延時間（ミリ秒）。デフォルトは200です。 |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 0より大きい場合、デバウンスはこのファイルに書き込みます。デフォルトは0（無効）です。 |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | JSON シリアル化の最大深度。デフォルトは 30 です。 |
| `-Compress` | SwitchParameter | — | — | Named | `False` | 以下は、指定されたPowerShellコマンドレットのヘルプテキストを日本語に翻訳したものです。

---

## Get-Process

### 概要

ローカルコンピューターまたはリモートコンピューター上で実行中のプロセスを取得します。

### 構文

```powershell
Get-Process
    [[-Name] <string[]>]
    [-ComputerName <string[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```

```powershell
Get-Process
    -Id <int[]>
    [-ComputerName <string[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```

```powershell
Get-Process
    [-InputObject <Process[]>]
    [-ComputerName <string[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```

### 説明

`Get-Process` コマンドレットは、ローカルコンピューターまたはリモートコンピューター上のプロセスを取得します。

パラメーターを指定しない場合、このコマンドレットはローカルコンピューター上のすべてのプロセスを取得します。プロセス名、プロセスID（PID）、またはパイプラインを介してプロセスオブジェクトを指定することもできます。プロセスに関する詳細情報（モジュールやファイルバージョン情報など）を取得するには、`-Module` パラメーターまたは `-FileVersionInfo` パラメーターを使用します。

このコマンドレットは、System.Diagnostics.Process クラスのメソッドとプロパティをサポートしています。詳細については、「System.Diagnostics.Process」を参照してください。

### 例

#### 例1: ローカルコンピューター上のすべてのプロセスを取得する

```powershell
Get-Process
```

このコマンドは、ローカルコンピューター上で実行中のすべてのプロセスを取得します。

#### 例2: プロセス名でプロセスを取得する

```powershell
Get-Process -Name "notepad"
```

このコマンドは、名前が「notepad」のプロセスを取得します。ワイルドカードを使用することもできます。

#### 例3: プロセスIDでプロセスを取得する

```powershell
Get-Process -Id 1234
```

このコマンドは、プロセスIDが1234のプロセスを取得します。

#### 例4: リモートコンピューター上のプロセスを取得する

```powershell
Get-Process -ComputerName "Server01"
```

このコマンドは、リモートコンピューター「Server01」上のすべてのプロセスを取得します。

### パラメーター

#### -ComputerName

プロセスを取得するコンピューターを指定します。デフォルトはローカルコンピューターです。

コンピューター名はNetBIOS名、IPアドレス、または完全修飾ドメイン名（FQDN）で指定します。ローカルコンピューターを指定するには、コンピューター名、ドット「.」、または「localhost」を使用します。

このパラメーターは、Windows PowerShellのリモート処理に依存していません。コンピューターがリモート処理用に構成されていない場合でも、このパラメーターを使用できます。

#### -FileVersionInfo

プロセスのメインモジュールのファイルバージョン情報を取得します。

このパラメーターを指定すると、`Get-Process` は各プロセスオブジェクトに `FileVersionInfo` プロパティを追加します。この情報を表示するには、`Format-List` コマンドレットを使用します。

#### -Id

プロセスID（PID）でプロセスを指定します。複数のIDをカンマで区切って指定できます。プロセスIDを見つけるには、`Get-Process` を実行します。

#### -InputObject

プロセスオブジェクトをパイプラインを介して渡します。このパラメーターにプロセスオブジェクトを指定することもできます。

#### -Module

プロセスによってロードされたモジュールを取得します。

このパラメーターを指定すると、`Get-Process` は各プロセスオブジェクトに `Modules` プロパティを追加します。この情報を表示するには、`Format-List` コマンドレットを使用します。

#### -Name

プロセス名でプロセスを指定します。ワイルドカード文字を使用できます。複数の名前をカンマで区切って指定できます。

### 共通パラメーター

このコマンドレットは、共通パラメーターをサポートしています：-Debug、-ErrorAction、-ErrorVariable、-InformationAction、-InformationVariable、-OutVariable、-OutBuffer、-PipelineVariable、-Verbose、-WarningAction、および-WarningVariable。詳細については、about_CommonParameters を参照してください。

### 入力

System.Diagnostics.Process

パイプラインを介してプロセスオブジェクトを `Get-Process` に渡すことができます。

### 出力

System.Diagnostics.Process

`Get-Process` は、取得したプロセスごとに System.Diagnostics.Process オブジェクトを返します。

### 注記

- このコマンドレットは、Windowsプラットフォームでのみ使用できます。
- リモートコンピューター上のプロセスを取得するには、リモートコンピューターに対する適切なアクセス許可が必要です。
- 64ビットオペレーティングシステムでは、32ビットプロセスに関する情報を取得するには、32ビットバージョンのWindows PowerShellを使用する必要がある場合があります。

### 関連リンク

- [about_Processes]()
- [Stop-Process]()
- [Start-Process]()
- [Wait-Process]()

---

上記が翻訳テキストです。コードブロックや構造は元の形式を維持しています。 |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | 以下は、指定されたPowerShellコマンドレットのヘルプテキストを日本語に翻訳したものです。

---

## Get-Process

### 概要

ローカルコンピューターまたはリモートコンピューター上で実行中のプロセスを取得します。

### 構文

```powershell
Get-Process
    [[-Name] <string[]>]
    [-ComputerName <string[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```

```powershell
Get-Process
    -Id <int[]>
    [-ComputerName <string[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```

```powershell
Get-Process
    [-InputObject <Process[]>]
    [-ComputerName <string[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```

### 説明

`Get-Process` コマンドレットは、ローカルコンピューターまたはリモートコンピューター上のプロセスを取得します。

パラメーターを指定しない場合、このコマンドレットはローカルコンピューター上のすべてのプロセスを取得します。プロセス名、プロセスID（PID）、またはパイプラインを介してプロセスオブジェクトを指定することもできます。プロセスに関する詳細情報（モジュールやファイルバージョン情報など）を取得するには、`-Module` パラメーターまたは `-FileVersionInfo` パラメーターを使用します。

このコマンドレットは、System.Diagnostics.Process クラスのメソッドとプロパティをサポートしています。詳細については、「System.Diagnostics.Process」を参照してください。

### 例

#### 例1: ローカルコンピューター上のすべてのプロセスを取得する

```powershell
Get-Process
```

このコマンドは、ローカルコンピューター上で実行中のすべてのプロセスを取得します。

#### 例2: プロセス名でプロセスを取得する

```powershell
Get-Process -Name "notepad"
```

このコマンドは、名前が「notepad」のプロセスを取得します。ワイルドカードを使用することもできます。

#### 例3: プロセスIDでプロセスを取得する

```powershell
Get-Process -Id 1234
```

このコマンドは、プロセスIDが1234のプロセスを取得します。

#### 例4: リモートコンピューター上のプロセスを取得する

```powershell
Get-Process -ComputerName "Server01"
```

このコマンドは、リモートコンピューター「Server01」上のすべてのプロセスを取得します。

### パラメーター

#### -ComputerName

プロセスを取得するコンピューターを指定します。デフォルトはローカルコンピューターです。

コンピューター名はNetBIOS名、IPアドレス、または完全修飾ドメイン名（FQDN）で指定します。ローカルコンピューターを指定するには、コンピューター名、ドット「.」、または「localhost」を使用します。

このパラメーターは、Windows PowerShellのリモート処理に依存していません。コンピューターがリモート処理用に構成されていない場合でも、このパラメーターを使用できます。

#### -FileVersionInfo

プロセスのメインモジュールのファイルバージョン情報を取得します。

このパラメーターを指定すると、`Get-Process` は各プロセスオブジェクトに `FileVersionInfo` プロパティを追加します。この情報を表示するには、`Format-List` コマンドレットを使用します。

#### -Id

プロセスID（PID）でプロセスを指定します。複数のIDをカンマで区切って指定できます。プロセスIDを見つけるには、`Get-Process` を実行します。

#### -InputObject

プロセスオブジェクトをパイプラインを介して渡します。このパラメーターにプロセスオブジェクトを指定することもできます。

#### -Module

プロセスによってロードされたモジュールを取得します。

このパラメーターを指定すると、`Get-Process` は各プロセスオブジェクトに `Modules` プロパティを追加します。この情報を表示するには、`Format-List` コマンドレットを使用します。

#### -Name

プロセス名でプロセスを指定します。ワイルドカード文字を使用できます。複数の名前をカンマで区切って指定できます。

### 共通パラメーター

このコマンドレットは、共通パラメーターをサポートしています：-Debug、-ErrorAction、-ErrorVariable、-InformationAction、-InformationVariable、-OutVariable、-OutBuffer、-PipelineVariable、-Verbose、-WarningAction、および-WarningVariable。詳細については、about_CommonParameters を参照してください。

### 入力

System.Diagnostics.Process

パイプラインを介してプロセスオブジェクトを `Get-Process` に渡すことができます。

### 出力

System.Diagnostics.Process

`Get-Process` は、取得したプロセスごとに System.Diagnostics.Process オブジェクトを返します。

### 注記

- このコマンドレットは、Windowsプラットフォームでのみ使用できます。
- リモートコンピューター上のプロセスを取得するには、リモートコンピューターに対する適切なアクセス許可が必要です。
- 64ビットオペレーティングシステムでは、32ビットプロセスに関する情報を取得するには、32ビットバージョンのWindows PowerShellを使用する必要がある場合があります。

### 関連リンク

- [about_Processes]()
- [Stop-Process]()
- [Start-Process]()
- [Wait-Process]()

---

上記が翻訳テキストです。コードブロックや構造は元の形式を維持しています。 |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | すべての列挙型を文字列表現に変換する代替のシリアル化オプションを提供します。 |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

ハッシュテーブルをインデントされたJSONとしてconfig.jsonにアトミックに書き込みます。

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

プロセスオブジェクトをアトミックにCompress JSONとして書き込みます。

## Parameter Details

### `-FilePath <String>`

> 書き込むファイルへのパス。

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <Object>`

> JSON にシリアル化してファイルに書き込むオブジェクト。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> アトミック書き込み操作の最大再試行回数。デフォルトは4です。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryDelayMs <Int32>`

> 再試行間の遅延時間（ミリ秒）。デフォルトは200です。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> 0より大きい場合、デバウンスはこのファイルに書き込みます。デフォルトは0（無効）です。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> JSON シリアル化の最大深度。デフォルトは 30 です。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Compress`

> 以下は、指定されたPowerShellコマンドレットのヘルプテキストを日本語に翻訳したものです。

---

## Get-Process

### 概要

ローカルコンピューターまたはリモートコンピューター上で実行中のプロセスを取得します。

### 構文

```powershell
Get-Process
    [[-Name] <string[]>]
    [-ComputerName <string[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```

```powershell
Get-Process
    -Id <int[]>
    [-ComputerName <string[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```

```powershell
Get-Process
    [-InputObject <Process[]>]
    [-ComputerName <string[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```

### 説明

`Get-Process` コマンドレットは、ローカルコンピューターまたはリモートコンピューター上のプロセスを取得します。

パラメーターを指定しない場合、このコマンドレットはローカルコンピューター上のすべてのプロセスを取得します。プロセス名、プロセスID（PID）、またはパイプラインを介してプロセスオブジェクトを指定することもできます。プロセスに関する詳細情報（モジュールやファイルバージョン情報など）を取得するには、`-Module` パラメーターまたは `-FileVersionInfo` パラメーターを使用します。

このコマンドレットは、System.Diagnostics.Process クラスのメソッドとプロパティをサポートしています。詳細については、「System.Diagnostics.Process」を参照してください。

### 例

#### 例1: ローカルコンピューター上のすべてのプロセスを取得する

```powershell
Get-Process
```

このコマンドは、ローカルコンピューター上で実行中のすべてのプロセスを取得します。

#### 例2: プロセス名でプロセスを取得する

```powershell
Get-Process -Name "notepad"
```

このコマンドは、名前が「notepad」のプロセスを取得します。ワイルドカードを使用することもできます。

#### 例3: プロセスIDでプロセスを取得する

```powershell
Get-Process -Id 1234
```

このコマンドは、プロセスIDが1234のプロセスを取得します。

#### 例4: リモートコンピューター上のプロセスを取得する

```powershell
Get-Process -ComputerName "Server01"
```

このコマンドは、リモートコンピューター「Server01」上のすべてのプロセスを取得します。

### パラメーター

#### -ComputerName

プロセスを取得するコンピューターを指定します。デフォルトはローカルコンピューターです。

コンピューター名はNetBIOS名、IPアドレス、または完全修飾ドメイン名（FQDN）で指定します。ローカルコンピューターを指定するには、コンピューター名、ドット「.」、または「localhost」を使用します。

このパラメーターは、Windows PowerShellのリモート処理に依存していません。コンピューターがリモート処理用に構成されていない場合でも、このパラメーターを使用できます。

#### -FileVersionInfo

プロセスのメインモジュールのファイルバージョン情報を取得します。

このパラメーターを指定すると、`Get-Process` は各プロセスオブジェクトに `FileVersionInfo` プロパティを追加します。この情報を表示するには、`Format-List` コマンドレットを使用します。

#### -Id

プロセスID（PID）でプロセスを指定します。複数のIDをカンマで区切って指定できます。プロセスIDを見つけるには、`Get-Process` を実行します。

#### -InputObject

プロセスオブジェクトをパイプラインを介して渡します。このパラメーターにプロセスオブジェクトを指定することもできます。

#### -Module

プロセスによってロードされたモジュールを取得します。

このパラメーターを指定すると、`Get-Process` は各プロセスオブジェクトに `Modules` プロパティを追加します。この情報を表示するには、`Format-List` コマンドレットを使用します。

#### -Name

プロセス名でプロセスを指定します。ワイルドカード文字を使用できます。複数の名前をカンマで区切って指定できます。

### 共通パラメーター

このコマンドレットは、共通パラメーターをサポートしています：-Debug、-ErrorAction、-ErrorVariable、-InformationAction、-InformationVariable、-OutVariable、-OutBuffer、-PipelineVariable、-Verbose、-WarningAction、および-WarningVariable。詳細については、about_CommonParameters を参照してください。

### 入力

System.Diagnostics.Process

パイプラインを介してプロセスオブジェクトを `Get-Process` に渡すことができます。

### 出力

System.Diagnostics.Process

`Get-Process` は、取得したプロセスごとに System.Diagnostics.Process オブジェクトを返します。

### 注記

- このコマンドレットは、Windowsプラットフォームでのみ使用できます。
- リモートコンピューター上のプロセスを取得するには、リモートコンピューターに対する適切なアクセス許可が必要です。
- 64ビットオペレーティングシステムでは、32ビットプロセスに関する情報を取得するには、32ビットバージョンのWindows PowerShellを使用する必要がある場合があります。

### 関連リンク

- [about_Processes]()
- [Stop-Process]()
- [Start-Process]()
- [Wait-Process]()

---

上記が翻訳テキストです。コードブロックや構造は元の形式を維持しています。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsArray`

> 以下は、指定されたPowerShellコマンドレットのヘルプテキストを日本語に翻訳したものです。

---

## Get-Process

### 概要

ローカルコンピューターまたはリモートコンピューター上で実行中のプロセスを取得します。

### 構文

```powershell
Get-Process
    [[-Name] <string[]>]
    [-ComputerName <string[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```

```powershell
Get-Process
    -Id <int[]>
    [-ComputerName <string[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```

```powershell
Get-Process
    [-InputObject <Process[]>]
    [-ComputerName <string[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```

### 説明

`Get-Process` コマンドレットは、ローカルコンピューターまたはリモートコンピューター上のプロセスを取得します。

パラメーターを指定しない場合、このコマンドレットはローカルコンピューター上のすべてのプロセスを取得します。プロセス名、プロセスID（PID）、またはパイプラインを介してプロセスオブジェクトを指定することもできます。プロセスに関する詳細情報（モジュールやファイルバージョン情報など）を取得するには、`-Module` パラメーターまたは `-FileVersionInfo` パラメーターを使用します。

このコマンドレットは、System.Diagnostics.Process クラスのメソッドとプロパティをサポートしています。詳細については、「System.Diagnostics.Process」を参照してください。

### 例

#### 例1: ローカルコンピューター上のすべてのプロセスを取得する

```powershell
Get-Process
```

このコマンドは、ローカルコンピューター上で実行中のすべてのプロセスを取得します。

#### 例2: プロセス名でプロセスを取得する

```powershell
Get-Process -Name "notepad"
```

このコマンドは、名前が「notepad」のプロセスを取得します。ワイルドカードを使用することもできます。

#### 例3: プロセスIDでプロセスを取得する

```powershell
Get-Process -Id 1234
```

このコマンドは、プロセスIDが1234のプロセスを取得します。

#### 例4: リモートコンピューター上のプロセスを取得する

```powershell
Get-Process -ComputerName "Server01"
```

このコマンドは、リモートコンピューター「Server01」上のすべてのプロセスを取得します。

### パラメーター

#### -ComputerName

プロセスを取得するコンピューターを指定します。デフォルトはローカルコンピューターです。

コンピューター名はNetBIOS名、IPアドレス、または完全修飾ドメイン名（FQDN）で指定します。ローカルコンピューターを指定するには、コンピューター名、ドット「.」、または「localhost」を使用します。

このパラメーターは、Windows PowerShellのリモート処理に依存していません。コンピューターがリモート処理用に構成されていない場合でも、このパラメーターを使用できます。

#### -FileVersionInfo

プロセスのメインモジュールのファイルバージョン情報を取得します。

このパラメーターを指定すると、`Get-Process` は各プロセスオブジェクトに `FileVersionInfo` プロパティを追加します。この情報を表示するには、`Format-List` コマンドレットを使用します。

#### -Id

プロセスID（PID）でプロセスを指定します。複数のIDをカンマで区切って指定できます。プロセスIDを見つけるには、`Get-Process` を実行します。

#### -InputObject

プロセスオブジェクトをパイプラインを介して渡します。このパラメーターにプロセスオブジェクトを指定することもできます。

#### -Module

プロセスによってロードされたモジュールを取得します。

このパラメーターを指定すると、`Get-Process` は各プロセスオブジェクトに `Modules` プロパティを追加します。この情報を表示するには、`Format-List` コマンドレットを使用します。

#### -Name

プロセス名でプロセスを指定します。ワイルドカード文字を使用できます。複数の名前をカンマで区切って指定できます。

### 共通パラメーター

このコマンドレットは、共通パラメーターをサポートしています：-Debug、-ErrorAction、-ErrorVariable、-InformationAction、-InformationVariable、-OutVariable、-OutBuffer、-PipelineVariable、-Verbose、-WarningAction、および-WarningVariable。詳細については、about_CommonParameters を参照してください。

### 入力

System.Diagnostics.Process

パイプラインを介してプロセスオブジェクトを `Get-Process` に渡すことができます。

### 出力

System.Diagnostics.Process

`Get-Process` は、取得したプロセスごとに System.Diagnostics.Process オブジェクトを返します。

### 注記

- このコマンドレットは、Windowsプラットフォームでのみ使用できます。
- リモートコンピューター上のプロセスを取得するには、リモートコンピューターに対する適切なアクセス許可が必要です。
- 64ビットオペレーティングシステムでは、32ビットプロセスに関する情報を取得するには、32ビットバージョンのWindows PowerShellを使用する必要がある場合があります。

### 関連リンク

- [about_Processes]()
- [Stop-Process]()
- [Start-Process]()
- [Wait-Process]()

---

上記が翻訳テキストです。コードブロックや構造は元の形式を維持しています。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnumsAsStrings`

> すべての列挙型を文字列表現に変換する代替のシリアル化オプションを提供します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-FileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-TextFileAtomic.md)
