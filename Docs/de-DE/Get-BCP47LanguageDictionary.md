# Get-BCP47LanguageDictionary

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gibt ein Wörterbuch aller installierten BCP 47-Sprachtags und ihrer Anzeigenamen zurück.

## Description

* Erstellt ein Wörterbuch, das BCP-47-Kulturcodes (z. B. en-US, nl-NL, de-DE) auf sich selbst und ihre englischen Anzeigenamen auf die Codes abbildet.
* Verwendet die .NET-CultureInfo-API, um alle spezifischen Kulturen aufzulisten, die auf dem System installiert sind, und ist damit die autoritative Quelle für PowerShell-Hilfssprachenordnernamen und Übersetzungszielsprachen.
* Wörterbuchschlüssel umfassen:
  - Vollständige BCP-47-Tags (z. B. "en-US", "nl-NL", "zh-Hans-CN")
  - Englische Anzeigenamen (z. B. "English (United States)", "Dutch (Netherlands)")
  - Einfache Sprachnamen, die auf ihre häufigste Region abgebildet werden (z. B. "English" -> "en-US", "Dutch" -> "nl-NL")

## Syntax

```powershell
Get-BCP47LanguageDictionary [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-BCP47LanguageDictionary
```

Holen Sie das vollständige BCP-47-Sprachwörterbuch.

### Example 2

```powershell
$dict = Get-BCP47LanguageDictionary
$dict["nl-NL"]  # returns "nl-NL"
$dict["Dutch"]  # returns "nl-NL"
```

Validieren und auflösen eines Sprachcodes für die Hilfeerstellung.

## Related Links

- [Get-BCP47LanguageDictionary on GitHub](https://github.com/genXdev/genXdev)
