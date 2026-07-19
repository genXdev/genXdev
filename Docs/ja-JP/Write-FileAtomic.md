# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ファイルへのバイト書き込みをアトミックに行い、破損を防止します。

## Description

* アトミック書き込み: 一時ファイルとリネーム戦略を使用して、プロセスが中断されても対象ファイルが破損状態になることを防ぎます。
* リトライロジック: 最大MaxRetries回まで書き込みをリトライし、リトライ間隔はRetryDelayMsミリ秒です。
* デバウンスサポート: DebounceMs > 0の場合、同じファイルへの連続した書き込みを統合し、ファイルがDebounceMsミリ秒間変更されなかった場合にのみ最後のペイロードを書き込みます。
* ディレクトリ作成: 親ディレクトリが存在しない場合、自動的に作成します。

## Syntax

```powershell
Write-FileAtomic [-FilePath] <string> [[-Data] <byte[]>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 書き込むファイルへのパス。 |
| `-Data` | Byte[] | — | — | 1 | — | ファイルに書き込むバイト配列。 |
| `-MaxRetries` | Int32 | — | — | Named | `0` | アトミック書き込み操作の最大再試行回数。デフォルトは4です。 |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 再試行間の遅延（ミリ秒）。デフォルトは200です。 |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 0より大きい場合、このファイルへの書き込みをデバウンスします。デフォルトは0（無効）です。 |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

デフォルトのリトライ設定でバイト配列をdata.binにアトミックに書き込みます。

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

急速に100回書き込むが、5秒間の沈静期間後に最終ペイロード(100)のみがディスクに永続化される。

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

カスタムリトライで書き込み：最大10回試行、各試行間隔500ms。

## Related Links

- [Write-FileAtomic on GitHub](https://github.com/genXdev/genXdev)
