# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript code, file path or URL to execute |
| `-Inspect` | SwitchParameter | — | — | Named | — | Break in browser debugger before executing |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevent automatic tab selection |
| `-Edge` | SwitchParameter | — | — | Named | — | Use Microsoft Edge browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome browser |
| `-Page` | Object | — | — | Named | — | Browser page object reference |
| `-ByReference` | PSObject | — | — | Named | — | Browser session reference object |

## Related Links

- [Invoke-WebbrowserEvaluation on GitHub](https://github.com/genXdev/genXdev)
