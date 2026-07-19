# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> Öffnet und steuert YouTube-Videos in einem Browserfenster mit Tastaturkürzeln.

## Description

Öffnet YouTube-Videos, die Suchbegriffen oder verschiedenen YouTube-Bereichen entsprechen, in einem Browserfenster. Bietet Tastatursteuerung für die Videowiedergabe und Navigation durch eine interaktive Oberfläche. Unterstützt mehrere Browser und verschiedene YouTube-Inhaltstypen, darunter Suchergebnisse, Abonnements, Später ansehen, empfohlene Videos und Trendinhalte.

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('')` | YouTube search terms to find videos |
| `-Subscriptions` | SwitchParameter | — | — | Named | — | Open videos from subscribed channels |
| `-WatchLater` | SwitchParameter | — | — | Named | — | Öffne Videos aus der Wiedergabeliste "Später ansehen" |
| `-Recommended` | SwitchParameter | — | — | Named | — | Empfohlene Videos öffnen |
| `-Trending` | SwitchParameter | — | — | Named | — | Trending-Videos öffnen |
| `-Private` | SwitchParameter | — | — | Named | — | Öffnet im Inkognito-/Privatmodus |
| `-Edge` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge geöffnet |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öffnet in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge oder Google Chrome geöffnet, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öffnet in Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Verwendet den von Playwright verwalteten WebKit-Browser |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Verhindert das Öffnen im Vollbildmodus |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Blenden Sie die Browsersteuerelemente aus |
| `-AcceptLang` | String | — | — | Named | `$null` | Setzen Sie den Accept-Language-HTTP-Header des Browsers |

## Examples

### Open-AllYoutubeVideos -Queries "PowerShell tutorial","vscode tips" -Edge

```powershell
Open-AllYoutubeVideos -Queries "PowerShell tutorial","vscode tips" -Edge
```

### qvideos "PowerShell tutorial" -e

```powershell
qvideos "PowerShell tutorial" -e
```

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)
