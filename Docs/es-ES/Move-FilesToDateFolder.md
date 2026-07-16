# Move-FilesToDateFolder

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Move-FilesToDateFolder -TargetFolder <String> [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DeleteEmptyDirs] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TargetFolderNameDateSyntax <String>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Move-FilesToDateFolder [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TargetFolder` | String | ✅ | — | 0 | — | Carpeta raíz de destino donde los archivos coincidentes se moverán a subcarpetas basadas en la fecha |
| `-Name` | String[] | — | — | 1 | `@('*')` | Nombre de archivo o patrón a buscar. Por defecto es '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nombre de archivo o patrón a buscar de la entrada del pipeline. El valor predeterminado es '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | Patrón de expresión regular para buscar dentro del contenido *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Ruta base para resolver rutas relativas en la salida |
| `-Category` | String[] | — | — | Named | — | Sólo archivos de salida pertenecientes a categorías seleccionadas |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grado máximo de paralelismo para tareas de directorio |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opcional: tiempo de espera de cancelación en segundos |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Buscar en todas las unidades disponibles |
| `-Directory` | SwitchParameter | — | — | Named | — | Buscar solo directorios |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Include both files and directories |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output matched items as objects |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Incluir flujos de datos alternativos en los resultados de búsqueda |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | No recurse en subdirectorios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Seguir enlaces simbólicos y uniones durante el recorrido de directorios |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Incluye unidades de disco óptico |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Opcional: buscar unidades específicas |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Opcional: buscar unidades específicas |
| `-Root` | String[] | — | — | Named | `@()` | Opcional: buscar directorios específicos |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Fuerza la búsqueda solo dentro de los directorios Raíz eliminando los componentes de directorio de las entradas de Nombre |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Incluir archivos no textuales al buscar contenido de archivos |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Forces unattended mode and will not generate links |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Obtiene o establece la sensibilidad a mayúsculas y minúsculas para archivos y directorios |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Cuando se establece, realiza la búsqueda de contenido dentro de flujos de datos alternativos (ADS) |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidad máxima de recursión para el recorrido de directorios. 0 significa ilimitado. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profundidad máxima de recurrencia para la búsqueda de continuación hacia arriba en el árbol. 0 significa desactivado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamaño máximo de archivo en bytes a incluir en los resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamaño mínimo de archivo en bytes para incluir en los resultados. 0 significa sin mínimo. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Incluir solo los archivos modificados después de esta fecha/hora (UTC) |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Incluir solo los archivos modificados antes de esta fecha/hora (UTC) |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Atributos de archivo a omitir (p. ej., Sistema, Oculto o Ninguno) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Excluir archivos o directorios que coincidan con estos patrones comodín |
| `-AllMatches` | SwitchParameter | — | — | Named | — | search for more than one match in each line of text *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Las coincidencias distinguen entre mayúsculas y minúsculas *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Captura líneas de contexto alrededor de las coincidencias *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Nombre de cultura utilizado para la coincidencia de patrones *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Especifica la codificación para los archivos de destino *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Solo se devuelve la primera coincidencia por archivo *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Deshabilita el resaltado de cadenas coincidentes en la salida *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | El parámetro NotMatch encuentra texto que no coincide con el patrón *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Output only matching strings instead of MatchInfo objects *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Use simple string matching instead of regex *(Parameter set: )* |
| `-DeleteEmptyDirs` | SwitchParameter | — | — | Named | — | Eliminar directorios fuente vacíos después de mover archivos |
| `-TargetFolderNameDateSyntax` | String | — | — | Named | `'Year + Month'` | Sintaxis de fecha en el nombre de la carpeta de destino |

## Related Links

- [Move-FilesToDateFolder on GitHub](https://github.com/genXdev/genXdev)
