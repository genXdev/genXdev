# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
