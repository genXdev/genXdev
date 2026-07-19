# Send-WakeOnLan

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> 发送Wake-on-LAN魔法包以唤醒网络上的远程计算机。

## Description

构造并广播一个Wake-on-LAN（WOL）魔术包到指定的MAC地址。魔术包是一个UDP广播，其中包含目标MAC地址重复16次，这会触发支持的网络接口启动计算机。支持自定义广播地址和端口。

## Syntax

```powershell
Send-WakeOnLan -MacAddress <String[]> [[-BroadcastAddress] <String>] [[-Port] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MacAddress` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 用于发送魔术包的一个或多个MAC地址（例如，00:11:22:33:44:55） |
| `-BroadcastAddress` | String | — | — | 1 | `"255.255.255.255"` | 发送魔包（Magic Packet）的广播IP地址（默认值：255.255.255.255） |
| `-Port` | Int32 | — | — | 2 | `4000` | 用于发送魔包（Magic Packet）的UDP端口（默认值：4000） |

## Examples

### Send-WakeOnLan -MacAddress "00:11:22:33:44:55"

```powershell
Send-WakeOnLan -MacAddress "00:11:22:33:44:55"
```

发送一个魔术包以唤醒指定MAC地址的计算机。

### "00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9

```powershell
"00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9
```

通过管道输入向端口9发送魔法数据包到多台计算机。

## Related Links

- [Send-WakeOnLan on GitHub](https://github.com/genXdev/genXdev)
