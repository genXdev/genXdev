# Show-FoundImagesInBrowser

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `showfoundimages

## Synopsis

> Displays image search results in a masonry layout web gallery.

## Description

Übernimmt Bildsuchergebnisse und zeigt sie in einem browserbasierten Masonry-Layout an. Kann im interaktiven Modus mit Bearbeitungs- und Löschfunktionen oder im einfachen Anzeigemodus betrieben werden. Akzeptiert Bilddatenobjekte, typischerweise von Find-Image, und rendert sie mit Hover-Tooltips, die Metadaten wie Gesichtserkennung, Objekterkennung und Szenenklassifikationsdaten anzeigen.

## Syntax

```powershell
Show-FoundImagesInBrowser [[-InputObject] <Object[]>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-OnlyReturnHtml] [-PassThru] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object[] | — | ✅ (ByValue) | 0 | `@()` | Bilddatenobjekte zur Anzeige in der Galerie. |
| `-Interactive` | SwitchParameter | — | — | Named | — | Stellt eine Verbindung zum Browser her und fügt zusätzliche Schaltflächen wie Bearbeiten und Löschen hinzu |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Titel für die Galerie |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Bewegen Sie die Maus über Bilder, um Gesichtserkennungs- und Objekterkennungsdaten anzuzeigen |
| `-Private` | SwitchParameter | — | — | Named | — | Öffnet im Inkognito-/Privatmodus |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwinge das Aktivieren des Debug-Ports, stoppe ggf. vorhandene Browser |
| `-Edge` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge geöffnet |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öffnet in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge oder Google Chrome geöffnet, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öffnet in Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Verwendet den von Playwright verwalteten WebKit-Browser |
| `-All` | SwitchParameter | — | — | Named | — | Öffnet in allen registrierten modernen Browsern |
| `-Monitor` | Int32 | — | — | Named | `-2` | Der zu verwendende Monitor, 0 = Standard, -1 = verwirft, -2 = Konfigurierter sekundärer Monitor, Standardmäßig Global:DefaultSecondaryMonitor oder 2, falls nicht gefunden |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öffnet im Vollbildmodus |
| `-Width` | Int32 | — | — | Named | `-1` | Die anfängliche Breite des Webbrowser-Fensters |
| `-Height` | Int32 | — | — | Named | `-1` | Die anfängliche Höhe des Webbrowser-Fensters |
| `-X` | Int32 | — | — | Named | `-999999` | Die anfängliche X-Position des Webbrowser-Fensters |
| `-Y` | Int32 | — | — | Named | `-999999` | Die anfängliche Y-Position des Webbrowser-Fensters |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster auf der oberen Seite des Bildschirms |
| `-Bottom` | SwitchParameter | — | — | Named | — | Fenster unten am Bildschirmrand platzieren |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Blenden Sie die Browsersteuerelemente aus |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prävention des Ladens von Browser-Erweiterungen |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Deaktivieren Sie den Popup-Blocker |
| `-AcceptLang` | String | — | — | Named | `$null` | Setzen Sie den Accept-Language-HTTP-Header des Browsers |
| `-KeysToSend` | String[] | — | — | Named | — | Tastenanschläge, die an das Browserfenster gesendet werden sollen, siehe Dokumentation für das Cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Fenster nach der Positionierung |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Erstellen Sie ein neues Browserfenster, anstatt ein vorhandenes wiederzuverwenden |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | <html><body><h1>Hello, World!</h1></body></html> |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Embed images as base64 data URLs instead of file:// URLs for better portability. |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behält den Tastaturfokus auf dem Zielfenster beim Senden von Tastenanschlägen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen verschiedenen Eingabezeichenfolgen in Millisekunden beim Senden von Tasten |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Fensterrahmen und Titelleiste entfernen für ein saubereres Erscheinungsbild |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return the browser window helper object for further manipulation |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Place browser window side by side with PowerShell on the same monitor |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Seite automatisch um diese Anzahl Pixel pro Sekunde scrollen (null zum Deaktivieren) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Rechtecke (Objekte/Flächen) im sichtbaren Bereich animieren, alle 300 ms wiederholen |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Erzwinge einspaltiges Layout (zentriert, 1/3 Bildschirmbreite) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Präfix, das jedem Bildpfad vorangestellt werden soll (z. B. für Remote-URLs) |

## Examples

### Show-FoundImagesInBrowser -InputObject $images Displays the image results in a simple web gallery.

```powershell
Show-FoundImagesInBrowser -InputObject $images
Displays the image results in a simple web gallery.
```

### Show-FoundImagesInBrowser -InputObject $images -Interactive -Title "My Photos" Displays images in interactive mode with edit/delete buttons.

```powershell
Show-FoundImagesInBrowser -InputObject $images -Interactive -Title "My Photos"
Displays images in interactive mode with edit/delete buttons.
```

### showfoundimages $images -Private -FullScreen Opens the gallery in private browsing mode in fullscreen.

```powershell
showfoundimages $images -Private -FullScreen
Opens the gallery in private browsing mode in fullscreen.
```

## Related Links

- [Show-FoundImagesInBrowser on GitHub](https://github.com/genXdev/genXdev)
