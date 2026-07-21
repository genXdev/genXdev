# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> Öffnet eine GitHub-Repository-Suchanfrage in einem Webbrowser oder führt erweiterte Suchen über die GitHub-REST-API durch, die alle verfügbaren Qualifikatoren und Suchkategorien (Repositories, Code, Issues, Benutzer, Commits, Diskussionen, Themen, Wikis) unterstützt.

## Description

Öffnet eine GitHub-Repository-Suchanfrage in einem Webbrowser mit umfangreichen Anpassungsoptionen oder führt erweiterte API-Suchen durch. Diese Funktion bietet eine leistungsstarke Schnittstelle zum schnellen Zugriff auf GitHub-Repositorys über PowerShell mit Unterstützung für mehrere Browser, Fensterpositionierung, Sprachfilterung und Tastaturautomatisierung oder zum Abrufen strukturierter Daten über die API. Hauptmerkmale:

Unterstützung mehrerer Suchanfragen mit Pipeline-Eingabe
Sprachspezifische Filterung mit automatischer Lokalisierung
Multi-Browser-Unterstützung (Edge, Chrome, Firefox)
Erweiterte Fensterpositionierung und Monitorauswahl
Privater/Inkognito-Modus
Anwendungsmodus für ablenkungsfreies Surfen
Tastaturautomatisierung und Fokusverwaltung
URL-Rückgabeoptionen für programmatische Nutzung
Erweiterte API-Suche mit Qualifizierern, Sortierung, Paginierung
Unterstützung für alle GitHub-Suchtypen
Authentifizierung mit persönlichem Zugriffstoken
Asynchrone Jobausführung für API-Suchen
Rohes JSON oder strukturiertes Objekt als Ausgabe

Die Funktion erstellt automatisch GitHub-Such-URLs für den Webmodus oder API-Endpunkte für den API-Modus und übergibt alle browserbezogenen Parameter an die zugrunde liegende Open-Webbrowser-Funktion für konsistentes Verhalten.

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
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Die auf GitHub auszuführenden Suchabfragen. Unterstützt mehrere Abfragen und Pipeline-Eingabe für die Batch-Suche. Jede Abfrage wird URL-kodiert und zur Suche auf GitHub verwendet. |
| `-Type` | String | — | — | Named | `'Code'` | Die Hauptkategorie, nach der gesucht werden soll. Standardwert ist 'Code'. |
| `-In` | String[] | — | — | Named | — | Feld(er) zum Durchsuchen. Nur gültige Optionen für den ausgewählten Typ werden akzeptiert. |
| `-User` | String | — | — | Named | — | Schränken Sie die Suche auf die Ressourcen eines Benutzers ein (Repos, Code, Issues usw.). |
| `-Org` | String | — | — | Named | — | Suche auf eine Organisation beschränken. |
| `-Repo` | String | — | — | Named | — | Beschränke die Suche auf ein benanntes Repository ('Besitzer/Repo'). |
| `-Path` | String | — | — | Named | — | Schränken Sie die Codesuche auf bestimmte Datei- oder Verzeichnispfade ein (unterstützt Platzhalter gemäß GitHub-Such-Syntax). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filtern Sie die Ergebnisse nach dem Dateinamen (nicht dem Pfad). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Codesuche auf Dateierweiterungen beschränken. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Nach Programmiersprache filtern. |
| `-Size` | String | — | — | Named | — | Datei-/Repogröße. Unterstützt numerische und Bereichssyntax (siehe Beispiele). |
| `-State` | String | — | — | Named | — | Bei Problemen/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: Beschränkung auf die von einem bestimmten Benutzer erstellten. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Issues/PR: auf die begrenzen, die einem Benutzer zugewiesen sind. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR: müssen mit allen angegebenen Zeichenfolgen gekennzeichnet sein. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR: müssen bestimmte Metadaten fehlen (z. B. Label, Meilenstein). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Sortierfeld (abhängig vom Typ). Z. B. "stars", "forks", "updated" usw. |
| `-Order` | String | — | — | Named | — | „asc“- oder „desc“-Reihenfolge zum Sortieren. |
| `-PerPage` | Int32 | — | — | Named | `10` | Seitengröße (max. 100). |
| `-Page` | Int32 | — | — | Named | `1` | Seitennummer für seitenweise Ergebnisse. |
| `-Token` | String | — | — | Named | — | GitHub OAuth oder Personal Access Token. Wenn nicht angegeben, wird GITHUB_TOKEN oder die Umgebungsvariable verwendet. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Setzt den Browser-Accept-Language-HTTP-Header. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen dem Senden verschiedener Tastensequenzen in Millisekunden. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Der Monitor, auf dem die Ergebnisse angezeigt werden sollen. 0 = Standard, -1 = verwerfen, -2 = sekundär. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | Die anfängliche Breite des Browserfensters. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | Die anfängliche Höhe des Browserfensters. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | Die anfängliche X-Position des Browserfensters. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | Die anfängliche Y-Position des Browserfensters. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Tastenanschläge, die an das Browserfenster gesendet werden sollen, siehe Dokumentation zum Cmdlet GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Nur Groß-/Kleinschreibung beachtende Ergebnisse (sofern unterstützt). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Führen Sie die Suche asynchron als PowerShell-Auftrag aus. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | # .PARAMETER <Parameter-Name>

Beschreibt die Funktionsweise des Parameters.

## Syntax

```powershell


| Syntaxelement | BESCHREIBUNG |
|---|---|
| `<Parameter-Name>` | Der Name des Parameters. |
| `<Parameter-Wert>` | Der Wert, der an den Parameter übergeben wird. |
```

## HINWEISE

- Ein Parameter kann optional oder erforderlich sein.
- Der Parameter akzeptiert möglicherweise Pipeline-Eingaben oder platzhalterartige Zeichen.

## BEISPIELE

### Beispiel 1: Einfache Verwendung

```powershell
Get-Help Get-Process -Parameter Name
```

### Beispiel 2: Parameter mit Wert

```powershell
Get-Process -Name "powershell"
```

## VERWANDTE LINKS

- [about_Parameters]()
- [about_CommonParameters]() *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Verwenden Sie den API-Modus anstatt im Webbrowser zu öffnen. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Öffnet den Browser im privaten/Inkognito-Modus für anonymes Suchen. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Debugging-Port zwangsweise aktivieren, vorhandene Browser ggf. beenden. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Öffnet die Suchergebnisse im Microsoft Edge-Browser. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öffnet die Suchergebnisse im Google Chrome-Browser. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Öffnet die Suchergebnisse in Microsoft Edge oder Google Chrome, je nachdem, was der Standardbrowser ist. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öffnet die Suchergebnisse im Mozilla Firefox-Browser. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Verwenden Sie den von Playwright verwalteten Browser anstelle des im Betriebssystem installierten Browsers |
| `-Webkit` | SwitchParameter | — | — | Named | — | Öffnet den von Playwright verwalteten WebKit-Browser. Impliziert -Playwright |
| `-Headless` | SwitchParameter | — | — | Named | — | Führen Sie den Browser ohne sichtbares Fenster aus |
| `-All` | SwitchParameter | — | — | Named | — | Wird in allen registrierten modernen Browsern geöffnet |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öffnet den Browser im Vollbildmodus. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster auf der linken Seite des Bildschirms. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Browserfenster auf der rechten Seite des Bildschirms platzieren. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Browserfenster auf der oberen Seite des Bildschirms platzieren. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster am unteren Bildschirmrand. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Browserfenster in der Mitte des Bildschirms platzieren. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Blenden Sie die Browsersteuerelemente aus. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Laden von Browsererweiterungen verhindern. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Deaktivieren Sie den Popup-Blocker im Browser. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Setzen Sie das Browserfenster nach dem Öffnen in den Vordergrund. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Fenster nach dem Positionieren. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fensterfokus wiederherstellen. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Verwenden Sie kein vorhandenes Browserfenster erneut, sondern erstellen Sie ein neues. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt ein [System.Diagnostics.Process]-Objekt des Browserprozesses im Webmodus oder ein Abfrageobjekt im API-Modus zurück. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Öffnen Sie keinen Webbrowser, geben Sie einfach die URL zurück. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Nach dem Öffnen des Webbrowsers die URL zurückgeben. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape-Steuerzeichen beim Senden von Tasten. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Verhindern, dass der Tastaturfokus nach dem Senden von Tasten zurück zu PowerShell wechselt. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Senden Sie Umschalt+Eingabe anstelle der normalen Eingabetaste für Zeilenumbrüche. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernen Sie Fensterrahmen und Titelleiste für ein saubereres Erscheinungsbild. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster und PowerShell nebeneinander auf demselben Monitor. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für Einstellungen verwenden. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Löschen Sie alternative Einstellungen, die für Voreinstellungen in der Sitzung gespeichert sind. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Einstellungen nur in dauerhaften Einstellungen speichern, ohne die Sitzung zu beeinflussen. *(Parameter set: )* |

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

> Die auf GitHub auszuführenden Suchabfragen. Unterstützt mehrere Abfragen und Pipeline-Eingabe für die Batch-Suche. Jede Abfrage wird URL-kodiert und zur Suche auf GitHub verwendet.

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

> Die Hauptkategorie, nach der gesucht werden soll. Standardwert ist 'Code'.

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

> Feld(er) zum Durchsuchen. Nur gültige Optionen für den ausgewählten Typ werden akzeptiert.

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

> Schränken Sie die Suche auf die Ressourcen eines Benutzers ein (Repos, Code, Issues usw.).

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

> Suche auf eine Organisation beschränken.

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

> Beschränke die Suche auf ein benanntes Repository ('Besitzer/Repo').

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

> Schränken Sie die Codesuche auf bestimmte Datei- oder Verzeichnispfade ein (unterstützt Platzhalter gemäß GitHub-Such-Syntax).

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

> Filtern Sie die Ergebnisse nach dem Dateinamen (nicht dem Pfad).

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

> Codesuche auf Dateierweiterungen beschränken.

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

> Nach Programmiersprache filtern.

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

> Datei-/Repogröße. Unterstützt numerische und Bereichssyntax (siehe Beispiele).

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

> Bei Problemen/PR.

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

> Issues/PR: Beschränkung auf die von einem bestimmten Benutzer erstellten.

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

> Issues/PR: auf die begrenzen, die einem Benutzer zugewiesen sind.

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

> Issues/PR: müssen mit allen angegebenen Zeichenfolgen gekennzeichnet sein.

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

> Issues/PR: müssen bestimmte Metadaten fehlen (z. B. Label, Meilenstein).

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

> Sortierfeld (abhängig vom Typ). Z. B. "stars", "forks", "updated" usw.

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

> „asc“- oder „desc“-Reihenfolge zum Sortieren.

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

> Seitengröße (max. 100).

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

> Seitennummer für seitenweise Ergebnisse.

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

> GitHub OAuth oder Personal Access Token. Wenn nicht angegeben, wird GITHUB_TOKEN oder die Umgebungsvariable verwendet.

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

> Setzt den Browser-Accept-Language-HTTP-Header.

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

> Verzögerung zwischen dem Senden verschiedener Tastensequenzen in Millisekunden.

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

> Der Monitor, auf dem die Ergebnisse angezeigt werden sollen. 0 = Standard, -1 = verwerfen, -2 = sekundär.

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

> Die anfängliche Breite des Browserfensters.

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

> Die anfängliche Höhe des Browserfensters.

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

> Die anfängliche X-Position des Browserfensters.

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

> Die anfängliche Y-Position des Browserfensters.

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

> Tastenanschläge, die an das Browserfenster gesendet werden sollen, siehe Dokumentation zum Cmdlet GenXdev\Send-Key.

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

> Nur Groß-/Kleinschreibung beachtende Ergebnisse (sofern unterstützt).

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

> Führen Sie die Suche asynchron als PowerShell-Auftrag aus.

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

> # .PARAMETER <Parameter-Name>

Beschreibt die Funktionsweise des Parameters.

## Syntax

```powershell


| Syntaxelement | BESCHREIBUNG |
|---|---|
| `<Parameter-Name>` | Der Name des Parameters. |
| `<Parameter-Wert>` | Der Wert, der an den Parameter übergeben wird. |
```

## HINWEISE

- Ein Parameter kann optional oder erforderlich sein.
- Der Parameter akzeptiert möglicherweise Pipeline-Eingaben oder platzhalterartige Zeichen.

## BEISPIELE

### Beispiel 1: Einfache Verwendung

```powershell
Get-Help Get-Process -Parameter Name
```

### Beispiel 2: Parameter mit Wert

```powershell
Get-Process -Name "powershell"
```

## VERWANDTE LINKS

- [about_Parameters]()
- [about_CommonParameters]()

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

> Verwenden Sie den API-Modus anstatt im Webbrowser zu öffnen.

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

> Öffnet den Browser im privaten/Inkognito-Modus für anonymes Suchen.

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

> Debugging-Port zwangsweise aktivieren, vorhandene Browser ggf. beenden.

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

> Öffnet die Suchergebnisse im Microsoft Edge-Browser.

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

> Öffnet die Suchergebnisse im Google Chrome-Browser.

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

> Öffnet die Suchergebnisse in Microsoft Edge oder Google Chrome, je nachdem, was der Standardbrowser ist.

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

> Öffnet die Suchergebnisse im Mozilla Firefox-Browser.

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

> Verwenden Sie den von Playwright verwalteten Browser anstelle des im Betriebssystem installierten Browsers

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

> Öffnet den von Playwright verwalteten WebKit-Browser. Impliziert -Playwright

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

> Führen Sie den Browser ohne sichtbares Fenster aus

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

> Wird in allen registrierten modernen Browsern geöffnet

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

> Öffnet den Browser im Vollbildmodus.

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

> Platzieren Sie das Browserfenster auf der linken Seite des Bildschirms.

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

> Browserfenster auf der rechten Seite des Bildschirms platzieren.

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

> Browserfenster auf der oberen Seite des Bildschirms platzieren.

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

> Platzieren Sie das Browserfenster am unteren Bildschirmrand.

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

> Browserfenster in der Mitte des Bildschirms platzieren.

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

> Blenden Sie die Browsersteuerelemente aus.

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

> Laden von Browsererweiterungen verhindern.

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

> Deaktivieren Sie den Popup-Blocker im Browser.

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

> Fokussieren Sie das Browserfenster nach dem Öffnen.

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

> Setzen Sie das Browserfenster nach dem Öffnen in den Vordergrund.

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

> Maximieren Sie das Fenster nach dem Positionieren.

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

> PowerShell-Fensterfokus wiederherstellen.

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

> Verwenden Sie kein vorhandenes Browserfenster erneut, sondern erstellen Sie ein neues.

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

> Gibt ein [System.Diagnostics.Process]-Objekt des Browserprozesses im Webmodus oder ein Abfrageobjekt im API-Modus zurück.

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

> Öffnen Sie keinen Webbrowser, geben Sie einfach die URL zurück.

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

> Nach dem Öffnen des Webbrowsers die URL zurückgeben.

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

> Escape-Steuerzeichen beim Senden von Tasten.

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

> Verhindern, dass der Tastaturfokus nach dem Senden von Tasten zurück zu PowerShell wechselt.

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

> Senden Sie Umschalt+Eingabe anstelle der normalen Eingabetaste für Zeilenumbrüche.

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

> Entfernen Sie Fensterrahmen und Titelleiste für ein saubereres Erscheinungsbild.

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

> Platzieren Sie das Browserfenster und PowerShell nebeneinander auf demselben Monitor.

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

> In der Sitzung gespeicherte alternative Einstellungen für Einstellungen verwenden.

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

> Löschen Sie alternative Einstellungen, die für Voreinstellungen in der Sitzung gespeichert sind.

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

> Einstellungen nur in dauerhaften Einstellungen speichern, ohne die Sitzung zu beeinflussen.

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

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-BuiltWithSiteInfo.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-YoutubeQuery.md)
