# Update-AllImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `updateallimages

## Synopsis

> Batch updates image keywords, faces, objects, and scenes across multiple system
directories.

## Description

This function systematically processes images across various system directories
to update their keywords, face recognition data, object detection data, and
scene classification data using AI services. It covers media storage, system
files, downloads, OneDrive, and personal pictures folders.

The function processes images by going through each directory and processing files
individually. DeepStack functions (faces, objects, scenes) are performed first,
followed by keyword and description generation.

This allows for structured data output for pipeline operations like:
Update-AllImageMetaData | Export-ImageIndex

## Syntax

```powershell
Update-AllImageMetaData -ImageDirectories <String[]> [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-NoRecurse] [-PassThru] [-PreferencesDatabasePath <String>] [-RedoAll] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | ✅ | — | 0 | — | Array of directory paths to process for image updates |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | The name for the Docker container |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | Named | `5000` | The port number for the DeepStack service |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Interval in seconds between health check attempts |
| `-ImageName` | String | — | — | Named | — | Custom Docker image name to use |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Minimum confidence threshold (0.0-1.0) for object detection |
| `-Language` | String | — | — | Named | — | The language for generated descriptions and keywords |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Name or partial path of the model to initialize 🌐 *Supports wildcards* |
| `-ApiEndpoint` | String | — | — | Named | `$null` | Api endpoint url, defaults to http://localhost:1234/v1/chat/completions |
| `-ApiKey` | String | — | — | Named | `$null` | The API key to use for the request |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Timeout in seconds for the request, defaults to 24 hours |
| `-FacesDirectory` | String | — | — | Named | — | The directory containing face images organized by person folders. If not specified, uses the configured faces directory preference. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Will retry previously failed image keyword updates |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Dont't recurse into subdirectories when processing images |
| `-RedoAll` | SwitchParameter | — | — | Named | — | Redo all images regardless of previous processing |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Skip Docker initialization (used when already called by parent function) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru to return structured objects instead of outputting to console |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detects changes in the faces directory and re-registers faces if needed |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |

## Examples

### Update-AllImageMetaData -ImageDirectories @("C:\Pictures", "D:\Photos") `     -ServicePort 5000

```powershell
Update-AllImageMetaData -ImageDirectories @("C:\Pictures", "D:\Photos") `
    -ServicePort 5000
```

### Update-AllImageMetaData -RetryFailed -Force -Language "Spanish"

```powershell
Update-AllImageMetaData -RetryFailed -Force -Language "Spanish"
```

### updateallimages @("C:\MyImages") -ContainerName "custom_face_recognition" ##############################################################################

```powershell
updateallimages @("C:\MyImages") -ContainerName "custom_face_recognition"
##############################################################################
```

## Related Links

- [Update-AllImageMetaData on GitHub](https://github.com/genXdev/genXdev)
