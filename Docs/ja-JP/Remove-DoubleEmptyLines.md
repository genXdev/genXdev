# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> コード文字列から二重（連続する）空行を削除し、必要に応じて出力を再フォーマットします。

## Description

ソースコードまたはテキストをクリーンアップし、連続する空白行を1つの空行にまとめます。これにより読みやすさが向上し、一般的なコード書式規則に従います。-Reformat スイッチを指定すると、コード構造を正規化するために追加の書式設定ルールが適用されます。

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | プロセスされるソースコードまたはテキスト文字列（重複する空行を削除するため） |
| `-Reformat` | SwitchParameter | — | — | Named | — | 二重の空行削除以外の追加書式ルールを適用する。 |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

関数を使用してソースコードをパイプ処理し、連続する空白行を削除します。

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

空行が連続している箇所を削除し、追加の書式設定を適用します。

## Parameter Details

### `-code <String>`

> プロセスされるソースコードまたはテキスト文字列（重複する空行を削除するため）

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> 二重の空行削除以外の追加書式ルールを適用する。

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

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-ArrayTemplate.md)
