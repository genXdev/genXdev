# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> ワークスペース内の各GenXdevモジュールでスクリプトブロックを実行します。

## Description

この関数は、ワークスペース内のGenXdevモジュールを反復処理し、各モジュールに対して指定されたスクリプトブロックを実行します。名前パターンでモジュールをフィルタリングしたり、ローカルモジュールを除外したり、公開済みモジュールのみを含めたり、モジュールの代わりにスクリプトを処理したりできます。この関数は、スクリプトブロックを実行する前に、正しいモジュールディレクトリに自動的に移動します。

## Syntax

```powershell
Invoke-OnEachGenXdevModule -Script <ScriptBlock> [[-ModuleName] <String[]>] [-FromScripts] [-IncludeScripts] [-NoLocal] [-OnlyPublished] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | — | 0 | — | 各GenXdevモジュールで実行するスクリプトブロック |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | モジュール名に適用するフィルター 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | ローカル開発モジュールを処理から除外します |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 公開済みで、LICENSE ファイルと README.md ファイルの両方を含むモジュールのみを含む |
| `-FromScripts` | SwitchParameter | — | — | Named | — | モジュールディレクトリの代わりにスクリプトディレクトリを処理する |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | 通常のモジュールに加えて、scriptsディレクトリも含まれています。 |

## Examples

### Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

```powershell
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }
```

GenXdev modules include: GenXdev, GenXdev.UI, GenXdev.Console, GenXdev.WebAPI, GenXdev.Rendering, GenXdev.Input, GenXdev.Files, GenXdev.Helpers, GenXdev.Math, GenXdev.Networking, GenXdev.Security, GenXdev.Logging, GenXdev.Serialization, GenXdev.Data, GenXdev.AI, GenXdev.Testing.

### foreach-genxdev-module-do {     param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)     Get-ChildItem } -ModuleName "GenXdev.AI"

```powershell
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"
```

エイリアスを使用してGenXdev.AIモジュールディレクトリの内容を一覧表示します。

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
