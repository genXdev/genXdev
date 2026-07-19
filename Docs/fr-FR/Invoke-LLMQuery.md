# Invoke-LLMQuery

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `qllm, `llm

## Synopsis

> Envoie des requêtes à une API de complétion de chat compatible avec le Large Language Model OpenAI et traite les réponses.

## Description

Cette fonction envoie des requêtes à une API de complétion de chat pour grands modèles de langage compatible avec OpenAI et traite les réponses. Elle prend en charge les entrées textuelles et d'images, gère les appels de fonctions d'outils et peut fonctionner dans divers modes de chat, y compris textuel et audio.

La fonction offre un support complet pour l'interaction avec les LLM, incluant :
- Traitement des entrées textuelles et d'images
- Appel de fonctions d'outils et exécution de commandes
- Modes de chat interactifs (textuel et audio)
- Initialisation et configuration du modèle
- Formatage et traitement des réponses
- Gestion des sessions et mise en cache
- Positionnement des fenêtres et contrôle de l'affichage

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | Texte de requête à envoyer au modèle |
| `-Instructions` | String | — | — | 1 | — | Instructions système pour le modèle |
| `-Attachments` | String[] | — | — | 2 | `@()` | Tableau des chemins de fichiers à joindre |
| `-ResponseFormat` | String | — | — | Named | — | Un schéma JSON pour le format de sortie demandé |
| `-Temperature` | Double | — | — | Named | `-1` | Température pour l'aléatoire de la réponse (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Tableau des définitions de fonctions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Définition de commandes PowerShell à utiliser comme outils |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Fonctions d'outil ne nécessitant pas la confirmation de l'utilisateur |
| `-ImageDetail` | String | — | — | Named | `'low'` | Niveau de détail de l'image |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Le type de requête LLM |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL du point de terminaison de l'API pour les opérations d'IA |
| `-ApiKey` | String | — | — | Named | — | La clé API pour les opérations IA authentifiées |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Le délai d'attente en secondes pour les opérations d'IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-AudioTemperature` | Double | — | — | Named | — | Temperature pour la randomisation de la génération audio |
| `-TemperatureResponse` | Double | — | — | Named | — | Température pour l'aléatoire de la réponse (chat audio) |
| `-Language` | String | — | — | Named | — | Code de langue ou nom pour le chat audio |
| `-CpuThreads` | Int32 | — | — | Named | — | Number of CPU threads to use for audio chat |
| `-SuppressRegex` | String | — | — | Named | — | Expression régulière pour supprimer certaines sorties dans un chat audio |
| `-AudioContextSize` | Int32 | — | — | Named | — | Taille du contexte audio pour le chat audio |
| `-SilenceThreshold` | Double | — | — | Named | — | Seuil de silence pour le chat audio |
| `-LengthPenalty` | Double | — | — | Named | — | Pénalité de longueur pour les réponses de chat audio |
| `-EntropyThreshold` | Double | — | — | Named | — | Seuil d'entropie pour le chat audio |
| `-LogProbThreshold` | Double | — | — | Named | — | Seuil de probabilité logarithmique pour le chat audio |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Seuil de parole absent pour le chat audio |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Ne répondez pas avec des audios |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Ne pas prononcer de pensées audio |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation) for audio chat |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Utiliser la capture audio du bureau pour le chat audio |
| `-NoContext` | SwitchParameter | — | — | Named | — | Désactiver le contexte pour le chat audio |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy for audio chat |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {
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
} |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Exclure les processus de réflexion de l'historique des conversations |
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
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | Ne produira que des blocs de balisage des types spécifiés |
| `-ChatMode` | String | — | — | Named | — | Activer le mode de discussion |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Utilisé en interne, pour n'invoquer le mode chat qu'une seule fois après l'appel du LLM |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Ne pas stocker la session dans le cache de session |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | Longueur maximale de la sortie du rappel d'outil en caractères. Une sortie dépassant cette longueur sera tronquée avec un message d'avertissement. La valeur par défaut est de 100000 caractères. |

## Examples

### Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7

```powershell
Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7
```

Envoie une requête mathématique simple au modèle qwen avec une température spécifiée.

### qllm "What is 2+2?" -Model "qwen"

```powershell
qllm "What is 2+2?" -Model "qwen"
```

Utilise l'alias pour envoyer une requête avec les paramètres par défaut.

### Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"

```powershell
Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"
```

Sends a query with an image attachment for analysis.

### llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"

```powershell
llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"
```

Démarre une session de chat textuel interactive avec le modèle spécifié.

## Related Links

- [Invoke-LLMQuery on GitHub](https://github.com/genXdev/genXdev)
