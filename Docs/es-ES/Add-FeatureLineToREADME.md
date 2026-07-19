# Add-FeatureLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `feature

## Synopsis

> Añade una línea de característica al archivo README con una marca de tiempo.

## Description

Adds a feature line to the specified README file, prefixed with the current date in yyyyMMdd format. The line can be formatted as code and optionally displayed.

## Syntax

```powershell
Add-FeatureLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
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
| `-Priority` | Int32 | — | — | Named | `1` | Prioridad para ordenar (más alto = se muestra primero, predeterminado 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Ordenar líneas por fecha (prefijo yyyyMMdd) en lugar de prioridad |
| `-Ascending` | SwitchParameter | — | — | Named | — | Invertir el orden de clasificación (ascendente en lugar de descendente) |
| `-First` | Int32 | — | — | Named | `0` | Límite - Mostrar salida solo a las primeras N líneas |

## Examples

### Add-FeatureLineToREADME -Line "Added new Git feature"

```powershell
Add-FeatureLineToREADME -Line "Added new Git feature"
```

### feature "Added new Git feature" -Code -Show

```powershell
feature "Added new Git feature" -Code -Show
```

## Related Links

- [Add-FeatureLineToREADME on GitHub](https://github.com/genXdev/genXdev)
