# Get-RegisteredFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera una lista de todos los identificadores de rostros registrados de DeepStack.

## Description

Esta función se conecta a una API local de reconocimiento facial de DeepStack y recupera todos los identificadores faciales registrados. Utiliza el endpoint /v1/vision/face/list para consultar el servicio de DeepStack y devuelve una matriz de cadenas de identificadores faciales. La función maneja la inicialización del contenedor Docker, la comunicación con la API y el manejo de errores para varios escenarios de fallo.

## Syntax

```powershell
Get-RegisteredFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Omitir inicialización de Docker (se usa cuando ya fue llamada por una función padre) |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar reconstrucción del contenedor Docker y eliminar datos existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | El nombre del volumen Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | El número de puerto para el servicio DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | 5 | — | Nombre personalizado de la imagen Docker a utilizar |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar la ventana de Docker Desktop durante la inicialización |

## Examples

### Get-RegisteredFaces

```powershell
Get-RegisteredFaces
```

Este ejemplo recupera todas las caras registradas usando parámetros predeterminados.

### Get-RegisteredFaces -Force -UseGPU

```powershell
Get-RegisteredFaces -Force -UseGPU
```

Este ejemplo fuerza una reconstrucción del contenedor y utiliza aceleración por GPU.

### Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080

```powershell
Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080
```

Este ejemplo utiliza un nombre de contenedor y un número de puerto personalizados.

### Get-RegisteredFaces | Where-Object { $_ -like "John*" }

```powershell
Get-RegisteredFaces |
Where-Object { $_ -like "John*" }
```

Este ejemplo recupera todas las caras y filtra aquellas que comienzan con "John".

## Related Links

- [Get-RegisteredFaces on GitHub](https://github.com/genXdev/genXdev)
