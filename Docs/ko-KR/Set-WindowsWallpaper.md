# Set-WindowsWallpaper

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 지정된 디렉터리에서 무작위 배경화면을 설정합니다.

## Description

* 지정된 디렉터리에서 무작위 이미지 파일을 선택하여 Windows 바탕 화면 배경화면으로 설정합니다.
* JPG/JPEG 이미지 형식을 지원하며 기본적으로 배경화면을 "맞춤"으로 설정합니다.

## Syntax

```powershell
Set-WindowsWallpaper [[-InputObject] <Object>] [-AllDrives] [-NoRecurse] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | 배경 화면 이미지가 포함된 디렉토리 경로 |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Search across all available drives |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | 하위 디렉터리로 재귀하지 않음 |

## Examples

### Example 1

```powershell
Set-WindowsWallpaper -InputObject "C:\Wallpapers\*.jpg"
```

C:\Wallpapers 디렉토리에서 무작위 배경화면을 설정합니다.

### Example 2

```powershell
nextbg
```

별칭을 사용하여 기본 디렉토리에서 무작위 배경화면을 설정합니다.

## Related Links

- [Set-WindowsWallpaper on GitHub](https://github.com/genXdev/genXdev)
