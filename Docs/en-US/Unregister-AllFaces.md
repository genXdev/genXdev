# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Removes all registered faces from the DeepStack face recognition system.

## Description

This function clears all registered faces from the DeepStack face recognition
database by removing all face files from the datastore directory and restarting
the service to reload an empty face registry. This is a destructive operation
that cannot be undone and will permanently remove all registered face data.

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Bypass confirmation prompts when removing all registered faces |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Skip Docker Desktop initialization (used when already called by parent function) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | The name for the Docker container |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | The port number for the DeepStack service |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interval in seconds between health check attempts |
| `-ImageName` | String | — | — | 5 | — | Custom Docker image name to use |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show Docker Desktop window during initialization |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

Removes all registered faces with confirmation prompt.

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

Removes all registered faces without confirmation prompt.

### unregall -Force

```powershell
unregall -Force
```

Uses alias to remove all faces without confirmation.

## Related Links

- [Unregister-AllFaces on GitHub](https://github.com/genXdev/genXdev)
