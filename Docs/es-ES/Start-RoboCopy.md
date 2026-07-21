# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Proporciona un envoltorio de PowerShell para la utilidad de Copia Robusta (RoboCopy) de Microsoft.

## Description

Un contenedor completo para la utilidad de línea de comandos RoboCopy que proporciona capacidades robustas de copia de archivos y directorios. Esta función expone el extenso conjunto de características de RoboCopy a través de parámetros compatibles con PowerShell, manteniendo la mayor parte de su potente funcionalidad.

Características principales:
- Sincronización de directorios con opciones de espejo
- Compatibilidad con rutas de archivo extremadamente largas (>256 caracteres)
- Conservación de la configuración de seguridad
- Manejo avanzado de atributos de archivos
- Gestión de enlaces simbólicos y puntos de unión
- Modo de monitoreo para sincronización continua
- Optimización del rendimiento para archivos grandes
- Compatibilidad con compresión de red
- Modo de recuperación para dispositivos con errores

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | El directorio, la ruta de archivo, o el directorio+máscara de búsqueda |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | El directorio de destino donde colocar los archivos y directorios copiados.
            Si este directorio aún no existe, se crearán todos los directorios faltantes.
            Valor predeterminado = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Máscara de búsqueda opcional para seleccionar los archivos que se deben copiar.
            Valor predeterminado = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Sincroniza el contenido de directorios específicos. También eliminará cualquier archivo y directorio en el destino que no exista en el origen. |
| `-Move` | SwitchParameter | — | — | Named | — | Moverá en lugar de copiar todos los archivos desde el origen al destino |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | También copiará la propiedad, los descriptores de seguridad y la información de auditoría de archivos y directorios. |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Copia solo archivos del origen y omite subdirectorios (sin recurrencia) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | No copia directorios si quedarían vacíos *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Crear solo el árbol de directorios *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Crear solo árbol de directorios y archivos de longitud cero |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | No copiar vínculos simbólicos, uniones ni el contenido al que apuntan |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | No copiar vínculos simbólicos de archivos pero seguir las uniones de directorios |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | En lugar de copiar el contenido al que apuntan los enlaces simbólicos, copie los propios enlaces |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | No copiar las uniones de directorios (enlace simbólico para una carpeta) ni el contenido al que apuntan *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | En lugar de copiar el contenido al que apuntan los enlaces, copie los enlaces mismos *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Copiará todos los archivos incluso si son más antiguos que los del destino |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Copia solo los archivos que tienen el atributo de archivo establecido |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Además de copiar solo los archivos que tienen el atributo de archivo establecido, restablecerá este atributo en el origen |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Excluye cualquier archivo que coincida con alguno de estos nombres/rutas/comodines 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Excluye cualquier directorio que coincida con alguno de estos nombres/rutas/comodines *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Copiar solo los archivos que tengan todos estos atributos establecidos [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Excluir archivos que tengan alguno de estos atributos establecidos [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Establecerá los atributos dados a los archivos copiados [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Eliminará los atributos especificados de los archivos copiados [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Copiar solo los n niveles superiores del árbol de directorios de origen *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Omitir archivos que no tengan al menos n bytes de tamaño |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Omitir archivos mayores de n bytes |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Omitir archivos que no tengan al menos: n días de antigüedad o creados antes de la fecha n (si n < 1900 entonces n = n días, si no n = fecha AAAAMMDD) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Omitir los archivos que sean más antiguos de: n días o creados después de la fecha n (si n < 1900 entonces n = n días, de lo contrario n = fecha AAAAMMDD) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Omitir archivos a los que se haya accedido en los últimos: n días O antes de la fecha n (si n < 1900, entonces n = n días, si no, n = fecha AAAAAMMDD) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Omitir archivos que no se hayan accedido en: n días O después de la fecha n (si n < 1900 entonces n = n días, si no n = fecha AAAAMMDD) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Pausará brevemente y reintentará cuando ocurran errores de E/S durante la copia |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Permanecerá activo después de copiar y copiará cambios adicionales después de un umbral predeterminado de 10 minutos |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Ejecutar de nuevo en N minutos si ha cambiado |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Ejecutar de nuevo cuando se vean más de n cambios |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Horas de ejecución: momentos en los que se pueden iniciar nuevas copias, hora de inicio, rango 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Horas de ejecución: momentos en los que se pueden iniciar nuevas copias, hora de finalización, rango 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Si se especifica, el registro también se realizará en el archivo especificado |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | No agregues al archivo de registro especificado, sino que sobrescribe en su lugar |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Incluir todos los nombres de directorio escaneados en la salida |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Incluir todos los nombres de archivo escaneados en la salida, incluso los omitidos. |
| `-Unicode` | SwitchParameter | — | — | Named | — | Estado de salida como UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Habilita la optimización para copiar archivos grandes |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Optimice el rendimiento realizando copias multiproceso |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Si es aplicable, use compresión al copiar archivos entre servidores para ahorrar ancho de banda y tiempo |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Al establecerse, se utilizará la coincidencia de marcas de tiempo en milisegundos en lugar de la tolerancia predeterminada de 2 segundos |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Sobrescribe, elimina o agrega cualquier parámetro especificado de robocopy.

Uso:

Agregar o reemplazar parámetro:

    -Override /SwitchConValor:'AlgúnValor'

    -Override /Switch

Eliminar parámetro:

    -Override -/Switch

Varias sobrescrituras:

    -Override "/ReemplazarEsteSwitchConValor:'AlgúnValor' -/EliminarEsteSwitch /AgregarEsteSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> El directorio, la ruta de archivo, o el directorio+máscara de búsqueda

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> El directorio de destino donde colocar los archivos y directorios copiados.
            Si este directorio aún no existe, se crearán todos los directorios faltantes.
            Valor predeterminado = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> Máscara de búsqueda opcional para seleccionar los archivos que se deben copiar.
            Valor predeterminado = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> Sincroniza el contenido de directorios específicos. También eliminará cualquier archivo y directorio en el destino que no exista en el origen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> Moverá en lugar de copiar todos los archivos desde el origen al destino

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> También copiará la propiedad, los descriptores de seguridad y la información de auditoría de archivos y directorios.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> Copia solo archivos del origen y omite subdirectorios (sin recurrencia)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> No copia directorios si quedarían vacíos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> Crear solo el árbol de directorios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> Crear solo árbol de directorios y archivos de longitud cero

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> No copiar vínculos simbólicos, uniones ni el contenido al que apuntan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> No copiar vínculos simbólicos de archivos pero seguir las uniones de directorios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> En lugar de copiar el contenido al que apuntan los enlaces simbólicos, copie los propios enlaces

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> No copiar las uniones de directorios (enlace simbólico para una carpeta) ni el contenido al que apuntan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> En lugar de copiar el contenido al que apuntan los enlaces, copie los enlaces mismos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> Copiará todos los archivos incluso si son más antiguos que los del destino

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> Copia solo los archivos que tienen el atributo de archivo establecido

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> Además de copiar solo los archivos que tienen el atributo de archivo establecido, restablecerá este atributo en el origen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> Excluye cualquier archivo que coincida con alguno de estos nombres/rutas/comodines

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> Excluye cualquier directorio que coincida con alguno de estos nombres/rutas/comodines

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> Copiar solo los archivos que tengan todos estos atributos establecidos [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> Excluir archivos que tengan alguno de estos atributos establecidos [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> Establecerá los atributos dados a los archivos copiados [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> Eliminará los atributos especificados de los archivos copiados [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> Copiar solo los n niveles superiores del árbol de directorios de origen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> Omitir archivos que no tengan al menos n bytes de tamaño

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> Omitir archivos mayores de n bytes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> Omitir archivos que no tengan al menos: n días de antigüedad o creados antes de la fecha n (si n < 1900 entonces n = n días, si no n = fecha AAAAMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> Omitir los archivos que sean más antiguos de: n días o creados después de la fecha n (si n < 1900 entonces n = n días, de lo contrario n = fecha AAAAMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> Omitir archivos a los que se haya accedido en los últimos: n días O antes de la fecha n (si n < 1900, entonces n = n días, si no, n = fecha AAAAAMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> Omitir archivos que no se hayan accedido en: n días O después de la fecha n (si n < 1900 entonces n = n días, si no n = fecha AAAAMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> Pausará brevemente y reintentará cuando ocurran errores de E/S durante la copia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> Permanecerá activo después de copiar y copiará cambios adicionales después de un umbral predeterminado de 10 minutos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> Ejecutar de nuevo en N minutos si ha cambiado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> Ejecutar de nuevo cuando se vean más de n cambios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> Horas de ejecución: momentos en los que se pueden iniciar nuevas copias, hora de inicio, rango 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> Horas de ejecución: momentos en los que se pueden iniciar nuevas copias, hora de finalización, rango 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> Si se especifica, el registro también se realizará en el archivo especificado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> No agregues al archivo de registro especificado, sino que sobrescribe en su lugar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> Incluir todos los nombres de directorio escaneados en la salida

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> Incluir todos los nombres de archivo escaneados en la salida, incluso los omitidos.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> Estado de salida como UNICODE

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> Habilita la optimización para copiar archivos grandes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> Optimice el rendimiento realizando copias multiproceso

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> Si es aplicable, use compresión al copiar archivos entre servidores para ahorrar ancho de banda y tiempo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> Al establecerse, se utilizará la coincidencia de marcas de tiempo en milisegundos en lugar de la tolerancia predeterminada de 2 segundos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> Sobrescribe, elimina o agrega cualquier parámetro especificado de robocopy.

Uso:

Agregar o reemplazar parámetro:

    -Override /SwitchConValor:'AlgúnValor'

    -Override /Switch

Eliminar parámetro:

    -Override -/Switch

Varias sobrescrituras:

    -Override "/ReemplazarEsteSwitchConValor:'AlgúnValor' -/EliminarEsteSwitch /AgregarEsteSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Find-Item.md)
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
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Write-TextFileAtomic.md)
