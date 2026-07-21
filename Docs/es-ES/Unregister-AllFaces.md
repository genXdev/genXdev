# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Elimina todas las caras registradas del sistema de reconocimiento facial de DeepStack.

## Description

Esta función borra todas las caras registradas de la base de datos de reconocimiento facial de DeepStack eliminando todos los archivos de caras del directorio de almacenamiento de datos y reiniciando el servicio para cargar un registro de caras vacío. Esta es una operación destructiva que no se puede deshacer y eliminará permanentemente todos los datos de caras registrados.

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Omitir las solicitudes de confirmación al eliminar todas las caras registradas |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Omitir la inicialización de Docker Desktop (se utiliza cuando ya ha sido llamada por la función principal) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Reconstrucción forzada del contenedor Docker y eliminación de datos existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Usar la versión acelerada por GPU (requiere GPU NVIDIA) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | El nombre del volumen de Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | El número de puerto para el servicio de DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Tiempo máximo en segundos para esperar la comprobación de estado del servicio |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | 5 | — | Nombre personalizado de la imagen Docker a utilizar |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar la ventana de Docker Desktop durante la inicialización |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

Elimina todas las caras registradas con una solicitud de confirmación.

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

Elimina todas las caras registradas sin solicitar confirmación.

### unregall -Force

```powershell
unregall -Force
```

Usa alias para eliminar todas las caras sin confirmación.

## Parameter Details

### `-Force`

> Omitir las solicitudes de confirmación al eliminar todas las caras registradas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Omitir la inicialización de Docker Desktop (se utiliza cuando ya ha sido llamada por la función principal)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceRebuild`

> Reconstrucción forzada del contenedor Docker y eliminación de datos existentes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseGPU`

> Usar la versión acelerada por GPU (requiere GPU NVIDIA)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> El nombre del contenedor Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'deepstack_face_recognition'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> El nombre del volumen de Docker para almacenamiento persistente

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'deepstack_face_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> El número de puerto para el servicio de DeepStack

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `5000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Tiempo máximo en segundos para esperar la comprobación de estado del servicio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Intervalo en segundos entre intentos de verificación de estado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Nombre personalizado de la imagen Docker a utilizar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Mostrar la ventana de Docker Desktop durante la inicialización

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Register-Face.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Unregister-Face.md)
