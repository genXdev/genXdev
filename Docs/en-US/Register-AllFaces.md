# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | The directory containing face images organized by person folders. If not specified, uses the configured faces directory preference. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | Maximum number of retry attempts for failed registrations |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | The name for the Docker container |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | The port number for the DeepStack service |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Interval in seconds between health check attempts |
| `-ImageName` | String | — | — | 7 | — | Custom Docker image name to use |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Skip Docker Desktop initialization (used when already called by parent function) |
| `-Force` | SwitchParameter | — | — | Named | — | Force re-registration of all faces |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | Rename failed image files that could not be processed due to no face found |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show Docker Desktop window during initialization |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | If specified, only use the session (do not persist changes to preferences database). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | If specified, clear the current session preferences before use. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Path to the preferences database to use for known faces root path. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | If specified, skip session logic when retrieving known faces root path. |

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)
