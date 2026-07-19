# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces

## Synopsis

> Updates all face recognition profiles from image files in the faces directory.

## Description

Esta función actualiza la base de datos de reconocimiento facial con todas las imágenes encontradas en el directorio de rostros especificado. El proceso implica:
1. Asegurarse de que el servicio de reconocimiento facial esté en ejecución.
2. Procesar todas las imágenes en la carpeta de cada persona, registrando todos los rostros de esa persona con un único identificador (el nombre de la carpeta) en una operación por lotes.
3. Implementar lógica de reintento para registros fallidos.

La carpeta de cada persona puede contener múltiples imágenes, y todas las imágenes se registrarán bajo el mismo identificador (nombre de la persona) en una sola llamada API, eliminando la necesidad de sufijos como _1, _2, etc.

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

## Examples

### Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `     -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `     -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3

```powershell
Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `
    -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `
    -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3
```

### Register-AllFaces Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"

```powershell
Register-AllFaces
Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"
```

### updatefaces -RenameFailed ##############################################################################

```powershell
updatefaces -RenameFailed
##############################################################################
```

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)
