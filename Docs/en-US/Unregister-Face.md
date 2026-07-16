# Unregister-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Unregister-Face -Identifier <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The unique identifier of the face to delete from the DeepStack system |
| `-ContainerName` | String | — | — | 1 | `'deepstack_face_recognition'` | The name for the Docker container |
| `-VolumeName` | String | — | — | 2 | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 3 | `5000` | The port number for the DeepStack service |
| `-HealthCheckTimeout` | Int32 | — | — | 4 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 5 | `3` | Interval in seconds between health check attempts |
| `-ImageName` | String | — | — | 6 | — | Custom Docker image name to use |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Skip Docker initialization (used when already called by parent function) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show Docker Desktop window during initialization |

## Outputs

- `Boolean`

## Related Links

- [Unregister-Face on GitHub](https://github.com/genXdev/genXdev)
