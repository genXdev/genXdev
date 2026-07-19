# Assert-RefactorFile

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 指定されたIDEとAIプロンプトテンプレートを使用して、ソースファイルのリファクタリング操作を実行します。

## Description

この関数はリファクタリング定義に基づいてAIプロンプトを準備し、適切なIDE（VS CodeまたはVisual Studio）を検出または選択し、準備したプロンプトで対象ファイルを開くことで、リファクタリングプロセスを自動化します。この関数は、プロンプトテンプレート処理、IDE検出、およびリファクタリングワークフローの自動化を処理します。

## Syntax

```powershell
Assert-RefactorFile -Path <String> [[-RefactorSettings] <GenXdev.Helpers.RefactorSettings>] [-AllowLongRunningTests] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | 改善するソースファイルへのパス |
| `-RefactorSettings` | GenXdev.Helpers.RefactorSettings | — | — | 1 | `[GenXdev.Helpers.RefactorSettings]::new()` | リファクタリング定義（設定とプロンプトテンプレートを含む） |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | The `-AllowLongRunningTests` parameter. |

## Examples

### $refactorDef = Get-RefactorDefinition -Type "Documentation" Assert-RefactorFile -RefactorDefinition $refactorDef -Path "MyScript.ps1"

```powershell
$refactorDef = Get-RefactorDefinition -Type "Documentation"
Assert-RefactorFile -RefactorDefinition $refactorDef -Path "MyScript.ps1"
```

### Assert-RefactorFile -RefactorDefinition $refactorDef -Path ".\Functions\Test.ps1"

```powershell
Assert-RefactorFile -RefactorDefinition $refactorDef -Path ".\Functions\Test.ps1"
```

## Related Links

- [Assert-RefactorFile on GitHub](https://github.com/genXdev/genXdev)
