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
| `-QuerySelector` | String[] | ✅ | — | 0 | — | Der Abfrageselektor-String oder das Array von Strings zur Auswahl von DOM-Knoten |
| `-ModifyScript` | String | — | — | 1 | `''` | Das Skript zum Ändern der Ausgabe des Query-Selektors, z.B. e.outerHTML oder e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Verwenden Sie den Microsoft Edge-Browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome browser |
| `-Page` | Object | — | — | Named | — | Referenz auf das Browser-Seitenobjekt |
| `-ByReference` | PSObject | — | — | Named | — | Browser-Sitzungsreferenzobjekt |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Automatische Tab-Auswahl verhindern |

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)
