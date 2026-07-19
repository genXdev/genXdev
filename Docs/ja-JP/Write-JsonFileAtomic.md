# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ファイルの破損を防ぐために、アトミックにオブジェクトをJSONとして書き込みます。

## Description

* アトミック書き込み: 一時ファイルとリネーム戦略を使用して、プロセスが中断された場合でもターゲットファイルが破損状態にならないようにします。
* リトライロジック: 最大MaxRetries回まで書き込みをリトライし、試行間の遅延はRetryDelayMsミリ秒です。
* オブジェクトサポート: Hashtableだけでなく、任意のオブジェクトを受け入れます。System.Text.Jsonでシリアル化し、ネイティブにシリアル化できない複雑な.NET型はConvertTo-Jsonにフォールバックします。
* デバウンスサポート: DebounceMs > 0の場合、同じファイルへの急速な連続書き込みが統合されます。ファイルがDebounceMsミリ秒間変更されていない場合にのみ、最後のペイロードが書き込まれます。
* ディレクトリ作成: 親ディレクトリが存在しない場合、自動的に作成します。

## Syntax

```powershell
Write-JsonFileAtomic [-FilePath] <string> [[-Data] <Object>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [-Depth <int>] [-Compress] [-AsArray] [-EnumsAsStrings] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 書き込むファイルへのパス。 |
| `-Data` | Object | — | — | 1 | — | JSON にシリアライズしてファイルに書き込むオブジェクト |
| `-MaxRetries` | Int32 | — | — | Named | `0` | アトミック書き込み操作の最大再試行回数。デフォルトは4です。 |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 再試行間の遅延（ミリ秒）。デフォルトは200です。 |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 0より大きい場合、このファイルへの書き込みをデバウンスします。デフォルトは0（無効）です。 |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | JSON シリアライゼーションの最大深さ。デフォルトは 30 です。 |
| `-Compress` | SwitchParameter | — | — | Named | `False` | JSONを圧縮（インデント／空白なし）で書いてください。 |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | JSONを圧縮（インデント／空白なし）で書いてください。 |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | すべての列挙型を文字列表現に変換する代替シリアル化オプションを提供します。 |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Writes a Hashtable as indented JSON to config.json atomically.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

プロセスオブジェクトをアトミックに圧縮JSONとして書き込みます。

## Related Links

- [Write-JsonFileAtomic on GitHub](https://github.com/genXdev/genXdev)
