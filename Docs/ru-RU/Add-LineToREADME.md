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
| `-Line` | String | — | — | 0 | `''` | The line to add to the README |
| `-Section` | String | ✅ | — | 1 | — | The section to add the line to |
| `-Prefix` | String | ✅ | — | 2 | `'* '` | Префикс, используемый для строки |
| `-Code` | SwitchParameter | — | — | Named | — | Открыть в Visual Studio Code после изменения |
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
| `-Done` | SwitchParameter | — | — | Named | — | Отметить элемент как выполненный |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Используйте README в каталоге профиля PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
