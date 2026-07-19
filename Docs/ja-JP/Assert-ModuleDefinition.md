# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> AIアシスタンスを使用してPowerShellソースコードファイルのリファクタリングを支援します。

## Description

この関数は、AIを使用してPowerShellコードのリファクタリングプロセスを自動化します。プロンプトテンプレートを管理し、アクティブなIDE（VS CodeまたはVisual Studio）を検出し、キーボード自動化を通じてリファクタリングワークフローを調整します。この関数は、モジュールマニフェスト（.psd1）ファイルとモジュールスクリプト（.psm1）ファイルの両方を処理できます。

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

## Examples

### Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt

```powershell
Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt
```

### "MyModule" | Assert-ModuleDefinition

```powershell
"MyModule" | Assert-ModuleDefinition
```

## Related Links

- [Assert-ModuleDefinition on GitHub](https://github.com/genXdev/genXdev)
