# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Stimmt mit allen möglichen Metadatentypen überein. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Array von Verzeichnispfaden zum Durchsuchen nach Bildern |
| `-Language` | String | — | — | Named | — | Sprache für Beschreibungen und Schlüsselwörter. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | Der zu suchende Beschreibungstext, Platzhalter erlaubt. |
| `-Keywords` | String[] | — | — | Named | `@()` | Die zu suchenden Schlüsselwörter, Platzhalter erlaubt. |
| `-People` | String[] | — | — | Named | `@()` | People to look for, wildcards allowed. |
| `-Objects` | String[] | — | — | Named | `@()` | Objects to look for, wildcards allowed. |
| `-Scenes` | String[] | — | — | Named | `@()` | Scene categories to look for, wildcards allowed. |
| `-PictureType` | String[] | — | — | Named | `@()` | Bildtyp, nach dem gefiltert werden soll (z. B. 'daylight', 'evening', 'indoor' usw.). Unterstützt Platzhalter. |
| `-StyleType` | String[] | — | — | Named | `@()` | Stiltyp zum Filtern (z.B. 'casual', 'formal' usw.). Unterstützt Platzhalter. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Übergeordnete Stimmung zum Filtern (z. B. 'ruhig', 'fröhlich', 'traurig' usw.). Unterstützt Platzhalter. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | Filter by camera make in image EXIF metadata. Supports wildcards. |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | Filter by camera model in image EXIF metadata. Supports wildcards. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | Filter by GPS latitude range in image EXIF metadata. |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | Filter by GPS longitude range in image EXIF metadata. |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | Nach GPS-Höhenbereich in Bild-EXIF-Daten filtern (in Metern). |
| `-GeoLocation` | Double[] | — | — | Named | — | Geografische Koordinaten [Breitengrad, Längengrad] für die Suche in der Nähe. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Maximale Entfernung in Metern vom Geo-Standort, um nach Bildern zu suchen. |
| `-MetaExposureTime` | Double[] | — | — | Named | — | Nach Belichtungszeitbereich in den EXIF-Metadaten des Bildes filtern (in Sekunden). |
| `-MetaFNumber` | Double[] | — | — | Named | — | Filter by F-number (aperture) range in image EXIF metadata. |
| `-MetaISO` | Int32[] | — | — | Named | — | Nach ISO-Empfindlichkeitsbereich in den EXIF-Metadaten von Bildern filtern. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | Filter by focal length range in image EXIF metadata (in mm). |
| `-MetaWidth` | Int32[] | — | — | Named | — | Filter by image width range in pixels from EXIF metadata. |
| `-MetaHeight` | Int32[] | — | — | Named | — | Filter by image height range in pixels from EXIF metadata. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | Filtern nach Aufnahmedatum aus EXIF-Metadaten. Kann ein Datumsbereich sein. |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Titel für die Galerie |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Beschreibung für die Galerie |
| `-AcceptLang` | String | — | — | Named | `$null` | Setzen Sie den Accept-Language-HTTP-Header des Browsers |
| `-KeysToSend` | String[] | — | — | Named | — | Tastenanschläge, die an das Browserfenster gesendet werden sollen, siehe Dokumentation für das Cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Verhindern, dass der Tastaturfokus nach dem Senden von Tasten zu PowerShell zurückkehrt |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen verschiedenen Eingabezeichenfolgen in Millisekunden beim Senden von Tasten |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Fenster nach der Positionierung |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-Monitor` | Int32 | — | — | Named | `-2` | Der zu verwendende Monitor, 0 = Standard, -1 = verwirft, -2 = Konfigurierter sekundärer Monitor, Standardmäßig Global:DefaultSecondaryMonitor oder 2, falls nicht gefunden |
| `-Width` | Int32 | — | — | Named | `-1` | Die anfängliche Breite des Webbrowser-Fensters |
| `-Height` | Int32 | — | — | Named | `-1` | Die anfängliche Höhe des Webbrowser-Fensters |
| `-X` | Int32 | — | — | Named | `-999999` | Die anfängliche X-Position des Webbrowser-Fensters |
| `-Y` | Int32 | — | — | Named | `-999999` | Die anfängliche Y-Position des Webbrowser-Fensters |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Bettet Bilder als Base64 ein. |
| `-NoFallback` | SwitchParameter | — | — | Named | — | Schalter zum Deaktivieren des Fallback-Verhaltens. |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | Schalter, um die Datenbankinitialisierung und den Wiederaufbau zu überspringen. |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Durchsuchen aller verfügbaren Laufwerke |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Nicht in Unterverzeichnisse absteigen |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Folgen Sie bei der Verzeichnisdurchquerung symbolischen Verknüpfungen und Verknüpfungspunkten. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die Verzeichnisdurchquerung. 0 bedeutet unbegrenzt. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die fortgesetzte Suche im Baum nach oben für relative Suchvorgänge, während keine Elemente gefunden werden. 0 bedeutet deaktiviert. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale Dateigröße in Bytes, die in die Ergebnisse einbezogen werden soll. 0 bedeutet unbegrenzt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Mindestdateigröße in Bytes, die in die Ergebnisse aufgenommen werden soll. 0 bedeutet kein Minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Nur Dateien einschließen, die nach diesem Datum/Uhrzeit (UTC) geändert wurden. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Nur Dateien einbeziehen, die vor diesem Datum/Zeitpunkt (UTC) geändert wurden. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Zu überspringende Dateiattribute (z. B. System, Versteckt oder Keine). |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that contain explicit content. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Nur Bilder ohne expliziten Inhalt behalten. |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | <div class="image-gallery">
  <img src="result1.jpg" alt="Search result 1">
  <img src="result2.jpg" alt="Search result 2">
  <img src="result3.jpg" alt="Search result 3">
</div> |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return image data as objects. When used with -ShowInBrowser, both displays the gallery and returns the objects. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Fensterrahmen und Titelleiste entfernen für ein saubereres Erscheinungsbild |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Place browser window side by side with PowerShell on the same monitor |
| `-Interactive` | SwitchParameter | — | — | Named | — | Verbindet sich mit dem Browser und fügt zusätzliche Schaltflächen wie Bearbeiten und Löschen hinzu. Nur wirksam, wenn mit -ShowInBrowser verwendet. |
| `-Private` | SwitchParameter | — | — | Named | — | Öffnet im Inkognito-/Privatmodus |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwinge das Aktivieren des Debug-Ports, stoppe ggf. vorhandene Browser |
| `-Edge` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge geöffnet |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öffnet in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge oder Google Chrome geöffnet, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öffnet in Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Öffnet in allen registrierten modernen Browsern |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öffnet im Vollbildmodus |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster auf der oberen Seite des Bildschirms |
| `-Bottom` | SwitchParameter | — | — | Named | — | Fenster unten am Bildschirmrand platzieren |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Blenden Sie die Browsersteuerelemente aus |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prävention des Ladens von Browser-Erweiterungen |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Deaktivieren Sie den Popup-Blocker |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Statt ein vorhandenes Browserfenster wiederzuverwenden, erstelle ein neues. |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | <html><body><h1>Hello, World!</h1></body></html> |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Deutliche Alternativ-Einstellungen, die in der Sitzung gespeichert sind, für KI-Präferenzen wie Sprache, Bildersammlungen usw. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Verwenden Sie keine alternativen in der Sitzung gespeicherten Einstellungen für KI-Präferenzen wie Sprache, Bildsammlungen usw. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Seite automatisch um diese Anzahl Pixel pro Sekunde scrollen (null zum Deaktivieren) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Rechtecke (Objekte/Flächen) im sichtbaren Bereich animieren, alle 300 ms wiederholen |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Erzwinge einspaltiges Layout (zentriert, 1/3 Bildschirmbreite) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Präfix, das jedem Bildpfad vorangestellt werden soll (z. B. für Remote-URLs) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | Mindest-Konfidenzverhältnis (0,0-1,0) zum Filtern von Personen, Szenen und Objekten nach Konfidenz. Gibt nur Daten für Personen, Szenen und Objekte zurück, deren Konfidenz größer oder gleich diesem Wert ist. |

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
