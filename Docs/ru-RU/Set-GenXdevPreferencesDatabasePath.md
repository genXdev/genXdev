# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Путь к базе данных, где хранятся файлы с пользовательскими предпочтениями |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не используйте альтернативные настройки, хранящиеся в сессии, для настроек данных, таких как язык, пути к базам данных и т.д. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | При указании сохраняет настройку только в текущем сеансе (глобальная переменная) без сохранения в настройках |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | При указании очищает только настройку сессии (глобальную переменную), не затрагивая постоянные предпочтения. |

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
