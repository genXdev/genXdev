# Get-DefaultWebbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 現在のユーザーに設定されているデフォルトのウェブブラウザを返します。

## Description

* Windows レジストリを照会することにより、システムの既定の Web ブラウザに関する情報を取得します。
* ブラウザの名前、説明、アイコンのパス、実行可能ファイルのパスを含むハッシュテーブルを返します。
* この関数は、既定のブラウザを決定するために、ユーザー設定とシステム全体のブラウザ登録の両方をチェックします。

## Syntax

```powershell
Get-DefaultWebbrowser [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-DefaultWebbrowser | Format-List
```

デフォルトブラウザに関する詳細情報を取得します。

### Example 2

```powershell
$browser = Get-DefaultWebbrowser
& $browser.Path https://www.github.com/
```

特定のURLでデフォルトブラウザを起動します。

## Related Links

- [Get-DefaultWebbrowser on GitHub](https://github.com/genXdev/genXdev)
