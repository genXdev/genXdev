# Send-WakeOnLan

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Envía un paquete mágico Wake-on-LAN para encender computadoras remotas en la red.

## Description

Construye y difunde un paquete mágico Wake-on-LAN (WOL) a la(s) dirección(es) MAC especificada(s). El paquete mágico es una difusión UDP que contiene la dirección MAC de destino repetida 16 veces, lo que activa las interfaces de red compatibles para encender el ordenador. Admite direcciones y puertos de difusión personalizados.

## Syntax

```powershell
Send-WakeOnLan -MacAddress <String[]> [[-BroadcastAddress] <String>] [[-Port] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MacAddress` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Una o más direcciones MAC a las que enviar el paquete mágico (p. ej., 00:11:22:33:44:55) |
| `-BroadcastAddress` | String | — | — | 1 | `"255.255.255.255"` | La dirección IP de difusión para enviar el paquete mágico (por defecto: 255.255.255.255) |
| `-Port` | Int32 | — | — | 2 | `4000` | El puerto UDP para enviar el paquete mágico (predeterminado: 4000) |

## Examples

### Send-WakeOnLan -MacAddress "00:11:22:33:44:55"

```powershell
Send-WakeOnLan -MacAddress "00:11:22:33:44:55"
```

Envía un paquete mágico para despertar el ordenador con la dirección MAC especificada.

### "00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9

```powershell
"00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9
```

Envía paquetes mágicos a múltiples computadoras en el puerto 9 mediante entrada de canalización.

## Related Links

- [Send-WakeOnLan on GitHub](https://github.com/genXdev/genXdev)
