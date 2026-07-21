# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft das Playwright-Browserprofilverzeichnis für persistente Sitzungen ab.

## Description

* Erstellt und verwaltet Browserprofil-Verzeichnisse für Playwright automatisierte Tests.
* Profile werden in LocalAppData unter GenXdev.Powershell\Playwright.profiles gespeichert.
* Jeder BrowserType-Wert erhält ein eigenes Unterverzeichnis, wodurch echte Browserprofile (ChromeNormal, EdgeNormal) von gebündelten Playwright-Profilen (ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright) getrennt bleiben.

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | Der Browsertyp: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright oder WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

Erstellt oder gibt den Pfad für das vom Betriebssystem installierte Chrome-Browserprofil zurück.

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

Erstellt oder gibt den Pfad für das automatisch erkannte Chromium-Browserprofil zurück.

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

Erstellt oder gibt den Pfad für das gebündelte Playwright-Chromium-Profil zurück.

## Parameter Details

### `-BrowserType <String>`

> Der Browsertyp: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright oder WebKitPlaywright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/de-DE/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/de-DE/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/de-DE/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/de-DE/Unprotect-WebbrowserTab.md)
