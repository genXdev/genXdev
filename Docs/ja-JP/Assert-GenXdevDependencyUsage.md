# Assert-GenXdevDependencyUsage

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `checkgenxdevdependencies

## Synopsis

> GenXdevモジュール間の依存関係を検証し、適切なモジュール階層が維持されていることを確認します。

## Description

この関数はGenXdevモジュールを分析し、正しい依存関係階層に従っていることを確認します。モジュールが参照する依存関係がRequiredModulesマニフェストにリストされているものだけであることをチェックし、依存関係チェーンの後方にあるモジュールを参照していないことを検証することで循環依存を防ぎます。

## Syntax

```powershell
Assert-GenXdevDependencyUsage [[-ModuleName] <String[]>] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | モジュール名に適用するフィルター 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | モジュールファイルではなくスクリプトファイルで検索 |

## Examples

### Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"

```powershell
Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"
```

### checkgenxdevdependencies "GenXdev*" -FromScripts

```powershell
checkgenxdevdependencies "GenXdev*" -FromScripts
```

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)
