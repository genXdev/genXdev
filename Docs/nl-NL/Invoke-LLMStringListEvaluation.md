# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `getlist, `getstring

## Synopsis

> Extraheert of genereert een lijst met relevante strings uit invoertekst met behulp van AI-analyse.

## Description

Deze functie gebruikt AI-modellen om invoertekst te analyseren en een lijst met relevante strings te extraheren of te genereren. Het kan tekst verwerken om kernpunten te identificeren, items uit lijsten te extraheren of gerelateerde concepten te genereren. Invoer kan rechtstreeks worden verstrekt via parameters, vanuit de pijplijn of vanuit het systeemklembord. De functie retourneert een stringarray en kopieert optioneel resultaten naar het klembord.

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-Instructions` | String | — | — | 1 | `''` | Instructies voor het AI-model voor het genereren van de stringlijst |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Afbeeldingsdetailniveau |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array van functiedefinities |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array van PowerShell-commando definities om als hulpmiddelen te gebruiken |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Kopieer het resultaat naar het klembord |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Hier is je JSON-uitvoer. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Voeg de gedachten van het model niet toe aan de gespreksgeschiedenis |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-Speak` | SwitchParameter | — | — | Named | — | Spraak-naar-tekst inschakelen voor AI-reacties |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Schakel tekst-naar-spraak in voor AI-gedachterreacties |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sla sessie niet op in sessiecache |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Enable default tools for the AI model |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Return only markup blocks in the output. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter voor specifieke soorten opmaakblokken. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatuur voor willekeurigheid van audiorespons. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor willekeur van tekstrespons. |
| `-Language` | String | — | — | Named | — | nl-NL |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads dat moet worden gebruikt. |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress certain outputs. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audiocontextgrootte voor verwerking. |
| `-SilenceThreshold` | Double | — | — | Named | — | Drempeldrempel voor audiodetectie. |
| `-LengthPenalty` | Double | — | — | Named | — | Lengtestraf voor sequentiegeneratie. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor uitvoerfiltering. |
| `-LogProbThreshold` | Double | — | — | Named | — | Logprobabiliteitsdrempel voor uitvoerfiltering. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen drempel voor spraakdetectie. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Schakel spraakuitvoer uit. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Schakel spraakuitvoer voor gedachten uit. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Schakel VOX (spraakactivering) uit. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Gebruik desktop-audiocaptuur. |
| `-NoContext` | SwitchParameter | — | — | Named | — | disable contextsensitiviteit |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | {"response":"Gebruik de beam search sampling strategie."} |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale terugbellen lengte voor tool-aanroepen. |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Outputs

- `String[]`

## Related Links

- [Invoke-LLMStringListEvaluation on GitHub](https://github.com/genXdev/genXdev)
