# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub, `qgh

## Synopsis

> Ouvre une requête de recherche de dépôt GitHub dans un navigateur web ou exécute des recherches avancées via l'API REST de GitHub, prenant en charge tous les qualificatifs disponibles et catégories de recherche (dépôts, code, problèmes, utilisateurs, commits, discussions, sujets, wikis).

## Description

Ouvre une requête de recherche de dépôt Github dans un navigateur web avec des options de personnalisation étendues ou effectue des recherches avancées via l'API. Cette fonction fournit une interface puissante pour accéder rapidement aux dépôts Github depuis PowerShell avec la prise en charge de plusieurs navigateurs, le positionnement des fenêtres, le filtrage par langue et l'automatisation du clavier, ou la récupération de données structurées via l'API. Principales fonctionnalités :

Prise en charge de plusieurs requêtes de recherche avec entrée par pipeline
Filtrage spécifique à la langue avec localisation automatique
Prise en charge de plusieurs navigateurs (Edge, Chrome, Firefox)
Positionnement avancé des fenêtres et sélection du moniteur
Mode de navigation privée/incognito
Mode application pour une navigation sans distraction
Automatisation du clavier et gestion du focus
Options de retour d'URL pour une utilisation programmatique
Recherche API avancée avec qualificateurs, tri, pagination
Prise en charge de tous les types de recherche Github
Authentification avec jeton d'accès personnel
Exécution asynchrone des tâches pour les recherches API
Sortie JSON brute ou objet structuré

La fonction construit automatiquement les URLs de recherche Github pour le mode web ou les points de terminaison API pour le mode API et transmet tous les paramètres liés au navigateur à la fonction sous-jacente Open-Webbrowser pour un comportement cohérent.

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Requêtes de recherche à exécuter sur GitHub. Prend en charge plusieurs requêtes et l'entrée pipeline pour la recherche par lots. Chaque requête sera encodée en URL et utilisée pour rechercher GitHub. |
| `-Type` | String | — | — | Named | `'Code'` | La catégorie principale à rechercher. Par défaut à 'Code'. |
| `-In` | String[] | — | — | Named | — | Champ(s) de recherche. Seules les options valides pour le type sélectionné seront acceptées. |
| `-User` | String | — | — | Named | — | Restreindre la recherche aux ressources d'un utilisateur (dépôts, code, problèmes, etc.). |
| `-Org` | String | — | — | Named | — | Restreindre la recherche à une organisation |
| `-Repo` | String | — | — | Named | — | Restreindre la recherche à un dépôt nommé ('propriétaire/dépôt'). |
| `-Path` | String | — | — | Named | — | Restreindre la recherche de code à des chemins de fichier ou de répertoire spécifiques (supporte les jokers selon la syntaxe de recherche GitHub). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filtrer les résultats par le nom du fichier (pas le chemin). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Restreindre la recherche de code aux extensions de fichier. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Filtrer par langage de programmation. |
| `-Size` | String | — | — | Named | — | Taille du fichier / dépôt. Prend en charge la syntaxe numérique et de plage (voir exemples). |
| `-State` | String | — | — | Named | — | Pour les problèmes/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Problèmes/PR : limiter à ceux créés par un utilisateur spécifié. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Problèmes/PR : limiter à ceux assignés à un utilisateur. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Problèmes/PR : doit être étiqueté avec toutes les chaînes spécifiées. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR : doivent manquer certaines métadonnées (par exemple, étiquette, jalon). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Champ de tri (dépend du type). Par exemple, « stars », « forks », « updated », etc. |
| `-Order` | String | — | — | Named | — | Ordre croissant ou décroissant pour le tri. |
| `-PerPage` | Int32 | — | — | Named | `10` | Taille de page (max 100). |
| `-Page` | Int32 | — | — | Named | `1` | Numéro de page pour les résultats paginés. |
| `-Token` | String | — | — | Named | — | Jeton OAuth GitHub ou jeton d'accès personnel. Si non fourni, utilise GITHUB_TOKEN ou une variable d'environnement. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang HTTP header. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre l'envoi de différentes séquences de touches en millisecondes. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Le moniteur sur lequel afficher les résultats. 0 = par défaut, -1 = ignorer, -2 = secondaire. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | La largeur initiale de la fenêtre du navigateur. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | Hauteur initiale de la fenêtre du navigateur. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | La position initiale X de la fenêtre du navigateur. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | La position Y initiale de la fenêtre du navigateur. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Touches à envoyer à la fenêtre du navigateur, voir la documentation de la cmdlet GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Correspondre uniquement aux résultats respectant la casse (lorsque cette fonction est prise en charge). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Lancez la recherche de manière asynchrone en tant que tâche PowerShell. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | {"response":"Désolé, je n'ai pas compris votre demande. Pouvez-vous la reformuler ?"} *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Utilisez le mode API au lieu d'ouvrir dans le navigateur web. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Ouvre le navigateur en mode navigation privée/incognito pour des recherches anonymes. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Forcer l'activation du port de débogage, arrêter les navigateurs existants si nécessaire. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Ouvre les résultats de la recherche dans le navigateur Microsoft Edge. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Ouvre les résultats de recherche dans le navigateur Google Chrome. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Ouvre les résultats de recherche dans Microsoft Edge ou Google Chrome, selon le navigateur par défaut. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Ouvre les résultats de recherche dans le navigateur Mozilla Firefox. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Utiliser le navigateur géré par Playwright au lieu du navigateur installé sur le système d'exploitation |
| `-Webkit` | SwitchParameter | — | — | Named | — | Ouvre le navigateur WebKit géré par Playwright. Implique -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Exécutez le navigateur sans fenêtre visible |
| `-All` | SwitchParameter | — | — | Named | — | S'ouvre dans tous les navigateurs modernes enregistrés |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Ouvre le navigateur en mode plein écran. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Place le navigateur sur le côté gauche de l'écran. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Place browser window on the top side of the screen. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Placer la fenêtre du navigateur en bas de l'écran. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Placer la fenêtre du navigateur au centre de l'écran. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Masquer les contrôles du navigateur. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Empêcher le chargement des extensions de navigateur. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Désactiver le bloqueur de popups dans le navigateur. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Amener la fenêtre du navigateur au premier plan après l'ouverture. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiser la fenêtre après le positionnement. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Ne pas réutiliser une fenêtre de navigateur existante, mais en créer une nouvelle. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourne un objet [System.Diagnostics.Process] du processus du navigateur en mode web ou un objet de requête en mode API. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Après avoir ouvert le navigateur Web, retournez l'URL. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle lors de l'envoi des touches. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Empêcher le retour du focus clavier à PowerShell après l'envoi des touches. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Placez la fenêtre du navigateur côte à côte avec PowerShell sur le même écran. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Efface les paramètres alternatifs stockés dans la session pour les préférences. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Enregistrer uniquement les paramètres dans les préférences persistantes sans affecter la session. *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Outputs

- `PSObject`

## Related Links

- [Open-GithubQuery on GitHub](https://github.com/genXdev/genXdev)
