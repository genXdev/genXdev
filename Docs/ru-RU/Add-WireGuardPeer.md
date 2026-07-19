# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Добавляет новую конфигурацию клиента WireGuard VPN (peer) на сервер.

## Description

Эта функция добавляет нового пира в VPN-сервер WireGuard, работающий в контейнере Docker. Она генерирует новую конфигурацию клиента с уникальным IP-адресом, создает необходимые криптографические ключи и возвращает детали конфигурации. Функция может опционально сохранить конфигурацию в файл или сгенерировать QR-код для удобной настройки мобильного устройства. Функция проверяет имена пиров, проверяет на дубликаты и корректно обрабатывает различные ошибочные ситуации.

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Уникальное имя для пира |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | Диапазоны IP-адресов, которые будут маршрутизироваться через VPN |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | DNS-серверы для использования этим пиром |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | Путь, по которому должен быть сохранен файл конфигурации пира |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | Номер порта для службы WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | Имя пользовательского образа Docker для использования |
| `-PUID` | String | — | — | 10 | `'1000'` | Идентификатор пользователя для прав в контейнере |
| `-PGID` | String | — | — | 11 | `'1000'` | Идентификатор группы для разрешений в контейнере |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | Часовой пояс для использования контейнером |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | Сохранить конфигурацию пира в файл |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показывать окно WireGuard при инициализации службы |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Убрать рамки окон при инициализации службы |
| `-Width` | Int32 | — | — | Named | `-1` | Устанавливает ширину окна при инициализации службы |
| `-Height` | Int32 | — | — | Named | `-1` | Установите высоту окна при инициализации сервиса |
| `-Left` | Int32 | — | — | Named | — | Установить левую позицию окна при инициализации сервиса |
| `-Right` | Int32 | — | — | Named | — | При инициализации сервиса установите правильное положение окна |
| `-Bottom` | Int32 | — | — | Named | — | Установите нижнюю позицию окна при инициализации службы |
| `-Centered` | SwitchParameter | — | — | Named | — | Центрировать окно при инициализации службы |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Запустите службу в полноэкранном режиме |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна после инициализации сервиса |
| `-SideBySide` | SwitchParameter | — | — | Named | — | При инициализации сервиса показывать окно рядом |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | После инициализации службы сфокусируйте окно. |
| `-SetForeground` | SwitchParameter | — | — | Named | — | После инициализации службы вывести окно на передний план |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | После инициализации службы отправьте клавишу Escape в окно |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | При инициализации службы удерживать фокус клавиатуры при отправке ключей |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | После инициализации службы нажимайте Shift+Enter для отправки клавиш |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка в миллисекундах при отправке клавиш после инициализации службы |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте сессию только для сервиса WireGuard |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очищать сессию при инициализации сервиса |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Пропустить сессию при инициализации сервиса |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | Сгенерировать QR-код для простой настройки мобильного устройства |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker (используется, когда уже вызвана родительской функцией) |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |

## Examples

### Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `     -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `     "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `     -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `     -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `     -PGID "1000" -TimeZone "Etc/UTC"

```powershell
Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `
    -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `
    "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `
    -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `
    -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `
    -PGID "1000" -TimeZone "Etc/UTC"
```

### Add-WireGuardPeer "MyTablet" -ShowQRCode

```powershell
Add-WireGuardPeer "MyTablet" -ShowQRCode
```

## Related Links

- [Add-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
