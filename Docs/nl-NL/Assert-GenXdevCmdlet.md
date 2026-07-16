# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Zoekpatroon om cmdlets te filteren 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | GenXdev module te doorzoeken 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | De AI-prompt-sleutel die moet worden gebruikt voor sjabloonselectie |
| `-Prompt` | String | — | — | 2 | `''` | Door de gebruiker gedefinieerde AI-prompt tekst om te gebruiken |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Lokale moduleversies overslaan |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Only include published versions |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Zoeken in scriptbestanden |
| `-Code` | SwitchParameter | — | — | Named | — | Open in Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Openen in Visual Studio |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Vertaal de volgende tekst naar het Nederlands. BELANGRIJKE VERTAALREGELS:
1. Analyseer eerst de invoerindeling - het kan code, opmaak, gestructureerde gegevens of platte tekst zijn.
2. Behoud alle syntaxis, structuur en technische elementen zoals programmeerzoekwoorden, tags of dataformaatspecifieke elementen.
3. Vertaal alleen voor mensen leesbare tekstgedeelten zoals opmerkingen, tekenreekswaarden, documentatie of natuurlijke taalinhoud.
4. Behoud exacte opmaak, inspringing en regeleinden.
5. Vertaal nooit id's, functienamen, variabelen of technische zoekwoorden. *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | Voeg cmdlet in module in |

## Related Links

- [Assert-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
