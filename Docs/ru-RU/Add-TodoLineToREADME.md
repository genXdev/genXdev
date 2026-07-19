# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo

## Synopsis

> Добавляет элемент списка дел в файл README.md.

## Description

Adds a timestamped todo item to the "## Todoos" section of a README.md file.
The todo items can be marked as done and the modified section can be displayed.
Each new todo item is automatically timestamped unless marking as done.

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-Done] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | Текст задачи для добавления |
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
| `-Priority` | Int32 | — | — | Named | `1` | Приоритет сортировки (выше = отображается первым, по умолчанию 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Сортировать строки по дате (префикс yyyyMMdd) вместо приоритета |
| `-Ascending` | SwitchParameter | — | — | Named | — | Изменить порядок сортировки на обратный (по возрастанию вместо по убыванию) |
| `-First` | Int32 | — | — | Named | `0` | Лимит - Показать вывод только первых N строк |

## Examples

### Add-TodoLineToREADME -Line "Implement new feature" -Show -Code

```powershell
Add-TodoLineToREADME -Line "Implement new feature" -Show -Code
```

### todo "Fix bug" -Done

```powershell
todo "Fix bug" -Done
```

## Related Links

- [Add-TodoLineToREADME on GitHub](https://github.com/genXdev/genXdev)
