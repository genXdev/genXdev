# Stop-WebbrowserVideos

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbsst, `ssst, `wbvideostop

## Synopsis

> Pauses video playback in all active browser sessions.

## Description

Iterates through all active browser sessions and pauses any playing videos by
executing JavaScript commands. The function maintains the original session state
and handles errors gracefully.

## Syntax

```powershell
Stop-WebbrowserVideos [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Opens in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opens in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Opens in Microsoft Edge or Google Chrome, depending on what the default browser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Opens in Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Uses the Playwright-managed WebKit browser |

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
