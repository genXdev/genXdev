# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | El directorio que contiene imágenes de rostros organizadas por carpetas de personas. Si no se especifica, utiliza la preferencia de directorio de rostros configurada. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | Número máximo de intentos de reintento para registros fallidos |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | El nombre del volumen Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | El número de puerto para el servicio DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | 7 | — | Nombre personalizado de la imagen Docker a utilizar |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Saltar la inicialización de Docker Desktop (se usa cuando ya ha sido llamada por una función padre) |
| `-Force` | SwitchParameter | — | — | Named | — | Force re-registration of all faces |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | Renombrar archivos de imagen fallidos que no pudieron procesarse debido a que no se encontró ningún rostro |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Forzar reconstrucción del contenedor Docker y eliminar datos existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar la ventana de Docker Desktop durante la inicialización |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Si se especifica, use solo la sesión (no persista cambios en la base de datos de preferencias). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | If specified, clear the current session preferences before use. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta a la base de datos de preferencias para usar en la raíz de rutas de rostros conocidos. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Si se especifica, omitir la lógica de sesión al recuperar la ruta raíz de las caras conocidas. |

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)
