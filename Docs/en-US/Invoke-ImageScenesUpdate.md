# Invoke-ImageScenesUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagescenedetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageScenesUpdate [[-ImageDirectories] <String[]>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-ShowWindow] [-SkipSession] [-TimeoutSecond <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | The directory paths containing images to process |
| `-Recurse` | SwitchParameter | — | — | Named | — | Process images in specified directory and all subdirectories |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Will retry previously failed image keyword updates |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | The name for the Docker container |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | Named | `5000` | The port number for the DeepStack service |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Interval in seconds between health check attempts |
| `-ImageName` | String | — | — | Named | — | Custom Docker image name to use |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Minimum confidence threshold (0.0-1.0) for object detection |
| `-Language` | String | — | — | Named | — | The language for generated descriptions and keywords |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Name or partial path of the model to initialize 🌐 *Supports wildcards* |
| `-ApiKey` | String | — | — | Named | `$null` | The API key to use for the request |
| `-TimeoutSecond` | Int32 | — | — | Named | — | Timeout in seconds for the request, defaults to 24 hours |
| `-FacesDirectory` | String | — | — | Named | — | The directory containing face images organized by person folders. If not specified, uses the configured faces directory preference. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Skip Docker initialization (used when already called by parent function) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show Docker window during initialization |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru to return structured objects instead of outputting to console |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detects changes in the faces directory and re-registers faces if needed |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |

## Related Links

- [Invoke-ImageScenesUpdate on GitHub](https://github.com/genXdev/genXdev)
