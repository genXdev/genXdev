# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> Zoekt naar afbeeldingsbestanden en metadata in opgegeven mappen met filtermogelijkheden en optionele browsergebaseerde galerijweergave.

## Description

Zoekt naar afbeeldingsbestanden (jpg, jpeg, png, gif, bmp, webp, tiff, tif) in de opgegeven map en submap. Voor elke afbeelding worden gekoppelde bestanden description.json, keywords.json, people.json en objects.json gecontroleerd op metadata. Kan afbeeldingen filteren op basis van trefwoordovereenkomsten, herkenning van personen en objectdetectie, en de resultaten als objecten retourneren. Gebruik -ShowInBrowser om resultaten weer te geven in een browsergebaseerde metselwerk lay-out.

Parameterlogica:
- Binnen elk parametertype (Trefwoorden, Personen, Objecten, enz.): Gebruikt OF-logica
  Voorbeeld: -Keywords "kat","hond" vindt afbeeldingen met OF kat OF hond
- Tussen verschillende parametertypen: Gebruikt EN-logica
  Voorbeeld: -Keywords "kat" -People "Jan" vindt afbeeldingen met kat EN Jan
- EXIF-bereikparameters: Geef [min, max] waarden voor het filteren van bereiken
- Tekstparameters: Ondersteunen jokerteken overeenkomsten met * en ?

De functie doorzoekt afbeeldingsmappen en onderzoekt alternatieve datastromen die metadata in JSON-formaat bevatten. Het kan trefwoorden matchen met jokerpatronen, filteren op specifieke personen en zoeken naar gedetecteerde objecten. Standaard retourneert het afbeeldingsdata-objecten. Gebruik -ShowInBrowser om in een webbrowser weer te geven.

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Komt overeen met elk van de mogelijke metadata typen. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Array van mappaden om naar afbeeldingen te zoeken |
| `-Language` | String | — | — | Named | — | Taal voor beschrijvingen en trefwoorden. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | ('De te zoeken beschrijvingstekst, jokertekens toegestaan.') |
| `-Keywords` | String[] | — | — | Named | `@()` | De te zoeken trefwoorden, jokertekens toegestaan. |
| `-People` | String[] | — | — | Named | `@()` | Te zoeken personen, jokertekens toegestaan. |
| `-Objects` | String[] | — | — | Named | `@()` | Te zoeken objecten, jokertekens toegestaan. |
| `-Scenes` | String[] | — | — | Named | `@()` | Te zoeken scènecategorieën, jokertekens toegestaan. |
| `-PictureType` | String[] | — | — | Named | `@()` | Afbeeldingstype om op te filteren (bijv. 'daglicht', 'avond', 'binnen', enz.). Ondersteunt jokertekens. |
| `-StyleType` | String[] | — | — | Named | `@()` | Stijltype om op te filteren (bijv. 'casual', 'formal', etc.). Ondersteunt jokertekens. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Algemene stemming om op te filteren (bijv. 'kalm', 'vrolijk', 'verdrietig', enz.). Ondersteunt jokertekens. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | Filter op cameramerk in EXIF-metadata van afbeeldingen. Ondersteunt jokertekens. |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | Filteren op cameramodel in EXIF-metadata van afbeeldingen. Ondersteunt jokertekens. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | Filter op GPS-breedtegraadbereik in EXIF-metadata van afbeeldingen. |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | Filter op GPS-lengtegraadbereik in EXIF-metadata van afbeeldingen. |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | Filteren op GPS-hoogtebereik in EXIF-metadata van afbeelding (in meters). |
| `-GeoLocation` | Double[] | — | — | Named | — | Geografische coördinaten [breedtegraad, lengtegraad] om in de buurt te zoeken. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Maximale afstand in meters vanaf GeoLocation om naar afbeeldingen te zoeken. |
| `-MetaExposureTime` | Double[] | — | — | Named | — | Filter op belichtingstijdbereik in EXIF-metadata van afbeelding (in seconden). |
| `-MetaFNumber` | Double[] | — | — | Named | — | Filteren op diafragmabereik (F-getal) in EXIF-metadata van afbeeldingen. |
| `-MetaISO` | Int32[] | — | — | Named | — | Filter op ISO-gevoeligheidsbereik in EXIF-metadata van afbeeldingen. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | Filter op brandpuntsafstandbereik in EXIF-metadata van afbeelding (in mm). |
| `-MetaWidth` | Int32[] | — | — | Named | — | Filter op beeldbreedtebereik in pixels op basis van EXIF-metadata. |
| `-MetaHeight` | Int32[] | — | — | Named | — | Filter op beeldhoogtebereik in pixels op basis van EXIF-metadata. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | Filteren op datum genomen uit EXIF-metadata. Kan een datumbereik zijn. |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Title for the gallery |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Beschrijving voor de galerij |
| `-AcceptLang` | String | — | — | Named | `$null` | Stel de browser accept-lang http-header in |
| `-KeysToSend` | String[] | — | — | Named | — | ('Toetsaanslagen om naar het browservenster te sturen, ' +
                'zie documentatie voor cmdlet GenXdev\Send-Key') |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Ontsnap aan controletekens en modifiers bij het verzenden van toetsen |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 'Voorkom dat de toetsenbordfocus terugkeert naar PowerShell ' +
                'nadat er toetsen zijn verzonden' |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus het browservenster na het openen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het browservenster op de voorgrond na het openen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na het positioneren |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Herstel het venster naar de normale staat na het positioneren |
| `-Monitor` | Int32 | — | — | Named | `-2` | De te gebruiken monitor, 0 = standaard, -1 wordt genegeerd, -2 = geconfigureerde secundaire monitor, standaard ingesteld op `Global:DefaultSecondaryMonitor of 2 indien niet gevonden |
| `-Width` | Int32 | — | — | Named | `-1` | De initiële breedte van het webbrowservenster |
| `-Height` | Int32 | — | — | Named | `-1` | De initiële hoogte van het webbrowservenster |
| `-X` | Int32 | — | — | Named | `-999999` | De initiële X-positie van het webbrowservenster |
| `-Y` | Int32 | — | — | Named | `-999999` | De initiële Y-positie van het webbrowservenster |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Embed images as base64. |
| `-NoFallback` | SwitchParameter | — | — | Named | — | Schakelaar om terugvalgedrag uit te schakelen. |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | Schakel over om database-initialisatie en herbouw over te slaan. |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Doorzoek alle beschikbare schijven |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Niet recursief in subdirectories |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Volg symlinks en junctions tijdens het doorlopen van mappen. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor directorytraversal. 0 betekent onbeperkt. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor het verder omhoog zoeken in de boom voor relatieve zoekopdrachten, terwijl er geen items worden gevonden. 0 betekent uitgeschakeld. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale bestandsgrootte in bytes om op te nemen in de resultaten. 0 betekent onbeperkt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimale bestandsgrootte in bytes om op te nemen in resultaten. 0 betekent geen minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Alleen bestanden opnemen die na deze datum/tijd (UTC) zijn gewijzigd. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Alleen bestanden opnemen die zijn gewijzigd vóór deze datum/tijd (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Te overslaan bestandskenmerken (bijv. Systeem, Verborgen of Geen). |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter afbeeldingen die GEEN naaktheid bevatten. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filter afbeeldingen die expliciete inhoud bevatten. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain explicit content. |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | Geef de zoekresultaten weer in een browser-gebaseerde afbeeldingsgalerij. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Geef afbeeldingsgegevens terug als objecten. Wanneer gebruikt met '-ShowInBrowser', wordt zowel de galerij weergegeven als de objecten teruggegeven. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Plaats browservenster naast PowerShell op dezelfde monitor |
| `-Interactive` | SwitchParameter | — | — | Named | — | Maakt verbinding met de browser en voegt extra knoppen toe zoals Bewerken en Verwijderen. Alleen effectief in combinatie met -ShowInBrowser. |
| `-Private` | SwitchParameter | — | — | Named | — | Opent in incognito-/privatieve browse-modus |
| `-Force` | SwitchParameter | — | — | Named | — | Forceer het inschakelen van de foutopsporingspoort, stop bestaande browsers indien nodig |
| `-Edge` | SwitchParameter | — | — | Named | — | Wordt geopend in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opent in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wordt geopend in Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Openen in Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Gebruik de Playwright-beheerde browser in plaats van de in het besturingssysteem geïnstalleerde browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Opent de door Playwright beheerde WebKit-browser. Impliceert -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Voer de browser uit zonder een zichtbaar venster |
| `-All` | SwitchParameter | — | — | Named | — | Opent in alle geregistreerde moderne browsers |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Opent in volledig scherm |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het browser venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de bovenkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het browservenster in het midden van het scherm |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Verberg de browserbediening |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Voorkom het laden van browserextensies |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Pop-upblokkering uitschakelen |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | "Hergebruik het bestaande browservenster niet, maar " +
                'maak een nieuw venster' |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | ('Geef alleen de gegenereerde HTML terug in plaats van ' +
                'deze in een browser weer te geven.') |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Toon alleen afbeeldingen in een afgeronde rechthoek, geen tekst eronder. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, beeldcollecties, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Alternatieve instellingen die in de sessie zijn opgeslagen voor AI-voorkeuren zoals Taal, Afbeeldingscollecties, enz. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen alternatieve instellingen opgeslagen in sessie 'voor AI-voorkeuren zoals taal, afbeeldingscollecties, etc.' |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Auto-scroll de pagina met dit aantal pixels per seconde (null om uit te schakelen) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animeer rechthoeken (objecten/vlakken) in het zichtbare bereik, elke 300 ms cyclisch herhalen |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forceer indeling in één kolom (gecentreerd, 1/3 schermbreedte) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Prefix die aan elk afbeeldingspad moet worden toegevoegd (bijv. voor externe URL's) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | Minimale betrouwbaarheidsratio (0.0-1.0) voor het filteren van personen, scènes en objecten op betrouwbaarheid. Retourneert alleen gegevens voor personen, scènes en objecten met een betrouwbaarheid groter dan of gelijk aan deze waarde. |

## Examples

### Find-Image -Keywords "cat","dog" -Name "C:\Photos\*" Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

```powershell
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.
```

### findimages cat,dog "C:\Photos" Same as above using the alias and positional parameters.

```powershell
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.
```

### Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser Searches for photos containing John OR Jane and displays them in a web gallery.

```powershell
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*" Searches for images that contain vacation keywords AND John as a person AND beach objects. All three criteria must be met (AND logic between parameter types).

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).
```

### Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*" Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8. EXIF parameters use range filtering with [min, max] values.

```powershell
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.
```

### Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

```powershell
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.
```

### findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

```powershell
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*" Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.
```

### Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

```powershell
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.
```

### Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

```powershell
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.
```

### Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*" Searches for daylight photos with a calm/peaceful mood and returns the image objects.

```powershell
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.
```

### findimages -StyleType "casual" -HasNudity -Name "C:\Art\*" Searches for casual style images that contain nudity and returns the data objects.

```powershell
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.
```

### Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*" Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.

```powershell
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
```

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
