# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Gère le cache de traduction persistant avec des écritures disque par lot par langue.

## Description

Maintenez un cache de traduction en mémoire à l'étendue du module pour Get-TextTranslation.
Le cache est divisé en fichiers JSON par langue sous
$env:LOCALAPPDATA\GenXdev.PowerShell\. Les appels pour ajouter des entrées sont regroupés —
l'écriture sur disque n'a lieu que toutes les 100 mutations par langue, ou lorsque -PersistNow
est appelé. -PersistNow vide également le cache en mémoire pour éviter une croissance
illimitée entre les lots de traitement.

## Syntax

```powershell
Merge-TranslationCache [-GetCache] [<CommonParameters>]

Merge-TranslationCache -Key <String> -Language <String> -Value <String> [<CommonParameters>]

Merge-TranslationCache -PersistNow [<CommonParameters>]

Merge-TranslationCache -ClearCache [<CommonParameters>]

Merge-TranslationCache -PurgeFromCache [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-GetCache` | SwitchParameter | — | — | Named | — | Retourner la table de hachage du cache en mémoire *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | Code de langue BCP 47 pour l'entrée du cache *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | Le texte source à mettre en cache *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | CONCEPTS DÉTAILLÉS

Résumé des réservations d’URL sur le cluster à l’aide de propriétés de réservation spécifiques.

Les navigateurs doivent écouter sur le port 80 (HTTP) ou 443 (HTTPS). Normalement, un seul service peut écouter sur un port donné, ce qui signifie que chaque cluster ne peut héberger qu’un seul site web. En utilisant la réservation d’URL, un serveur HTTP peut s’inscrire pour une partie spécifique de l’espace de noms des URL, permettant à plusieurs services HTTP d’exister sur le même port, à condition qu’ils n’entrent pas en conflit entre eux.

Un exemple typique : un serveur HTTP qui traite la logique métier écoute uniquement sur http://www.fabrikam.com/software. Une réservation d’URL est créée avec l’URL http://www.fabrikam.com/software pour un groupe d’utilisateurs spécifique. Il existe d’autres serveurs HTTP qui écoutent sur d’autres chemins tels que http://www.fabrikam.com/prices.

Les paramètres de configuration de réservation d’URL incluent :

- URL : l’URL spécifique réservée.
- utilisateurs : le groupe d’utilisateurs ou principal de sécurité autorisé à accéder à l’URL. *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Écrire tous les caches sales sur le disque et vider la mémoire *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Vider le cache en mémoire et supprimer tous les fichiers disque *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Supprimer les entrées non traduites de tous les caches de langues sur le disque *(Parameter set: )* |

## Examples

### $cache = Merge-TranslationCache -GetCache

```powershell
$cache = Merge-TranslationCache -GetCache
```

### Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'

```powershell
Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'
```

### Merge-TranslationCache -PersistNow

```powershell
Merge-TranslationCache -PersistNow
```

### Merge-TranslationCache -PurgeFromCache

```powershell
Merge-TranslationCache -PurgeFromCache
```

## Parameter Details

### `-GetCache`

> Retourner la table de hachage du cache en mémoire

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Get |

<hr/>
### `-Language <String>`

> Code de langue BCP 47 pour l'entrée du cache

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Key <String>`

> Le texte source à mettre en cache

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Value <String>`

> CONCEPTS DÉTAILLÉS

Résumé des réservations d’URL sur le cluster à l’aide de propriétés de réservation spécifiques.

Les navigateurs doivent écouter sur le port 80 (HTTP) ou 443 (HTTPS). Normalement, un seul service peut écouter sur un port donné, ce qui signifie que chaque cluster ne peut héberger qu’un seul site web. En utilisant la réservation d’URL, un serveur HTTP peut s’inscrire pour une partie spécifique de l’espace de noms des URL, permettant à plusieurs services HTTP d’exister sur le même port, à condition qu’ils n’entrent pas en conflit entre eux.

Un exemple typique : un serveur HTTP qui traite la logique métier écoute uniquement sur http://www.fabrikam.com/software. Une réservation d’URL est créée avec l’URL http://www.fabrikam.com/software pour un groupe d’utilisateurs spécifique. Il existe d’autres serveurs HTTP qui écoutent sur d’autres chemins tels que http://www.fabrikam.com/prices.

Les paramètres de configuration de réservation d’URL incluent :

- URL : l’URL spécifique réservée.
- utilisateurs : le groupe d’utilisateurs ou principal de sécurité autorisé à accéder à l’URL.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-PersistNow`

> Écrire tous les caches sales sur le disque et vider la mémoire

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Persist |

<hr/>
### `-ClearCache`

> Vider le cache en mémoire et supprimer tous les fichiers disque

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Clear |

<hr/>
### `-PurgeFromCache`

> Supprimer les entrées non traduites de tous les caches de langues sur le disque

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Purge |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-WinMerge.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRReceive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRTest-DeepLinkImageFile.md)
