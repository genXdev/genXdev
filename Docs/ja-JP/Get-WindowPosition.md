# Get-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `gwp

## Synopsis

> ウィンドウの位置と状態情報を取得します。

## Description

指定されたプロセスまたはウィンドウハンドルの、ウィンドウの位置、サイズ、モニター配置、ドッキング状態、フォーカス状態に関する詳細情報を取得します。

## Syntax

```powershell
Get-WindowPosition [[-ProcessName] <String>] [<CommonParameters>]

Get-WindowPosition [-Process <Diagnostics.Process>] [<CommonParameters>]

Get-WindowPosition [-WindowHelper <GenXdev.Helpers.WindowObj[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | 位置を取得するウィンドウのプロセス名 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | ウィンドウが位置を取得するプロセス *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Get-Window ヘルパーオブジェクト（ウィンドウを直接操作するため） *(Parameter set: )* |

## Examples

### Get-WindowPosition -ProcessName notepad Gets position information for all notepad windows

```powershell
Get-WindowPosition -ProcessName notepad
Gets position information for all notepad windows
```

### Get-Process notepad | Get-WindowPosition Gets position information for notepad processes via pipeline

```powershell
Get-Process notepad | Get-WindowPosition
Gets position information for notepad processes via pipeline
```

### Get-Window -ProcessName notepad | Get-WindowPosition Gets position information using window helper objects

```powershell
Get-Window -ProcessName notepad | Get-WindowPosition
Gets position information using window helper objects
```

## Related Links

- [Get-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
