# Update-AllImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `updateallimages

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Update-AllImageMetaData -ImageDirectories <String[]> [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-NoRecurse] [-PassThru] [-PreferencesDatabasePath <String>] [-RedoAll] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | ✅ | — | 0 | — | Array of directory paths to process for image updates |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | El nombre del volumen Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | Named | `5000` | El número de puerto para el servicio DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | Named | — | Nombre personalizado de la imagen Docker a utilizar |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Umbral de confianza mínimo (0.0-1.0) para la detección de objetos |
| `-Language` | String | — | — | Named | — | El idioma para las descripciones y palabras clave generadas |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Nombre o ruta parcial del modelo a inicializar 🌐 *Supports wildcards* |
| `-ApiEndpoint` | String | — | — | Named | `$null` | URL del endpoint de la API, por defecto http://localhost:1234/v1/chat/completions |
| `-ApiKey` | String | — | — | Named | `$null` | La clave API que se usará para la solicitud |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Tiempo de espera en segundos para la solicitud, por defecto 24 horas |
| `-FacesDirectory` | String | — | — | Named | — | El directorio que contiene imágenes de rostros organizadas por carpetas de personas. Si no se especifica, utiliza la preferencia de directorio de rostros configurada. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Reintentará las actualizaciones de palabras clave de imagen que fallaron anteriormente |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | No procesar imágenes en subdirectorios |
| `-RedoAll` | SwitchParameter | — | — | Named | — | Redo all images regardless of previous processing |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Omitir inicialización de Docker (se usa cuando ya fue llamada por una función padre) |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar reconstrucción del contenedor Docker y eliminar datos existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru para devolver objetos estructurados en lugar de enviarlos a la consola |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detecta cambios en el directorio de rostros y vuelve a registrar los rostros si es necesario |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa configuraciones alternativas guardadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No uses configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc. |

## Related Links

- [Update-AllImageMetaData on GitHub](https://github.com/genXdev/genXdev)
