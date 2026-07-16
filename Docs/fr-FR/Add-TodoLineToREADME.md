# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Code] [-Done] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | ✅ (ByValue) | 0 | `''` | Le texte de l'élément todo à ajouter |
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
| `-Done` | SwitchParameter | — | — | Named | — | Marquer l'élément de tâche comme terminé |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Utiliser README dans le répertoire du profil PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Utilisez le README dans le répertoire OneDrive |

## Related Links

- [Add-TodoLineToREADME on GitHub](https://github.com/genXdev/genXdev)
