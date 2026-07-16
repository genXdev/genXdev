# Send-Key

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `sendkeys, `invokekeys

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Send-Key -KeysToSend <String[]> [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [<CommonParameters>]

Send-Key [-ProcessName <String>] [<CommonParameters>]

Send-Key [-ProcessId <Int32>] [<CommonParameters>]

Send-Key [-WindowHandle <Int64>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KeysToSend` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | キーボード入力を文字列の配列として送信します |
| `-ProcessName` | String | — | ✅ (ByPropertyName) | Named | — | キーを送信するプロセスの名前（ワイルドカード対応） *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | — | キーを送信するプロセスのID *(Parameter set: )* |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | — | キーを送信するウィンドウハンドル *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers in input text |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信後にターゲットウィンドウにキーボードフォーカスを保持する |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 改行にはEnterキーではなくShift+Enterを使用してください |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `10` | 異なる入力文字列間の遅延（ミリ秒単位） |

## Related Links

- [Send-Key on GitHub](https://github.com/genXdev/genXdev)
