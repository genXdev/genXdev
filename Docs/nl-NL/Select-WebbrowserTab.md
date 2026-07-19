# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st

## Synopsis

> Selecteert een browsertabblad uit actieve door Playwright beheerde browsers.

## Description

Lijstt en selecteert browsertabbladen uit alle actieve door Playwright beheerde browserinstanties. Wanneer aangeroepen zonder selectiecriteria, wordt een tabel weergegeven met alle beschikbare tabbladen voor alle browsertypen. Ondersteunt selectie op numerieke index, URL-patroon of directe paginareferentie.

Wanneer een tabblad is geselecteerd, stelt het $Global:chromeController en $Global:chromeSession in voor achterwaartse compatibiliteit met andere Webbrowser-cmdlets.

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
| `-Id` | Int32 | — | — | 0 | `-1` | Tab-index van de getoonde lijst *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | Selecteert het eerste tabblad dat deze tekst in de URL bevat *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | Directe paginareferentie vanuit een Playwright-browserstatus *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Filter tabs tot Microsoft Edge browserinstanties |
| `-Chrome` | SwitchParameter | — | — | Named | — | Filter tabs naar Google Chrome browserinstanties |
| `-Chromium` | SwitchParameter | — | — | Named | — | Filter tabs naar Chromium-gebaseerde browserinstanties (Edge of Chrome) |
| `-Firefox` | SwitchParameter | — | — | Named | — | Tabbladen filteren naar Firefox-browserinstanties |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Filter tabbladen naar alle door Playwright beheerde browsertypen |
| `-Webkit` | SwitchParameter | — | — | Named | — | Filter tabbladen naar WebKit-browserinstanties |
| `-All` | SwitchParameter | — | — | Named | — | Toon tabs van alle browsertypen (geen filtering) |
| `-Force` | SwitchParameter | — | — | Named | — | Bevestiging overslaan en eerste overeenkomende tabblad selecteren |

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
