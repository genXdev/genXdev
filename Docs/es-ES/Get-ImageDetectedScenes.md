# Get-ImageDetectedScenes

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ImageDetectedScenes -ImagePath <String> [[-ConfidenceThreshold] <Double>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [-Force] [-ImageName <String>] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | La ruta local al archivo de imagen a analizar |
| `-ConfidenceThreshold` | Double | — | — | 1 | `0.0` | Umbral de confianza mínimo (0.0-1.0). El valor predeterminado es 0.0 |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | El nombre del volumen Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | El número de puerto para el servicio DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | Named | — | Nombre personalizado de la imagen Docker a utilizar |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Omitir inicialización de Docker (se usa cuando ya fue llamada por una función padre) |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar reconstrucción del contenedor Docker y eliminar datos existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar la ventana de Docker Desktop durante la inicialización |

## Related Links

- [Get-ImageDetectedScenes on GitHub](https://github.com/genXdev/genXdev)
