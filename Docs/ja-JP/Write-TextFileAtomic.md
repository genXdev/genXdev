# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 破損を防ぐためにテキストをアトミックにファイルに書き込みます。

## Description

* アトミック書き込み：一時ファイルを使用し、リネーム戦略により、プロセスが中断された場合でも対象ファイルが破損状態にならないようにします。
* リトライロジック：最大MaxRetries回まで書き込みを再試行し、試行間の遅延はRetryDelayMsミリ秒です。
* エンコーディングサポート：System.Text.Encodingパラメータを受け入れ、出力エンコーディングを制御します。デフォルトはUTF-8です。
* デバウンスサポート：DebounceMs > 0の場合、同じファイルへの連続した高速書き込みが統合され、ファイルがDebounceMsミリ秒間変更されていないときに最後のペイロードのみが書き込まれます。
* ディレクトリ作成：親ディレクトリが存在しない場合、自動的に作成します。

## Syntax

```powershell
Write-TextFileAtomic -FilePath <String> [[-Data] <String>] [-DebounceMs <Int32>] [-Encoding <Text.Encoding>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 書き込むファイルへのパス。 |
| `-Data` | String | — | — | 1 | — | ファイルに書き込むテキストの内容。 |
| `-MaxRetries` | Int32 | — | — | Named | `0` | アトミック書き込み操作の最大再試行回数。デフォルトは4です。 |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 再試行間の遅延時間（ミリ秒）。デフォルトは200です。 |
| `-Encoding` | Text.Encoding | — | — | Named | — | ファイルの書き込み時に使用するテキストエンコーディング。デフォルトはUTF-8です。 |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 0より大きい場合、デバウンスはこのファイルに書き込みます。デフォルトは0（無効）です。 |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

UTF-8エンコーディングを使用して、文字列をconfig.txtに原子的に書き込みます。

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

50行を高速でパイプ処理し、2秒間の無音期間の後に最終行のみが保持されます。

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

ASCII エンコーディングを使用して文字列を data.csv にアトミックに書き込みます。

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

バックグラウンドジョブは100ミリ秒ごとにタイムスタンプを書き込みますが、デバウンスによって束ねられるため、実際にディスクに書き込まれるのは1秒に1回だけです。

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
### `-Data <String>`

> ファイルに書き込むテキストの内容。

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
### `-Encoding <Text.Encoding>`

> ファイルの書き込み時に使用するテキストエンコーディング。デフォルトはUTF-8です。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-JsonFileAtomic.md)
