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
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Die auf GitHub auszuführenden Suchanfragen. Unterstützt mehrere Abfragen und Pipeline-Eingabe für die Batch-Suche. Jede Abfrage wird URL-kodiert und zur Suche auf GitHub verwendet. |
| `-Type` | String | — | — | Named | `'Code'` | Die Hauptkategorie zum Suchen. Standardmäßig 'Code'. |
| `-In` | String[] | — | — | Named | — | Feld(er) zum Durchsuchen. Nur gültige Optionen für den ausgewählten Typ werden akzeptiert. |
| `-User` | String | — | — | Named | — | Schränken Sie die Suche auf die Ressourcen eines Benutzers ein (Repos, Code, Issues usw.). |
| `-Org` | String | — | — | Named | — | Suche auf eine Organisation einschränken. |
| `-Repo` | String | — | — | Named | — | Suche auf ein benanntes Repository ('owner/repo') beschränken. |
| `-Path` | String | — | — | Named | — | Beschränken Sie die Codesuche auf bestimmte Datei- oder Verzeichnispfade (unterstützt Platzhalter gemäß der GitHub-Suchsyntax). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filterergebnisse nach Dateinamen (nicht Pfad) filtern. *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Restrict code search to file extensions. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Nach Programmiersprache filtern. |
| `-Size` | String | — | — | Named | — | Datei-/Repo-Größe. Unterstützt numerische Syntax und Bereichssyntax (siehe Beispiele). |
| `-State` | String | — | — | Named | — | Für Issues/PRs. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: auf solche eines bestimmten Benutzers beschränken. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Issues/PR: auf diejenigen beschränken, die einem Benutzer zugewiesen sind. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR: müssen mit allen angegebenen Zeichenfolgen beschriftet sein. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR: müssen bestimmte Metadaten fehlen (z. B. Label, Meilenstein). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Sortierfeld (abhängig vom Typ). Z.B. "stars", "forks", "updated" usw. |
| `-Order` | String | — | — | Named | — | "asc" bzw. "desc" Reihenfolge zum Sortieren. |
| `-PerPage` | Int32 | — | — | Named | `10` | Seitengröße (maximal 100). |
| `-Page` | Int32 | — | — | Named | `1` | Seitenzahl für seitenweise Ergebnisse. |
| `-Token` | String | — | — | Named | — | GitHub-OAuth oder Persönlicher Zugriffstoken. Falls nicht angegeben, wird GITHUB_TOKEN oder die Umgebungsvariable verwendet. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen dem Senden verschiedener Tastenfolgen in Millisekunden. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Der Monitor, auf dem die Ergebnisse angezeigt werden. 0 = Standard, -1 = verwerfen, -2 = sekundär. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | Die anfängliche Breite des Browserfensters. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | Die anfängliche Höhe des Browserfensters. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | Die initiale X-Position des Browserfensters. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | Die anfängliche Y-Position des Browserfensters. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Tastenanschläge, die an das Browserfenster gesendet werden sollen, siehe Dokumentation für das Cmdlet GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Only match case-sensitive results (where supported). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Führen Sie die Suche asynchron als PowerShell-Job aus. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | {"response":"Hier ist Ihre Anfrage: Hallo Welt"} *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Use API-Modus anstatt im Webbrowser zu öffnen. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Öffnet den Browser im privaten/Inkognito-Modus für anonymes Suchen. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Debug-Port erzwungen aktivieren, vorhandene Browser gegebenenfalls beenden. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Öffnet die Suchergebnisse im Microsoft Edge-Browser. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öffnet die Suchergebnisse im Browser Google Chrome. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Öffnet die Suchergebnisse in Microsoft Edge oder Google Chrome, je nachdem, welcher Browser der Standard ist. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öffnet die Suchergebnisse im Mozilla Firefox-Browser. *(Parameter set: )* |
| `-All` | SwitchParameter | — | — | Named | — | Öffnet die Suchergebnisse in allen registrierten modernen Browsern. *(Parameter set: )* |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öffnet den Browser im Vollbildmodus. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster auf der linken Seite des Bildschirms. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Platziere das Browserfenster auf der rechten Seite des Bildschirms. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Place browser window on the top side of the screen. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster am unteren Bildschirmrand. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Blende die Browsersteuerelemente aus. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Verhindern des Ladens von Browsererweiterungen. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Deaktivieren Sie den Popup-Blocker im Browser. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Stellen Sie das Browserfenster nach dem Öffnen in den Vordergrund. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Fenster nach der Positionierung maximieren. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fensterfokus wiederherstellen. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Öffnen Sie ein neues Browserfenster, anstatt ein vorhandenes wiederzuverwenden. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt ein [System.Diagnostics.Process]-Objekt des Browserprozesses im Webmodus oder ein Abfrageobjekt im API-Modus zurück. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Prevent returning keyboard focus to PowerShell after sending keys. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Place browser window side by side with PowerShell on the same monitor. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for preferences. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Einstellungen für alternative Ansichten im Sitzungsspeicher gelöscht. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session. *(Parameter set: )* |

## Outputs

- `PSObject`

## Related Links

- [Open-GithubQuery on GitHub](https://github.com/genXdev/genXdev)
