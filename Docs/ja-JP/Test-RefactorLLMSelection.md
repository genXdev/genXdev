# Test-RefactorLLMSelection

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> LLM分析を使用してリファクタリングの適格性を評価するソースファイルを評価します。

## Description

言語学習モデル（LLM）分析を使用して、指定された基準に基づいてリファクタリングのためにソースコードファイルを選択する必要があるかどうかを判断します。この関数は、LLMクエリを通じてファイルの内容を処理し、ブール値の応答を返します。

## Syntax

```powershell
Test-RefactorLLMSelection -RefactorDefinition <GenXdev.Helpers.RefactorDefinition> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RefactorDefinition` | GenXdev.Helpers.RefactorDefinition | ✅ | — | 0 | — | LLM設定を含むリファクタリング定義 |
| `-Path` | String | ✅ | — | 1 | — | 評価するソースファイルへのパス |

## Examples

### Test-RefactorLLMSelection -RefactorDefinition $refDef -Path "C:\source.ps1"

```powershell
Test-RefactorLLMSelection -RefactorDefinition $refDef -Path "C:\source.ps1"
```

### $def | Test-RefactorLLMSelection -Path source.ps1

```powershell
$def | Test-RefactorLLMSelection -Path source.ps1
```

## Related Links

- [Test-RefactorLLMSelection on GitHub](https://github.com/genXdev/genXdev)
