# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
