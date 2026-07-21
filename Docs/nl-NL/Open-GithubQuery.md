# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> Opent een GitHub-repositoryzoekopdracht in een webbrowser of voert geavanceerde zoekopdrachten uit via de GitHub REST API, met ondersteuning voor alle beschikbare kwalificaties en zoekcategorieën (repositories, code, issues, gebruikers, commits, discussies, onderwerpen, wiki's).

## Description

<details>
<summary><b>Expand description</b></summary>

Opent een GitHub-repository-zoekopdracht in een webbrowser met uitgebreide aanpassingsopties of voert geavanceerde API-zoekopdrachten uit. Deze functie biedt een krachtige interface om snel toegang te krijgen tot GitHub-repositories vanuit PowerShell met ondersteuning voor meerdere browsers, vensterpositionering, taalfiltering en toetsenbordautomatisering, of het ophalen van gestructureerde gegevens via API.

Belangrijkste functies:

- Ondersteuning voor meerdere zoekopdrachten met pijplijninvoer
- Taalspecifieke filtering met automatische lokalisatie
- Ondersteuning voor meerdere browsers (Edge, Chrome, Firefox)
- Geavanceerde vensterpositionering en monitorselectie
- Privé-/incognitomodus
- Applicatiemodus voor afleidingsvrij browsen
- Toetsenbordautomatisering en focusbeheer
- URL-retourmogelijkheden voor programmatisch gebruik
- Geavanceerde API-zoekopdracht met kwalificaties, sortering, paginering
- Ondersteuning voor alle GitHub-zoektypen
- Authenticatie met persoonlijke toegangstoken
- Asynchrone taakuitvoering voor API-zoekopdrachten
- Ruwe JSON of gestructureerde objectuitvoer

De functie maakt automatisch GitHub-zoek-URL's aan voor webmodus of API-eindpunten voor API-modus en geeft alle browser-gerelateerde parameters door aan de onderliggende Open-Webbrowser-functie voor consistent gedrag.

</details>
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
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De zoekopdrachten die moeten worden uitgevoerd op GitHub. Ondersteunt meerdere query's en pijplijninvoer voor batchgewijs zoeken. Elke query wordt URL-gecodeerd en gebruikt om te zoeken op GitHub. |
| `-Type` | String | — | — | Named | `'Code'` | De hoofdcategorie om te doorzoeken. Standaard ingesteld op 'Code'. |
| `-In` | String[] | — | — | Named | — | Veld(en) om te doorzoeken. Alleen geldige opties voor het geselecteerde type worden geaccepteerd. |
| `-User` | String | — | — | Named | — | Beperk de zoekopdracht tot de resources van een gebruiker (repos, code, issues, enz.). |
| `-Org` | String | — | — | Named | — | Beperk zoekopdracht tot een organisatie. |
| `-Repo` | String | — | — | Named | — |  Zoekopdracht beperken tot een benoemde repository ('eigenaar/repo'). |
| `-Path` | String | — | — | Named | — | Beperk code zoeken tot specifieke bestands- of mappaden (ondersteunt jokertekens volgens de GitHub-zoekopdrachtsyntaxis). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filter de resultaten op de bestandsnaam (niet het pad). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Beperk codezoekopdracht tot bestandsextensies. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Filteren op programmeertaal. |
| `-Size` | String | — | — | Named | — | Bestands-/repositorgrootte. Ondersteunt numerieke en bereiksyntaxis (zie voorbeelden). |
| `-State` | String | — | — | Named | — | Voor problemen/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Problemen/PR: beperken tot die gemaakt door een opgegeven gebruiker. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Problemen/PR: beperk tot deze die aan een gebruiker zijn toegewezen. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR: moeten worden gelabeld met alle opgegeven tekenreeksen. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR: moeten bepaalde metadata missen (bijv. label, mijlpaal). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Sorteerveld (afhankelijk van Type). Bijv. "stars", "forks", "updated", enz. |
| `-Order` | String | — | — | Named | — | "asc" of "desc" volgorde voor sorteren. |
| `-PerPage` | Int32 | — | — | Named | `10` | Paginagrootte (max 100). |
| `-Page` | Int32 | — | — | Named | `1` | Paginanummer voor paginaresultaten. |
| `-Token` | String | — | — | Named | — | GitHub OAuth of Persoonlijk Toegangstoken. Indien niet opgegeven, wordt GITHUB_TOKEN of omgevingsvariabele gebruikt. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Stel de browser accept-lang http-header in. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen het verzenden van verschillende toetsensequenties in milliseconden. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | De monitor om de resultaten op weer te geven. 0 = standaard, -1 = weggooien, -2 = secundair. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | De initiële breedte van het browservenster. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | De initiële hoogte van het browservenster. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | De initiële X-positie van het browservenster. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | De initiële Y-positie van het browservenster. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Toetsaanslagen die naar het browservenster moeten worden verzonden, raadpleeg de documentatie voor cmdlet GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Alleen resultaten matchen die hoofdlettergevoelig zijn (waar ondersteund). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Voer de zoekopdracht asynchroon uit als een PowerShell-taak. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | .SYNOPSIS
Hiermee wordt de invoer in kleine letters omgezet.

.DESCRIPTION
De cmdlet `ConvertTo-LowerCase` converteert alle tekens in de opgegeven tekenreeks naar kleine letters.

.PARAMETER InputString
Hiermee wordt de tekenreeks opgegeven die moet worden geconverteerd.

.EXAMPLE
ConvertTo-LowerCase -InputString "HELLO World"
Dit voorbeeld converteert "HELLO World" naar "hello world".

.EXAMPLE
"TEST" | ConvertTo-LowerCase
Dit voorbeeld demonstreert het gebruik van de pipeline-parameter voor invoer. *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Gebruik API-modus in plaats van openen in webbrowser. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Opent de browser in privé-/incognitomodus voor anoniem zoeken. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Forceer het inschakelen van de foutopsporingspoort, stop indien nodig bestaande browsers. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Opent de zoekresultaten in de Microsoft Edge-browser. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opent de zoekresultaten in de Google Chrome-browser. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Opent de zoekresultaten in Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Opent de zoekresultaten in de Mozilla Firefox-browser. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Gebruik de door Playwright beheerde browser in plaats van de door het besturingssysteem geïnstalleerde browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Opent de Playwright-beheerde WebKit-browser. Impliceert -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Voer de browser uit zonder een zichtbaar venster |
| `-All` | SwitchParameter | — | — | Named | — | Opent in alle geregistreerde moderne browsers |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Opent de browser in volledig scherm. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats browservenster aan de linkerkant van het scherm. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de rechterkant van het scherm. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de bovenkant van het scherm. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de onderkant van het scherm. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het browser venster in het midden van het scherm. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Verberg de browserbesturingselementen. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Voorkom het laden van browserextensies. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Schakel de pop-upblokkering in de browser uit. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Het browservenster focussen na het openen. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Stel het browservenster op de voorgrond na het openen. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na positionering. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Herstel de focus op het PowerShell-venster. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Gebruik geen bestaand browser venster opnieuw, maak in plaats daarvan een nieuw aan. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourneert een [System.Diagnostics.Process] object van het browserproces in webmodus of een queryobject in API-modus. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Open geen webbrowser, retourneer gewoon de url. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Na het openen van de webbrowser de url retourneren. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Ontsnap besturingstekens bij het verzenden van toetsen. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Voorkom dat het toetsenbordfocus terugkeert naar PowerShell na het verzenden van toetsen. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Stuur Shift+Enter in plaats van gewone Enter voor regeleinden. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijder vensterranden en titelbalk voor een schonere weergave. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Plaats het browservenster naast PowerShell op dezelfde monitor. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor voorkeuren. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in de sessie voor voorkeuren. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sla instellingen alleen op in permanente voorkeuren zonder de sessie te beïnvloeden. *(Parameter set: )* |

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

> De zoekopdrachten die moeten worden uitgevoerd op GitHub. Ondersteunt meerdere query's en pijplijninvoer voor batchgewijs zoeken. Elke query wordt URL-gecodeerd en gebruikt om te zoeken op GitHub.

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

> De hoofdcategorie om te doorzoeken. Standaard ingesteld op 'Code'.

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

> Veld(en) om te doorzoeken. Alleen geldige opties voor het geselecteerde type worden geaccepteerd.

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

> Beperk de zoekopdracht tot de resources van een gebruiker (repos, code, issues, enz.).

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

> Beperk zoekopdracht tot een organisatie.

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

>  Zoekopdracht beperken tot een benoemde repository ('eigenaar/repo').

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

> Beperk code zoeken tot specifieke bestands- of mappaden (ondersteunt jokertekens volgens de GitHub-zoekopdrachtsyntaxis).

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

> Filter de resultaten op de bestandsnaam (niet het pad).

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

> Beperk codezoekopdracht tot bestandsextensies.

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

> Filteren op programmeertaal.

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

> Bestands-/repositorgrootte. Ondersteunt numerieke en bereiksyntaxis (zie voorbeelden).

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

> Voor problemen/PR.

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

> Problemen/PR: beperken tot die gemaakt door een opgegeven gebruiker.

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

> Problemen/PR: beperk tot deze die aan een gebruiker zijn toegewezen.

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

> Issues/PR: moeten worden gelabeld met alle opgegeven tekenreeksen.

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

> Issues/PR: moeten bepaalde metadata missen (bijv. label, mijlpaal).

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

> Sorteerveld (afhankelijk van Type). Bijv. "stars", "forks", "updated", enz.

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

> "asc" of "desc" volgorde voor sorteren.

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

> Paginagrootte (max 100).

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

> Paginanummer voor paginaresultaten.

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

> GitHub OAuth of Persoonlijk Toegangstoken. Indien niet opgegeven, wordt GITHUB_TOKEN of omgevingsvariabele gebruikt.

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

> Stel de browser accept-lang http-header in.

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

> Vertraging tussen het verzenden van verschillende toetsensequenties in milliseconden.

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

> De monitor om de resultaten op weer te geven. 0 = standaard, -1 = weggooien, -2 = secundair.

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

> De initiële breedte van het browservenster.

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

> De initiële hoogte van het browservenster.

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

> De initiële X-positie van het browservenster.

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

> De initiële Y-positie van het browservenster.

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

> Toetsaanslagen die naar het browservenster moeten worden verzonden, raadpleeg de documentatie voor cmdlet GenXdev\Send-Key.

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

> Alleen resultaten matchen die hoofdlettergevoelig zijn (waar ondersteund).

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

> Voer de zoekopdracht asynchroon uit als een PowerShell-taak.

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

> .SYNOPSIS
Hiermee wordt de invoer in kleine letters omgezet.

.DESCRIPTION
De cmdlet `ConvertTo-LowerCase` converteert alle tekens in de opgegeven tekenreeks naar kleine letters.

.PARAMETER InputString
Hiermee wordt de tekenreeks opgegeven die moet worden geconverteerd.

.EXAMPLE
ConvertTo-LowerCase -InputString "HELLO World"
Dit voorbeeld converteert "HELLO World" naar "hello world".

.EXAMPLE
"TEST" | ConvertTo-LowerCase
Dit voorbeeld demonstreert het gebruik van de pipeline-parameter voor invoer.

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

> Gebruik API-modus in plaats van openen in webbrowser.

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

> Opent de browser in privé-/incognitomodus voor anoniem zoeken.

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

> Forceer het inschakelen van de foutopsporingspoort, stop indien nodig bestaande browsers.

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

> Opent de zoekresultaten in de Microsoft Edge-browser.

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

> Opent de zoekresultaten in de Google Chrome-browser.

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

> Opent de zoekresultaten in Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is.

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

> Opent de zoekresultaten in de Mozilla Firefox-browser.

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

> Gebruik de door Playwright beheerde browser in plaats van de door het besturingssysteem geïnstalleerde browser

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

> Opent de Playwright-beheerde WebKit-browser. Impliceert -PlayWright

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

> Voer de browser uit zonder een zichtbaar venster

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

> Opent in alle geregistreerde moderne browsers

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

> Opent de browser in volledig scherm.

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

> Plaats browservenster aan de linkerkant van het scherm.

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

> Plaats het browservenster aan de rechterkant van het scherm.

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

> Plaats het browservenster aan de bovenkant van het scherm.

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

> Plaats het browservenster aan de onderkant van het scherm.

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

> Plaats het browser venster in het midden van het scherm.

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

> Verberg de browserbesturingselementen.

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

> Voorkom het laden van browserextensies.

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

> Schakel de pop-upblokkering in de browser uit.

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

> Het browservenster focussen na het openen.

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

> Stel het browservenster op de voorgrond na het openen.

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

> Maximaliseer het venster na positionering.

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

> Herstel de focus op het PowerShell-venster.

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

> Gebruik geen bestaand browser venster opnieuw, maak in plaats daarvan een nieuw aan.

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

> Retourneert een [System.Diagnostics.Process] object van het browserproces in webmodus of een queryobject in API-modus.

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

> Open geen webbrowser, retourneer gewoon de url.

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

> Na het openen van de webbrowser de url retourneren.

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

> Ontsnap besturingstekens bij het verzenden van toetsen.

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

> Voorkom dat het toetsenbordfocus terugkeert naar PowerShell na het verzenden van toetsen.

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

> Stuur Shift+Enter in plaats van gewone Enter voor regeleinden.

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

> Verwijder vensterranden en titelbalk voor een schonere weergave.

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

> Plaats het browservenster naast PowerShell op dezelfde monitor.

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

> Gebruik alternatieve instellingen opgeslagen in sessie voor voorkeuren.

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

> Wis alternatieve instellingen opgeslagen in de sessie voor voorkeuren.

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

> Sla instellingen alleen op in permanente voorkeuren zonder de sessie te beïnvloeden.

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

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-BuiltWithSiteInfo.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-YoutubeQuery.md)
