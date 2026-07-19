# Send-WakeOnLan

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Verzendt een Wake-on-LAN magisch pakket om externe computers op het netwerk te activeren.

## Description

Construeert en verstuurt een Wake-on-LAN (WOL) magisch pakket naar de opgegeven MAC-adres(sen). Het magische pakket is een UDP-uitzending die het doel-MAC-adres 16 keer herhaalt, waardoor ondersteunde netwerkinterfaces de computer kunnen inschakelen. Ondersteunt aangepaste broadcast-adressen en poorten.

## Syntax

```powershell
Send-WakeOnLan -MacAddress <String[]> [[-BroadcastAddress] <String>] [[-Port] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MacAddress` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Een of meer MAC-adressen om het magische pakket naartoe te sturen (bijv. 00:11:22:33:44:55) |
| `-BroadcastAddress` | String | — | — | 1 | `"255.255.255.255"` | Het broadcast-IP-adres om het magische pakket naartoe te sturen (standaard: 255.255.255.255) |
| `-Port` | Int32 | — | — | 2 | `4000` | De UDP-poort om het magische pakket naartoe te sturen (standaard: 4000) |

## Examples

### Send-WakeOnLan -MacAddress "00:11:22:33:44:55"

```powershell
Send-WakeOnLan -MacAddress "00:11:22:33:44:55"
```

Stuurt een magisch pakket om de computer met het opgegeven MAC-adres te wekken.

### "00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9

```powershell
"00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9
```

Stuurt magische pakketten naar meerdere computers op poort 9 via pijplijninvoer.

## Related Links

- [Send-WakeOnLan on GitHub](https://github.com/genXdev/genXdev)
