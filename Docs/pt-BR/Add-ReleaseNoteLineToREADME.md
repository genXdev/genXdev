# Add-ReleaseNoteLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `releasenote

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-ReleaseNoteLineToREADME [[-Line] <String>] [-Code] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | O texto de descrição do ReleaseNote a ser adicionado |
| `-Code` | SwitchParameter | — | — | Named | — | `Format the line as code` |
| `-Show` | SwitchParameter | — | — | Named | — | # My Project

This is a sample README file.

## Installation

```bash
npm install my-project
```

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
===== END REQUIREMENT ===== |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README no diretório home |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use o README no diretório do OneDrive |

## Related Links

- [Add-ReleaseNoteLineToREADME on GitHub](https://github.com/genXdev/genXdev)
