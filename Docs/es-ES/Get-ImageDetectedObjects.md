# Get-ImageDetectedObjects

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Detecta y clasifica objetos en una imagen subida usando DeepStack.

## Description

Esta función analiza un archivo de imagen para detectar y clasificar hasta 80 tipos diferentes de objetos. Utiliza una API local de detección de objetos DeepStack que se ejecuta en un puerto configurable y devuelve clasificaciones de objetos con sus coordenadas del cuadro delimitador y puntuaciones de confianza. La función admite aceleración por GPU, umbrales de confianza personalizados y gestión de contenedores Docker.

## Syntax

```powershell
Get-ImageDetectedObjects -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
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

### Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `                          -ConfidenceThreshold 0.5 `                          -ServicePort 5000

```powershell
Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `
                         -ConfidenceThreshold 0.5 `
                         -ServicePort 5000
```

Detecta objetos en la imagen especificada con nombres de parámetros completos.

### Get-ImageDetectedObjects "C:\photos\street.jpg"

```powershell
Get-ImageDetectedObjects "C:\photos\street.jpg"
```

Detecta objetos usando un parámetro posicional y configuraciones predeterminadas.

## Related Links

- [Get-ImageDetectedObjects on GitHub](https://github.com/genXdev/genXdev)
