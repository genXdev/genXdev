# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> Öppnar en Github-sökfråga i en webbläsare eller utför avancerade sökningar mot GitHub REST API med stöd för alla tillgängliga kvalificerare och sökkategorier (arkiv, kod, ärenden, användare, commits, diskussioner, ämnen, wikis).

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Sökfrågorna som ska köras på GitHub. Stöder flera frågor och pipeline-indata för batch-sökning. Varje fråga kommer att URL-kodas och användas för att söka på GitHub. |
| `-Type` | String | — | — | Named | `'Code'` | Den större kategorin att söka i. Standard är 'Code'. |
| `-In` | String[] | — | — | Named | — | Fält att söka i. Endast giltiga alternativ för den valda typen kommer att accepteras. |
| `-User` | String | — | — | Named | — | Begränsa sökningen till en användares resurser (förråd, kod, ärenden, etc.). |
| `-Org` | String | — | — | Named | — | Begränsa sökningen till en organisation. |
| `-Repo` | String | — | — | Named | — | Begränsa sökningen till ett namngivet arkiv ('owner/repo'). |
| `-Path` | String | — | — | Named | — | Begränsa kodökning till specifik sökväg eller katalog (stöder jokertecken enligt GitHub Search Syntax). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filtrera resultat efter filnamnet (inte sökvägen). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Begränsa kodökning till filändelser. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Filtrera efter programmeringsspråk. |
| `-Size` | String | — | — | Named | — | Fil-/repostorlek. Stöder numerisk och intervall-syntax (se exempel). |
| `-State` | String | — | — | Named | — | För ärenden/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Problem/Förfrågan om ändring: begränsa till de som skapats av en angiven användare. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Ärenden/PR: begränsa till de som tilldelats en användare. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Problem/PR: måste vara märkt med alla angivna strängar. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Problem/PR måste sakna viss metadata (t.ex. etikett, milstolpe). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Sorteringsfält (beror på typ). T.ex. "stars", "forks", "updated", etc. |
| `-Order` | String | — | — | Named | — | Sorteringsordningen 'asc' eller 'desc'. |
| `-PerPage` | Int32 | — | — | Named | `10` | Sidstorlek (max 100). |
| `-Page` | Int32 | — | — | Named | `1` | Sidnummer för sidindelade resultat. |
| `-Token` | String | — | — | Named | — | GitHub OAuth eller personlig åtkomsttoken. Om den inte anges används GITHUB_TOKEN eller miljövariabeln. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Ställ in webbläsarens accept-lang http-huvud. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Fördröjning mellan att skicka olika tangentsekvenser i millisekunder. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Bildskärmen som ska visa resultaten. 0 = standard, -1 = ignorera, -2 = sekundär. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | Webbläsarfönstrets initiala bredd. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | Webbläsarfönstrets ursprungliga höjd. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | Webbläsarfönstrets initiala X-position. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | Webbläsarfönstrets initiala Y-position. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Tangenttryckningar som ska skickas till webbläsarfönstret, se dokumentationen för cmdleten GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Matcha endast skiftlägeskänsliga resultat (där det stöds). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Kör sökningen asynkront som ett PowerShell-jobb. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | @{response=Här är den översatta texten.} *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Använd API-läge istället för att öppna i webbläsare. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Öppnar webbläsaren i privat/inkognito-läge för anonym sökning. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Tvinga aktivering av felsökningsport, stoppa befintliga webbläsare om det behövs. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Öppnar sökresultaten i webbläsaren Microsoft Edge. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öppnar sökresultaten i webbläsaren Google Chrome. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Öppnar sökresultaten i Microsoft Edge eller Google Chrome, beroende på vilken standardwebbläsare som används. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öppnar sökresultaten i webbläsaren Mozilla Firefox. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Använd Playwright-hanterad webbläsare istället för den OS-installerade webbläsaren |
| `-Webkit` | SwitchParameter | — | — | Named | — | Öppnar Playwright-hanterad WebKit-webbläsare. Implicerar -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Kör webbläsaren utan ett synligt fönster |
| `-All` | SwitchParameter | — | — | Named | — | Öppnas i alla registrerade moderna webbläsare |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öppnar webbläsaren i helskärmsläge. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på vänster sida av skärmen. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på höger sida av skärmen. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på skärmens övre sida. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret på skärmens nedre sida. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret i mitten av skärmen. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Dölj webbläsarkontrollerna. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Förhindra inläsning av webbläsartillägg. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Inaktivera popup-blockeraren i webbläsaren. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokusera webbläsarfönstret efter att ha öppnat. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Visa webbläsarfönstret i förgrunden efter att det har öppnats. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximera fönstret efter positionering. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Återställ fokus till PowerShell-fönstret. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Återanvänd inte ett befintligt webbläsarfönster, utan skapa ett nytt istället. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returnerar ett [System.Diagnostics.Process]-objekt för webbläsarprocessen i webbläget eller ett frågeobjekt i API-läget. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Öppna inte webbläsaren, returnera bara webbadressen. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Efter att ha öppnat webbläsaren, returnera webbadressen. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Undvik kontrolltecken när du skickar tangenter. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Förhindra att tangentbordsfokuset återgår till PowerShell efter att ha skickat tangenter. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Skicka Shift+Enter istället för vanlig Enter för radbrytningar. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Ta bort fönsterkanter och titelrad för en renare look. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Placera webbläsarfönstret sida vid sida med PowerShell på samma skärm. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Använd alternativa inställningar som lagras i sessionen för preferenser. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Rensa alternativa inställningar som lagras i sessionen för preferenser. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Lagra inställningar endast i beständiga preferenser utan att påverka sessionen. *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Parameter Details

### `-Query <String[]>`

> Sökfrågorna som ska köras på GitHub. Stöder flera frågor och pipeline-indata för batch-sökning. Varje fråga kommer att URL-kodas och användas för att söka på GitHub.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Queries` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Type <String>`

> Den större kategorin att söka i. Standard är 'Code'.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Code'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-In <String[]>`

> Fält att söka i. Endast giltiga alternativ för den valda typen kommer att accepteras.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-User <String>`

> Begränsa sökningen till en användares resurser (förråd, kod, ärenden, etc.).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Org <String>`

> Begränsa sökningen till en organisation.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repo <String>`

> Begränsa sökningen till ett namngivet arkiv ('owner/repo').

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> Begränsa kodökning till specifik sökväg eller katalog (stöder jokertecken enligt GitHub Search Syntax).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Filename <String>`

> Filtrera resultat efter filnamnet (inte sökvägen).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Extension <String>`

> Begränsa kodökning till filändelser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Language <String>`

> Filtrera efter programmeringsspråk.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Size <String>`

> Fil-/repostorlek. Stöder numerisk och intervall-syntax (se exempel).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-State <String>`

> För ärenden/PR.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Author <String>`

> Problem/Förfrågan om ändring: begränsa till de som skapats av en angiven användare.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Assignee <String>`

> Ärenden/PR: begränsa till de som tilldelats en användare.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Labels <String[]>`

> Problem/PR: måste vara märkt med alla angivna strängar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-No <String[]>`

> Problem/PR måste sakna viss metadata (t.ex. etikett, milstolpe).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-SortBy <String>`

> Sorteringsfält (beror på typ). T.ex. "stars", "forks", "updated", etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Order <String>`

> Sorteringsordningen 'asc' eller 'desc'.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerPage <Int32>`

> Sidstorlek (max 100).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `10` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Int32>`

> Sidnummer för sidindelade resultat.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> GitHub OAuth eller personlig åtkomsttoken. Om den inte anges används GITHUB_TOKEN eller miljövariabeln.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-AcceptLang <String>`

> Ställ in webbläsarens accept-lang http-huvud.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Fördröjning mellan att skicka olika tangentsekvenser i millisekunder.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Monitor <Int32>`

> Bildskärmen som ska visa resultaten. 0 = standard, -1 = ignorera, -2 = sekundär.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Width <Int32>`

> Webbläsarfönstrets initiala bredd.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Height <Int32>`

> Webbläsarfönstrets ursprungliga höjd.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-X <Int32>`

> Webbläsarfönstrets initiala X-position.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Y <Int32>`

> Webbläsarfönstrets initiala Y-position.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-KeysToSend <String[]>`

> Tangenttryckningar som ska skickas till webbläsarfönstret, se dokumentationen för cmdleten GenXdev\Send-Key.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-CaseSensitive`

> Matcha endast skiftlägeskänsliga resultat (där det stöds).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsJob`

> Kör sökningen asynkront som ett PowerShell-jobb.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-RawResponse`

> @{response=Här är den översatta texten.}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Api`

> Använd API-läge istället för att öppna i webbläsare.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Private`

> Öppnar webbläsaren i privat/inkognito-läge för anonym sökning.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Force`

> Tvinga aktivering av felsökningsport, stoppa befintliga webbläsare om det behövs.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Edge`

> Öppnar sökresultaten i webbläsaren Microsoft Edge.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chrome`

> Öppnar sökresultaten i webbläsaren Google Chrome.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chromium`

> Öppnar sökresultaten i Microsoft Edge eller Google Chrome, beroende på vilken standardwebbläsare som används.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Firefox`

> Öppnar sökresultaten i webbläsaren Mozilla Firefox.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
### `-FullScreen`

> Öppnar webbläsaren i helskärmsläge.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Left`

> Placera webbläsarfönstret på vänster sida av skärmen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Right`

> Placera webbläsarfönstret på höger sida av skärmen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Top`

> Placera webbläsarfönstret på skärmens övre sida.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Bottom`

> Placera webbläsarfönstret på skärmens nedre sida.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Centered`

> Placera webbläsarfönstret i mitten av skärmen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ApplicationMode`

> Dölj webbläsarkontrollerna.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBrowserExtensions`

> Förhindra inläsning av webbläsartillägg.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-DisablePopupBlocker`

> Inaktivera popup-blockeraren i webbläsaren.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-FocusWindow`

> Fokusera webbläsarfönstret efter att ha öppnat.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SetForeground`

> Visa webbläsarfönstret i förgrunden efter att det har öppnats.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Maximize`

> Maximera fönstret efter positionering.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-RestoreFocus`

> Återställ fokus till PowerShell-fönstret.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NewWindow`

> Återanvänd inte ett befintligt webbläsarfönster, utan skapa ett nytt istället.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PassThru`

> Returnerar ett [System.Diagnostics.Process]-objekt för webbläsarprocessen i webbläget eller ett frågeobjekt i API-läget.

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

> Öppna inte webbläsaren, returnera bara webbadressen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ReturnOnlyURL`

> Efter att ha öppnat webbläsaren, returnera webbadressen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyEscape`

> Undvik kontrolltecken när du skickar tangenter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Förhindra att tangentbordsfokuset återgår till PowerShell efter att ha skickat tangenter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
| **Parameter set** | Web |

<hr/>
### `-NoBorders`

> Ta bort fönsterkanter och titelrad för en renare look.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SideBySide`

> Placera webbläsarfönstret sida vid sida med PowerShell på samma skärm.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SessionOnly`

> Använd alternativa inställningar som lagras i sessionen för preferenser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ClearSession`

> Rensa alternativa inställningar som lagras i sessionen för preferenser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SkipSession`

> Lagra inställningar endast i beständiga preferenser utan att påverka sessionen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-BuiltWithSiteInfo.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-YoutubeQuery.md)
