# Add-IssueLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `issue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-IssueLineToREADME [[-Line] <String>] [-Code] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | Texte du problème à ajouter |
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

## Related Links

- [Add-IssueLineToREADME on GitHub](https://github.com/genXdev/genXdev)
