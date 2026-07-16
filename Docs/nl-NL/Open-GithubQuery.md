# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub, `qgh

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-CaseSensitive] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De zoekopdrachten die op GitHub moeten worden uitgevoerd. Ondersteunt meerdere query's en pijplijninvoer voor batch-zoekopdrachten. Elke query wordt URL-gecodeerd en gebruikt om op GitHub te zoeken. |
| `-Type` | String | — | — | Named | `'Code'` | De belangrijkste categorie om te doorzoeken. Standaard ingesteld op 'Code'. |
| `-In` | String[] | — | — | Named | — | Te doorzoeken veld(en). Alleen geldige opties voor het geselecteerde Type worden geaccepteerd. |
| `-User` | String | — | — | Named | — | Beperk de zoekopdracht tot de bronnen van een gebruiker (repositories, code, issues, etc.). |
| `-Org` | String | — | — | Named | — | Beperk het zoeken tot een organisatie. |
| `-Repo` | String | — | — | Named | — | Beperk het zoeken tot een benoemde repository ('eigenaar/repo'). |
| `-Path` | String | — | — | Named | — | Beperkt code zoeken tot specifieke bestands- of mappaden (ondersteunt jokertekens volgens de GitHub-zoeksyntaxis). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filter resultaten op bestandsnaam (niet op pad). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Beperk codezoekopdracht tot bestandsextensies. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Filter by programming language. |
| `-Size` | String | — | — | Named | — | Bestand/repo grootte. Ondersteunt numerieke syntax en bereiksyntax (zie voorbeelden). |
| `-State` | String | — | — | Named | — | Voor problemen/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: beperk tot die gemaakt door een opgegeven gebruiker. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Issues/PR: beperk tot die waaraan een gebruiker is toegewezen. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR: moet worden gelabeld met alle opgegeven strings. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR: moeten bepaalde metadata missen (bijv. label, mijlpaal). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Sorteerveld (afhankelijk van Type). Bijv. "stars", "forks", "updated", enz. |
| `-Order` | String | — | — | Named | — | "asc" of "desc" volgorde voor sorteren. |
| `-PerPage` | Int32 | — | — | Named | `10` | Paginaformaat (maximaal 100). |
| `-Page` | Int32 | — | — | Named | `1` | Paginanummer voor gepagineerde resultaten. |
| `-Token` | String | — | — | Named | — | GitHub OAuth of Personal Access Token. Indien niet opgegeven, wordt GITHUB_TOKEN of de omgevingsvariabele gebruikt. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Stel de accept-lang HTTP-header van de browser in. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen het verzenden van verschillende toetsenreeksen in milliseconden. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Het beeldscherm om resultaten op weer te geven. 0 = standaard, -1 = negeren, -2 = secundair. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | De initiële breedte van het browservenster. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | De initiële hoogte van het browservenster. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | De initiële X-positie van het browservenster. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | De initiële Y-positie van het browservenster. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Toetsaanslagen om naar het browservenster te sturen, zie documentatie voor cmdlet GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Alleen overeenkomen met hoofdlettergevoelige resultaten (waar ondersteund). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Voer de zoekopdracht asynchroon uit als een PowerShell-taak. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": ["response"],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Gebruik API-modus in plaats van openen in webbrowser. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Opent de browser in de privé-/incognitomodus voor anoniem zoeken. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Forceer het inschakelen van de debugpoort, stop bestaande browsers indien nodig. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Opent de zoekresultaten in de Microsoft Edge-browser. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opent de zoekresultaten in de Google Chrome-browser. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Opent de zoekresultaten in Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Opent de zoekresultaten in de Mozilla Firefox-webbrowser. *(Parameter set: )* |
| `-All` | SwitchParameter | — | — | Named | — | Opent de zoekresultaten in alle geregistreerde moderne browsers. *(Parameter set: )* |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Opent de browser in de volledige schermweergave. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de linkerkant van het scherm. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de rechterkant van het scherm. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de bovenkant van het scherm. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de onderkant van het scherm. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het browservenster in het midden van het scherm. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Verberg de browserbediening. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Voorkom het laden van browserextensies. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Deactiveer de pop-upblokkering in de browser. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Richt het browservenster nadat u het hebt geopend. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het browservenster naar de voorgrond na het openen. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na het positioneren. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Herstel de focus van het PowerShell-venster. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Hergebruik geen bestaand browservenster, maar maak een nieuw venster aan. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Geeft een [System.Diagnostics.Process] object terug van het browserproces in webmodus of een queryobject in API-modus. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.example.com *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Na het openen van de webbrowser, retourneer de url. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Voorkomt het teruggeven van toetsenbordfocus aan PowerShell na het verzenden van toetsen. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijder vensterranden en titelbalk voor een schonere uitstraling. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Plaats het browservenster zij aan zij met PowerShell op dezelfde monitor. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor voorkeuren. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor voorkeuren. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session. *(Parameter set: )* |

## Outputs

- `PSObject`

## Related Links

- [Open-GithubQuery on GitHub](https://github.com/genXdev/genXdev)
