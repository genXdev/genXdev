# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker (используется, когда уже вызвана родительской функцией) |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Номер порта для службы WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Имя пользовательского образа Docker для использования |
| `-PUID` | String | — | — | 6 | `'1000'` | Идентификатор пользователя для прав в контейнере |
| `-PGID` | String | — | — | 7 | `'1000'` | Идентификатор группы для разрешений в контейнере |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Часовой пояс для использования контейнером |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Отображение окна при запуске контейнера (пропуск) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Убрать границы окон (прозрачность) |
| `-Width` | Int32 | — | — | 9 | `-1` | Ширина окна в символах или пикселях (сквозная) |
| `-Height` | Int32 | — | — | 10 | `-1` | Высота окна в символах или пикселях (пропуск) |
| `-Left` | Int32 | — | — | 11 | — | Положение левого края окна (сквозной режим) |
| `-Right` | Int32 | — | — | 12 | — | Положение правого окна (сквозной проход) |
| `-Bottom` | Int32 | — | — | 13 | — | Нижняя позиция окна (сквозной проход) |
| `-Centered` | SwitchParameter | — | — | Named | — | Центрировать окно (сквозной режим) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Открыть окно в полноэкранном режиме (сквозной режим) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | После операции вернуть фокус окну (сквозной режим) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Show side-by-side window (pass-through) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусировать окно после открытия (сквозной) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set window to foreground (pass-through) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Отправить клавишу Escape окну (сквозная передача) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Удерживать фокус клавиатуры при отправке нажатий (сквозная передача) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Используйте Shift+Enter при отправке клавиш (пассивный режим) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Задержка в миллисекундах между отправкой нажатий клавиш (прозрачная передача) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Session only mode (pass-through) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистить данные сессии (прозрачный проход) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Пропустить инициализацию сеанса (сквозной проход) |

## Related Links

- [Get-WireGuardStatus on GitHub](https://github.com/genXdev/genXdev)
