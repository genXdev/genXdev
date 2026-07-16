# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Der Name des PowerShell-Moduls, für das Hilfe generiert werden soll |
| `-Language` | String | — | — | Named | `'en-US'` | de-DE |
| `-Force` | SwitchParameter | — | — | Named | — | Vorhandene Hilfe-XML-Dateien überschreiben, ohne nachzufragen |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | {
  "json_schema": {
    "strict": true,
    "name": "text_transformation_response",
    "schema": {
      "required": ["response"],
      "properties": {
        "response": {
          "description": "The transformed text output",
          "type": "string"
        }
      },
      "type": "object"
    }
  },
  "type": "json_schema"
} |

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
