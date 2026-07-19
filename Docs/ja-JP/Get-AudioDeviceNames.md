# Get-AudioDeviceNames

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> マイクまたはデスクトップ音声キャプチャ用の使用可能な音声デバイスの名前を取得します。

## Description

AudioDeviceパラメータを受け付ける他のコマンドレットと一緒に使用できるオーディオデバイスを列挙します。マイクデバイスとデスクトップオーディオキャプチャデバイスの両方をサポートします。

## Syntax

```powershell
Get-AudioDeviceNames [-UseDesktopAudioCapture] [-Passthru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | デスクトップのオーディオキャプチャデバイスをマイクデバイスの代わりにリストするかどうか |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | 名前の代わりに詳細なデバイスオブジェクトを返す |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

利用可能なマイクデバイス名のリストを取得します。

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

利用可能なデスクトップオーディオキャプチャデバイス名のリストを取得します。

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

マイクデバイスに関する詳細情報を取得します。

## Related Links

- [Get-AudioDeviceNames on GitHub](https://github.com/genXdev/genXdev)
