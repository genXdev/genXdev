# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | モジュールの名前 |
| `-Prompt` | String | — | — | Named | — | AIプロンプト |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | アシスタントは便利なJSONを出力することを目的としています。
## 応答形式

JSONオブジェクトのみで応答してください。それ以外のテキストは許可されません。 |

## Related Links

- [Assert-ModuleDefinition on GitHub](https://github.com/genXdev/genXdev)
