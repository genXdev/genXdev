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
| `-Line` | String | — | — | 0 | `''` | 要添加的版本说明描述文本 |
| `-Code` | SwitchParameter | — | — | Named | — | `const query = 'Hello, World!';` |
| `-Show` | SwitchParameter | — | — | Named | — | # Example Project

This is a sample README file.

## Installation

Run `npm install` to get started.

## Usage

```javascript
const example = require('example');
console.log(example());
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
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | 使用主目录中的 README |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | 使用 OneDrive 目录中的 README |

## Related Links

- [Add-ReleaseNoteLineToREADME on GitHub](https://github.com/genXdev/genXdev)
