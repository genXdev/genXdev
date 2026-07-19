# EnsureWireGuard

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Обеспечивает установку и запуск службы WireGuard VPN через Docker-контейнер.

## Description

Эта функция настраивает и управляет службой VPN WireGuard с использованием Docker Desktop. Она автоматически проверяет, что Docker Desktop запущен, загружает последний образ Docker WireGuard, создает постоянные тома хранения и управляет жизненным циклом контейнера, включая мониторинг состояния и возможности перезапуска.

WireGuard — это простой, быстрый и современный VPN, использующий передовую криптографию. Он обеспечивает превосходную производительность и простоту по сравнению с традиционными VPN-решениями, такими как OpenVPN, с минимальными накладными расходами на конфигурацию и отличной кроссплатформенной поддержкой.

## Syntax

```powershell
EnsureWireGuard [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Номер порта для службы WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Имя пользовательского образа Docker для использования |
| `-PUID` | String | — | — | 6 | `'1000'` | Идентификатор пользователя для прав в контейнере |
| `-PGID` | String | — | — | 7 | `'1000'` | Идентификатор группы для разрешений в контейнере |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Часовой пояс для использования контейнером |
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
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |

## Examples

### EnsureWireGuard

```powershell
EnsureWireGuard
```

### EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821

```powershell
EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821
```

### EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120

```powershell
EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120
```

### EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"

```powershell
EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"
```

### EnsureWireGuard -Force

```powershell
EnsureWireGuard -Force
```

## Outputs

- `Boolean`

## Related Links

- [EnsureWireGuard on GitHub](https://github.com/genXdev/genXdev)
