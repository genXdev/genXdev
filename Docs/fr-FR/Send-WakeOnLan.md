# Send-WakeOnLan

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Envoie un paquet magique Wake-on-LAN pour allumer des ordinateurs distants sur le réseau.

## Description

Construit et diffuse un paquet magique Wake-on-LAN (WOL) vers la ou les adresse(s) MAC spécifiée(s). Le paquet magique est une diffusion UDP contenant l'adresse MAC cible répétée 16 fois, ce qui déclenche la mise sous tension de l'ordinateur sur les interfaces réseau prises en charge. Prend en charge les adresses et ports de diffusion personnalisés.

## Syntax

```powershell
Send-WakeOnLan -MacAddress <String[]> [[-BroadcastAddress] <String>] [[-Port] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MacAddress` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Une ou plusieurs adresses MAC auxquelles envoyer le paquet magique (par exemple, 00:11:22:33:44:55) |
| `-BroadcastAddress` | String | — | — | 1 | `"255.255.255.255"` | L'adresse IP de diffusion pour envoyer le paquet magique (par défaut : 255.255.255.255) |
| `-Port` | Int32 | — | — | 2 | `4000` | Le port UDP sur lequel envoyer le paquet magique (par défaut : 4000) |

## Examples

### Send-WakeOnLan -MacAddress "00:11:22:33:44:55"

```powershell
Send-WakeOnLan -MacAddress "00:11:22:33:44:55"
```

Envoie un paquet magique pour réveiller l'ordinateur avec l'adresse MAC spécifiée.

### "00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9

```powershell
"00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9
```

Envoie des paquets magiques à plusieurs ordinateurs sur le port 9 via l'entrée du pipeline.

## Related Links

- [Send-WakeOnLan on GitHub](https://github.com/genXdev/genXdev)
