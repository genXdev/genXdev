# Remove-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-WireGuardPeer -PeerName <String> [-Bottom] [-Centered] [-ClearSession] [-ContainerName <String>] [-FocusWindow] [-Force] [-Fullscreen] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-Height <Int32>] [-ImageName <String>] [-Left] [-NoBorders] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-ServicePort <Int32>] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-TimeZone <String>] [-VolumeName <String>] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Имя однорангового узла, который нужно удалить |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | Named | `51839` | Номер порта для службы WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Имя пользовательского образа Docker для использования |
| `-PUID` | String | — | — | Named | `'1000'` | Идентификатор пользователя для прав в контейнере |
| `-PGID` | String | — | — | Named | `'1000'` | Идентификатор группы для разрешений в контейнере |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Часовой пояс для использования контейнером |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительное удаление без подтверждения |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker при вызове родительской функцией |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показать окно Docker Desktop во время инициализации |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удаляет границы окна |
| `-Width` | Int32 | — | — | Named | `-1` | Начальная ширина окна |
| `-Height` | Int32 | — | — | Named | `-1` | Начальная высота окна |
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

## Related Links

- [Remove-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
