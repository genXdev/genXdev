# Get-WireGuardPeerQRCode

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Generates a QR code for a WireGuard VPN peer configuration.

## Description

This function generates a QR code for a WireGuard VPN peer configuration that
can be scanned by mobile devices for easy setup. The QR code is displayed in
the console and can be used to quickly configure WireGuard clients on
smartphones and tablets. The function interacts with the linuxserver/wireguard
Docker container to generate QR codes for peer configurations.

## Syntax

```powershell
Get-WireGuardPeerQRCode -PeerName <String> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-ServicePort <Int32>] [-TimeZone <String>] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | The name of the peer to generate a QR code for |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Skip Docker initialization (used when already called by parent function) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | The name for the Docker container |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | Named | `51839` | The port number for the WireGuard service |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Interval in seconds between health check attempts |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Custom Docker image name to use |
| `-PUID` | String | — | — | Named | `'1000'` | User ID for permissions in the container |
| `-PGID` | String | — | — | Named | `'1000'` | Group ID for permissions in the container |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Timezone to use for the container |

## Examples

### Get-WireGuardPeerQRCode -PeerName "MyPhone"

```powershell
Get-WireGuardPeerQRCode -PeerName "MyPhone"
```

### Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize

```powershell
Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize
```

## Related Links

- [Get-WireGuardPeerQRCode on GitHub](https://github.com/genXdev/genXdev)
