# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc, `rc

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | El directorio, la ruta de archivo, o directorio+máscara de búsqueda |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | El directorio de destino para colocar los archivos y directorios copiados.
Si este directorio aún no existe, se crearán todos los directorios faltantes.
Valor predeterminado = "." |
| `-Files` | String[] | — | — | 2 | `@()` | Máscara de búsqueda opcional para seleccionar los archivos que se deben copiar.
            Valor predeterminado = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Sincroniza el contenido de los directorios especificados, también eliminará cualquier archivo y directorio en el destino que no exista en el origen |
| `-Move` | SwitchParameter | — | — | Named | — | Se moverán en lugar de copiar todos los archivos del origen al destino |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | También copiará la propiedad, los descriptores de seguridad y la información de auditoría de archivos y directorios |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Copia solo archivos del origen y omite subdirectorios (sin recursión) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | No copia directorios si estarían vacíos *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | proyecto/
├── src/
│   ├── main/
│   │   └── java/
│   └── test/
│       └── java/
├── config/
├── docs/
└── scripts/ *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Create directory tree and zero-length files only |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | No copies enlaces simbólicos, uniones ni el contenido al que apuntan |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | No copiar enlaces simbólicos de archivos, pero seguir las uniones de directorios |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | En lugar de copiar el contenido al que apuntan los enlaces simbólicos, copia los propios enlaces |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | No copies de uniones de directorios (enlaces simbólicos a carpetas) ni el contenido al que apuntan *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | En lugar de copiar el contenido al que apuntan las uniones, copia las uniones mismas *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Copiará todos los archivos incluso si son más antiguos que los del destino |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Copia solo los archivos que tienen el atributo de archivo establecido |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Además de copiar solo los archivos que tienen el atributo de archivo configurado, luego restablecerá este atributo en el origen |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Excluye cualquier archivo que coincida con alguno de estos nombres/rutas/comodines 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Exclude any directories that matches any of these names/paths/wildcards *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Copy only files that have all these attributes set [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Excluir archivos que tengan alguno de estos atributos establecidos [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Establecerá los atributos dados a los archivos copiados [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Will remove the given attributes from copied files [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Only copy the top n levels of the source directory tree *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Omitir archivos que tengan un tamaño inferior a n bytes |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Omitir archivos que sean más grandes de n bytes |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Omitir archivos que no tengan al menos: n días de antigüedad o creados antes de la fecha n (si n < 1900, entonces n = n días, de lo contrario n = fecha YYYYMMDD) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Omitir archivos que sean más antiguos de: n días O creados después de la fecha n (si n < 1900 entonces n = n días, si no, n = fecha AAAAMMDD) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Skip files that are accessed within the last: n days OR before n date (if n < 1900 then n = n days, else n = YYYYMMDD date) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Skip files that have not been accessed in: n days OR after n date (if n < 1900 then n = n days, else n = YYYYMMDD date) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Se detendrá brevemente y reintentará cuando ocurran errores de E/S durante la copia |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Permanecerá activo después de copiar, y copiará cambios adicionales después de un umbral predeterminado de 10 minutos |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Ejecutar de nuevo en n minutos, si ha cambiado |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Ejecutar de nuevo cuando se vean más de n cambios |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Horas de funcionamiento: momentos en que se pueden iniciar nuevas copias, hora de inicio, rango 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Horas de funcionamiento: momentos en que se pueden iniciar nuevas copias, hora de finalización, rango 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Si se especifica, el registro también se realizará en el archivo especificado |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Don't append to the specified logfile, but overwrite instead |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Incluir todos los nombres de directorios escaneados en la salida |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Include all scanned file names in output, even skipped onces |
| `-Unicode` | SwitchParameter | — | — | Named | — | STATUS as UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Activa la optimización para copiar archivos grandes |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Mejora el rendimiento realizando copias multihilo |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Si es posible, utiliza compresión al copiar archivos entre servidores para ahorrar ancho de banda y tiempo |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Cuando se establece, utilizará la coincidencia de marcas de tiempo en milisegundos en lugar de la tolerancia predeterminada de 2 segundos |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Anula, elimina o agrega cualquier parámetro especificado de robocopy.

Uso:

Agregar o reemplazar parámetro:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Eliminar parámetro:

    -Override -/Switch

Múltiples anulaciones:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Related Links

- [Start-RoboCopy on GitHub](https://github.com/genXdev/genXdev)
