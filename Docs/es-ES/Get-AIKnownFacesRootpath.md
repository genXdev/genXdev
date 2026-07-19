# Get-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Obtiene el directorio configurado para los archivos de imágenes de rostro utilizados en las operaciones de GenXdev.AI.

## Description

Esta función recupera el directorio facial global utilizado por el módulo GenXdev.AI para diversas operaciones de reconocimiento facial e IA. Primero verifica las variables Globales (a menos que se especifique SkipSession), luego recurre a las preferencias persistentes y, finalmente, utiliza los valores predeterminados del sistema.

## Syntax

```powershell
Get-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Ruta del directorio para archivos de imagen de rostro |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa configuraciones alternativas guardadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No uses configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc. |

## Examples

### Get-AIKnownFacesRootpath

```powershell
Get-AIKnownFacesRootpath
```

Obtiene el directorio de rostros actualmente configurado de las variables globales o preferencias.

### Get-AIKnownFacesRootpath -SkipSession

```powershell
Get-AIKnownFacesRootpath -SkipSession
```

Obtiene el directorio de caras configurado solo de las preferencias persistentes, ignorando cualquier configuración de sesión.

### Get-AIKnownFacesRootpath -ClearSession

```powershell
Get-AIKnownFacesRootpath -ClearSession
```

Limpia la configuración del directorio de caras de la sesión y luego obtiene el directorio de las preferencias persistentes.

### Get-AIKnownFacesRootpath "C:\MyFaces"

```powershell
Get-AIKnownFacesRootpath "C:\MyFaces"
```

Devuelve el directorio especificado después de expandir la ruta.

## Related Links

- [Get-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
