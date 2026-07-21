# Open-ViralSimulation

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `viral`

## Synopsis

> Öppnar ett viralt simuleringsspel i en webbläsare med omfattande konfigurationsalternativ.

## Description

Öppnar virussimuleringsspelet på https://viral.genxdev.net/ i en specificerad webbläsare med konfigurerbara fönsterinställningar, positionering och beteendealternativ. Stöder flera webbläsare, privat surfning, applikationsläge och omfattande fönsterhanteringsfunktioner.

Funktionen ger en interaktiv virussimuleringsupplevelse med funktioner som:
- Stöd för flera webbläsare (Edge, Chrome, Firefox)
- Fönsterpositionering och storlekskontroll
- Helskärms- och applikationslägesalternativ
- Möjlighet till privat surfning
- Stöd för tangentbordsautomatisering
- Stöd för flera bildskärmar

## Syntax

```powershell
Open-ViralSimulation [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | Språket för webbinnehållsvisning och webbläsarens språkinställningar |
| `-Private` | SwitchParameter | — | — | Named | — | Öppnas i inkognito/privat surfningsläge |
| `-Force` | SwitchParameter | — | — | Named | — | Tvinga aktivering av felsökningsport, stoppa befintliga webbläsare om nödvändigt |
| `-Edge` | SwitchParameter | — | — | Named | — | Öppnas i Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öppnar i Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Öppnas i Microsoft Edge eller Google Chrome, beroende på vilken standardwebbläsaren är |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öppnas i Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Använd Playwright-hanterad webbläsare istället för den OS-installerade webbläsaren |
| `-Webkit` | SwitchParameter | — | — | Named | — | Öppnar Playwright-hanterad WebKit-webbläsare. Implicerar -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Kör webbläsaren utan ett synligt fönster |
| `-All` | SwitchParameter | — | — | Named | — | Öppnas i alla registrerade moderna webbläsare |
| `-Monitor` | Int32 | — | — | Named | `-2` | Övervakaren som ska användas, 0 = standard, -1 = kassera, -2 = Konfigurerad sekundär bildskärm, standard är $Global:DefaultSecondaryMonitor eller 2 om den inte hittas |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öppnas i fullskärmsläge |
| `-Width` | Int32 | — | — | Named | `-1` | Webbläsarfönstrets initiala bredd |
| `-Height` | Int32 | — | — | Named | `-1` | Webbläsarfönstrets ursprungliga höjd |
| `-X` | Int32 | — | — | Named | `-999999` | Webbläsarfönstrets initiala X-position |
| `-Y` | Int32 | — | — | Named | `-999999` | Webbläsarfönstrets initiala Y-position |
| `-Left` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på vänster sida av skärmen |
| `-Right` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på höger sida av skärmen |
| `-Top` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på skärmens övre sida |
| `-Bottom` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på skärmens nedre sida |
| `-Centered` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret i mitten av skärmen |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Dölj webbläsarkontrollerna |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Förhindra inläsning av webbläsartillägg |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Inaktivera popup-blockeraren |
| `-AcceptLang` | String | — | — | Named | `$null` | Ange webbläsarens accept-lang HTTP-huvud |
| `-KeysToSend` | String[] | — | — | Named | — | Tangenttryckningar som ska skickas till webbläsarfönstret, se dokumentationen för cmdleten GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Undvik kontrolltecken när du skickar tangenter |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Förhindra att tangentbordsfokus återgår till PowerShell efter att ha skickat tangenter |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Skicka Shift+Enter istället för vanlig Enter för radbrytningar. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Fördröjning mellan att skicka olika tangentsekvenser i millisekunder |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokusera webbläsarfönstret efter att det har öppnats |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Öppna webbläsarfönstret i förgrunden efter att det öppnats. |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximera fönstret efter positionering |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Återställ fönstret till normalt tillstånd efter placering |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Återställ fönsterfokus för PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Återanvänd inte befintligt webbläsarfönster, skapa istället ett nytt. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returnerar ett PowerShell-objekt för webbläsarprocessen |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Öppna inte webbläsaren, returnera bara webbadressen |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Efter att ha öppnat webbläsaren, returnera webbadressen |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Öppna inte i helskärmsläge |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Visa webbläsarkontrollerna |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Tar bort webbläsarfönstrets kanter |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret antingen i helskärm på en annan skärm än PowerShell, eller sida vid sida med PowerShell på samma skärm |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Använd alternativa inställningar som lagras i sessionen för AI-preferenser |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Rensa alternativa inställningar som lagrats i sessionen för AI-preferenser |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Lagra inställningar endast i beständiga inställningar utan att påverka sessionen |

## Examples

### Open-ViralSimulation -Chrome -Private -NoFullScreen

```powershell
Open-ViralSimulation -Chrome -Private -NoFullScreen
```

Öppnar viralsimulering i Google Chrome med privat surfningsläge och ingen helskärm.

### viral -ch -incognito -nfs

```powershell
viral -ch -incognito -nfs
```

Öppnar virussimulering med alias i Chrome, inkognitoläge och utan fullskärm.

## Parameter Details

### `-Language <String>`

> Språket för webbinnehållsvisning och webbläsarens språkinställningar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-Monitor <Int32>`

> Övervakaren som ska användas, 0 = standard, -1 = kassera, -2 = Konfigurerad sekundär bildskärm, standard är $Global:DefaultSecondaryMonitor eller 2 om den inte hittas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
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

> Undvik kontrolltecken när du skickar tangenter

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

> Förhindra att tangentbordsfokus återgår till PowerShell efter att ha skickat tangenter

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

> Skicka Shift+Enter istället för vanlig Enter för radbrytningar.

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

> Fördröjning mellan att skicka olika tangentsekvenser i millisekunder

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
### `-NoFullScreen`

> Öppna inte i helskärmsläge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nfs`, `nf` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoApplicationMode`

> Visa webbläsarkontrollerna

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `na`, `napp`, `noappmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Tar bort webbläsarfönstrets kanter

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Placera webbläsarfönstret antingen i helskärm på en annan skärm än PowerShell, eller sida vid sida med PowerShell på samma skärm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
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
## Related Links

- [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GameOfLife.md)
- [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GenXdevAppCatalog.md)
- [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-Timeline.md)
- [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-Yab.md)
- [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-YabAIBattle.md)
