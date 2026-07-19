# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> アトミックにファイルにテキストを書き込み、破損を防ぎます。

## Description

* アトミック書き込み：一時ファイル＋リネーム戦略を使用し、プロセスが中断されても対象ファイルが破損状態にならないようにします。
* リトライロジック：最大MaxRetries回まで書き込みを再試行し、試行間の遅延はRetryDelayMsミリ秒です。
* エンコーディングサポート：System.Text.Encodingパラメータを受け付け、出力エンコーディングを制御します。デフォルトはUTF-8です。
* デバウンスサポート：DebounceMs > 0の場合、同じファイルへの連続した高速書き込みが統合され、最後のペイロードのみが、ファイルがDebounceMsミリ秒間変更されなかった後に書き込まれます。
* ディレクトリ作成：親ディレクトリが存在しない場合は自動的に作成します。

## Syntax

```powershell
Write-TextFileAtomic [-FilePath] <string> [[-Data] <string>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-Encoding <Encoding>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 書き込むファイルへのパス。 |
| `-Data` | String | — | — | 1 | — | ファイルに書き込むテキストコンテンツ。 |
| `-MaxRetries` | Int32 | — | — | Named | `0` | アトミック書き込み操作の最大再試行回数。デフォルトは4です。 |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 再試行間の遅延（ミリ秒）。デフォルトは200です。 |
| `-Encoding` | Text.Encoding | — | — | Named | — | ファイルを書き込む際に使用するテキストエンコーディング。デフォルトはUTF-8。 |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 0より大きい場合、このファイルへの書き込みをデバウンスします。デフォルトは0（無効）です。 |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

原子的にUTF-8エンコーディングを使用してconfig.txtに文字列を書き込みます。

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

パイプは50行を高速で出力し、2秒間の静寂期間後に最終行のみが保持されます。

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

ASCIIエンコーディングを使用してアトミックにdata.csvに文字列を書き込みます。

### Example 4

```powershell
# Debounce with custom retry: coalesce UI state saves
$watcher = Start-ThreadJob -ScriptBlock {
    param($path)
    while ($true) {
        Write-TextFileAtomic -FilePath $path `
            -Data (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') `
            -DebounceMs 1000 -MaxRetries 3
        Start-Sleep -Milliseconds 100
    }
} -ArgumentList "timestamp.txt"
```

バックグラウンドジョブが100msごとにタイムスタンプを書き込むが、デバウンスにより統合され、実際にディスクに書き込まれるのは毎秒1回のみになる。

## Related Links

- [Write-TextFileAtomic on GitHub](https://github.com/genXdev/genXdev)
