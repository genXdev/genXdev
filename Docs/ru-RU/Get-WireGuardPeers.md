# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Получает информацию обо всех настроенных пирах WireGuard VPN в системе.

## Description

Эта функция получает исчерпывающую информацию обо всех пирах WireGuard VPN, настроенных на сервере, работающем в Docker-контейнере. Она предоставляет детальные сведения, включая имена пиров, открытые ключи, разрешённые IP-адреса, конечные точки подключения, статус рукопожатия, статистику передачи данных и текущий статус соединения. Функция может работать совместно с родительскими функциями или независимо управлять инициализацией Docker-контейнера.

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
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
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показать окно Docker при запуске WireGuard |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Убрать границы окна для окна Docker |
| `-Width` | Int32 | — | — | 9 | `-1` | Set the width of the Docker window |
| `-Height` | Int32 | — | — | 10 | `-1` | Установите высоту окна Docker |
| `-Left` | Int32 | — | — | 11 | — | Установите левую позицию окна Docker |
| `-Right` | Int32 | — | — | 12 | — | Установите правильное положение окна Docker |
| `-Bottom` | Int32 | — | — | 13 | — | Установить нижнюю позицию окна Docker |
| `-Centered` | SwitchParameter | — | — | Named | — | Центрировать окно Docker на экране |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Запустите окно Docker в полноэкранном режиме |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | После запуска Docker восстановить фокус на предыдущем окне |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Show Docker window side by side with other windows |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Фокусировка окна Docker после запуска |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the Docker window as foreground window |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Отправить клавишу Escape окну Docker после запуска |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Удерживать фокус клавиатуры в окне Docker после запуска |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Используйте Shift+Enter при отправке клавиш в окно Docker |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Задержка в миллисекундах между отправкой клавиш в окно Docker |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте сессию только для окна Docker |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистить сессию для окна Docker перед запуском |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Пропустить сеанс для окна Docker |

## Examples

### Get-WireGuardPeers

```powershell
Get-WireGuardPeers
```

### Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `                    -ServicePort 55555

```powershell
Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `
                   -ServicePort 55555
```

## Related Links

- [Get-WireGuardPeers on GitHub](https://github.com/genXdev/genXdev)
