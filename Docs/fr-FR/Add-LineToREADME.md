# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Adds a line to a README.md markdown file in a specified section.

## Description

Recherche et modifie un fichier README.md en ajoutant une nouvelle ligne à une section spécifiée.
Peut créer la section si elle n'existe pas. Prend en charge le formatage des lignes sous forme de blocs
de code et l'affichage de la section modifiée.

Cherche d'abord dans le répertoire courant, puis remonte les répertoires pour trouver l'emplacement du README.
Si introuvable, utilise le README dans le répertoire du profil PowerShell.

## Syntax

```powershell
Add-LineToREADME -Section <String> [-Ascending] [-Code] [-Done] [-First <Int32>] [-Line <String>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | Named | `''` | La ligne à ajouter au README |
| `-Section` | String | ✅ | — | 0 | — | La section à laquelle ajouter la ligne |
| `-Code` | SwitchParameter | — | — | Named | — | Ouvrir dans Visual Studio Code après modification |
| `-Show` | SwitchParameter | — | — | Named | — | {
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
          "description": "La sortie textuelle transformée"
        }
      },
      "type": "object"
    }
  }
} |
| `-Done` | SwitchParameter | — | — | Named | — | Marquer l'élément comme terminé |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Utiliser README dans le répertoire du profil PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Utilisez le README dans le répertoire OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | Priorité pour le tri (plus élevé = affiché en premier, défaut 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Trier les lignes par date (préfixe aaaammjj) au lieu de la priorité |
| `-Ascending` | SwitchParameter | — | — | Named | — | Inverser l'ordre de tri (croissant au lieu de décroissant) |
| `-First` | Int32 | — | — | Named | `0` | Limite - Afficher la sortie sur les N premières lignes |

## Examples

### Add-LineToREADME -Line "New feature" -Section "## Features"

```powershell
Add-LineToREADME -Line "New feature" -Section "## Features"
```

### Add-LineToREADME "High prio item" "## Issues" -Priority 5

```powershell
Add-LineToREADME "High prio item" "## Issues" -Priority 5
```

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
