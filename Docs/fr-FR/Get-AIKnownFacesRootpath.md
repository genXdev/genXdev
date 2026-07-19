# Get-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Obtient le répertoire configuré pour les fichiers d'images de visage utilisés dans les opérations GenXdev.AI.

## Description

Cette fonction récupère le répertoire global des visages utilisé par le module GenXdev.AI pour diverses opérations de reconnaissance faciale et d'IA. Elle vérifie d'abord les variables globales (sauf si SkipSession est spécifié), puis revient aux préférences persistantes, et enfin utilise les valeurs par défaut du système.

## Syntax

```powershell
Get-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Chemin du répertoire pour les fichiers d'images de visages |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ne pas utiliser les paramètres alternatifs stockés dans la session pour les préférences IA comme la langue, les collections d'images, etc. |

## Examples

### Get-AIKnownFacesRootpath

```powershell
Get-AIKnownFacesRootpath
```

Récupère le répertoire des visages actuellement configuré à partir des variables globales ou des préférences.

### Get-AIKnownFacesRootpath -SkipSession

```powershell
Get-AIKnownFacesRootpath -SkipSession
```

Récupère uniquement le répertoire de visages configuré à partir des préférences persistantes, en ignorant tout paramètre de session.

### Get-AIKnownFacesRootpath -ClearSession

```powershell
Get-AIKnownFacesRootpath -ClearSession
```

Efface la configuration du répertoire des visages de session, puis récupère le répertoire à partir des préférences persistantes.

### Get-AIKnownFacesRootpath "C:\MyFaces"

```powershell
Get-AIKnownFacesRootpath "C:\MyFaces"
```

Renvoie le répertoire spécifié après avoir développé le chemin.

## Related Links

- [Get-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
