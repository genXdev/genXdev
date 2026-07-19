# Set-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI イメージメタデータ操作のデフォルト言語と、オプションで画像ディレクトリを設定します。

## Description

この関数は、GenXdev.AIモジュール内の画像メタデータ操作のためのグローバルデフォルト言語を設定します。オプションで、グローバル画像ディレクトリも設定できます。両方の設定は、セッションをまたいで使用するためにモジュールのプリファレンスストレージに保持されます。

## Syntax

```powershell
Set-AIMetaLanguage [[-Language] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | イメージメタデータ操作のデフォルト言語 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 言語、画像コレクションなどのAI設定用にセッションに保存されている代替設定をクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AIの設定（言語、画像コレクションなど）にセッションに保存された代替設定を使用しない |

## Examples

### Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")

```powershell
Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")
```

言語と画像ディレクトリを設定し、環境設定に永続的に保存します。

### Set-AIMetaLanguage "French"

```powershell
Set-AIMetaLanguage "French"
```

設定に言語を永続的に保存します。

### Set-AIMetaLanguage -Language "German" -SessionOnly

```powershell
Set-AIMetaLanguage -Language "German" -SessionOnly
```

現在のセッションにのみ言語を設定します（グローバル変数）。

### Set-AIMetaLanguage -ClearSession

```powershell
Set-AIMetaLanguage -ClearSession
```

セッション言語設定（グローバル変数）をクリアしますが、永続的な設定には影響しません。

## Related Links

- [Set-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
