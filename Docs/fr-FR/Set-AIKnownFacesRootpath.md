# Set-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Définit le répertoire des fichiers d'images de visage utilisés dans les opérations GenXdev.AI.

## Description

Cette fonction configure le répertoire des visages global utilisé par le module GenXdev.AI pour diverses opérations de reconnaissance faciale et d'IA. Les paramètres peuvent être stockés de manière persistante dans les préférences (par défaut), uniquement dans la session en cours (en utilisant -SessionOnly), ou supprimés de la session (en utilisant -ClearSession).

## Syntax

```powershell
Set-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Chemin du répertoire pour les fichiers d'images de visages |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ne pas utiliser les paramètres alternatifs stockés dans la session pour les préférences IA comme la langue, les collections d'images, etc. |

## Examples

### Set-AIKnownFacesRootpath -FacesDirectory "C:\Faces"

```powershell
Set-AIKnownFacesRootpath -FacesDirectory "C:\Faces"
```

Définit le répertoire des visages de manière persistante dans les préférences.

### Set-AIKnownFacesRootpath "C:\FacePictures"

```powershell
Set-AIKnownFacesRootpath "C:\FacePictures"
```

Définit le répertoire des visages de manière persistante dans les préférences.

### Set-AIKnownFacesRootpath -FacesDirectory "C:\TempFaces" -SessionOnly

```powershell
Set-AIKnownFacesRootpath -FacesDirectory "C:\TempFaces" -SessionOnly
```

Définit le répertoire des visages uniquement pour la session en cours (variable globale).

### Set-AIKnownFacesRootpath -ClearSession

```powershell
Set-AIKnownFacesRootpath -ClearSession
```

Efface le paramètre du dossier des visages de session (variable globale) sans affecter les préférences persistantes.

## Related Links

- [Set-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
