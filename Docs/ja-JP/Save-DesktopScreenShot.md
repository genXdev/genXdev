# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
