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
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript-Code, Dateipfad oder URL zur Ausführung |
| `-Inspect` | SwitchParameter | — | — | Named | — | Im Browser-Debugger vor dem Ausführen anhalten |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Automatische Tab-Auswahl verhindern |
| `-Edge` | SwitchParameter | — | — | Named | — | Verwenden Sie den Microsoft Edge-Browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome browser |
| `-Page` | Object | — | — | Named | — | Referenz auf das Browser-Seitenobjekt |
| `-ByReference` | PSObject | — | — | Named | — | Browser-Sitzungsreferenzobjekt |

## Related Links

- [Invoke-WebbrowserEvaluation on GitHub](https://github.com/genXdev/genXdev)
