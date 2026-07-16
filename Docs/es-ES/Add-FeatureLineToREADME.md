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
| `-Line` | String | — | — | 0 | `''` | The feature description text to add |
| `-Code` | SwitchParameter | — | — | Named | — | ```
===== CRITICAL JSON OUTPUT REQUIREMENT =====
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
===== END REQUIREMENT =====
``` |
| `-Show` | SwitchParameter | — | — | Named | — | # README

This is a README file. |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Utiliza el README en el directorio de inicio |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |

## Related Links

- [Add-FeatureLineToREADME on GitHub](https://github.com/genXdev/genXdev)
