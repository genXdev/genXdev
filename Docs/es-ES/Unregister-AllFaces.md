# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Elimina todas las caras registradas del sistema de reconocimiento facial DeepStack.

## Description

Esta función borra todas las caras registradas de la base de datos de reconocimiento facial de DeepStack eliminando todos los archivos de caras del directorio de almacenamiento de datos y reiniciando el servicio para recargar un registro de caras vacío. Esta es una operación destructiva que no se puede deshacer y eliminará permanentemente todos los datos de caras registrados.

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

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

Elimina todas las caras registradas con confirmación.

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

Elimina todas las caras registradas sin solicitar confirmación.

### unregall -Force

```powershell
unregall -Force
```

Utiliza alias para eliminar todas las caras sin confirmación.

## Related Links

- [Unregister-AllFaces on GitHub](https://github.com/genXdev/genXdev)
