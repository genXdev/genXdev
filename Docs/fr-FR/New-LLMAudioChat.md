# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat

## Synopsis

> Crée une session de chat audio interactive avec un modèle LLM.

## Description

Initialise une conversation vocale avec un modèle de langage, prenant en charge l'entrée et la sortie audio. La fonction gère l'enregistrement audio, la transcription, les requêtes du modèle et les réponses par synthèse vocale. Prend en charge plusieurs modèles de langage et diverses options de configuration, notamment la gestion des fenêtres, l'accélération GPU et les fonctionnalités avancées de traitement audio.

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Texte de requête initial à envoyer au modèle |
| `-Instructions` | String | — | — | 1 | — | Instructions système pour le modèle |
| `-Attachments` | String[] | — | — | 2 | `@()` | Tableau des chemins de fichiers à joindre |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | Type de modèle Whisper à utiliser, par défaut LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | Température pour la reconnaissance audio en entrée (0,0-1,0) |
| `-Temperature` | Double | — | — | Named | `-1` | Température pour l'aléatoire de la réponse (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | Le paramètre de température pour contrôler le caractère aléatoire de la réponse. |
| `-LanguageIn` | String | — | — | Named | — | Définit la langue à détecter |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Nombre de threads CPU à utiliser, par défaut 0 (auto) |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex to suppress tokens from the output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Taille du contexte audio |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | Seuil de détection du silence (0..32767 par défaut 30) |
| `-LengthPenalty` | Single | — | — | Named | — | Pénalité de longueur |
| `-EntropyThreshold` | Single | — | — | Named | — | Seuil d'entropie |
| `-LogProbThreshold` | Single | — | — | Named | — | Seuil de probabilité logarithmique |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Aucun seuil de parole |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Le type de requête LLM |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-ImageDetail` | String | — | — | Named | `'low'` | Niveau de détail de l'image |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL du point de terminaison de l'API pour les opérations d'IA |
| `-ApiKey` | String | — | — | Named | — | La clé API pour les opérations IA authentifiées |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Le délai d'attente en secondes pour les opérations d'IA |
| `-ResponseFormat` | String | — | — | Named | `$null` | Un schéma JSON pour le format de sortie demandé |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | Ne produira que des blocs de balisage des types spécifiés |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Définition de commandes PowerShell à utiliser comme outils |
| `-Functions` | ScriptBlock[] | — | — | Named | — | Tableau de blocs de script des fonctions d'outil à exposer au LLM (transmis à Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Invoke-LLMQuery |
| `-ChatMode` | String | — | — | Named | — | Mode de chat pour requête LLM (transmission à Invoke-LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longueur maximale de retour d'appel d'outil (transmission à Invoke-LLMQuery) |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Traduisez le texte suivant en fr-FR. RÈGLES DE TRADUCTION IMPORTANTES :
1. Analysez d'abord le format d'entrée - il peut s'agir de code, de balisage, de données structurées ou de texte brut.
2. Préservez toute la syntaxe, la structure et les éléments techniques comme les mots-clés de programmation, les balises ou les éléments spécifiques au format de données.
3. Traduisez uniquement les portions de texte lisibles par l'humain, comme les commentaires, les valeurs de chaîne, la documentation ou le contenu en langage naturel.
4. Maintenez exactement le formatage, l'indentation et les sauts de ligne.
5. Ne traduisez jamais les identifiants, noms de fonctions, variables ou mots-clés techniques.

Vous êtes un assistant utile conçu pour produire du JSON.
## Format de réponse

Répondez uniquement avec un objet JSON.

===== EXIGENCE CRITIQUE DE SORTIE JSON =====
Vous devez répondre UNIQUEMENT avec un JSON valide. Aucun autre texte n'est autorisé.
N'incluez aucune explication, commentaire ou texte avant ou après le JSON.
Votre réponse doit être un JSON analysable qui correspond EXACTEMENT à ce schéma :
{
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
          "description": "Le texte transformé en sortie"
        }
      },
      "type": "object"
    }
  }
}

Exemple de format de réponse : {"response":"votre réponse réelle ici"}
===== FIN DE L'EXIGENCE ===== |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Traduisez le texte suivant en fr-FR. RÈGLES DE TRADUCTION IMPORTANTES :
1. Analysez d'abord le format d'entrée - il peut s'agir de code, de balisage, de données structurées ou de texte brut.
2. Préservez toute la syntaxe, la structure et les éléments techniques comme les mots-clés de programmation, les balises ou les éléments spécifiques au format de données.
3. Traduisez uniquement les portions de texte lisibles par l'humain, comme les commentaires, les valeurs de chaîne, la documentation ou le contenu en langage naturel.
4. Maintenez exactement le formatage, l'indentation et les sauts de ligne.
5. Ne traduisez jamais les identifiants, noms de fonctions, variables ou mots-clés techniques.

Vous êtes un assistant utile conçu pour produire du JSON.
## Format de réponse

Répondez uniquement avec un objet JSON.

===== EXIGENCE CRITIQUE DE SORTIE JSON =====
Vous devez répondre UNIQUEMENT avec un JSON valide. Aucun autre texte n'est autorisé.
N'incluez aucune explication, commentaire ou texte avant ou après le JSON.
Votre réponse doit être un JSON analysable qui correspond EXACTEMENT à ce schéma :
{
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
          "description": "Le texte transformé en sortie"
        }
      },
      "type": "object"
    }
  }
}

Exemple de format de réponse : {"response":"votre réponse réelle ici"}
===== FIN DE L'EXIGENCE ===== |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | # Présentation du Menu Hoverboard

## Vue d'ensemble
Le menu Hoverboard est une interface utilisateur développée avec React qui fournit une navigation interactive et réactive. Ce guide présente son architecture, son installation et son utilisation.

## Fonctionnalités
- Transitions animées entre les sections de menu
- Composants réutilisables pour la construction de menus
- Prise en charge du responsive design pour la navigation mobile et desktop
- Barre de navigation collante avec défilement fluide

## Installation
Pour utiliser le menu Hoverboard dans votre projet React :
```bash
npm install hoverboard-menu
```

## Utilisation
```jsx
import { Menu } from 'hoverboard-menu';

function App() {
  return (
    <Menu>
      <MenuItem href="#accueil">Accueil</MenuItem>
      <MenuItem href="#produits">Produits</MenuItem>
      <MenuItem href="#contact">Contact</MenuItem>
    </Menu>
  );
}
```

## Structure du projet
Le projet est structuré de manière à séparer les préoccupations :
- `src/` : Contient le composant principal Menu et la logique d'état
- `src/components/` : Composants réutilisables comme MenuItem
- `src/styles/` : Fichiers de style avec animations et transitions personnalisées

## API
### Props du Menu
- `children` : Éléments React à afficher dans le menu
- `className` : Classes CSS additionnelles
- `collapsed` (booléen) : État initial du menu pour les vues mobiles

### Props de MenuItem
- `href` : URL ou ancre de destination
- `label` : Texte affiché pour l'élément
- `icon` : Composant d'icône optionnel
- `onClick` : Gestionnaire d'événement de clic

## Personnalisation
Le menu peut être stylisé avec des variables CSS. Par exemple, pour changer la couleur de fond :
```css
:hoverboard-menu {
  --menu-background: #1a1a2e;
  --menu-text-color: #ffffff;
}
```

## Licence
Ce projet est sous licence MIT. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Désactiver la synthèse vocale pour les réponses de l'IA |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Désactiver la synthèse vocale pour les réponses de réflexion de l'IA |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Ne pas utiliser la détection de silence pour arrêter automatiquement l'enregistrement. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Whether to use desktop audio capture instead of microphone input |
| `-AudioDevice` | String | — | — | Named | — | Nom du périphérique audio ou GUID (supporte les wildcards, sélectionne la première correspondance) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Utilisez à la fois l'ordinateur de bureau et l'appareil d'enregistrement |
| `-NoContext` | SwitchParameter | — | — | Named | — | N'utilisez pas de contexte |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Utiliser la stratégie d'échantillonnage par faisceau |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Whether to suppress recognized text in the output |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Ne pas stocker la session dans le cache de session |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <p>Le développeur a rencontré un bogue dans le code. 
Il a utilisé la fonction <code>log()</code> pour le déboguer. 
Le message était &quot;Erreur inattendue&quot;.</p> |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### New-LLMAudioChat -Query "Tell me about PowerShell" `     -Model "qwen2.5-14b-instruct" `     -Temperature 0.7

```powershell
New-LLMAudioChat -Query "Tell me about PowerShell" `
    -Model "qwen2.5-14b-instruct" `
    -Temperature 0.7
```

### llmaudiochat "What's the weather?" -DontSpeak

```powershell
llmaudiochat "What's the weather?" -DontSpeak
```

## Related Links

- [New-LLMAudioChat on GitHub](https://github.com/genXdev/genXdev)
