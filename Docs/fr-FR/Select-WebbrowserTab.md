# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st

## Synopsis

> Sélectionne un onglet de navigateur parmi les navigateurs gérés par Playwright en cours d'exécution.

## Description

Liste et sélectionne les onglets du navigateur parmi toutes les instances de navigateur gérées par Playwright en cours d'exécution. Lorsqu'elle est appelée sans critère de sélection, affiche un tableau de tous les onglets disponibles dans tous les types de navigateur. Prend en charge la sélection par index numérique, motif d'URL ou référence directe à une page.

Lorsqu'un onglet est sélectionné, définit $Global:chromeController et $Global:chromeSession pour assurer la compatibilité ascendante avec les autres applets de commande Webbrowser.

## Syntax

```powershell
Select-WebbrowserTab [[-Id] <Int32>] [<CommonParameters>]

Select-WebbrowserTab -Name <String> [<CommonParameters>]

Select-WebbrowserTab -ByReference <Object> [<CommonParameters>]

Select-WebbrowserTab [-All] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Force] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Id` | Int32 | — | — | 0 | `-1` | Indice d'onglet de la liste affichée *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | Sélectionne le premier onglet contenant ce texte dans son URL *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | Référence directe de page à partir d'un état de navigateur Playwright *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Filtrer les onglets vers les instances du navigateur Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Filtrer les onglets vers les instances du navigateur Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Filtrer les onglets vers les instances de navigateur basées sur Chromium (Edge ou Chrome) |
| `-Firefox` | SwitchParameter | — | — | Named | — | Filtrer les onglets vers les instances du navigateur Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Filtrer les onglets sur tous les types de navigateurs gérés par Playwright |
| `-Webkit` | SwitchParameter | — | — | Named | — | Filtrer les onglets vers les instances du navigateur WebKit |
| `-All` | SwitchParameter | — | — | Named | — | Afficher les onglets de tous les types de navigateur (sans filtrage) |
| `-Force` | SwitchParameter | — | — | Named | — | Ignorer la confirmation et sélectionner le premier onglet correspondant |

## Examples

### Select-WebbrowserTab Lists all open tabs across all Playwright browser types.

```powershell
Select-WebbrowserTab
Lists all open tabs across all Playwright browser types.
```

### Select-WebbrowserTab -Id 2 Selects the tab at index 2 from the list.

```powershell
Select-WebbrowserTab -Id 2
Selects the tab at index 2 from the list.
```

### st -Name "github.com" Selects the first tab whose URL contains "github.com".

```powershell
st -Name "github.com"
Selects the first tab whose URL contains "github.com".
```

### st -Firefox -Id 0 Selects the first tab from the Firefox browser.

```powershell
st -Firefox -Id 0
Selects the first tab from the Firefox browser.
```

## Outputs

- `PSObject`

## Related Links

- [Select-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
