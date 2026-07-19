# Get-BCP47LanguageDictionary

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retourneert een woordenboek van alle geïnstalleerde BCP 47-taalcodes en hun weergavenamen.

## Description

* Bouwt een woordenboek dat BCP 47-cultuurcodes (bijv. en-US, nl-NL, de-DE) toewijst aan zichzelf en hun Engelse weergavenamen aan de codes.
* Gebruikt de .NET CultureInfo-API om alle specifieke culturen op het systeem op te sommen, waardoor dit de gezaghebbende bron van waarheid is voor PowerShell-help taalmapnamen en vertaaldoeltalen.
* Woordenboeksleutels omvatten:
  - Volledige BCP 47-tags (bijv. "en-US", "nl-NL", "zh-Hans-CN")
  - Engelse weergavenamen (bijv. "English (United States)", "Dutch (Netherlands)")
  - Eenvoudige taalnamen die aan hun meest voorkomende regio zijn toegewezen (bijv. "English" -> "en-US", "Dutch" -> "nl-NL")

## Syntax

```powershell
Get-BCP47LanguageDictionary [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-BCP47LanguageDictionary
```

Verkrijg het volledige BCP 47-taaldictionary.

### Example 2

```powershell
$dict = Get-BCP47LanguageDictionary
$dict["nl-NL"]  # returns "nl-NL"
$dict["Dutch"]  # returns "nl-NL"
```

U bent een behulpzame assistent die is ontworpen om JSON uit te voeren.
## Response Formaat

Antwoord met ALLEEN een JSON-object. Geen andere tekst.

## Related Links

- [Get-BCP47LanguageDictionary on GitHub](https://github.com/genXdev/genXdev)
