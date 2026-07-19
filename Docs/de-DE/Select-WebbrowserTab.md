# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st

## Synopsis

> Wählt einen Browser-Tab aus laufenden Playwright-verwalteten Browsern aus.

## Description

Listet und wählt Browser-Tabs aus allen laufenden Playwright-verwalteten Browser-Instanzen aus. Wenn ohne Auswahlkriterien aufgerufen, wird eine Tabelle aller verfügbaren Tabs über alle Browsertypen hinweg angezeigt. Unterstützt Auswahl nach numerischem Index, URL-Muster oder direkter Seitenreferenz.

Wenn ein Tab ausgewählt wird, setzt dies $Global:chromeController und $Global:chromeSession für die Abwärtskompatibilität mit anderen Webbrowser-Cmdlets.

## Syntax

```powershell
Select-WebbrowserTab [[-Id] <Int32>] [<CommonParameters>]

Select-WebbrowserTab -Name <String> [<CommonParameters>]

Select-WebbrowserTab -ByReference <Object> [<CommonParameters>]

Select-WebbrowserTab [-All] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Force] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Id` | Int32 | — | — | 0 | `-1` | Tab-Index aus der gezeigten Liste *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | Wählt ersten Tab aus, der diesen Text in seiner URL enthält *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | Direkter Seitenverweis aus einem Playwright-Browserstatus *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Filtere Registerkarten auf Microsoft Edge-Browserinstanzen |
| `-Chrome` | SwitchParameter | — | — | Named | — | Tab-Filter auf Google Chrome-Browserinstanzen |
| `-Chromium` | SwitchParameter | — | — | Named | — | Filtert Tabs zu Chromium-basierten Browserinstanzen (Edge oder Chrome) |
| `-Firefox` | SwitchParameter | — | — | Named | — | Filtere Tabs auf Firefox-Browser-Instanzen |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Filtert die Tabs zu allen von Playwright verwalteten Browsertypen |
| `-Webkit` | SwitchParameter | — | — | Named | — | Filter-Registerkarten auf WebKit-Browserinstanzen |
| `-All` | SwitchParameter | — | — | Named | — | Tabs aller Browsertypen anzeigen (keine Filterung) |
| `-Force` | SwitchParameter | — | — | Named | — | Bestätigung überspringen und ersten passenden Tab auswählen |

## Examples

### Select-WebbrowserTab Lists all open tabs across all Playwright browser types.

```powershell
Select-WebbrowserTab
Lists all open tabs across all Playwright browser types.
```

### Select-WebbrowserTab -Id 2 Selects the tab at index 2 from the list.

```powershell
Select-WebbrowserTab -Id 2
Selects the tab at index 2 from the list.
```

### st -Name "github.com" Selects the first tab whose URL contains "github.com".

```powershell
st -Name "github.com"
Selects the first tab whose URL contains "github.com".
```

### st -Firefox -Id 0 Selects the first tab from the Firefox browser.

```powershell
st -Firefox -Id 0
Selects the first tab from the Firefox browser.
```

## Outputs

- `PSObject`

## Related Links

- [Select-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
