# Open-Timeline

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `timeline`

## Synopsis

> Öppnar en interaktiv tidslinje som visar aktuell tid, datum, århundrade och årtusende.

## Description

Öppnar en webbaserad interaktiv tidslinje.
Stöder flera språk och visuella anpassningsalternativ.

## Syntax

```powershell
Open-Timeline [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-BorderDarkColor <String>] [-BorderLightColor <String>] [-BorderWidth <Int32>] [-Bottom] [-BrowserExtensions] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-DragedNodeBackground <String>] [-Edge] [-Firefox] [-FocusedNodeBackground <String>] [-FocusedNodeForeground <String>] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-RotationDelaySeconds <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-UnFocusedNodeBackground <String>] [-UnFocusedNodeForeground <String>] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
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
| `-Monitor` | Int32 | — | — | Named | `-2` | Övervakaren att använda, 0 = standard, -1 = ignorera, -2 = Konfigurerad sekundär övervakare, standard är Global:DefaultSecondaryMonitor eller 2 om den inte hittas |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Öppna inte i helskärmsläge |
| `-Width` | Int32 | — | — | Named | `-1` | Webbläsarfönstrets initiala bredd |
| `-Height` | Int32 | — | — | Named | `-1` | Webbläsarfönstrets ursprungliga höjd |
| `-X` | Int32 | — | — | Named | `-999999` | Webbläsarfönstrets initiala X-position |
| `-Y` | Int32 | — | — | Named | `-999999` | Webbläsarfönstrets initiala Y-position |
| `-Left` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på vänster sida av skärmen |
| `-Right` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på höger sida av skärmen |
| `-Top` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på skärmens övre sida |
| `-Bottom` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på skärmens nedre sida |
| `-Centered` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret i mitten av skärmen |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Visa webbläsarkontrollerna |
| `-BrowserExtensions` | SwitchParameter | — | — | Named | — | Förhindra inte inläsning av webbläsartillägg |
| `-AcceptLang` | String | — | — | Named | `$null` | Ange webbläsarens accept-lang HTTP-huvud |
| `-KeysToSend` | String[] | — | — | Named | — | Tangenttryckningar som ska skickas till webbläsarfönstret, se dokumentationen för cmdleten GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokusera webbläsarfönstret efter att det har öppnats |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Öppna webbläsarfönstret i förgrunden efter att det öppnats. |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximera fönstret efter positionering |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Återställ fönstret till normalt tillstånd efter placering |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Återställ fönsterfokus för PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Återanvänd inte befintligt webbläsarfönster, skapa istället ett nytt. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returnerar ett [System.Diagnostics.Process]-objekt för webbläsarprocessen |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | Starta inte ett nytt spel, titta bara på när AI:n spelar |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Öppna inte webbläsaren, returnera bara webbadressen |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Efter att ha öppnat webbläsaren, returnera webbadressen |
| `-Language` | String | — | — | 1 | — | Åsidosätt webbläsarens standardspråk, eller välj [Alla] för att rotera alla språk varje minut |
| `-DragedNodeBackground` | String | — | — | Named | `$null` | Skriv över css-color-style för att måla bakgrunden på den för närvarande dragna noden |
| `-FocusedNodeBackground` | String | — | — | Named | `$null` | Skriv över css-color-style för att måla bakgrunden för den fokuserade noden (i centrum) |
| `-FocusedNodeForeground` | String | — | — | Named | `$null` | Skriv över css-color-style för att måla den fokuserade nodens (i mitten) förgrundstext |
| `-UnFocusedNodeBackground` | String | — | — | Named | `$null` | Skriv över css-color-style för att måla bakgrunden för den fokuserade noden (i centrum) |
| `-UnFocusedNodeForeground` | String | — | — | Named | `$null` | Skriv över css-färgstilen för att måla den ofokuserade nodens (i mitten) förgrundstext. |
| `-BorderLightColor` | String | — | — | Named | `$null` | Åsidosätt den förvalda CSS-färgstilen border-light-color |
| `-BorderDarkColor` | String | — | — | Named | `$null` | Skriv över standardfärgen för CSS-gräns-mörk-färg (border-dark-color). |
| `-BorderWidth` | Int32 | — | — | Named | `1` | Åsidosätt standardbredden för att måla nodkanter |
| `-RotationDelaySeconds` | Int32 | — | — | Named | `15` | Åsidosätt standardbredden för fördröjningen av bakgrundsrotation |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öppnas i fullskärmsläge |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Dölj webbläsarkontrollerna |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Förhindra inläsning av webbläsartillägg |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Inaktivera popup-blockeraren |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Undvik kontrolltecken när du skickar tangenter |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Förhindra att tangentbordsfokus återgår till PowerShell efter att ha skickat tangenter |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Skicka Shift+Enter istället för vanlig Enter för radbrytningar. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Fördröjning mellan att skicka olika tangentsekvenser i millisekunder |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Tar bort kanterna på webbläsarfönstret. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret antingen i helskärm på en annan bildskärm än PowerShell, eller sida vid sida med PowerShell på samma bildskärm. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Använd alternativa inställningar som lagras i sessionen för AI-preferenser |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Rensa alternativa inställningar som lagrats i sessionen för AI-preferenser |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Lagra inställningar endast i beständiga inställningar utan att påverka sessionen |

## Examples

### Open-Timeline -Language "English"

```powershell
Open-Timeline -Language "English"
```

Öppnar en interaktiv tidslinje med Van Gogh-inspirerade bilder på engelska.

### timeline -mon 2

```powershell
timeline -mon 2
```

Öppnar tidslinjen på bildskärm 2 med hjälp av alias.

### Open-Timeline -Private -Chrome -FullScreen

```powershell
Open-Timeline -Private -Chrome -FullScreen
```

Öppnar tidslinjen i Chromes inkognitoläge i helskärm.

## Parameter Details

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

> Övervakaren att använda, 0 = standard, -1 = ignorera, -2 = Konfigurerad sekundär övervakare, standard är Global:DefaultSecondaryMonitor eller 2 om den inte hittas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
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
### `-BrowserExtensions`

> Förhindra inte inläsning av webbläsartillägg

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ext`, `Extensions` |
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

> Returnerar ett [System.Diagnostics.Process]-objekt för webbläsarprocessen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpectateOnly`

> Starta inte ett nytt spel, titta bara på när AI:n spelar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-Language <String>`

> Åsidosätt webbläsarens standardspråk, eller välj [Alla] för att rotera alla språk varje minut

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DragedNodeBackground <String>`

> Skriv över css-color-style för att måla bakgrunden på den för närvarande dragna noden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusedNodeBackground <String>`

> Skriv över css-color-style för att måla bakgrunden för den fokuserade noden (i centrum)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusedNodeForeground <String>`

> Skriv över css-color-style för att måla den fokuserade nodens (i mitten) förgrundstext

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UnFocusedNodeBackground <String>`

> Skriv över css-color-style för att måla bakgrunden för den fokuserade noden (i centrum)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UnFocusedNodeForeground <String>`

> Skriv över css-färgstilen för att måla den ofokuserade nodens (i mitten) förgrundstext.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BorderLightColor <String>`

> Åsidosätt den förvalda CSS-färgstilen border-light-color

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BorderDarkColor <String>`

> Skriv över standardfärgen för CSS-gräns-mörk-färg (border-dark-color).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BorderWidth <Int32>`

> Åsidosätt standardbredden för att måla nodkanter

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RotationDelaySeconds <Int32>`

> Åsidosätt standardbredden för fördröjningen av bakgrundsrotation

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `15` |
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
- [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-ViralSimulation.md)
- [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-Yab.md)
- [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-YabAIBattle.md)
