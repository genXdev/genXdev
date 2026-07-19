# Get-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `gbm

## Synopsis

> 从已安装的网页浏览器中返回所有书签。

## Description

从系统上安装的Microsoft Edge、Google Chrome或Mozilla Firefox浏览器中检索书签。该函数可以按浏览器类型进行过滤，并返回详细的书签信息，包括名称、URL、文件夹位置和时间戳。在读取Firefox书签时，会自动处理System.Data.SQLite NuGet包安装的同意请求。

## Syntax

```powershell
Get-BrowserBookmark [-Chrome] [-ConsentToThirdPartySoftwareInstallation] [-Edge] [-ForceConsent] [<CommonParameters>]

Get-BrowserBookmark [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Chrome` | SwitchParameter | — | — | Named | — | 从谷歌浏览器返回书签 |
| `-Edge` | SwitchParameter | — | — | Named | — | 从 Microsoft Edge 返回书签 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 从Mozilla Firefox中返回书签 *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 强制同意第三方软件安装 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 同意安装第三方软件 |

## Examples

### Get-BrowserBookmark -Edge | Format-Table Name, URL, Folder Returns Edge bookmarks formatted as a table showing name, URL and folder.

```powershell
Get-BrowserBookmark -Edge | Format-Table Name, URL, Folder
Returns Edge bookmarks formatted as a table showing name, URL and folder.
```

### gbm -Chrome | Where-Object URL -like "*github*" Returns Chrome bookmarks filtered to only show GitHub-related URLs.

```powershell
gbm -Chrome | Where-Object URL -like "*github*"
Returns Chrome bookmarks filtered to only show GitHub-related URLs.
```

### Get-BrowserBookmark -Firefox -ConsentToThirdPartySoftwareInstallation Returns Firefox bookmarks with automatic consent to SQLite package installation.

```powershell
Get-BrowserBookmark -Firefox -ConsentToThirdPartySoftwareInstallation
Returns Firefox bookmarks with automatic consent to SQLite package installation.
```

## Outputs

- `Object[]`

## Related Links

- [Get-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
