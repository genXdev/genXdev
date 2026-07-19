# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> コード文字列から連続する空行（2行以上）を削除し、オプションで出力を再フォーマットします。

## Description

ソースコードやテキストを整理し、連続する空白行を1つの空行にまとめます。これにより可読性が向上し、一般的なコード整形規則に従います。 -Reformat スイッチを指定すると、コード構造を標準化するために追加の整形ルールが適用されます。

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | 重複する空行を除去するためのソースコードまたはテキスト文字列 |
| `-Reformat` | SwitchParameter | — | — | Named | — | 追加の書式ルールを適用（二重空行削除以外） |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

パイプは関数を通じてソースコードを渡し、連続する空白行を削除します。

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

二重の空行を削除し、追加の書式を適用します。

## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines on GitHub](https://github.com/genXdev/genXdev)
