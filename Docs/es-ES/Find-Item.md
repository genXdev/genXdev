# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> Busca archivos y directorios con opciones de filtrado avanzadas.

## Description

```text
* Encuentra archivos con Find-Item -> l
        * Búsqueda rápida multihilo: utiliza procesamiento de E/S paralelo y asíncrono
              con un grado máximo de paralelismo configurable
              (por defecto basado en núcleos de CPU) para un escaneo eficiente de archivos y directorios.
        * Coincidencia de patrones avanzada: admite comodines (*, ?), patrones recursivos
              como **, y estructuras de ruta complejas para consultas precisas de archivos y directorios.
              **/nombrearchivo solo recurrirá hasta que se encuentre nombrearchivo. Se permiten múltiples
              patrones de este tipo, siempre que estén precedidos por un nombre de archivo o
              directorio a coincidir.
              Este analizador de patrones tiene el poder de Resolve-Path pero con características
              de recursión, y solo admite * y ? como comodines,
              evitando errores con rutas que contienen corchetes [ ], eliminando
              la necesidad del parámetro -LiteralPath, manteniendo la integridad
              para secciones de ruta sin comodines, a diferencia de una coincidencia de comodín en toda
              la ruta completa.
        * Búsqueda de contenido mejorada: integración completa de Select-String
              con patrones de expresiones regulares dentro del contenido de archivos usando el
              parámetro -Content.
            * Optimización para archivos grandes: maneja archivos extremadamente grandes con buffers
                  superpuestos inteligentes y asignación mínima de montón
            * Múltiples opciones de coincidencia: encuentra todas las coincidencias por línea (-AllMatches) o
                  solo la primera coincidencia por archivo (-List)
            * Control de distinción entre mayúsculas y minúsculas: coincidencia sensible a mayúsculas (-CaseSensitive)
                  con opciones específicas de cultura (-Culture)
            * Captura de contexto: muestra líneas antes y después de las coincidencias (-Context) para
                  una mejor comprensión
            * Coincidencia inversa: encuentra archivos que no contienen el patrón (-NotMatch)
            * Formatos de salida: salida de cadena sin formato (-Raw), respuesta booleana silenciosa (-Quiet),
                  u objetos MatchInfo completos
            * Tipos de patrón: expresiones regulares (predeterminado) o coincidencia de cadena literal simple
                  (-SimpleMatch)
            * Soporte de codificación: especificar codificación de archivo (-Encoding) para un procesamiento de texto
                  preciso
        * Flexibilidad de tipo de ruta: maneja rutas relativas, absolutas, UNC, con raíz, y
              flujos de datos alternativos de NTFS (ADS) con búsqueda de contenido opcional en flujos.
        * Soporte de múltiples unidades: busca en todas las unidades con -AllDrives o unidades
              específicas mediante -SearchDrives, incluyendo discos ópticos si se especifica.
        * Filtrado de directorios y archivos: opciones para buscar solo directorios (-Directory),
              tanto archivos como directorios (-FilesAndDirectories), o archivos con coincidencia de contenido.
        * Exclusión y límites: excluir patrones con -Exclude, establecer profundidad máxima de recursión
              (-MaxRecursionDepth), límites de tamaño de archivo (-MaxFileSize, -MinFileSize) y filtros
              de fecha de modificación (-ModifiedAfter, -ModifiedBefore).
        * Personalización de salida: admite PassThru para objetos FileInfo/DirectoryInfo,
              rutas relativas, hipervínculos en modo atendido, o rutas simples en modo desatendido
              (use -NoLinks en caso de contratiempos para forzar el modo desatendido).
        * Optimizaciones de rendimiento: omite archivos no textuales por defecto en la búsqueda de contenido
              (anular con -IncludeNonTextFileMatching), maneja rutas largas (>260 caracteres),
              y sigue enlaces simbólicos/junctions.
        * Características de seguridad: soporte de tiempo de espera (-TimeoutSeconds), ignora elementos inaccesibles,
              omite atributos de sistema por defecto, y evita bucles infinitos con seguimiento de nodos visitados.

        * Las categorías válidas para el parámetro -Category son: Imágenes, Videos, Música, Documentos, HojasDeCálculo, Presentaciones, Archivos, Instaladores, Ejecutables, BasesDeDatos, ArchivosDeDiseño, LibrosElectrónicos, Subtítulos, Fuentes, ArchivosDeCorreo, Modelos3D, RecursosDeJuegos, ArchivosMédicos, ArchivosFinancieros, ArchivosLegales, CódigoFuente, Scripts, MarcadoYdatos, Configuración, Registros, ArchivosDeTexto, ArchivosWeb, LetrasYAcordesDeMúsica, EscrituraCreativa, Recetas, ArchivosDeInvestigación
```
## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Nombre de archivo o patrón para buscar. El valor predeterminado es '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nombre de archivo o patrón para buscar. El valor predeterminado es '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Patrón de expresión regular para buscar dentro del contenido *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Ruta base para resolver rutas relativas en la salida |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grado máximo de paralelismo para tareas de directorio |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Opcional: tiempo de espera de cancelación en segundos |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Buscar en todas las unidades disponibles |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Buscar solo directorios |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Incluya tanto archivos como directorios |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Genera elementos coincidentes como objetos |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Incluir secuencias de datos alternativas en los resultados de búsqueda |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | No recurse en subdirectorios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Siga los vínculos simbólicos y las uniones durante el recorrido de directorios |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Incluye unidades de disco óptico |
| `-SearchDrives` | String[] | — | — | Named | — | Opcional: buscar unidades específicas |
| `-DriveLetter` | Char[] | — | — | Named | — | Opcional: buscar unidades específicas |
| `-Root` | String[] | — | — | Named | — | Opcional: buscar directorios específicos |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Aplica la búsqueda únicamente en directorios raíz eliminando los componentes de directorio de las entradas de nombre |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Incluir archivos que no sean de texto al buscar el contenido de los archivos |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Fuerza el modo desatendido y no generará enlaces |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Obtiene o establece la distinción entre mayúsculas y minúsculas para archivos y directorios |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Cuando está establecido, realiza búsqueda de contenido dentro de flujos de datos alternativos (ADS). Cuando no está establecido, muestra información de archivos ADS sin buscar su contenido. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidad máxima de recursión para el recorrido de directorios. 0 significa ilimitado. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profundidad máxima de recursión para continuar buscando hacia arriba en el árbol para búsquedas relativas, mientras no se encuentren elementos. 0 significa deshabilitado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamaño máximo de archivo en bytes para incluir en los resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamaño mínimo de archivo en bytes para incluir en los resultados. 0 significa sin mínimo. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incluir solo los archivos modificados después de esta fecha/hora (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Solo incluye archivos modificados antes de esta fecha/hora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Atributos de archivo que se deben omitir (por ejemplo, Sistema, Oculto o Ninguno). |
| `-Exclude` | String[] | — | — | Named | — | Excluye archivos o directorios que coincidan con estos patrones comodín (p. ej., *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Indica que el cmdlet busca más de una coincidencia en cada línea de texto. Sin este parámetro, Select-String encuentra solo la primera coincidencia en cada línea de texto. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Indica que las coincidencias del cmdlet distinguen entre mayúsculas y minúsculas. De manera predeterminada, las coincidencias no distinguen entre mayúsculas y minúsculas. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Captura el número especificado de líneas antes y después de la línea que coincide con el patrón. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Especifica un nombre de referencia cultural que coincida con el patrón indicado. El parámetro Culture debe utilizarse junto con el parámetro SimpleMatch. El comportamiento predeterminado usa la referencia cultural del runspace actual de PowerShell (sesión). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Especifica el tipo de codificación para el archivo de destino. Admite valores compatibles con Select-String y codificaciones .NET extendidas. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Solo la primera instancia del texto coincidente se devuelve de cada archivo de entrada. Esta es la forma más eficiente de recuperar una lista de archivos cuyo contenido coincide con la expresión regular. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Deshabilita el resaltado de cadenas coincidentes en la salida. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | El parámetro NotMatch busca texto que no coincida con el patrón especificado. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Indica que el cmdlet devuelve una respuesta simple en lugar de un objeto MatchInfo. El valor devuelto es $true si se encuentra el patrón o $null si no se encuentra el patrón. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Hace que el cmdlet genere solo las cadenas coincidentes, en lugar de objetos MatchInfo. Esto da como resultado un comportamiento que es el más similar a los comandos Unix grep o Windows findstr.exe. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Indica que el cmdlet usa una coincidencia simple en lugar de una coincidencia de expresión regular. En una coincidencia simple, Select-String busca en la entrada el texto del parámetro Pattern. No interpreta el valor del parámetro Pattern como una declaración de expresión regular. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Encuentra archivos que contengan una palabra específica
Busca en todos los archivos del directorio actual y subdirectorios que contengan la palabra "traducción".

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Buscar archivos JavaScript con una cadena de versión
Buscar archivos JavaScript que contengan una cadena de versión en el formato "Versión == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Mostrar todos los directorios
Encuentra todos los directorios en el directorio actual y sus subdirectorios.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Buscar archivos XML y pasar objetos
Busca todos los archivos .xml y pasa los resultados como objetos a través de la canalización.

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

Tiempo de espera personalizado y paralelismo
Buscar archivos de registro con un tiempo de espera de 5 minutos y paralelismo limitado.

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

Limitar profundidad de recursión
Buscar archivos de texto pero limitar la recursión a 2 niveles de directorio.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filtrar por tamaño de archivo
Buscar archivos de más de 1 MB pero menos de 10 MB.

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
Busque archivos .docx solo en las unidades C: y D:.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Búsqueda de contenido con distinción entre mayúsculas y minúsculas
Buscar archivos que contengan "Error" (con distinción entre mayúsculas y minúsculas) en su contenido.

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

Encuentra todas las coincidencias por línea
Busca todas las apariciones de "función" en cada línea, no solo la primera coincidencia.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Mostrar contexto alrededor de las coincidencias
Muestra 2 líneas antes y 3 líneas después de cada coincidencia para una mejor comprensión.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Obtener solo las cadenas coincidentes
Devuelve solo las cadenas de texto coincidentes en lugar de los objetos de coincidencia completa.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Comprobación booleana simple
Devuelve verdadero/falso en lugar de detalles de coincidencia para comprobar si existe un patrón.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Solo la primera coincidencia por archivo
Detenerse en la primera coincidencia en cada archivo para listar archivos de forma eficiente.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Coincidencia de cadenas literales
Busque texto exacto sin interpretación de expresiones regulares mediante SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Buscar archivos que NO contengan un patrón
Utilice NotMatch para encontrar archivos que no contengan el patrón especificado.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Especificar codificación de archivo
Buscar archivos con codificación específica para un procesamiento preciso de texto.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Comparación de texto cultural
Use coincidencia específica de cultura con SimpleMatch para texto internacional.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Búsqueda compleja de contenido con filtros de archivo
Combina filtros de tamaño, fecha y contenido de archivos para búsquedas precisas.

## Parameter Details

### `-Name <String[]>`

> Nombre de archivo o patrón para buscar. El valor predeterminado es '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Nombre de archivo o patrón para buscar. El valor predeterminado es '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> Patrón de expresión regular para buscar dentro del contenido

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> Ruta base para resolver rutas relativas en la salida

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> Grado máximo de paralelismo para tareas de directorio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Opcional: tiempo de espera de cancelación en segundos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> Buscar en todas las unidades disponibles

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> Buscar solo directorios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> Incluya tanto archivos como directorios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Genera elementos coincidentes como objetos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Incluir secuencias de datos alternativas en los resultados de búsqueda

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> No recurse en subdirectorios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Siga los vínculos simbólicos y las uniones durante el recorrido de directorios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> Incluye unidades de disco óptico

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> Opcional: buscar unidades específicas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> Opcional: buscar unidades específicas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> Opcional: buscar directorios específicos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> Aplica la búsqueda únicamente en directorios raíz eliminando los componentes de directorio de las entradas de nombre

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Incluir archivos que no sean de texto al buscar el contenido de los archivos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> Fuerza el modo desatendido y no generará enlaces

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Obtiene o establece la distinción entre mayúsculas y minúsculas para archivos y directorios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Cuando está establecido, realiza búsqueda de contenido dentro de flujos de datos alternativos (ADS). Cuando no está establecido, muestra información de archivos ADS sin buscar su contenido.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> Profundidad máxima de recursión para el recorrido de directorios. 0 significa ilimitado.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSearchUpDepth <Int32>`

> Profundidad máxima de recursión para continuar buscando hacia arriba en el árbol para búsquedas relativas, mientras no se encuentren elementos. 0 significa deshabilitado.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> Tamaño máximo de archivo en bytes para incluir en los resultados. 0 significa ilimitado.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> Tamaño mínimo de archivo en bytes para incluir en los resultados. 0 significa sin mínimo.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Incluir solo los archivos modificados después de esta fecha/hora (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Solo incluye archivos modificados antes de esta fecha/hora (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> Atributos de archivo que se deben omitir (por ejemplo, Sistema, Oculto o Ninguno).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `None` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Excluye archivos o directorios que coincidan con estos patrones comodín (p. ej., *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Indica que el cmdlet busca más de una coincidencia en cada línea de texto. Sin este parámetro, Select-String encuentra solo la primera coincidencia en cada línea de texto.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> Indica que las coincidencias del cmdlet distinguen entre mayúsculas y minúsculas. De manera predeterminada, las coincidencias no distinguen entre mayúsculas y minúsculas.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> Captura el número especificado de líneas antes y después de la línea que coincide con el patrón.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> Especifica un nombre de referencia cultural que coincida con el patrón indicado. El parámetro Culture debe utilizarse junto con el parámetro SimpleMatch. El comportamiento predeterminado usa la referencia cultural del runspace actual de PowerShell (sesión).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> Especifica el tipo de codificación para el archivo de destino. Admite valores compatibles con Select-String y codificaciones .NET extendidas.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> Solo la primera instancia del texto coincidente se devuelve de cada archivo de entrada. Esta es la forma más eficiente de recuperar una lista de archivos cuyo contenido coincide con la expresión regular.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> Deshabilita el resaltado de cadenas coincidentes en la salida.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> El parámetro NotMatch busca texto que no coincida con el patrón especificado.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> Indica que el cmdlet devuelve una respuesta simple en lugar de un objeto MatchInfo. El valor devuelto es $true si se encuentra el patrón o $null si no se encuentra el patrón.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> Hace que el cmdlet genere solo las cadenas coincidentes, en lugar de objetos MatchInfo. Esto da como resultado un comportamiento que es el más similar a los comandos Unix grep o Windows findstr.exe.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> Indica que el cmdlet usa una coincidencia simple en lugar de una coincidencia de expresión regular. En una coincidencia simple, Select-String busca en la entrada el texto del parámetro Pattern. No interpreta el valor del parámetro Pattern como una declaración de expresión regular.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Find-DuplicateFiles.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Write-TextFileAtomic.md)
