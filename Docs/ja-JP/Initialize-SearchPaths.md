# Initialize-SearchPaths

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> システム検索パスを初期化および構成して、パッケージ管理を行います。

## Description

* デフォルトのシステムロケーション、Chocolateyパス、開発ツールパス、カスタムパッケージパスを組み合わせて、検索パスの包括的なリストを構築します。
* これらの統合されたパスでシステムのPATH環境変数を更新します。

## Syntax

```powershell
Initialize-SearchPaths [[-WorkspaceFolder] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WorkspaceFolder` | String | — | — | 0 | — | ノードモジュールとPowerShellパスに使用するワークスペースフォルダのパス。 |

## Examples

### Example 1

```powershell
Initialize-SearchPaths
```

デフォルトのワークスペースフォルダを使用して検索パスを初期化します。

### Example 2

```powershell
Initialize-SearchPaths -WorkspaceFolder "C:\workspace"
```

特定のワークスペースフォルダを使用して検索パスを初期化します。

## Related Links

- [Initialize-SearchPaths on GitHub](https://github.com/genXdev/genXdev)
