# Import-GenXdevModules

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `reloadgenxdev

## Synopsis

> すべての GenXdev PowerShell モジュールをグローバルスコープにインポートします。

## Description

親ディレクトリをスキャンしてGenXdevモジュールを探し、それぞれをグローバルスコープにインポートします。ロケーションスタック管理を使用してワーキングディレクトリを保持し、成功および失敗したインポートに対して視覚的フィードバックを提供します。インポート処理中に関数カウントの変化を追跡します。

## Syntax

```powershell
Import-GenXdevModules [-DebugFailedModuleDefinitions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DebugFailedModuleDefinitions` | SwitchParameter | — | — | Named | — | 失敗したモジュール定義のデバッグ出力を有効にする |

## Examples

### Import-GenXdevModules -DebugFailedModuleDefinitions Imports modules with debug output for failures

```powershell
Import-GenXdevModules -DebugFailedModuleDefinitions
Imports modules with debug output for failures
```

### reloadgenxdev Imports all modules using the alias

```powershell
reloadgenxdev
Imports all modules using the alias
```

## Related Links

- [Import-GenXdevModules on GitHub](https://github.com/genXdev/genXdev)
