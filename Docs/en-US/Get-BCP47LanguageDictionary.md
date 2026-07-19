# Get-BCP47LanguageDictionary

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Returns a dictionary of all installed BCP 47 language tags and their
display names.

## Description

* Builds a dictionary mapping BCP 47 culture codes (e.g. en-US, nl-NL,
  de-DE) to themselves and their English display names to the codes.
* Uses the .NET CultureInfo API to enumerate all specific cultures
  installed on the system, making this the authoritative source of
  truth for PowerShell help language folder names and translation
  target languages.
* Dictionary keys include:
  - Full BCP 47 tags (e.g. "en-US", "nl-NL", "zh-Hans-CN")
  - English display names (e.g. "English (United States)",
    "Dutch (Netherlands)")
  - Simple language names mapped to their most common region
    (e.g. "English" -> "en-US", "Dutch" -> "nl-NL")

## Syntax

```powershell
Get-BCP47LanguageDictionary [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-BCP47LanguageDictionary
```

Get the full BCP 47 language dictionary.

### Example 2

```powershell
$dict = Get-BCP47LanguageDictionary
$dict["nl-NL"]  # returns "nl-NL"
$dict["Dutch"]  # returns "nl-NL"
```

Validate and resolve a language code for help generation.

## Related Links

- [Get-BCP47LanguageDictionary on GitHub](https://github.com/genXdev/genXdev)
