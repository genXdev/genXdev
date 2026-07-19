# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode

## Synopsis

> 優先するIDE（Visual Studio CodeまたはVisual Studio）でソースファイルを開きます。

## Description

この関数は、指定されたソースファイルをVisual Studio CodeまたはVisual Studioで開きます。特定の行番号に直接移動し、オプションでファイルを開いた後にIDEにキーボード入力を送信することもできます。この関数は、現在のホストプロセス、実行中のアプリケーション、またはユーザーの選択に基づいて、使用するIDEを決定しようとします。

## Syntax

```powershell
Open-SourceFileInIde -Path <String> [[-LineNo] <Int32>] [[-KeysToSend] <String[]>] [-Code] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 開くソースファイルへのパス |
| `-LineNo` | Int32 | — | — | 1 | `0` | 移動先の行番号 |
| `-KeysToSend` | String[] | — | — | 2 | `@()` | アプリケーションに送信するキーボード入力の配列 |
| `-Code` | SwitchParameter | — | — | Named | — | ファイルを開くためのIDE |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Visual Studio で開く |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 制御文字と修飾子をエスケープ |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | ターゲットウィンドウにキーボードフォーカスを保持する |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Enterキーの代わりにShift+Enterを使用してください |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 異なる入力文字列間の遅延（ミリ秒単位） |

## Examples

### Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code

```powershell
Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code
```

### editcode "C:\Projects\MyScript.ps1" 25

```powershell
editcode "C:\Projects\MyScript.ps1" 25
```

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
