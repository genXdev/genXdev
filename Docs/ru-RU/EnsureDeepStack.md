# EnsureDeepStack

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureDeepStack [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-Monitor <Int32>] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-UseGPU] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Порт для сервиса DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | 5 | — | Имя пользовательского образа Docker для использования |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Используйте версию с GPU-ускорением (требуется NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показать окно Docker Desktop во время инициализации |
| `-Monitor` | Int32 | — | — | Named | `-2` | Используемый монитор: 0 — по умолчанию, -1 — игнорировать |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удаляет границы окна |
| `-Width` | Int32 | — | — | Named | — | Начальная ширина окна |
| `-Height` | Int32 | — | — | Named | — | Начальная высота окна |
| `-Left` | SwitchParameter | — | — | Named | — | Поместить окно в левой части экрана |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Поместить окно в центр экрана |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Развернуть окно |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Либо установит окно в полноэкранный режим на другом мониторе, отличном от PowerShell, либо рядом с PowerShell на одном мониторе. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | После открытия окна сфокусируйте его |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Установить окно на передний план после открытия |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Экранируйте управляющие символы и модификаторы при отправке нажатий клавиш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | При отправке клавиш удерживать фокус клавиатуры на целевом окне |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Используйте Shift+Enter вместо Enter при отправке ключей |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между различными входными строками в миллисекундах при отправке ключей |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Outputs

- `Boolean`

## Related Links

- [EnsureDeepStack on GitHub](https://github.com/genXdev/genXdev)
