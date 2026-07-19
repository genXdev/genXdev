# Set-WindowsWallpaper

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 指定されたディレクトリからランダムな壁紙を設定します。

## Description

* 指定されたディレクトリからランダムな画像ファイルを選択し、それをWindowsのデスクトップの壁紙として設定します。
* JPG/JPEG画像フォーマットをサポートし、デフォルトで壁紙を「画面に合わせる」ように設定します。

## Syntax

```powershell
Set-WindowsWallpaper [[-InputObject] <Object>] [-AllDrives] [-NoRecurse] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | 壁紙画像が含まれているディレクトリへのパス |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | 利用可能なすべてのドライブを検索 |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | サブディレクトリに再帰しない |

## Examples

### Example 1

```powershell
Set-WindowsWallpaper -InputObject "C:\Wallpapers\*.jpg"
```

C:\Wallpapers ディレクトリからランダムな壁紙を設定します。

### Example 2

```powershell
nextbg
```

エイリアスを使用して、既定のディレクトリからランダムな壁紙を設定します。

## Related Links

- [Set-WindowsWallpaper on GitHub](https://github.com/genXdev/genXdev)
