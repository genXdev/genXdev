# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> ユーザーエクスペリエンスを向上させるため、表示名をハイパーリンク化してファイル情報を出力します。

## Description

この関数は、ファイル入力オブジェクトを処理し、コンソールに表示する際にファイル名をハイパーリンク付きでユーザーフレンドリーな形式で出力します。文字列、FileInfoオブジェクト、その他のオブジェクト型など、さまざまな入力タイプを処理します。この関数は、出力がリダイレクトまたはパイプラインでキャプチャされているかどうかを自動的に検出し、それに応じて動作を調整します。

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | 呼び出し元関数からの呼び出し情報 |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | 処理対象の入力オブジェクト（ファイルパスまたはオブジェクト） |
| `-Prefix` | String | — | — | Named | — | 出力表示に追加コンテキストを付与するためのオプションの文字列プレフィックス |
| `-RelativeBasePath` | String | — | — | Named | — | 出力で相対ファイルパスを生成するためのベースパス |
| `-FullPaths` | SwitchParameter | — | — | Named | — | 出力に相対パスの代わりに絶対パスを使用するように強制します |

## Examples

### WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"

```powershell
WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"
```

### Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_

```powershell
Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_
```

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
