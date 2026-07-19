# Send-WakeOnLan

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Wake-on-LANマジックパケットを送信して、ネットワーク上のリモートコンピュータを起動します。

## Description

指定されたMACアドレスに対してWake-on-LAN（WOL）マジックパケットを構築し、ブロードキャストします。マジックパケットは、ターゲットMACアドレスを16回繰り返したUDPブロードキャストであり、対応するネットワークインターフェースがコンピュータの電源を投入するトリガーとなります。カスタムブロードキャストアドレスとポートをサポートします。

## Syntax

```powershell
Send-WakeOnLan -MacAddress <String[]> [[-BroadcastAddress] <String>] [[-Port] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MacAddress` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | マジックパケットを送信するための一つ以上のMACアドレス（例：00:11:22:33:44:55） |
| `-BroadcastAddress` | String | — | — | 1 | `"255.255.255.255"` | マジックパケットを送信するブロードキャストIPアドレス（デフォルト：255.255.255.255） |
| `-Port` | Int32 | — | — | 2 | `4000` | マジックパケットを送信するUDPポート（デフォルト：4000） |

## Examples

### Send-WakeOnLan -MacAddress "00:11:22:33:44:55"

```powershell
Send-WakeOnLan -MacAddress "00:11:22:33:44:55"
```

指定されたMACアドレスのコンピュータを起動するためのマジックパケットを送信します。

### "00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9

```powershell
"00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9
```

パイプライン入力を介して、複数のコンピュータにポート9でマジックパケットを送信します。

## Related Links

- [Send-WakeOnLan on GitHub](https://github.com/genXdev/genXdev)
