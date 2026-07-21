# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> Ouvre une requête de recherche de dépôt Github dans un navigateur Web ou exécute des recherches avancées via l'API REST de GitHub prenant en charge tous les qualificateurs et catégories de recherche disponibles (dépôts, code, problèmes, utilisateurs, commits, discussions, sujets, wikis).

## Description

<details>
<summary><b>Expand description</b></summary>

Ouvre une requête de recherche GitHub dans un navigateur web avec des options de personnalisation étendues ou effectue des recherches API avancées. Cette fonction fournit une interface puissante pour accéder rapidement aux dépôts GitHub depuis PowerShell, avec la prise en charge de plusieurs navigateurs, le positionnement des fenêtres, le filtrage par langue et l'automatisation du clavier, ou la récupération de données structurées via l'API.

Fonctionnalités clés :

Prise en charge de plusieurs requêtes de recherche avec entrée par pipeline
Filtrage spécifique à la langue avec localisation automatique
Prise en charge de plusieurs navigateurs (Edge, Chrome, Firefox)
Positionnement avancé des fenêtres et sélection du moniteur
Mode de navigation privée/incognito
Mode application pour une navigation sans distraction
Automatisation du clavier et gestion du focus
Options de retour d'URL pour une utilisation programmatique
Recherche API avancée avec qualificatifs, tri, pagination
Prise en charge de tous les types de recherche GitHub
Authentification avec jeton d'accès personnel
Exécution de tâches asynchrones pour les recherches API
Sortie JSON brute ou objet structuré

La fonction construit automatiquement les URL de recherche GitHub pour le mode web ou les points de terminaison API pour le mode API et transmet tous les paramètres liés au navigateur à la fonction Open-Webbrowser sous-jacente pour un comportement cohérent.

</details>
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
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Les requêtes de recherche à exécuter sur Github. Prend en charge plusieurs requêtes et l'entrée de pipeline pour la recherche par lots. Chaque requête sera encodée en URL et utilisée pour rechercher Github. |
| `-Type` | String | — | — | Named | `'Code'` | La catégorie majeure à rechercher. Par défaut, 'Code'. |
| `-In` | String[] | — | — | Named | — | Champ(s) à rechercher. Seules les options valides pour le Type sélectionné seront acceptées. |
| `-User` | String | — | — | Named | — | Limiter la recherche aux ressources d'un utilisateur (dépôts, code, problèmes, etc.). |
| `-Org` | String | — | — | Named | — | Limiter la recherche à une organisation. |
| `-Repo` | String | — | — | Named | — | Limiter la recherche à un dépôt nommé ('propriétaire/dépôt'). |
| `-Path` | String | — | — | Named | — | Limiter la recherche de code à des chemins de fichiers ou de répertoires spécifiques (prend en charge les caractères génériques selon la syntaxe de recherche GitHub). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filtrer les résultats par le nom de fichier (pas par le chemin). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Restreindre la recherche de code aux extensions de fichier. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Filtrer par langage de programmation. |
| `-Size` | String | — | — | Named | — | Taille du fichier/référentiel. Prend en charge la syntaxe numérique et par plage (voir exemples). |
| `-State` | String | — | — | Named | — | Pour les problèmes/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR : limiter à ceux créés par un utilisateur spécifié. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Problèmes/PR : limiter à ceux assignés à un utilisateur. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Problèmes/PR : doit être étiqueté avec toutes les chaînes spécifiées. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Problèmes/PR : doivent manquer certaines métadonnées (par ex., étiquette, jalon). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Champ de tri (dépend du type). Par ex., "stars", "forks", "updated", etc. |
| `-Order` | String | — | — | Named | — | Ordre « asc » ou « desc » pour le tri. |
| `-PerPage` | Int32 | — | — | Named | `10` | Taille de la page (max 100). |
| `-Page` | Int32 | — | — | Named | `1` | Numéro de page pour les résultats paginés. |
| `-Token` | String | — | — | Named | — | Jeton OAuth GitHub ou jeton d'accès personnel. S'il n'est pas fourni, utilise GITHUB_TOKEN ou la variable d'environnement. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Définit l'en-tête HTTP d'acceptation des langues du navigateur. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai en millisecondes entre l'envoi de différentes séquences de touches. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Le moniteur sur lequel afficher les résultats. 0 = par défaut, -1 = ignorer, -2 = secondaire. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | La largeur initiale de la fenêtre du navigateur. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | La hauteur initiale de la fenêtre du navigateur. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | La position initiale X de la fenêtre du navigateur. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | La position Y initiale de la fenêtre du navigateur. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Frappes à envoyer à la fenêtre du navigateur, consultez la documentation de l'applet de commande GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Faire correspondre uniquement les résultats respectant la casse (lorsque cela est pris en charge). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Exécuter la recherche de manière asynchrone en tant que tâche PowerShell. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | Get-Acl

SYNOPSIS
Obtient le descripteur de sécurité pour une ressource, telle qu'un fichier ou une clé de registre.

SYNTAX
Get-Acl [[-Path] <String[]>] [-Audit] [-Exclude <String[]>] [-Filter <String>] [-Include <String[]>] [<CommonParameters>]

Get-Acl [-InputObject <PSObject>] [-Audit] [-Exclude <String[]>] [-Filter <String>] [-Include <String[]>] [<CommonParameters>]

DESCRIPTION
L'applet de commande Get-Acl obtient les objets qui représentent le descripteur de sécurité d'un fichier ou d'une ressource. Le descripteur de sécurité contient les listes de contrôle d'accès (ACL) de la ressource. L'ACL spécifie les autorisations que les utilisateurs et les groupes d'utilisateurs ont pour accéder à la ressource.

À compter de Windows PowerShell 3.0, vous pouvez utiliser le paramètre InputObject de Get-Acl pour obtenir le descripteur de sécurité des objets qui n'ont pas de chemin. *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Utilisez le mode API au lieu d'ouvrir dans un navigateur Web. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Ouvre le navigateur en mode de navigation privée/incognito pour des recherches anonymes. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Forcer l'activation du port de débogage, en arrêtant les navigateurs existants si nécessaire. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Ouvre les résultats de recherche dans le navigateur Microsoft Edge. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Ouvre les résultats de recherche dans le navigateur Google Chrome. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Ouvre les résultats de recherche dans Microsoft Edge ou Google Chrome, selon le navigateur par défaut. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Ouvre les résultats de recherche dans le navigateur Mozilla Firefox. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Utiliser le navigateur géré par Playwright au lieu du navigateur installé sur le système d'exploitation |
| `-Webkit` | SwitchParameter | — | — | Named | — | Ouvre le navigateur WebKit géré par Playwright. Implique -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Exécuter le navigateur sans fenêtre visible |
| `-All` | SwitchParameter | — | — | Named | — | S'ouvre dans tous les navigateurs modernes enregistrés |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Ouvre le navigateur en mode plein écran. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Placer la fenêtre du navigateur sur le côté gauche de l'écran. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Placer la fenêtre du navigateur sur le côté droit de l'écran. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Placer la fenêtre du navigateur sur le côté supérieur de l'écran. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Placer la fenêtre du navigateur en bas de l'écran. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Placer la fenêtre du navigateur au centre de l'écran. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Masquer les contrôles du navigateur. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Empêcher le chargement des extensions du navigateur. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Désactiver le bloqueur de popups dans le navigateur. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focaliser la fenêtre du navigateur après l'ouverture. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Placer la fenêtre du navigateur au premier plan après l'ouverture. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximisez la fenêtre après le positionnement. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Rétablir le focus de la fenêtre PowerShell. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Ne réutilisez pas la fenêtre de navigateur existante, créez-en une nouvelle à la place. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourne un objet [System.Diagnostics.Process] du processus du navigateur en mode web ou un objet de requête en mode API. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | N'ouvrez pas le navigateur web, retournez simplement l'URL. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Après avoir ouvert le navigateur web, retournez l'url. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échappez les caractères de contrôle lors de l'envoi de touches. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Empêche le retour du focus clavier à PowerShell après l'envoi de touches. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Envoyer Maj+Entrée au lieu d'Entrée normal pour les sauts de ligne. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprimer les bordures de fenêtre et la barre de titre pour un aspect plus épuré. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Placez la fenêtre du navigateur côte à côte avec PowerShell sur le même moniteur. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilisez des paramètres alternatifs stockés dans la session pour les préférences. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer les paramètres alternatifs stockés dans la session pour les préférences. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Stocker les paramètres uniquement dans les préférences persistantes sans affecter la session. *(Parameter set: )* |

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

## Parameter Details

### `-Query <String[]>`

> Les requêtes de recherche à exécuter sur Github. Prend en charge plusieurs requêtes et l'entrée de pipeline pour la recherche par lots. Chaque requête sera encodée en URL et utilisée pour rechercher Github.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Queries` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Type <String>`

> La catégorie majeure à rechercher. Par défaut, 'Code'.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Code'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-In <String[]>`

> Champ(s) à rechercher. Seules les options valides pour le Type sélectionné seront acceptées.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-User <String>`

> Limiter la recherche aux ressources d'un utilisateur (dépôts, code, problèmes, etc.).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Org <String>`

> Limiter la recherche à une organisation.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repo <String>`

> Limiter la recherche à un dépôt nommé ('propriétaire/dépôt').

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> Limiter la recherche de code à des chemins de fichiers ou de répertoires spécifiques (prend en charge les caractères génériques selon la syntaxe de recherche GitHub).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Filename <String>`

> Filtrer les résultats par le nom de fichier (pas par le chemin).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Extension <String>`

> Restreindre la recherche de code aux extensions de fichier.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Language <String>`

> Filtrer par langage de programmation.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Size <String>`

> Taille du fichier/référentiel. Prend en charge la syntaxe numérique et par plage (voir exemples).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-State <String>`

> Pour les problèmes/PR.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Author <String>`

> Issues/PR : limiter à ceux créés par un utilisateur spécifié.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Assignee <String>`

> Problèmes/PR : limiter à ceux assignés à un utilisateur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Labels <String[]>`

> Problèmes/PR : doit être étiqueté avec toutes les chaînes spécifiées.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-No <String[]>`

> Problèmes/PR : doivent manquer certaines métadonnées (par ex., étiquette, jalon).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-SortBy <String>`

> Champ de tri (dépend du type). Par ex., "stars", "forks", "updated", etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Order <String>`

> Ordre « asc » ou « desc » pour le tri.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerPage <Int32>`

> Taille de la page (max 100).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `10` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Int32>`

> Numéro de page pour les résultats paginés.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> Jeton OAuth GitHub ou jeton d'accès personnel. S'il n'est pas fourni, utilise GITHUB_TOKEN ou la variable d'environnement.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-AcceptLang <String>`

> Définit l'en-tête HTTP d'acceptation des langues du navigateur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Délai en millisecondes entre l'envoi de différentes séquences de touches.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Monitor <Int32>`

> Le moniteur sur lequel afficher les résultats. 0 = par défaut, -1 = ignorer, -2 = secondaire.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Width <Int32>`

> La largeur initiale de la fenêtre du navigateur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Height <Int32>`

> La hauteur initiale de la fenêtre du navigateur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-X <Int32>`

> La position initiale X de la fenêtre du navigateur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Y <Int32>`

> La position Y initiale de la fenêtre du navigateur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-KeysToSend <String[]>`

> Frappes à envoyer à la fenêtre du navigateur, consultez la documentation de l'applet de commande GenXdev\Send-Key.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-CaseSensitive`

> Faire correspondre uniquement les résultats respectant la casse (lorsque cela est pris en charge).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsJob`

> Exécuter la recherche de manière asynchrone en tant que tâche PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-RawResponse`

> Get-Acl

SYNOPSIS
Obtient le descripteur de sécurité pour une ressource, telle qu'un fichier ou une clé de registre.

SYNTAX
Get-Acl [[-Path] <String[]>] [-Audit] [-Exclude <String[]>] [-Filter <String>] [-Include <String[]>] [<CommonParameters>]

Get-Acl [-InputObject <PSObject>] [-Audit] [-Exclude <String[]>] [-Filter <String>] [-Include <String[]>] [<CommonParameters>]

DESCRIPTION
L'applet de commande Get-Acl obtient les objets qui représentent le descripteur de sécurité d'un fichier ou d'une ressource. Le descripteur de sécurité contient les listes de contrôle d'accès (ACL) de la ressource. L'ACL spécifie les autorisations que les utilisateurs et les groupes d'utilisateurs ont pour accéder à la ressource.

À compter de Windows PowerShell 3.0, vous pouvez utiliser le paramètre InputObject de Get-Acl pour obtenir le descripteur de sécurité des objets qui n'ont pas de chemin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Api`

> Utilisez le mode API au lieu d'ouvrir dans un navigateur Web.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Private`

> Ouvre le navigateur en mode de navigation privée/incognito pour des recherches anonymes.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Force`

> Forcer l'activation du port de débogage, en arrêtant les navigateurs existants si nécessaire.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Edge`

> Ouvre les résultats de recherche dans le navigateur Microsoft Edge.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chrome`

> Ouvre les résultats de recherche dans le navigateur Google Chrome.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chromium`

> Ouvre les résultats de recherche dans Microsoft Edge ou Google Chrome, selon le navigateur par défaut.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Firefox`

> Ouvre les résultats de recherche dans le navigateur Mozilla Firefox.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PlayWright`

> Utiliser le navigateur géré par Playwright au lieu du navigateur installé sur le système d'exploitation

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Ouvre le navigateur WebKit géré par Playwright. Implique -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> Exécuter le navigateur sans fenêtre visible

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> S'ouvre dans tous les navigateurs modernes enregistrés

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> Ouvre le navigateur en mode plein écran.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Left`

> Placer la fenêtre du navigateur sur le côté gauche de l'écran.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Right`

> Placer la fenêtre du navigateur sur le côté droit de l'écran.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Top`

> Placer la fenêtre du navigateur sur le côté supérieur de l'écran.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Bottom`

> Placer la fenêtre du navigateur en bas de l'écran.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Centered`

> Placer la fenêtre du navigateur au centre de l'écran.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ApplicationMode`

> Masquer les contrôles du navigateur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBrowserExtensions`

> Empêcher le chargement des extensions du navigateur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-DisablePopupBlocker`

> Désactiver le bloqueur de popups dans le navigateur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-FocusWindow`

> Focaliser la fenêtre du navigateur après l'ouverture.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SetForeground`

> Placer la fenêtre du navigateur au premier plan après l'ouverture.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Maximize`

> Maximisez la fenêtre après le positionnement.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-RestoreFocus`

> Rétablir le focus de la fenêtre PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NewWindow`

> Ne réutilisez pas la fenêtre de navigateur existante, créez-en une nouvelle à la place.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PassThru`

> Retourne un objet [System.Diagnostics.Process] du processus du navigateur en mode web ou un objet de requête en mode API.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> N'ouvrez pas le navigateur web, retournez simplement l'URL.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ReturnOnlyURL`

> Après avoir ouvert le navigateur web, retournez l'url.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyEscape`

> Échappez les caractères de contrôle lors de l'envoi de touches.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Empêche le retour du focus clavier à PowerShell après l'envoi de touches.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyUseShiftEnter`

> Envoyer Maj+Entrée au lieu d'Entrée normal pour les sauts de ligne.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBorders`

> Supprimer les bordures de fenêtre et la barre de titre pour un aspect plus épuré.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SideBySide`

> Placez la fenêtre du navigateur côte à côte avec PowerShell sur le même moniteur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SessionOnly`

> Utilisez des paramètres alternatifs stockés dans la session pour les préférences.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ClearSession`

> Effacer les paramètres alternatifs stockés dans la session pour les préférences.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SkipSession`

> Stocker les paramètres uniquement dans les préférences persistantes sans affecter la session.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRCopy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-BuiltWithSiteInfo.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-YoutubeQuery.md)
