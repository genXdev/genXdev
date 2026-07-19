# Set-WindowsWallpaper

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Устанавливает случайные обои из указанной директории.

## Description

* Выбирает случайный файл изображения из указанной папки и устанавливает его в качестве обоев рабочего стола Windows.
* Поддерживает форматы изображений JPG/JPEG и по умолчанию настраивает обои на "заполнение" экрана.

## Syntax

```powershell
Set-WindowsWallpaper [[-InputObject] <Object>] [-AllDrives] [-NoRecurse] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Путь к каталогу, содержащему изображения обоев |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Выполнить поиск по всем доступным дискам |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Не рекурсировать в подкаталоги |

## Examples

### Example 1

```powershell
Set-WindowsWallpaper -InputObject "C:\Wallpapers\*.jpg"
```

Устанавливает случайные обои из каталога C:\Wallpapers.

### Example 2

```powershell
nextbg
```

Устанавливает случайные обои из стандартного каталога с использованием псевдонима.

## Related Links

- [Set-WindowsWallpaper on GitHub](https://github.com/genXdev/genXdev)
