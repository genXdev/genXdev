# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Code] [-Done] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | ✅ (ByValue) | 0 | `''` | Текст задачи для добавления |
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
| `-Done` | SwitchParameter | — | — | Named | — | Отметить задачу как выполненную |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Используйте README в каталоге профиля PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |

## Related Links

- [Add-TodoLineToREADME on GitHub](https://github.com/genXdev/genXdev)
