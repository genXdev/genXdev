# Get-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI 操作で使用される顔画像ファイルの設定済みディレクトリを取得します。

## Description

この関数は、GenXdev.AIモジュールがさまざまな顔認識およびAI操作に使用するグローバル顔ディレクトリを取得します。まずグローバル変数をチェックし（SkipSessionが指定されている場合を除く）、次に永続的な設定にフォールバックし、最終的にシステムのデフォルトを使用します。

## Syntax

```powershell
Get-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | 顔画像ファイルのディレクトリパス |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AIの設定（言語、画像コレクションなど）にセッションに保存された代替設定を使用しない |

## Examples

### Get-AIKnownFacesRootpath

```powershell
Get-AIKnownFacesRootpath
```

グローバル変数または設定から、現在設定されている顔ディレクトリを取得します。

### Get-AIKnownFacesRootpath -SkipSession

```powershell
Get-AIKnownFacesRootpath -SkipSession
```

設定されたフェイスディレクトリを永続的な設定からのみ取得し、セッション設定は無視します。

### Get-AIKnownFacesRootpath -ClearSession

```powershell
Get-AIKnownFacesRootpath -ClearSession
```

セッションの顔ディレクトリ設定をクリアし、永続設定からディレクトリを取得します。

### Get-AIKnownFacesRootpath "C:\MyFaces"

```powershell
Get-AIKnownFacesRootpath "C:\MyFaces"
```

指定されたディレクトリをパスを展開した後に返します。

## Related Links

- [Get-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
