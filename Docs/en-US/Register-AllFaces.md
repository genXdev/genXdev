# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces

## Synopsis

> Updates all face recognition profiles from image files in the faces directory.

## Description

This function updates the face recognition database with all images found in
the specified faces directory. The process involves:
1. Ensuring the face recognition service is running
2. Processing all images in each person's folder, registering all faces for
   that person with a single identifier (the folder name) in a batch operation
3. Supporting retry logic for failed registrations

Each person's folder can contain multiple images, and all images will be
registered under the same identifier (person name) in a single API call,
eliminating the need for _1, _2, etc. suffixes.

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

## Examples

### Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `     -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `     -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3

```powershell
Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `
    -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `
    -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3
```

### Register-AllFaces Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"

```powershell
Register-AllFaces
Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"
```

### updatefaces -RenameFailed ##############################################################################

```powershell
updatefaces -RenameFailed
##############################################################################
```

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)
