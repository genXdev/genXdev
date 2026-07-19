# Get-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `gbm

## Synopsis

> Возвращает все закладки из установленных веб-браузеров.

## Description

Извлекает закладки из браузеров Microsoft Edge, Google Chrome или Mozilla Firefox, установленных в системе. Функция может фильтровать по типу браузера и возвращает подробную информацию о закладках, включая имя, URL, расположение папки и временные метки. Автоматически обрабатывает согласие на установку пакета NuGet System.Data.SQLite при чтении закладок Firefox.

## Syntax

```powershell
Get-BrowserBookmark [-Chrome] [-ConsentToThirdPartySoftwareInstallation] [-Edge] [-ForceConsent] [<CommonParameters>]

Get-BrowserBookmark [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Chrome` | SwitchParameter | — | — | Named | — | Извлекает закладки из Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Возвращает закладки из Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Возвращает закладки из Mozilla Firefox *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Принудительное согласие на установку стороннего программного обеспечения |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Согласие на установку стороннего программного обеспечения |

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
