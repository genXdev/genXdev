# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> 入力オブジェクトをファイル名やディレクトリ名に展開し、さまざまなフィルタや出力オプションをサポートします。

## Description

この関数は、入力オブジェクト（ファイル、ディレクトリ、またはコレクション）を処理し、ファイル名とディレクトリ名に展開します。フィルタリング、パターンマッチングをサポートし、結果をオブジェクトとして出力できます。この関数はパイプライン入力で動作するよう設計されており、再帰、代替データストリームなどのオプションを提供します。

## Syntax

```powershell
ResolveInputObjectFileNames [[-InputObject] <Object>] [[-RelativeBasePath] <String>] [-AllDrives] [-File] [-IncludeAlternateFileStreams] [-NoRecurse] [-PassThru] [<CommonParameters>]

ResolveInputObjectFileNames [[-Pattern] <String>] [<CommonParameters>]

ResolveInputObjectFileNames [-Directory] [-FilesAndDirectories] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Input object containing file names or directories |
| `-File` | SwitchParameter | — | — | Named | — | 返却ファイルのみ |
| `-Pattern` | String | — | — | 1 | — | コンテンツ内を検索するための正規表現パターン *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | 相対パスを解決するためのベースパス |
| `-AllDrives` | SwitchParameter | — | — | Named | — | 利用可能なすべてのドライブを検索 |
| `-Directory` | SwitchParameter | — | — | Named | — | ディレクトリのみを検索 *(Parameter set: )* |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | ファイルとディレクトリの両方を含む *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | 代替データストリームを検索結果に含める |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | サブディレクトリに再帰しない |

## Examples

### ResolveInputObjectFileNames -Input "C:\Temp" -File

```powershell
ResolveInputObjectFileNames -Input "C:\Temp" -File
```

## Related Links

- [ResolveInputObjectFileNames on GitHub](https://github.com/genXdev/genXdev)
