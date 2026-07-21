# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> マイクまたはデスクトップ音声キャプチャに使用可能なオーディオデバイスの名前を取得します。

## Description

AudioDevice パラメーターを受け入れる他のコマンドレットで使用できるオーディオデバイスを列挙します。マイクデバイスとデスクトップオーディオキャプチャデバイスの両方をサポートします。

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | デスクトップのオーディオキャプチャデバイスをマイクデバイスの代わりにリストするかどうか |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | 名前だけではなく、詳細なデバイスオブジェクトを返します。 |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

利用可能なマイクデバイス名の一覧を取得します。

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

利用可能なデスクトップオーディオキャプチャデバイス名のリストを取得します。

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

マイクデバイスに関する詳細情報を含むオブジェクトを取得します。

## Parameter Details

### `-UseDesktopAudioCapture`

> デスクトップのオーディオキャプチャデバイスをマイクデバイスの代わりにリストするかどうか

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Passthru`

> 名前だけではなく、詳細なデバイスオブジェクトを返します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Test-CpuAvx.md)
