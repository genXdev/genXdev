# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-LineToREADME [[-Line] <String>] -Section <String> -Prefix <String> [-Code] [-Done] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | La ligne à ajouter au README |
| `-Section` | String | ✅ | — | 1 | — | La section à laquelle ajouter la ligne |
| `-Prefix` | String | ✅ | — | 2 | `'* '` | Le préfixe à utiliser pour la ligne |
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

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
