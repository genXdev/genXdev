# Send-WakeOnLan

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> 네트워크 상의 원격 컴퓨터를 깨우기 위해 Wake-on-LAN 매직 패킷을 전송합니다.

## Description

지정된 MAC 주소로 Wake-on-LAN(WOL) 매직 패킷을 구성하고 브로드캐스트합니다. 매직 패킷은 대상 MAC 주소를 16번 반복하는 UDP 브로드캐스트로, 지원되는 네트워크 인터페이스가 컴퓨터를 켜도록 트리거합니다. 사용자 지정 브로드캐스트 주소와 포트를 지원합니다.

## Syntax

```powershell
Send-WakeOnLan -MacAddress <String[]> [[-BroadcastAddress] <String>] [[-Port] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MacAddress` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 매직 패킷을 보낼 MAC 주소 하나 이상 (예: 00:11:22:33:44:55) |
| `-BroadcastAddress` | String | — | — | 1 | `"255.255.255.255"` | 매직 패킷을 전송할 브로드캐스트 IP 주소 (기본값: 255.255.255.255) |
| `-Port` | Int32 | — | — | 2 | `4000` | 매직 패킷을 전송할 UDP 포트 (기본값: 4000) |

## Examples

### Send-WakeOnLan -MacAddress "00:11:22:33:44:55"

```powershell
Send-WakeOnLan -MacAddress "00:11:22:33:44:55"
```

지정된 MAC 주소로 컴퓨터를 깨우기 위해 매직 패킷을 전송합니다.

### "00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9

```powershell
"00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9
```

파이프라인 입력을 통해 여러 컴퓨터에 포트 9로 매직 패킷을 전송합니다.

## Related Links

- [Send-WakeOnLan on GitHub](https://github.com/genXdev/genXdev)
