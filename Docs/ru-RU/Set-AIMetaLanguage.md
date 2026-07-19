# Set-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Устанавливает язык по умолчанию и опционально каталоги изображений для операций с метаданными изображений GenXdev.AI.

## Description

Эта функция настраивает глобальный язык по умолчанию для операций с метаданными изображений в модуле GenXdev.AI. Опционально она также может установить глобальные каталоги изображений. Оба параметра сохраняются в хранилище предпочтений модуля для использования в разных сеансах.

## Syntax

```powershell
Set-AIMetaLanguage [[-Language] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | Язык по умолчанию для операций с метаданными изображений |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Удалить альтернативные настройки, сохраненные в сессии, для AI-предпочтений, таких как язык, коллекции изображений и т.д. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, сохраненные в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т.д. |

## Examples

### Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")

```powershell
Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")
```

Устанавливает языковой каталог и каталог изображений постоянно в настройках.

### Set-AIMetaLanguage "French"

```powershell
Set-AIMetaLanguage "French"
```

Устанавливает язык постоянно в настройках.

### Set-AIMetaLanguage -Language "German" -SessionOnly

```powershell
Set-AIMetaLanguage -Language "German" -SessionOnly
```

Устанавливает язык только для текущего сеанса (глобальная переменная).

### Set-AIMetaLanguage -ClearSession

```powershell
Set-AIMetaLanguage -ClearSession
```

Очищает настройку языка сессии (глобальная переменная), не затрагивая постоянные предпочтения.

## Related Links

- [Set-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
