# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Bypass confirmation prompts when removing all registered faces |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Saltar la inicialización de Docker Desktop (se usa cuando ya ha sido llamada por una función padre) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Forzar reconstrucción del contenedor Docker y eliminar datos existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | El nombre del volumen Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | El número de puerto para el servicio DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | 5 | — | Nombre personalizado de la imagen Docker a utilizar |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar la ventana de Docker Desktop durante la inicialización |

## Related Links

- [Unregister-AllFaces on GitHub](https://github.com/genXdev/genXdev)
