# Add-IdeaLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `idea

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-IdeaLineToREADME [[-Line] <String>] [-Code] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | Идея текста для добавления |
| `-Code` | SwitchParameter | — | — | Named | — | Открыть README в Visual Studio Code |
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
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Используйте README в каталоге профиля PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |

## Related Links

- [Add-IdeaLineToREADME on GitHub](https://github.com/genXdev/genXdev)
