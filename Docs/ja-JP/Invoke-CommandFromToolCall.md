# Invoke-CommandFromToolCall

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> バリデーションとパラメータフィルタリングを備えたツール呼び出し関数を実行します。

## Description

この関数は、ツールコールを処理し、引数の検証、パラメータのフィルタリング、および適切な確認処理を伴うコールバックの実行を行います。スクリプトブロックとコマンド情報の両方のコールバックをサポートしています。

## Syntax

```powershell
Invoke-CommandFromToolCall -ToolCall <Collections.Hashtable> [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ForceAsText] [-Functions <Collections.Hashtable[]>] [-NoConfirmationToolFunctionNames <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ToolCall` | Collections.Hashtable | ✅ | — | 0 | — | 関数の詳細と引数を含むツール呼び出しオブジェクト |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 関数定義の配列 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | ツールとして使用する PowerShell コマンド定義の配列 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 確認を必要としないコマンド名の配列 |
| `-ForceAsText` | SwitchParameter | — | — | Named | — | 強制出力をテキストとして |

## Examples

### Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `     -ExposedCmdLets $exposedCmdlets

```powershell
Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `
    -ExposedCmdLets $exposedCmdlets
```

### $result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText

```powershell
$result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText
```

## Related Links

- [Invoke-CommandFromToolCall on GitHub](https://github.com/genXdev/genXdev)
