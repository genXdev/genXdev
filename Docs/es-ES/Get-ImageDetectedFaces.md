# Get-ImageDetectedFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Reconoce rostros en una imagen cargada comparándolos con rostros conocidos usando DeepStack.

## Description

Esta función analiza un archivo de imagen para identificar rostros comparándolos con rostros conocidos en la base de datos. Utiliza una API local de reconocimiento facial de DeepStack que se ejecuta en un puerto configurable y devuelve coincidencias de rostros con sus puntuaciones de confianza. La función admite aceleración por GPU, umbrales de confianza personalizados y gestión de contenedores Docker.

## Syntax

```powershell
Get-ImageDetectedFaces -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | La ruta local al archivo de imagen a analizar |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.5` | Umbral mínimo de confianza (0.0-1.0). El valor predeterminado es 0.5 |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | El nombre del volumen Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | Named | `5000` | El número de puerto para el servicio DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | Named | — | Nombre personalizado de la imagen Docker a utilizar |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Omitir inicialización de Docker (se usa cuando ya fue llamada por una función padre) |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar reconstrucción del contenedor Docker y eliminar datos existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar la ventana de Docker Desktop durante la inicialización |

## Examples

### Get-ImageDetectedFaces -ImagePath "C:\Users\YourName\test.jpg" `                        -ConfidenceThreshold 0.5 `                        -ContainerName "deepstack_face_recognition" `                        -VolumeName "deepstack_face_data" `                        -ServicePort 5000 `                        -HealthCheckTimeout 60 `                        -HealthCheckInterval 3 Recognizes faces in the specified image using full parameter names.

```powershell
Get-ImageDetectedFaces -ImagePath "C:\Users\YourName\test.jpg" `
                       -ConfidenceThreshold 0.5 `
                       -ContainerName "deepstack_face_recognition" `
                       -VolumeName "deepstack_face_data" `
                       -ServicePort 5000 `
                       -HealthCheckTimeout 60 `
                       -HealthCheckInterval 3
Recognizes faces in the specified image using full parameter names.
```

### Get-ImageDetectedFaces "C:\photos\family.jpg" -Force -UseGPU Recognizes faces using positional parameter and aliases.

```powershell
Get-ImageDetectedFaces "C:\photos\family.jpg" -Force -UseGPU
Recognizes faces using positional parameter and aliases.
```

### "C:\Users\YourName\test.jpg" | Get-ImageDetectedFaces Recognizes faces using pipeline input.

```powershell
"C:\Users\YourName\test.jpg" | Get-ImageDetectedFaces
Recognizes faces using pipeline input.
```

## Related Links

- [Get-ImageDetectedFaces on GitHub](https://github.com/genXdev/genXdev)
