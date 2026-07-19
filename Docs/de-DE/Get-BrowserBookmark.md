# Get-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `gbm

## Synopsis

> Liefert alle Lesezeichen aus installierten Webbrowsern zurück.

## Description

Ruft Lesezeichen aus Microsoft Edge, Google Chrome oder Mozilla Firefox ab, die auf dem System installiert sind. Die Funktion kann nach Browsertyp filtern und gibt detaillierte Lesezeicheninformationen einschließlich Name, URL, Ordnerpfad und Zeitstempel zurück. Verwaltet automatisch die Zustimmung zur Installation des System.Data.SQLite NuGet-Pakets beim Lesen von Firefox-Lesezeichen.

## Syntax

```powershell
Get-BrowserBookmark [-Chrome] [-ConsentToThirdPartySoftwareInstallation] [-Edge] [-ForceConsent] [<CommonParameters>]

Get-BrowserBookmark [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Chrome` | SwitchParameter | — | — | Named | — | Ruft Lesezeichen aus Google Chrome ab |
| `-Edge` | SwitchParameter | — | — | Named | — | Returns bookmarks from Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Gibt Lesezeichen aus Mozilla Firefox zurück *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwinge Zustimmung zur Installation von Drittanbieter-Software |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Zustimmung zur Installation von Software Dritter |

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
