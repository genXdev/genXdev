# Register-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Registers a new face with the DeepStack face recognition API.

## Description

This function registers a face image with the DeepStack face recognition API by
uploading the image to the local API endpoint. It ensures the DeepStack
service is running and validates the image file before upload. The function
includes retry logic, error handling, and cleanup on failure.

## Syntax

```powershell
Register-Face -Identifier <String> -ImagePath <String[]> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | — | 0 | — | The unique identifier for the face (e.g., person's name) |
| `-ImagePath` | String[] | ✅ | — | 1 | — | Array of local paths to image files (png, jpg, jpeg, or gif) |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | The name for the Docker container |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | Named | `5000` | The port number for the DeepStack service |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Interval in seconds between health check attempts |
| `-ImageName` | String | — | — | Named | — | Custom Docker image name to use |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Skip Docker initialization (used when already called by parent function) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show Docker Desktop window during initialization |

## Examples

### Register-Face -Identifier "JohnDoe" -ImagePath @("C:\Users\YourName\faces\john1.jpg", "C:\Users\YourName\faces\john2.jpg")

```powershell
Register-Face -Identifier "JohnDoe" -ImagePath @("C:\Users\YourName\faces\john1.jpg", "C:\Users\YourName\faces\john2.jpg")
```

### Register-Face "JohnDoe" @("C:\Users\YourName\faces\john1.jpg", "C:\Users\YourName\faces\john2.jpg")

```powershell
Register-Face "JohnDoe" @("C:\Users\YourName\faces\john1.jpg", "C:\Users\YourName\faces\john2.jpg")
```

### Register-Face -Identifier "JohnDoe" -ImagePath "C:\Users\YourName\faces\john.jpg"

```powershell
Register-Face -Identifier "JohnDoe" -ImagePath "C:\Users\YourName\faces\john.jpg"
```

## Related Links

- [Register-Face on GitHub](https://github.com/genXdev/genXdev)
