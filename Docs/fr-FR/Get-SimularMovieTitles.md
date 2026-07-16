# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | The Godfather Pulp Fiction Schindler's List The Shawshank Redemption Fight Club Forrest Gump Inception The Matrix Goodfellas The Silence of the Lambs |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | Le type de requête LLM |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL du point de terminaison de l'API pour les opérations d'IA |
| `-ApiKey` | String | — | — | Named | — | La clé API pour les opérations IA authentifiées |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Le délai d'attente en secondes pour les opérations d'IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-Temperature` | Double | — | — | Named | `-1` | Température pour l'aléatoire de la réponse (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Ouvre les recherches IMDB pour chaque résultat |
| `-Language` | String | — | — | Named | — | Français pour la recherche IMDB ou la session du navigateur |
| `-Monitor` | Int32 | — | — | Named | `-1` | Index ou nom de moniteur pour le placement de la fenêtre du navigateur |
| `-Width` | Int32 | — | — | Named | `-1` | Largeur de la fenêtre du navigateur en pixels |
| `-Height` | Int32 | — | — | Named | `-1` | Hauteur de la fenêtre du navigateur en pixels |
| `-AcceptLang` | String | — | — | Named | — | En-tête HTTP Accept-Language pour la session du navigateur |
| `-Private` | SwitchParameter | — | — | Named | — | Ouvrir le navigateur en mode privé/incognito |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utilisez Google Chrome pour la session de navigation |
| `-Chromium` | SwitchParameter | — | — | Named | — | Utilisez Chromium pour la session du navigateur |
| `-Firefox` | SwitchParameter | — | — | Named | — | Utiliser Mozilla Firefox pour la session de navigation |
| `-Left` | Int32 | — | — | Named | — | Position gauche de la fenêtre du navigateur en pixels |
| `-Right` | Int32 | — | — | Named | — | Position droite de la fenêtre du navigateur en pixels |
| `-Bottom` | Int32 | — | — | Named | — | Position inférieure de la fenêtre du navigateur en pixels |
| `-Centered` | SwitchParameter | — | — | Named | — | Fenêtre du navigateur ouverte centrée sur l'écran |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Ouvrir le navigateur en mode plein écran |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ouvrir le navigateur en mode application (interface utilisateur minimale) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Désactiver les extensions du navigateur pour la session |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Désactiver le bloqueur de popups dans la session du navigateur |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre du navigateur au premier plan après l'ouverture |
| `-Maximize` | SwitchParameter | — | — | Named | — | Agrandir la fenêtre du navigateur après l'ouverture |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus sur la fenêtre précédente après la fermeture du navigateur |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Open each IMDB result in a new browser window |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.imdb.com/search/title/?title=Return+the+URL+after+opening+IMDB+search |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | http://example.com |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Envoyer la touche Échap au navigateur après l'ouverture |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Maintenir le focus clavier dans le navigateur après avoir envoyé les touches |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Maj+Entrée pour envoyer les touches au navigateur |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai en millisecondes entre l'envoi des frappes au navigateur |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Ouvrir la fenêtre du navigateur sans bordures |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Ouvrir les fenêtres du navigateur côte à côte pour chaque résultat |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Instructions` | String | — | — | Named | — | Instructions for the AI model on how to generate the string list |
| `-Attachments` | String[] | — | — | Named | — | Tableau des chemins de fichiers à joindre |
| `-ImageDetail` | String | — | — | Named | — | Niveau de détail de l'image pour le traitement d'image. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Array of function definitions that can be called by the AI model during processing. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Tableau des définitions de commandes PowerShell à utiliser comme outils que l'IA peut invoquer. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Tableau des noms de commandes qui ne nécessitent pas de confirmation avant exécution. |
| `-AudioTemperature` | Double | — | — | Named | — | Température pour la génération audio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Température pour la génération de réponse. |
| `-CpuThreads` | Int32 | — | — | Named | — | Nombre de threads CPU à utiliser. |
| `-SuppressRegex` | String | — | — | Named | — | Expression régulière pour supprimer certaines sorties. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Taille du contexte audio pour le traitement. |
| `-SilenceThreshold` | Double | — | — | Named | — | Seuil de silence pour le traitement audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Pénalité de longueur pour la génération de séquence. |
| `-EntropyThreshold` | Double | — | — | Named | — | Seuil d'entropie pour le filtrage de sortie. |
| `-LogProbThreshold` | Double | — | — | Named | — | Seuil de probabilité logarithmique pour le filtrage de la sortie. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Aucun seuil de parole pour la détection audio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Désactiver la sortie vocale. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Désactiver la sortie vocale de la pensée. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Désactiver le VOX (activation vocale). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Utilisez la capture audio du bureau. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Désactiver l'utilisation du contexte. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Utilisez la stratégie d'échantillonnage par recherche en faisceau. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Répondez uniquement avec des réponses. |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Lorsque spécifié, copie la liste de chaînes résultante dans le presse-papiers système après le traitement. |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | N'ajoutez pas les réflexions du modèle à l'historique de la conversation |
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
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Activer les outils par défaut pour le modèle d'IA. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Retournez uniquement les blocs de balisage dans la sortie. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longueur maximale de rappel pour les appels d'outils. |

## Related Links

- [Get-SimularMovieTitles on GitHub](https://github.com/genXdev/genXdev)
