# Add-IdeaLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `idea

## Synopsis

> Ajoute un élément d'idée au fichier README.md.

## Description

Ajoute une idée horodatée à la section "## Ideas" d'un fichier README.md.
Peut afficher la section modifiée et l'ouvrir dans Visual Studio Code.

## Syntax

```powershell
Add-IdeaLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | L'idée du texte à ajouter |
| `-Code` | SwitchParameter | — | — | Named | — | Ouvrir README dans Visual Studio Code |
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
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Utiliser README dans le répertoire du profil PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Utilisez le README dans le répertoire OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | Priorité pour le tri (plus élevé = affiché en premier, défaut 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Trier les lignes par date (préfixe aaaammjj) au lieu de la priorité |
| `-Ascending` | SwitchParameter | — | — | Named | — | Inverser l'ordre de tri (croissant au lieu de décroissant) |
| `-First` | Int32 | — | — | Named | `0` | Limite - Afficher la sortie sur les N premières lignes |

## Examples

### Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show

```powershell
Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show
```

### idea "New feature idea" -UseOneDriveREADME

```powershell
idea "New feature idea" -UseOneDriveREADME
```

## Related Links

- [Add-IdeaLineToREADME on GitHub](https://github.com/genXdev/genXdev)
