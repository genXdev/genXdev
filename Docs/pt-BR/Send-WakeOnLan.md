# Send-WakeOnLan

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Envia um pacote mágico Wake-on-LAN para ativar computadores remotos na rede.

## Description

Constrói e transmite um pacote mágico Wake-on-LAN (WOL) para o(s) endereço(s) MAC especificado(s). O pacote mágico é uma transmissão UDP contendo o endereço MAC alvo repetido 16 vezes, o que aciona interfaces de rede compatíveis para ligar o computador. Suporta endereços e portas de broadcast personalizados.

## Syntax

```powershell
Send-WakeOnLan -MacAddress <String[]> [[-BroadcastAddress] <String>] [[-Port] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MacAddress` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Um ou mais endereços MAC para enviar o pacote mágico (ex.: 00:11:22:33:44:55) |
| `-BroadcastAddress` | String | — | — | 1 | `"255.255.255.255"` | O endereço IP de broadcast para enviar o pacote mágico (padrão: 255.255.255.255) |
| `-Port` | Int32 | — | — | 2 | `4000` | A porta UDP para enviar o pacote mágico (padrão: 4000) |

## Examples

### Send-WakeOnLan -MacAddress "00:11:22:33:44:55"

```powershell
Send-WakeOnLan -MacAddress "00:11:22:33:44:55"
```

Envia um pacote mágico para ativar o computador com o endereço MAC especificado.

### "00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9

```powershell
"00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9
```

Envia pacotes mágicos para vários computadores na porta 9 por meio de entrada de pipeline.

## Related Links

- [Send-WakeOnLan on GitHub](https://github.com/genXdev/genXdev)
