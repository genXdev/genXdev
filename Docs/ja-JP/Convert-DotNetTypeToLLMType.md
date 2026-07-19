# Convert-DotNetTypeToLLMType

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> .NET型名をLLM（言語モデル）型名に変換します。

## Description

.NET型名を入力として受け取り、言語モデルで使用される対応する簡略化された型名を返します。一般的な.NET型を処理し、適切な型マッピングを提供します。

## Syntax

```powershell
Convert-DotNetTypeToLLMType [-DotNetType] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DotNetType` | String | ✅ | — | 0 | — | 変換対象の.NET型名からLLM型名へ |

## Examples

### Example 1

```powershell
Convert-DotNetTypeToLLMType -DotNetType "System.String"
```

System.String 型をそれに対応する LLM の型に変換します。

## Related Links

- [Convert-DotNetTypeToLLMType on GitHub](https://github.com/genXdev/genXdev)
