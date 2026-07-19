# Set-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Establece el directorio para los archivos de imágenes faciales utilizados en las operaciones de GenXdev.AI.

## Description

Esta función configura el directorio global de caras utilizado por el módulo GenXdev.AI para diversas operaciones de reconocimiento facial e IA. Los ajustes se pueden almacenar de forma persistente en las preferencias (por defecto), solo en la sesión actual (usando -SessionOnly) o eliminarlos de la sesión (usando -ClearSession).

## Syntax

```powershell
Set-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Ruta del directorio para archivos de imagen de rostro |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa configuraciones alternativas guardadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No uses configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc. |

## Examples

### Set-AIKnownFacesRootpath -FacesDirectory "C:\Faces"

```powershell
Set-AIKnownFacesRootpath -FacesDirectory "C:\Faces"
```

Establece el directorio de caras de forma persistente en las preferencias.

### Set-AIKnownFacesRootpath "C:\FacePictures"

```powershell
Set-AIKnownFacesRootpath "C:\FacePictures"
```

Establece el directorio de caras de forma persistente en las preferencias.

### Set-AIKnownFacesRootpath -FacesDirectory "C:\TempFaces" -SessionOnly

```powershell
Set-AIKnownFacesRootpath -FacesDirectory "C:\TempFaces" -SessionOnly
```

Establece el directorio de rostros solo para la sesión actual (variable global).

### Set-AIKnownFacesRootpath -ClearSession

```powershell
Set-AIKnownFacesRootpath -ClearSession
```

Limpia la configuración del directorio de caras de la sesión (variable global) sin afectar
las preferencias persistentes.

## Related Links

- [Set-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
