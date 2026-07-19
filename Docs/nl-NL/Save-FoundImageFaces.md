# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces

## Synopsis

> Slaat bijgesneden gezichtsafbeeldingen op uit geïndexeerde zoekresultaten voor afbeeldingen.

## Description

Deze functie neemt beeldzoekresultaten en extraheert/slaat individuele gezichtsregio's op als aparte beeldbestanden. Het kan zoeken naar gezichten met behulp van verschillende criteria en deze opslaan in een opgegeven uitvoermap. De functie ondersteunt zoeken op beschrijving, trefwoorden, personen, objecten, scènes, afbeeldingstype, stijltype en algemene stemming. Het kan ook filteren op naaktheid en expliciete inhoud.

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Komt overeen met elk van de mogelijke metadata typen. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | The description text to look for, wildcards allowed. |
| `-Keywords` | String[] | — | — | Named | `@()` | De te zoeken trefwoorden, jokertekens toegestaan. |
| `-People` | String[] | — | — | Named | `@()` | Te zoeken personen, jokertekens toegestaan. |
| `-Objects` | String[] | — | — | Named | `@()` | Te zoeken objecten, jokertekens toegestaan. |
| `-Scenes` | String[] | — | — | Named | `@()` | Te zoeken scènes, jokertekens toegestaan. |
| `-PictureType` | String[] | — | — | Named | `@()` | Afbeeldingstypen om op te filteren, jokertekens toegestaan. |
| `-StyleType` | String[] | — | — | Named | `@()` | Styltypen om op te filteren, jokertekens toegestaan. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Algemene stemmingen om op te filteren, jokertekens toegestaan. |
| `-DatabaseFilePath` | String | — | — | Named | — | Pad naar het SQLite-databasebestand. |
| `-Language` | String | — | — | Named | — | Taal voor beschrijvingen en trefwoorden. |
| `-PathLike` | String[] | — | — | Named | `@()` | Array van directory-pad-achtige zoekstrings om afbeeldingen op pad te filteren (SQL LIKE-patronen, bijv. '%\\2024\\%') |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | Accepteert zoekresultaten van een eerdere -PassThru-aanroep om de weergave opnieuw te genereren. |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | Directory om bijgesneden gezichtsafbeeldingen op te slaan. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter afbeeldingen die GEEN naaktheid bevatten. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filter afbeeldingen die expliciete inhoud bevatten. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain explicit content. |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | Force rebuild of the image index database. |
| `-GeoLocation` | Double[] | — | — | Named | — | Geografische coördinaten [breedtegraad, lengtegraad] om in de buurt te zoeken. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Maximale afstand in meters vanaf GeoLocation om naar afbeeldingen te zoeken. |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | Sla ook onbekende personen die worden gedetecteerd op als objecten. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |

## Examples

### Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"

```powershell
Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"
```

### saveimagefaces -Any "vacation" -SaveUnknownPersons

```powershell
saveimagefaces -Any "vacation" -SaveUnknownPersons
```

## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Save-FoundImageFaces on GitHub](https://github.com/genXdev/genXdev)
