# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat

## Synopsis

> Starts an interactive text chat session with AI capabilities.

## Description

Lance une session de chat interactive avec des capacités d'IA, permettant aux utilisateurs d'ajouter ou de supprimer des fonctions PowerShell pendant la conversation et d'exécuter des commandes PowerShell. Cette fonction offre une interface complète pour des conversations alimentées par l'IA avec une intégration étendue d'outils et des options de personnalisation.

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Texte de requête à envoyer au modèle *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | Instructions système pour le modèle |
| `-Attachments` | String[] | — | — | 2 | `@()` | Tableau des chemins de fichiers à joindre |
| `-Temperature` | Double | — | — | 3 | `-1` | Température pour l'aléatoire de la réponse (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Niveau de détail de l'image |
| `-ResponseFormat` | String | — | — | Named | `$null` | Un schéma JSON pour le format de sortie demandé |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Le type de requête LLM |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL du point de terminaison de l'API pour les opérations d'IA |
| `-ApiKey` | String | — | — | Named | — | La clé API pour les opérations IA authentifiées |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Le délai d'attente en secondes pour les opérations d'IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Définition de commandes PowerShell à utiliser comme outils |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | Ne produira que des blocs de balisage des types spécifiés |
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
| `-Speak` | SwitchParameter | — | — | Named | — | Activer la synthèse vocale pour les réponses de l'IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Activer la synthèse vocale pour les réponses de réflexion de l'IA |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <p>Le développeur a rencontré un bogue dans le code. 
Il a utilisé la fonction <code>log()</code> pour le déboguer. 
Le message était &quot;Erreur inattendue&quot;.</p> |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Utilisé en interne, pour n'invoquer le mode chat qu'une seule fois après l'appel du LLM *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Ne pas stocker la session dans le cache de session |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Names of tool functions that should not require confirmation |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longueur maximale des réponses de rappel d'outil |
| `-AudioTemperature` | Object | — | — | Named | — | Température pour la génération audio |
| `-TemperatureResponse` | Object | — | — | Named | — | Température pour la génération de réponses |
| `-Language` | Object | — | — | Named | — | Langue pour le modèle ou la sortie |
| `-CpuThreads` | Object | — | — | Named | — | Nombre de threads CPU à utiliser |
| `-SuppressRegex` | Object | — | — | Named | — | Expression régulière pour supprimer la sortie |
| `-AudioContextSize` | Object | — | — | Named | — | Taille du contexte audio pour le traitement |
| `-SilenceThreshold` | Object | — | — | Named | — | Seuil de silence pour le traitement audio |
| `-LengthPenalty` | Object | — | — | Named | — | Pénalité de longueur pour la génération de séquence |
| `-EntropyThreshold` | Object | — | — | Named | — | Seuil d'entropie pour le filtrage de sortie |
| `-LogProbThreshold` | Object | — | — | Named | — | Seuil de probabilité logarithmique pour le filtrage de sortie |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Pas de seuil de parole pour la détection audio |
| `-DontSpeak` | Object | — | — | Named | — | Désactiver la sortie vocale |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Disable speech output for thoughts |
| `-NoVOX` | Object | — | — | Named | — | Désactiver VOX (activation vocale) |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Utiliser la capture audio du bureau |
| `-NoContext` | Object | — | — | Named | — | Désactiver l'utilisation du contexte |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Utiliser la stratégie d'échantillonnage par faisceau |
| `-OnlyResponses` | Object | — | — | Named | — | Retourner seulement les réponses |

## Examples

### New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `     -Instructions "You are a helpful AI assistant"

```powershell
New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `
    -Instructions "You are a helpful AI assistant"
```

### llmchat "Tell me a joke" -Speak -IncludeThoughts

```powershell
llmchat "Tell me a joke" -Speak -IncludeThoughts
```

## Related Links

- [New-LLMTextChat on GitHub](https://github.com/genXdev/genXdev)
