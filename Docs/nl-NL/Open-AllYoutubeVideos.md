# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> Opent en bedient YouTube-video's in een browservenster met sneltoetsen.

## Description

Opent YouTube-video's die overeenkomen met zoektermen of uit verschillende YouTube-secties in een browservenster. Biedt toetsenbordbediening voor video-afspelen en navigatie via een interactieve interface. Ondersteunt meerdere browsers en verschillende YouTube-inhoudstypen, waaronder zoekresultaten, abonnementen, later bekijken, aanbevolen video's en trending inhoud.

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('')` | YouTube-zoektermen om video's te vinden |
| `-Subscriptions` | SwitchParameter | — | — | Named | — | Open video's van geabonneerde kanalen |
| `-WatchLater` | SwitchParameter | — | — | Named | — | Open videos from watch later playlist |
| `-Recommended` | SwitchParameter | — | — | Named | — | Open aanbevolen video's |
| `-Trending` | SwitchParameter | — | — | Named | — | Open trending videos |
| `-Private` | SwitchParameter | — | — | Named | — | Opent in incognito-/privatieve browse-modus |
| `-Edge` | SwitchParameter | — | — | Named | — | Wordt geopend in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opent in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wordt geopend in Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Openen in Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Gebruikt de door Playwright beheerde WebKit-browser |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Voorkomt openen in volledige schermmodus |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Verberg de browserbediening |
| `-AcceptLang` | String | — | — | Named | `$null` | Stel de browser accept-lang http-header in |

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
