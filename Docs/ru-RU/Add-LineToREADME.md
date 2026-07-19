# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Добавляет строку в файл README.md в указанный раздел.

## Description

Находит и изменяет файл README.md, добавляя новую строку в указанный раздел.
Может создать раздел, если он не существует. Поддерживает форматирование строк как блоков
кода и показ измененного раздела.

Сначала будет искать в текущем каталоге, затем подниматься по каталогам вверх, чтобы найти
расположение README. Если не найден, будет использовать README в каталоге профиля PowerShell.

## Syntax

```powershell
Add-LineToREADME -Section <String> [-Ascending] [-Code] [-Done] [-First <Int32>] [-Line <String>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | Named | `''` | The line to add to the README |
| `-Section` | String | ✅ | — | 0 | — | The section to add the line to |
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
| `-Priority` | Int32 | — | — | Named | `1` | Приоритет сортировки (выше = отображается первым, по умолчанию 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Сортировать строки по дате (префикс yyyyMMdd) вместо приоритета |
| `-Ascending` | SwitchParameter | — | — | Named | — | Изменить порядок сортировки на обратный (по возрастанию вместо по убыванию) |
| `-First` | Int32 | — | — | Named | `0` | Лимит - Показать вывод только первых N строк |

## Examples

### Add-LineToREADME -Line "New feature" -Section "## Features"

```powershell
Add-LineToREADME -Line "New feature" -Section "## Features"
```

### Add-LineToREADME "High prio item" "## Issues" -Priority 5

```powershell
Add-LineToREADME "High prio item" "## Issues" -Priority 5
```

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
