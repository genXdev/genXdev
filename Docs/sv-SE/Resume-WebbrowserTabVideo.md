# Resume-WebbrowserTabVideo

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbvideoplay`

## Synopsis

> Återupptar videouppspelning i en YouTube-webbläsarflik.

## Description

Hittar den aktiva YouTube-fliken i webbläsaren och återupptar videouppspelningen genom att exekvera
play()-metoden på eventuella videoelement som finns på sidan. Om ingen YouTube-flik
hittas, kastar funktionen ett fel. Denna funktion är särskilt användbar för att
automatisera videouppspelningskontroll i webbläsarsessioner.

## Syntax

```powershell
Resume-WebbrowserTabVideo [<CommonParameters>]
```

## Examples

### Resume-WebbrowserTabVideo

```powershell
Resume-WebbrowserTabVideo
```

### wbvideoplay

```powershell
wbvideoplay
```

## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Connect-PlaywrightViaDebuggingPort.md)
- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-PlayWrightBrowser.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Unprotect-WebbrowserTab.md)
