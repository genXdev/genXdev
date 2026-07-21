// ################################################################################
// Part of PowerShell module : GenXdev.Helpers
// Original cmdlet filename  : Get-BCP47LanguageDictionary.cs
// Original author           : René Vaessen / GenXdev
// Version                   : 3.26.2026
// ################################################################################
// Copyright (c) 2026 René Vaessen / GenXdev
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ################################################################################



using System.Globalization;
using System.Management.Automation;

namespace GenXdev.Helpers
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Returns a dictionary of all installed BCP 47 language tags and their
display names.
.DESCRIPTION
* Builds a dictionary mapping BCP 47 culture codes (e.g. en-US, nl-NL,
  de-DE) to themselves and their English display names to the codes.
* Uses the .NET CultureInfo API to enumerate all specific cultures
  installed on the system, making this the authoritative source of
  truth for PowerShell help language folder names and translation
  target languages.
* Dictionary keys include:
  - Full BCP 47 tags (e.g. ""en-US"", ""nl-NL"", ""zh-Hans-CN"")
  - English display names (e.g. ""English (United States)"",
    ""Dutch (Netherlands)"")
  - Simple language names mapped to their most common region
    (e.g. ""English"" -> ""en-US"", ""Dutch"" -> ""nl-NL"")
.EXAMPLE
```powershell
Get-BCP47LanguageDictionary
```

Get the full BCP 47 language dictionary.
.EXAMPLE
```powershell
$dict = Get-BCP47LanguageDictionary
$dict[""nl-NL""]  # returns ""nl-NL""
$dict[""Dutch""]  # returns ""nl-NL""
```

Validate and resolve a language code for help generation.
")]
    [Cmdlet(VerbsCommon.Get, "BCP47LanguageDictionary")]
    [OutputType(typeof(Dictionary<string, string>))]
    public class GetBCP47LanguageDictionaryCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            var result = new Dictionary<string, string>(
                StringComparer.OrdinalIgnoreCase);

            // Get all specific cultures installed on the system.
            // Specific cultures have a region component (e.g. "en-US",
            // "fr-FR") versus neutral cultures which don't (e.g. "en",
            // "fr").
            var specificCultures = CultureInfo.GetCultures(
                CultureTypes.SpecificCultures);

            // Track which simple language name we've seen to map to the
            // most common/default region.
            var simpleNameMap = new Dictionary<string, string>(
                StringComparer.OrdinalIgnoreCase);

            // Default BCP 47 codes for well-known languages — these are
            // the "most common" region when someone says "English" or
            // "Dutch" without specifying a region.
            var defaultRegions = new Dictionary<string, string>(
                StringComparer.OrdinalIgnoreCase)
            {
                { "en", "en-US" },
                { "nl", "nl-NL" },
                { "de", "de-DE" },
                { "fr", "fr-FR" },
                { "es", "es-ES" },
                { "it", "it-IT" },
                { "pt", "pt-BR" },
                { "ja", "ja-JP" },
                { "ko", "ko-KR" },
                { "zh", "zh-Hans-CN" },
                { "ru", "ru-RU" },
                { "ar", "ar-SA" },
                { "pl", "pl-PL" },
                { "tr", "tr-TR" },
                { "sv", "sv-SE" },
                { "da", "da-DK" },
                { "fi", "fi-FI" },
                { "nb", "nb-NO" },
                { "cs", "cs-CZ" },
                { "hu", "hu-HU" },
                { "el", "el-GR" },
                { "he", "he-IL" },
                { "th", "th-TH" },
                { "vi", "vi-VN" },
                { "id", "id-ID" },
                { "ms", "ms-MY" },
                { "ro", "ro-RO" },
                { "sk", "sk-SK" },
                { "uk", "uk-UA" },
                { "bg", "bg-BG" },
                { "ca", "ca-ES" },
                { "hr", "hr-HR" },
                { "lt", "lt-LT" },
                { "lv", "lv-LV" },
                { "et", "et-EE" },
                { "sl", "sl-SI" },
                { "sr", "sr-RS" },
                { "hi", "hi-IN" },
                { "bn", "bn-IN" },
                { "ta", "ta-IN" },
                { "te", "te-IN" },
                { "mr", "mr-IN" },
                { "gu", "gu-IN" },
                { "kn", "kn-IN" },
                { "ml", "ml-IN" },
                { "pa", "pa-IN" },
            };

            foreach (var culture in specificCultures)
            {
                var code = culture.Name;           // e.g. "en-US"
                var displayName = culture.EnglishName; // e.g.
                // "English (United States)"
                var twoLetter = culture.TwoLetterISOLanguageName; // "en"

                // 1. Map BCP 47 code → itself
                if (!result.ContainsKey(code))
                {
                    result[code] = code;
                }

                // 2. Map English display name → BCP 47 code
                if (!result.ContainsKey(displayName))
                {
                    result[displayName] = code;
                }

                // 3. Track for simple-name mapping
                if (!simpleNameMap.ContainsKey(twoLetter))
                {
                    simpleNameMap[twoLetter] = code;
                }
            }

            // Apply default region overrides for well-known languages
            foreach (var kvp in defaultRegions)
            {
                simpleNameMap[kvp.Key] = kvp.Value;
            }

            // 4. Map simple language name → default BCP 47 code
            foreach (var simpleCulture in CultureInfo.GetCultures(
                CultureTypes.NeutralCultures))
            {
                var twoLetter = simpleCulture.TwoLetterISOLanguageName;
                var englishName = simpleCulture.EnglishName; // e.g. "English"

                if (simpleNameMap.TryGetValue(twoLetter, out var defaultCode))
                {
                    if (!result.ContainsKey(englishName))
                    {
                        result[englishName] = defaultCode;
                    }
                }
            }

            WriteObject(result);
        }
    }
}
