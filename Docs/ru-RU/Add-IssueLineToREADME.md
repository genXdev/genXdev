# Add-IssueLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `issue

## Synopsis

> Добавляет элемент задачи в файл README.md.

## Description

Добавляет запись с отметкой времени в раздел "## Issues" файла README.md.
Может отобразить измененный раздел и открыть его в Visual Studio Code.

## Syntax

```powershell
Add-IssueLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | The issue text to add |
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
| `-Priority` | Int32 | — | — | Named | `1` | Приоритет сортировки (выше = отображается первым, по умолчанию 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Сортировать строки по дате (префикс yyyyMMdd) вместо приоритета |
| `-Ascending` | SwitchParameter | — | — | Named | — | Изменить порядок сортировки на обратный (по возрастанию вместо по убыванию) |
| `-First` | Int32 | — | — | Named | `0` | Лимит - Показать вывод только первых N строк |

## Examples

### Add-IssueLineToREADME -Line "Found critical bug" -Show -UseHomeREADME

```powershell
Add-IssueLineToREADME -Line "Found critical bug" -Show -UseHomeREADME
```

### issue "Server connection fails" -Show

```powershell
issue "Server connection fails" -Show
```

## Related Links

- [Add-IssueLineToREADME on GitHub](https://github.com/genXdev/genXdev)
