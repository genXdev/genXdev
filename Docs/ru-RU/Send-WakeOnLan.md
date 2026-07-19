# Send-WakeOnLan

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Отправляет магический пакет Wake-on-LAN для пробуждения удаленных компьютеров в сети.

## Description

Конструирует и отправляет магический пакет Wake-on-LAN (WOL) на указанный MAC-адрес (или адреса). Магический пакет представляет собой UDP-широковещательную рассылку, содержащую целевой MAC-адрес, повторенный 16 раз, что запускает поддерживаемые сетевые интерфейсы для включения компьютера. Поддерживаются пользовательские широковещательные адреса и порты.

## Syntax

```powershell
Send-WakeOnLan -MacAddress <String[]> [[-BroadcastAddress] <String>] [[-Port] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MacAddress` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Один или несколько MAC-адресов для отправки магического пакета (например, 00:11:22:33:44:55) |
| `-BroadcastAddress` | String | — | — | 1 | `"255.255.255.255"` | IP-адрес широковещательной передачи для отправки магического пакета (по умолчанию: 255.255.255.255) |
| `-Port` | Int32 | — | — | 2 | `4000` | UDP-порт для отправки магического пакета (по умолчанию: 4000) |

## Examples

### Send-WakeOnLan -MacAddress "00:11:22:33:44:55"

```powershell
Send-WakeOnLan -MacAddress "00:11:22:33:44:55"
```

Отправляет магический пакет для пробуждения компьютера с указанным MAC-адресом.

### "00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9

```powershell
"00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9
```

Отправляет магические пакеты на несколько компьютеров через порт 9 по конвейерному вводу.

## Related Links

- [Send-WakeOnLan on GitHub](https://github.com/genXdev/genXdev)
