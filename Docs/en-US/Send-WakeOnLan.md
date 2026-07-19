# Send-WakeOnLan

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Sends a Wake-on-LAN magic packet to wake up remote computers on the network.

## Description

Constructs and broadcasts a Wake-on-LAN (WOL) magic packet to the specified
MAC address(es). The magic packet is a UDP broadcast containing the target
MAC address repeated 16 times, which triggers supported network interfaces to
power on the computer. Supports custom broadcast addresses and ports.

## Syntax

```powershell
Send-WakeOnLan -MacAddress <String[]> [[-BroadcastAddress] <String>] [[-Port] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MacAddress` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | One or more MAC addresses to send the magic packet to (e.g., 00:11:22:33:44:55) |
| `-BroadcastAddress` | String | — | — | 1 | `"255.255.255.255"` | The broadcast IP address to send the magic packet to (default: 255.255.255.255) |
| `-Port` | Int32 | — | — | 2 | `4000` | The UDP port to send the magic packet to (default: 4000) |

## Examples

### Send-WakeOnLan -MacAddress "00:11:22:33:44:55"

```powershell
Send-WakeOnLan -MacAddress "00:11:22:33:44:55"
```

Sends a magic packet to wake the computer with the specified MAC address.

### "00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9

```powershell
"00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9
```

Sends magic packets to multiple computers on port 9 via pipeline input.

## Related Links

- [Send-WakeOnLan on GitHub](https://github.com/genXdev/genXdev)
