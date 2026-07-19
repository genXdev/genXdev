# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize

## Synopsis

> Convertit le langage diplomatique ou mesuré en un langage direct, clair et sans détour.

## Description

Cette fonction prend le langage diplomatique et le traduit pour révéler la véritable signification derrière les paroles polies ou politiquement correctes. Elle utilise des modèles de langage IA pour transformer les expressions euphémisées en déclarations directes, rendant la communication sans ambiguïté et facile à comprendre. La fonction est particulièrement utile pour analyser les déclarations politiques, les communications d'entreprise ou tout texte dont le sens réel pourrait être obscurci par un langage diplomatique.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Nous reconnaissons la sincérité de votre point de vue et apprécions l'esprit constructif dans lequel vous l'avez exprimé. Nous sommes convaincus que, par un dialogue continu et une compréhension mutuelle, nous parviendrons à une position commune qui servira au mieux les intérêts de toutes les parties concernées. |
| `-Instructions` | String | — | — | 1 | `''` | Instructions supplémentaires pour le modèle d'IA |
| `-Temperature` | Double | — | — | Named | `0.0` | Température pour l'aléatoire de la réponse (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Le type de requête LLM |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL du point de terminaison de l'API pour les opérations d'IA |
| `-ApiKey` | String | — | — | Named | — | La clé API pour les opérations IA authentifiées |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Le délai d'attente en secondes pour les opérations d'IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copier le texte transformé dans le presse-papiers |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Attachments` | Object[] | — | — | Named | — | Pièces jointes à inclure dans l'opération IA. |
| `-ImageDetail` | String | — | — | Named | — | Niveau de détail de l'image pour le traitement par IA. |
| `-Functions` | Object[] | — | — | Named | — | Fonctions à exposer au modèle d'IA. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlets à exposer au modèle d'IA. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Noms des fonctions d'outil ne nécessitant pas de confirmation. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Do not add thoughts to the AI history. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {"type": "json_schema", "json_schema": {"name": "text_transformation_response", "strict": true, "schema": {"required": ["response"], "properties": {"response": {"type": "string", "description": "The transformed text output"}}, "type": "object"}}} |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Exprimez les pensées à voix haute pendant le traitement par l'IA. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Désactiver la mise en cache de session pour cette opération. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Autoriser l'utilisation des outils par défaut dans l'opération IA. |
| `-AudioTemperature` | Double | — | — | Named | — | Température audio pour la génération audio par IA. |
| `-TemperatureResponse` | Double | — | — | Named | — | Température pour la génération de réponse IA. |
| `-CpuThreads` | Int32 | — | — | Named | — | Nombre de threads CPU à utiliser pour l'opération d'IA. |
| `-SuppressRegex` | String[] | — | — | Named | — | @{response=Regex to suppress in AI output.} |
| `-AudioContextSize` | Int32 | — | — | Named | — | Taille du contexte audio pour le traitement audio par IA. |
| `-SilenceThreshold` | Double | — | — | Named | — | Seuil de silence pour le traitement audio par IA. |
| `-LengthPenalty` | Double | — | — | Named | — | Pénalité de longueur pour la génération de séquence par IA. |
| `-EntropyThreshold` | Double | — | — | Named | — | Seuil d'entropie pour la sortie de l'IA. |
| `-LogProbThreshold` | Double | — | — | Named | — | Seuil de probabilité logarithmique pour la sortie de l'IA. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Aucun seuil de parole pour le traitement audio par IA. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Ne parlez pas la sortie de l'IA. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Do not speak AI thoughts. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Désactiver VOX pour la sortie audio IA. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Utiliser la capture audio du bureau pour l'IA audio. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Ne pas utiliser le contexte pour l'opération IA. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy for AI. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Désolé, je n'ai pas compris votre demande. Pourriez-vous la reformuler ? |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | The `-OutputMarkdownBlocksOnly` parameter. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": ["response"],
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
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longueur maximale de rappel pour les appels d'outils. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Outputs

- `String`

## Related Links

- [ConvertFrom-DiplomaticSpeak on GitHub](https://github.com/genXdev/genXdev)
