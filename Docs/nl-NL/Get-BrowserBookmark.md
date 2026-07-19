# Get-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `gbm

## Synopsis

> Retourneert alle bladwijzers van geïnstalleerde webbrowsers.

## Description

Haalt bladwijzers op uit Microsoft Edge, Google Chrome of Mozilla Firefox browsers die op het systeem zijn geïnstalleerd. De functie kan filteren op browsertype en retourneert gedetailleerde bladwijzerinformatie inclusief naam, URL, maplocatie en tijdstempels. Verwerkt automatisch toestemming voor de installatie van het System.Data.SQLite NuGet-pakket bij het lezen van Firefox-bladwijzers.

## Syntax

```powershell
Get-BrowserBookmark [-Chrome] [-ConsentToThirdPartySoftwareInstallation] [-Edge] [-ForceConsent] [<CommonParameters>]

Get-BrowserBookmark [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Chrome` | SwitchParameter | — | — | Named | — | Haalt bladwijzers op uit Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Haalt bladwijzers op uit Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Geeft bladwijzers terug van Mozilla Firefox *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Toestemming afdwingen voor installatie van software van derden |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Toestemming voor installatie van software van derden |

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
