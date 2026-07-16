# Add-FeatureLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `feature

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-FeatureLineToREADME [[-Line] <String>] [-Code] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | Der Feature-Beschreibungstext, der hinzugefügt werden soll |
| `-Code` | SwitchParameter | — | — | Named | — | 
```
To be or not to be, that is the question
``` |
| `-Show` | SwitchParameter | — | — | Named | — | ===== CRITICAL JSON OUTPUT REQUIREMENT =====
You MUST respond with ONLY valid json. NO other text is allowed.
Do NOT include any explanation, commentary, or text before or after the json.
Your response must be parseable json that conforms EXACTLY to this schema:
{
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
}

Example response format: {"response":"your actual response here"}
===== END REQUIREMENT ===== |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Verwenden Sie README im Home-Verzeichnis |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |

## Related Links

- [Add-FeatureLineToREADME on GitHub](https://github.com/genXdev/genXdev)
