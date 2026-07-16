# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Le texte à traduire |
| `-Instructions` | String | — | — | 1 | — | Instructions supplémentaires pour guider le modèle d'IA dans le style et le contexte de la traduction |
| `-Attachments` | String[] | — | — | 2 | `@()` | Tableau des chemins de fichiers à joindre |
| `-Temperature` | Double | — | — | Named | `-1` | Température pour l'aléatoire de la réponse (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Niveau de détail de l'image |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Tableau des définitions de fonctions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Définition de commandes PowerShell à utiliser comme outils |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | Le type de requête LLM |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL du point de terminaison de l'API pour les opérations d'IA |
| `-ApiKey` | String | — | — | Named | — | La clé API pour les opérations IA authentifiées |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the enhanced text to clipboard |
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
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Ne pas stocker la session dans le cache de session |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Autoriser l'utilisation d'outils d'IA par défaut pendant le traitement |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-AudioTemperature` | Double | — | — | Named | — | Température pour l'aléatoire de la réponse audio (transmise au LLM) |
| `-TemperatureResponse` | Double | — | — | Named | — | Température pour la génération de réponse (passée au LLM) |
| `-Language` | String | — | — | Named | — | fr-FR |
| `-CpuThreads` | Int32 | — | — | Named | — | Nombre de threads CPU à utiliser (transmis au LLM) |
| `-SuppressRegex` | String | — | — | Named | — | Expression régulière pour supprimer la sortie (transmise au LLM) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Taille du contexte audio pour le traitement (transmise au LLM) |
| `-SilenceThreshold` | Double | — | — | Named | — | Seuil de silence pour la détection audio (transmis au LLM) |
| `-LengthPenalty` | Double | — | — | Named | — | Pénalité de longueur pour la génération de séquences (transmise au LLM) |
| `-EntropyThreshold` | Double | — | — | Named | — | Seuil d'entropie pour le filtrage de la sortie (transmis au LLM) |
| `-LogProbThreshold` | Double | — | — | Named | — | Seuil de probabilité logarithmique pour le filtrage de la sortie (transmis au LLM) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Aucun seuil de parole pour la détection audio (transmis au LLM) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Désactiver la sortie vocale (transmise au LLM) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Désactiver la sortie vocale pour les pensées (transmises au LLM) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Désactiver VOX (activation vocale) (transmis au LLM) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Utiliser la capture audio du bureau (transmise au LLM) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Désactiver l'utilisation du contexte (transmis au LLM) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Activer la stratégie d'échantillonnage par faisceau (transmise au LLM) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | La réponse uniquement (transmise au LLM) |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Utilisez la balise `{{item.body}}` pour afficher le corps de l'article. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtre pour les types de blocs de balisage (transmis au LLM) |
| `-NoCache` | SwitchParameter | — | — | Named | — | Ignorez le cache de traduction ; appelez toujours l'API LLM |
| `-ClearCache` | SwitchParameter | — | — | Named | — | Vider tout le cache de traduction pour toutes les langues |

## Outputs

- `String`

## Related Links

- [Get-TextTranslation on GitHub](https://github.com/genXdev/genXdev)
