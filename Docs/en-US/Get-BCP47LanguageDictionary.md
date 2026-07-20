# Get-BCP47LanguageDictionary

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Returns a dictionary of all installed BCP 47 language tags and their
display names.

## Description

```text
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
```
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

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/alignScript.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-HashTable.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureNuGetAssembly.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-DefaultWebLanguage.md)
- [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXDevCmdlet.md)
- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ImageMetadata.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Initialize-SearchPaths.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-OnEachGenXdevModule.md)
- [Out-Serial](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Out-Serial.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/resetdefaultmonitor.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/secondscreen.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-GenXdevCommandNotFoundAction.md)
- [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-GenXdevCmdlet.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-Verb.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/sidebyside.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-UnattendedMode.md)
