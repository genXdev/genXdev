# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | The query selector string or array of strings to use for selecting DOM nodes |
| `-ModifyScript` | String | — | — | 1 | `''` | The script to modify the output of the query selector, e.g. e.outerHTML or e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Use Microsoft Edge browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome browser |
| `-Page` | Object | — | — | Named | — | Browser page object reference |
| `-ByReference` | PSObject | — | — | Named | — | Browser session reference object |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevent automatic tab selection |

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)
