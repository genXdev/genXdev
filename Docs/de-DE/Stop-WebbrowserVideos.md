# Stop-WebbrowserVideos

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbsst, `ssst, `wbvideostop

## Synopsis

> Pausiert die Videowiedergabe in allen aktiven Browsersitzungen.

## Description

Durchläuft alle aktiven Browsersitzungen und pausiert alle abgespielten Videos durch Ausführen von JavaScript-Befehlen. Die Funktion behält den ursprünglichen Sitzungszustand bei und behandelt Fehler ordnungsgemäß.

## Syntax

```powershell
Stop-WebbrowserVideos [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge geöffnet |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öffnet in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge oder Google Chrome geöffnet, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öffnet in Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Verwendet den von Playwright verwalteten WebKit-Browser |

## Examples

### Stop-WebbrowserVideos

```powershell
Stop-WebbrowserVideos
```

### wbsst ##############################################################################

```powershell
wbsst
##############################################################################
```

## Related Links

- [Stop-WebbrowserVideos on GitHub](https://github.com/genXdev/genXdev)
