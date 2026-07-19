# Send-WakeOnLan

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Sendet ein Wake-on-LAN-Magiepaket, um entfernte Computer im Netzwerk aufzuwecken.

## Description

Konstruiert und sendet ein Wake-on-LAN (WOL) Magic-Paket an die angegebene(n) MAC-Adresse(n). Das Magic-Paket ist ein UDP-Broadcast, der die Ziel-MAC-Adresse 16 Mal wiederholt enthält, wodurch unterstützte Netzwerkschnittstellen den Computer einschalten. Unterstützt benutzerdefinierte Broadcast-Adressen und Ports.

## Syntax

```powershell
Send-WakeOnLan -MacAddress <String[]> [[-BroadcastAddress] <String>] [[-Port] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MacAddress` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Eine oder mehrere MAC-Adressen, an die das Magic Packet gesendet werden soll (z.B. 00:11:22:33:44:55) |
| `-BroadcastAddress` | String | — | — | 1 | `"255.255.255.255"` | Die Broadcast-IP-Adresse, an die das Magic Packet gesendet werden soll (Standard: 255.255.255.255) |
| `-Port` | Int32 | — | — | 2 | `4000` | Der UDP-Port, an den das Magic Packet gesendet werden soll (Standard: 4000) |

## Examples

### Send-WakeOnLan -MacAddress "00:11:22:33:44:55"

```powershell
Send-WakeOnLan -MacAddress "00:11:22:33:44:55"
```

Sendet ein magisches Paket, um den Computer mit der angegebenen MAC-Adresse aufzuwecken.

### "00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9

```powershell
"00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9
```

Sendet magische Pakete über die Pipeline-Eingabe an mehrere Computer auf Port 9.

## Related Links

- [Send-WakeOnLan on GitHub](https://github.com/genXdev/genXdev)
