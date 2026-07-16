# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l

## Synopsis

> Buscar archivos y directorios con opciones de filtrado avanzadas.

## Description

* Encontrar archivos con Find-Item -> l
        * Búsqueda rápida multi-hilo: utiliza procesamiento de E/S paralelo y asíncrono con un grado máximo de paralelismo configurable (por defecto basado en núcleos de CPU) para escaneo eficiente de archivos y directorios.
        * Coincidencia de patrones avanzada: Compatible con comodines (*, ?), patrones recursivos como ** y estructuras de ruta complejas para consultas precisas de archivos y directorios.
        **/filename solo recurrirá hasta que se encuentre filename. Se permiten múltiples de estos patrones, siempre que estén precedidos por un nombre de archivo o directorio que coincida.
        Este analizador de patrones tiene el poder de Resolve-Path pero con características de recursión, y solo admite * y ? como comodines, evitando errores con rutas que contienen corchetes [ ], eliminando la necesidad del parámetro -LiteralPath, manteniendo la integridad para secciones de ruta sin comodines, a diferencia de una coincidencia de comodín en toda la ruta completa.
        * Búsqueda de contenido mejorada: Integración completa de Select-String con patrones de expresión regular dentro del contenido de archivos usando el parámetro -Content.
        * Optimización para archivos grandes: Maneja archivos extremadamente grandes con búferes superpuestos inteligentes y asignación mínima de memoria.
        * Opciones de coincidencia múltiple: Encuentra todas las coincidencias por línea (-AllMatches) o solo la primera coincidencia por archivo (-List).
        * Control de sensibilidad a mayúsculas/minúsculas: Coincidencia sensible a mayúsculas/minúsculas (-CaseSensitive) con opciones específicas de cultura (-Culture).
        * Captura de contexto: Muestra líneas antes y después de las coincidencias (-Context) para una mejor comprensión.
        * Coincidencia inversa: Encuentra archivos que no contienen el patrón (-NotMatch).
        * Formatos de salida: Salida de cadena sin procesar (-Raw), respuesta booleana silenciosa (-Quiet) u objetos MatchInfo completos.
        * Tipos de patrón: Expresiones regulares (predeterminado) o coincidencia de cadena literal simple (-SimpleMatch).
        * Soporte de codificación: Especificar codificación de archivo (-Encoding) para un procesamiento de texto preciso.
        * Flexibilidad de tipo de ruta: Maneja rutas relativas, absolutas, UNC, rutas con raíz y flujos de datos alternativos de NTFS (ADS) con búsqueda de contenido opcional en flujos.
        * Soporte multi-unidad: Busca en todas las unidades con -AllDrives o unidades específicas mediante -SearchDrives, incluidos discos ópticos si se especifica.
        * Filtrado de directorios y archivos: Opciones para buscar solo directorios (-Directory), tanto archivos como directorios (-FilesAndDirectories) o archivos con coincidencia de contenido.
        * Exclusión y límites: Patrones de exclusión con -Exclude, establecer profundidad máxima de recursión (-MaxRecursionDepth), límites de tamaño de archivo (-MaxFileSize, -MinFileSize) y filtros de fecha de modificación (-ModifiedAfter, -ModifiedBefore).
        * Personalización de salida: Compatibilidad con PassThru para objetos FileInfo/DirectoryInfo, rutas relativas, hipervínculos en modo interactivo o rutas simples en modo no interactivo (use -NoLinks en caso de problemas para forzar el modo no interactivo).
        * Optimizaciones de rendimiento: Omite archivos no textuales por defecto en la búsqueda de contenido (anular con -IncludeNonTextFileMatching), maneja rutas largas (>260 caracteres) y sigue enlaces simbólicos/junctions.
        * Funciones de seguridad: Soporte de tiempo de espera (-TimeoutSeconds), ignora elementos inaccesibles, omite atributos de sistema por defecto y evita bucles infinitos con seguimiento de nodos visitados.

## Syntax

```powershell
Find-Item [[-Name] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [<CommonParameters>]

Find-Item [[-Name] <string[]>] [[-Content] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [-AllMatches] [-CaseSensitive] [-Context <int[]>] [-Culture <string>] [-Encoding <string>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Nombre de archivo o patrón a buscar. Por defecto es '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nombre de archivo o patrón a buscar. Por defecto es '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Patrón de expresión regular para buscar dentro del contenido *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Ruta base para resolver rutas relativas en la salida |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grado máximo de paralelismo para tareas de directorio |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Opcional: tiempo de espera de cancelación en segundos |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Buscar en todas las unidades disponibles |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Buscar solo directorios |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Include both files and directories |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Output matched items as objects |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Incluir flujos de datos alternativos en los resultados de búsqueda |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | No recurse en subdirectorios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Seguir enlaces simbólicos y uniones durante el recorrido de directorios |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Incluye unidades de disco óptico |
| `-SearchDrives` | String[] | — | — | Named | — | Opcional: buscar unidades específicas |
| `-DriveLetter` | Char[] | — | — | Named | — | Opcional: buscar unidades específicas |
| `-Root` | String[] | — | — | Named | — | Opcional: buscar directorios específicos |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Fuerza la búsqueda solo dentro de los directorios Raíz eliminando los componentes de directorio de las entradas de Nombre |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Incluir archivos no textuales al buscar contenido de archivos |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Forces unattended mode and will not generate links |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Obtiene o establece la sensibilidad a mayúsculas y minúsculas para archivos y directorios |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Cuando está configurado, realiza búsqueda de contenido en flujos de datos alternativos (ADS). Cuando no está configurado, muestra información de archivos ADS sin buscar su contenido. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidad máxima de recursión para el recorrido de directorios. 0 significa ilimitado. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profundidad máxima de recursión para continuar buscando hacia arriba en el árbol para búsquedas relativas, mientras no se encuentren elementos. 0 significa desactivado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamaño máximo de archivo en bytes a incluir en los resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamaño mínimo de archivo en bytes para incluir en los resultados. 0 significa sin mínimo. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incluir solo archivos modificados después de esta fecha/hora (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incluir solo los archivos modificados antes de esta fecha/hora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Atributos de archivo a omitir (por ejemplo, Sistema, Oculto o Ninguno). |
| `-Exclude` | String[] | — | — | Named | — | Excluir archivos o directorios que coincidan con estos patrones comodín (p. ej., *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Indica que el cmdlet busca más de una coincidencia en cada línea de texto. Sin este parámetro, Select-String solo encuentra la primera coincidencia en cada línea de texto. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Indica que las coincidencias del cmdlet distinguen entre mayúsculas y minúsculas. De forma predeterminada, las coincidencias no distinguen entre mayúsculas y minúsculas. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Captura el número especificado de líneas antes y después de la línea que coincide con el patrón. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Especifica un nombre de referencia cultural que coincida con el patrón especificado. El parámetro Culture debe utilizarse junto con el parámetro SimpleMatch. El comportamiento predeterminado utiliza la referencia cultural del espacio de ejecución (sesión) actual de PowerShell. *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Especifica el tipo de codificación para el archivo de destino. Compatible con valores de Select-String y codificaciones .NET extendidas. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Solo la primera instancia del texto coincidente se devuelve de cada archivo de entrada. Esta es la forma más eficiente de recuperar una lista de archivos que tienen contenido que coincide con la expresión regular. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Desactiva el resaltado de cadenas coincidentes en la salida. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | El parámetro NotMatch encuentra texto que no coincide con el patrón especificado. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Indica que el cmdlet devuelve una respuesta simple en lugar de un objeto MatchInfo. El valor devuelto es $true si el patrón se encuentra o $null si el patrón no se encuentra. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Hace que el cmdlet solo genere las cadenas coincidentes, en lugar de objetos MatchInfo. Esto da como resultado un comportamiento que es el más similar a los comandos grep de Unix o findstr.exe de Windows. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Indica que el cmdlet utiliza una coincidencia simple en lugar de una coincidencia de expresión regular. En una coincidencia simple, Select-String busca en la entrada el texto del parámetro Pattern. No interpreta el valor del parámetro Pattern como una declaración de expresión regular. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

find . -type f -name '*' -exec grep -l 'translation' {} +

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Find JavaScript files with a version string
Search for JavaScript files containing a version string in the format "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

List all directories
Find all directories in the current directory and its subdirectories.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Buscar archivos XML y pasar objetos
Busque todos los archivos .xml y pase los resultados como objetos a través de la canalización.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Incluir flujos de datos alternativos
Buscar todos los archivos e incluir sus flujos de datos alternativos en los resultados.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Buscar en todas las unidades
Buscar todos los archivos PDF en todas las unidades disponibles.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Tiempo de espera y paralelismo personalizados
Búsqueda de archivos de registro con un tiempo de espera de 5 minutos y paralelismo limitado.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Entrada de canalización
Pase las rutas de archivo desde Get-ChildItem para buscar archivos que contengan "error".

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

find . -maxdepth 2 -name "*.txt"

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filtrar por tamaño de archivo
Buscar archivos mayores de 1 MB pero menores de 10 MB.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Filtrar por fecha de modificación
Buscar archivos modificados después del 1 de enero de 2025.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Excluir patrones específicos
Buscar todos los archivos pero excluir archivos temporales y directorios bin.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Buscar unidades específicas
Buscar archivos .docx solo en las unidades C: y D:.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Case-sensitive content search
Search for files containing "Error" (case-sensitive) in their content.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Buscar contenido de flujos de datos alternativos
Buscar archivos con flujos de datos alternativos que contengan "secret".

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Search for all occurrences of "function" in each line, not just the first match.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Show context around matches
Display 2 lines before and 3 lines after each match for better understanding.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Get only matching strings
Return just the matching text strings instead of full match objects.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Comprobación booleana simple
Devuelve verdadero/falso en lugar de detalles de coincidencia para verificar si existe un patrón.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Encontrar solo la primera coincidencia por archivo
Detenerse en la primera coincidencia en cada archivo para un listado eficiente.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Coincidencia de cadenas literales
Busca texto exacto sin interpretación de expresiones regulares usando SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Buscar archivos que NO contengan un patrón
Use NotMatch para encontrar archivos que no contengan el patrón especificado.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Especificar codificación de archivos
Buscar archivos con codificación específica para un procesamiento de texto preciso.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Comparación de texto cultural
Usa coincidencia específica de cultura con SimpleMatch para texto internacional.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Búsqueda compleja de contenido con filtros de archivo
Combina filtros de tamaño, fecha y contenido para búsquedas precisas.

## Related Links

- [Find-Item on GitHub](https://github.com/genXdev/genXdev)
