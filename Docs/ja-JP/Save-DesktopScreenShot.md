# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 指定されたモニターのスクリーンショットをキャプチャし、指定されたパスに保存します。

## Description

* 指定されたモニターのデスクトップのスクリーンショットを撮り、画像ファイルとして保存します。
* 複数のモニターをサポートし、高DPIディスプレイの正しい画面範囲とスケーリング係数を自動的に検出します。

## Syntax

```powershell
Save-DesktopScreenShot [-Monitor] <int> [-OutputPath] <string> [-Quality <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | キャプチャするモニターインデックス（0=プライマリ、1以上=特定のモニター、-1=すべてのモニター） |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | スクリーンショットが保存されるフルパス |
| `-Quality` | Int32 | — | — | Named | `0` | JPEG品質レベル（1～100）、JPEG形式にのみ適用されます |

## Examples

### Example 1

```powershell
Save-DesktopScreenShot -Monitor 0 -OutputPath "C:\Screenshots\primary.png"
```

プライマリモニターのスクリーンショットをキャプチャし、PNGとして保存します。

### Example 2

```powershell
Save-DesktopScreenShot -Monitor 1 -OutputPath "C:\Screenshots\monitor2.jpg" -Quality 95
```

2台目のモニターのスクリーンショットを高品質JPEGでキャプチャします。

### Example 3

```powershell
Save-DesktopScreenShot -Monitor -1 -OutputPath "C:\Screenshots\all_monitors.png"
```

すべてのモニターを1つのスクリーンショット画像にまとめてキャプチャします。

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
