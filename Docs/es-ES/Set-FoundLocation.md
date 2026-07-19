# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd

## Synopsis

> Busca el primer archivo o carpeta que coincida y establece la ubicación en él.

## Description

Este cmdlet te ayudará a cambiar de directorios rápidamente usando frases de búsqueda que encontrarán la primera carpeta o archivo coincidente (opcional) y cambiarán el directorio a ella. Admite filtrado avanzado por contenido, atributos de archivo, tamaño, fechas de modificación y muchos otros criterios.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Nombre del archivo o patrón a buscar. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Nombre de archivo o patrón a buscar de la entrada del pipeline. El valor predeterminado es '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Patrón de expresión regular para buscar dentro del contenido de archivos *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Sólo archivos de salida pertenecientes a categorías seleccionadas |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grado máximo de paralelismo para tareas de directorio |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opcional: tiempo de espera de cancelación en segundos |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Buscar en todas las unidades disponibles |
| `-File` | SwitchParameter | — | — | Named | — | Search for filenames only and change to folder of first found file |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Include filename matching and change to folder of first found file |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Incluir flujos de datos alternativos en los resultados de búsqueda |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | No recurse en subdirectorios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Seguir enlaces simbólicos y uniones durante el recorrido de directorios |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Incluye unidades de disco óptico |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Opcional: buscar unidades específicas |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Opcional: buscar unidades específicas |
| `-Root` | String[] | — | — | Named | `@()` | Opcional: buscar carpetas base específicas combinadas con los nombres proporcionados |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Incluir archivos no textuales (binarios, imágenes, etc.) al buscar contenidos de archivos |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Obtiene o establece la sensibilidad a mayúsculas y minúsculas para archivos y directorios |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Cuando está configurado, realiza búsqueda de contenido en flujos de datos alternativos (ADS). Cuando no está configurado, muestra información de archivos ADS sin buscar su contenido. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidad máxima de recursión para el recorrido de directorios. 0 significa ilimitado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamaño máximo de archivo en bytes a incluir en los resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamaño mínimo de archivo en bytes para incluir en los resultados. 0 significa sin mínimo. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Incluir solo archivos modificados después de esta fecha/hora (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Incluir solo los archivos modificados antes de esta fecha/hora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Atributos de archivo a omitir (por ejemplo, Sistema, Oculto o Ninguno). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Excluir archivos o directorios que coincidan con estos patrones comodín (por ejemplo, *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Indica que las coincidencias del cmdlet distinguen entre mayúsculas y minúsculas. De forma predeterminada, las coincidencias no distinguen entre mayúsculas y minúsculas. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Especifica un nombre de referencia cultural que coincida con el patrón especificado. El parámetro Culture debe utilizarse junto con el parámetro SimpleMatch. El comportamiento predeterminado utiliza la referencia cultural del espacio de ejecución (sesión) actual de PowerShell. *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Especifica el tipo de codificación para el archivo de destino. El valor predeterminado es utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | El parámetro NotMatch encuentra texto que no coincide con el patrón especificado. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Indica que el cmdlet utiliza una coincidencia simple en lugar de una coincidencia de expresión regular. En una coincidencia simple, Select-String busca en la entrada el texto del parámetro Pattern. No interpreta el valor del parámetro Pattern como una declaración de expresión regular. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Use Push-Location instead of Set-Location and push the location onto the location stack |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Cuando está configurado, solo se consideran coincidencias exactas de nombre. De forma predeterminada, se utiliza la coincidencia con comodines a menos que el nombre contenga caracteres comodín. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

Cambios en el primer directorio que coincide con el patrón '*.Console'.

### lcd *.Console

```powershell
lcd *.Console
```

Changes to the first directory matching the pattern '*.Console' using the alias.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

Cambios al directorio que contiene el primer archivo de PowerShell que contiene la palabra 'function'.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Cambios en el directorio que contiene el primer archivo con 'test' en su nombre.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

Cambios en el directorio que contiene el primer archivo cuyo contenido coincide con el patrón '1.\d+.2025'.

## Related Links

- [Set-FoundLocation on GitHub](https://github.com/genXdev/genXdev)
