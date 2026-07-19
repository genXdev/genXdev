# Invoke-Fasti

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fasti

## Synopsis

> 現在のディレクトリ内のアーカイブファイルをそれぞれのフォルダに展開し、その後削除します。

## Description

現在のディレクトリにある一般的なアーカイブ形式（zip、7z、tarなど）を自動的に抽出し、各アーカイブの名前を付けた個別のフォルダに格納します。抽出に成功した後、元のアーカイブファイルは削除されます。システムに7-Zipがインストールされている必要があります。

## Syntax

```powershell
Invoke-Fasti [[-Password] <String>] [-ExtractOutputToo] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Password` | String | — | — | 0 | — | 暗号化アーカイブのパスワードを入力してください |
| `-ExtractOutputToo` | SwitchParameter | — | — | Named | — | 抽出されたフォルダ内にあるアーカイブを再帰的に抽出する |

## Examples

### PS C:\Downloads> Invoke-Fasti

```powershell
PS C:\Downloads> Invoke-Fasti
```

### PS C:\Downloads> fasti

```powershell
PS C:\Downloads> fasti
```

## Related Links

- [Invoke-Fasti on GitHub](https://github.com/genXdev/genXdev)
