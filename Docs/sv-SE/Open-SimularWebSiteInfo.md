# Open-SimularWebSiteInfo

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `simularsite`

## Synopsis

> Öppnar SimilarWeb-webbplatsinformation för angivna webbadresser i en webbläsare.

## Description

Öppnar en "Similar web"-fråga i en webbläsare på ett konfigurerbart sätt med hjälp av kommandoradsflaggor. Möjliggör kontroll av webbanalys och jämförelser för trafikanalys av webbplatser, konkurrentundersökningar och insikter inom digital marknadsföring.

## Syntax

```powershell
Open-SimularWebSiteInfo -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Webbplatsens webbadresser att analysera på SimilarWeb |
| `-Language` | String | — | — | 1 | — | Språket för de returnerade sökresultaten |
| `-Monitor` | Int32 | — | — | Named | `-1` | Övervakaren som ska användas, 0 = standard, -1 = kasta bort, -2 = Konfigurerad sekundär bildskärm, standard är -1, ingen positionering |
| `-Width` | Int32 | — | — | Named | `-1` | Webbläsarfönstrets initiala bredd |
| `-Height` | Int32 | — | — | Named | `-1` | Webbläsarfönstrets ursprungliga höjd |
| `-X` | Int32 | — | — | Named | `-999999` | Webbläsarfönstrets initiala X-position |
| `-Y` | Int32 | — | — | Named | `-999999` | Webbläsarfönstrets initiala Y-position |
| `-Left` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på vänster sida av skärmen |
| `-Right` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på höger sida av skärmen |
| `-Top` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på skärmens övre sida |
| `-Bottom` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på skärmens nedre sida |
| `-Centered` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret i mitten av skärmen |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öppnas i fullskärmsläge |
| `-Private` | SwitchParameter | — | — | Named | — | Öppnas i inkognito/privat surfningsläge |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Tar bort kanterna på webbläsarfönstret. |
| `-Force` | SwitchParameter | — | — | Named | — | Tvinga aktivering av felsökningsport, stoppa befintliga webbläsare om nödvändigt |
| `-Edge` | SwitchParameter | — | — | Named | — | Öppnas i Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öppnar i Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Öppnas i Microsoft Edge eller Google Chrome, beroende på vilken standardwebbläsaren är |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öppnas i Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Använd Playwright-hanterad webbläsare istället för den OS-installerade webbläsaren |
| `-Webkit` | SwitchParameter | — | — | Named | — | Öppnar Playwright-hanterad WebKit-webbläsare. Implicerar -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Kör webbläsaren utan ett synligt fönster |
| `-All` | SwitchParameter | — | — | Named | — | Öppnas i alla registrerade moderna webbläsare |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Dölj webbläsarkontrollerna |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Förhindra inläsning av webbläsartillägg |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Inaktivera popup-blockeraren |
| `-AcceptLang` | String | — | — | Named | `$null` | Ange webbläsarens accept-lang HTTP-huvud |
| `-KeysToSend` | String[] | — | — | Named | — | Tangenttryckningar som ska skickas till webbläsarfönstret, se dokumentationen för cmdleten GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Undvik kontrolltecken och modifierare när du skickar tangenter |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behåll tangentbordsfokus på målrutan när du skickar tangenter |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Använd Skift+Retur istället för Retur när du skickar tangenter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Fördröjning mellan olika indatasträngar i millisekunder vid sändning av tangenttryckningar |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokusera webbläsarfönstret efter att det har öppnats |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Öppna webbläsarfönstret i förgrunden efter att det öppnats. |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximera fönstret efter positionering |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Återställ fönstret till normalt tillstånd efter placering |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Återställ fönsterfokus för PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Återanvänd inte befintligt webbläsarfönster, skapa istället ett nytt. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returnerar ett PowerShell-objekt för webbläsarprocessen |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Öppna inte webbläsaren, returnera bara webbadressen |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Efter att ha öppnat webbläsaren, returnera webbadressen |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Använd alternativa inställningar som lagras i sessionen för AI-preferenser |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Rensa alternativa inställningar som lagrats i sessionen för AI-preferenser |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Lagra inställningar endast i beständiga inställningar utan att påverka sessionen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret antingen i helskärm på en annan bildskärm än PowerShell, eller sida vid sida med PowerShell på samma bildskärm. |

## Examples

### Open-SimularWebSiteInfo -Queries "google.com" -Monitor 0

```powershell
Open-SimularWebSiteInfo -Queries "google.com" -Monitor 0
```

Öppnar en SimilarWeb-analys för Google.com på den primära skärmen.

### simularsite google.com -mon 0

```powershell
simularsite google.com -mon 0
```

Öppnar en SimilarWeb-analys med funktionsalias och monitorpositionering.

### "microsoft.com", "apple.com" | Open-SimularWebSiteInfo -Language "English" -Centered

```powershell
"microsoft.com", "apple.com" | Open-SimularWebSiteInfo -Language "English" -Centered
```

Analyserar flera webbplatser via pipeline-indata med centrerad fönsterpositionering.

### Open-SimularWebSiteInfo -Queries "github.com" -ReturnURL

```powershell
Open-SimularWebSiteInfo -Queries "github.com" -ReturnURL
```

Returnerar SimilarWeb-URL:en för GitHub utan att öppna webbläsaren.

## Parameter Details

### `-Queries <String[]>`

> Webbplatsens webbadresser att analysera på SimilarWeb

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Språket för de returnerade sökresultaten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Övervakaren som ska användas, 0 = standard, -1 = kasta bort, -2 = Konfigurerad sekundär bildskärm, standard är -1, ingen positionering

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Webbläsarfönstrets initiala bredd

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Webbläsarfönstrets ursprungliga höjd

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Webbläsarfönstrets initiala X-position

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> Webbläsarfönstrets initiala Y-position

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Placera webbläsarfönstret på vänster sida av skärmen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> Placera webbläsarfönstret på höger sida av skärmen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> Placera webbläsarfönstret på skärmens övre sida

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> Placera webbläsarfönstret på skärmens nedre sida

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Placera webbläsarfönstret i mitten av skärmen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> Öppnas i fullskärmsläge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Öppnas i inkognito/privat surfningsläge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Tar bort kanterna på webbläsarfönstret.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Tvinga aktivering av felsökningsport, stoppa befintliga webbläsare om nödvändigt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Öppnas i Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Öppnar i Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Öppnas i Microsoft Edge eller Google Chrome, beroende på vilken standardwebbläsaren är

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Öppnas i Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> Använd Playwright-hanterad webbläsare istället för den OS-installerade webbläsaren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Öppnar Playwright-hanterad WebKit-webbläsare. Implicerar -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> Kör webbläsaren utan ett synligt fönster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> Öppnas i alla registrerade moderna webbläsare

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Dölj webbläsarkontrollerna

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> Förhindra inläsning av webbläsartillägg

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> Inaktivera popup-blockeraren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Ange webbläsarens accept-lang HTTP-huvud

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Tangenttryckningar som ska skickas till webbläsarfönstret, se dokumentationen för cmdleten GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Undvik kontrolltecken och modifierare när du skickar tangenter

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Behåll tangentbordsfokus på målrutan när du skickar tangenter

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Använd Skift+Retur istället för Retur när du skickar tangenter

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Fördröjning mellan olika indatasträngar i millisekunder vid sändning av tangenttryckningar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Fokusera webbläsarfönstret efter att det har öppnats

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Öppna webbläsarfönstret i förgrunden efter att det öppnats.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Maximera fönstret efter positionering

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> Återställ fönstret till normalt tillstånd efter placering

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Återställ fönsterfokus för PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> Återanvänd inte befintligt webbläsarfönster, skapa istället ett nytt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Returnerar ett PowerShell-objekt för webbläsarprocessen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> Öppna inte webbläsaren, returnera bara webbadressen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> Efter att ha öppnat webbläsaren, returnera webbadressen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Använd alternativa inställningar som lagras i sessionen för AI-preferenser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Rensa alternativa inställningar som lagrats i sessionen för AI-preferenser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Lagra inställningar endast i beständiga inställningar utan att påverka sessionen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Placera webbläsarfönstret antingen i helskärm på en annan bildskärm än PowerShell, eller sida vid sida med PowerShell på samma bildskärm.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-BuiltWithSiteInfo.md)
- [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GithubQuery.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-SearchEngine.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-YoutubeQuery.md)
