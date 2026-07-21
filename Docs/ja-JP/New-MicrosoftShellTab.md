# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x`

## Synopsis

> PowerShellを実行する新しいWindows Terminalタブを作成します。

## Description

キーボードショートカットCtrl+Shift+Tをシミュレートして、新しいWindows Terminalタブを開きます。
この関数はPowerShellウィンドウを前面に表示し、キーストロークの組み合わせを送信し、オプションで遅延後に現在のタブを閉じます。

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | 新しいタブを作成した後、現在のタブを開いたままにする |

## Examples

### New-MicrosoftShellTab -DontCloseThisTab Creates a new terminal tab while keeping the current tab open.

```powershell
New-MicrosoftShellTab -DontCloseThisTab
Creates a new terminal tab while keeping the current tab open.
```

### x Creates a new terminal tab and closes the current one after 3 seconds.

```powershell
x
Creates a new terminal tab and closes the current one after 3 seconds.
```

## Parameter Details

### `-DontCloseThisTab`

> 新しいタブを作成した後、現在のタブを開いたままにする

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-IsSpeaking.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/UtcNow.md)
