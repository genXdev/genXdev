# Register-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Register-Face -Identifier <String> -ImagePath <String[]> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | — | 0 | — | El identificador único para el rostro (por ejemplo, el nombre de la persona) |
| `-ImagePath` | String[] | ✅ | — | 1 | — | Array de rutas locales a archivos de imagen (png, jpg, jpeg o gif) |
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

## Related Links

- [Register-Face on GitHub](https://github.com/genXdev/genXdev)
