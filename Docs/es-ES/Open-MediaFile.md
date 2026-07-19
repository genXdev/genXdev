# Open-MediaFile

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `vlcmedia, `media, `findmedia

## Synopsis

> Abre y reproduce archivos multimedia usando VLC media player con opciones avanzadas de filtrado y configuración.

## Description

Esta función escanea archivos multimedia según patrones de búsqueda, crea una lista de reproducción y lanza el reproductor multimedia VLC con opciones de configuración completas. Soporta videos, archivos de audio e imágenes con instalación automática de VLC si es necesario. La función proporciona un control extenso sobre el comportamiento de reproducción, posicionamiento de ventanas, configuración de audio/video y manejo de subtítulos.

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | Nombre de archivo o patrón a buscar. Por defecto es '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Buscar en todas las unidades disponibles |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | No recurse en subdirectorios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Seguir enlaces simbólicos y uniones durante el recorrido de directorios. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profundidad máxima de recursión para continuar buscando hacia arriba en el árbol para búsquedas relativas, mientras no se encuentren elementos. 0 significa desactivado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamaño máximo de archivo en bytes a incluir en los resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamaño mínimo de archivo en bytes para incluir en los resultados. 0 significa sin mínimo. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Incluir solo archivos modificados después de esta fecha/hora (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Incluir solo los archivos modificados antes de esta fecha/hora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Atributos de archivo a omitir (por ejemplo, Sistema, Oculto o Ninguno). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nombre de archivo o patrón a buscar desde la entrada del pipeline. El valor predeterminado es "*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | Ruta de la lista de reproducción para guardar los archivos multimedia. Si no se especifica, la lista se guardará en un directorio temporal. |
| `-Width` | Int32 | — | — | 1 | `-1` | El ancho inicial de la ventana |
| `-Height` | Int32 | — | — | 2 | `-1` | La altura inicial de la ventana |
| `-X` | Int32 | — | — | 3 | `-999999` | La posición inicial X de la ventana |
| `-Y` | Int32 | — | — | 4 | `-999999` | La posición inicial Y de la ventana |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | Keystrokes to send to the VLC Player Window, see documentation for cmdlet GenXdev\Send-Key |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grado máximo de paralelismo para tareas de directorio |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opcional: tiempo de espera de cancelación en segundos |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar caracteres de control y modificadores al enviar teclas a VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys to VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre diferentes cadenas de entrada en milisegundos al enviar teclas a VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantén el foco del teclado en la ventana de VLC después de enviar las teclas |
| `-Monitor` | Int32 | — | — | Named | `-2` | El monitor a usar, 0 = predeterminado, -1 es descartar |
| `-AspectRatio` | String | — | — | Named | — | Relación de aspecto de origen |
| `-Crop` | String | — | — | Named | — | Recorte de video |
| `-SubtitleFile` | String | — | — | Named | — | Usar archivo de subtítulos |
| `-SubtitleScale` | Int32 | — | — | Named | — | Subtitles text scaling factor |
| `-SubtitleLanguage` | String | — | — | Named | — | Idioma de subtítulos |
| `-AudioLanguage` | String | — | — | Named | — | Idioma del audio |
| `-PreferredAudioLanguage` | String | — | — | Named | — | Idioma de audio preferido |
| `-HttpProxy` | String | — | — | Named | — | Proxy HTTP |
| `-HttpProxyPassword` | String | — | — | Named | — | Contraseña del proxy HTTP |
| `-VerbosityLevel` | Int32 | — | — | Named | — | Nível de verbosidade |
| `-SubdirectoryBehavior` | String | — | — | Named | — | Comportamiento de subdirectorio |
| `-IgnoredExtensions` | String | — | — | Named | — | Extensiones ignoradas |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | Ruta al ejecutable de VLC |
| `-ReplayGainMode` | String | — | — | Named | — | Modo de ganancia de reproducción |
| `-ReplayGainPreamp` | Single | — | — | Named | — | Preamplificador de ganancia de reproducción |
| `-ForceDolbySurround` | String | — | — | Named | — | Fuerza de detección de Dolby Surround |
| `-AudioFilters` | String[] | — | — | Named | — | Filtros de audio |
| `-Visualization` | String | — | — | Named | — | Visualizaciones de audio |
| `-Deinterlace` | String | — | — | Named | — | Desentrelazar |
| `-DeinterlaceMode` | String | — | — | Named | — | Modo de desentrelazado |
| `-VideoFilters` | String[] | — | — | Named | — | Módulo de filtro de video |
| `-VideoFilterModules` | String[] | — | — | Named | — | Módulos de filtro de video |
| `-Modules` | String[] | — | — | Named | — | Módulos |
| `-AudioFilterModules` | String[] | — | — | Named | — | Módulos de filtro de audio |
| `-AudioVisualization` | String | — | — | Named | — | Modo de visualización de audio |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | Idioma de subtítulos preferido |
| `-IgnoredFileExtensions` | String | — | — | Named | — | Extensiones de archivo ignoradas |
| `-Arguments` | String | — | — | Named | — | Argumentos adicionales |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Incluir flujos de datos alternativos en los resultados de búsqueda |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | Only include video files in the playlist |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | Only include audio files in the playlist |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | Only include pictures in the playlist |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Incluye también videos en la playlist |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Además, incluye archivos de audio en la lista de reproducción |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Además, incluye imágenes en la lista de reproducción |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Coloca la ventana en la parte superior de la pantalla. |
| `-Bottom` | SwitchParameter | — | — | Named | — | Colocar ventana en la parte inferior de la pantalla |
| `-Centered` | SwitchParameter | — | — | Named | — | Place window in the center of the screen |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Envía F11 a la ventana |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | Siempre visible |
| `-Random` | SwitchParameter | — | — | Named | — | Reproducir archivos aleatoriamente para siempre |
| `-Loop` | SwitchParameter | — | — | Named | — | Repeat all |
| `-Repeat` | SwitchParameter | — | — | Named | — | Repetir elemento actual |
| `-StartPaused` | SwitchParameter | — | — | Named | — | Iniciar pausa |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | Jugar y salir |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | Desactivar audio |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | Desactivar subtítulos |
| `-AutoScale` | SwitchParameter | — | — | Named | — | Escalamiento Automático de Video |
| `-HighPriority` | SwitchParameter | — | — | Named | — | Increase the priority of the process |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | Habilitar la expansión temporal del audio |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Abrir nueva instancia de VLC media player |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | Activar modo de fondo de pantalla de video |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | Habilitar la estiramiento temporal de audio |
| `-Close` | SwitchParameter | — | — | Named | — | Cierra la ventana del reproductor multimedia VLC |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Either will set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the VLC window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Poner la ventana de VLC en primer plano después de abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restablece el foco de la ventana de PowerShell después de abrir VLC. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Obtiene o establece la sensibilidad a mayúsculas y minúsculas para archivos y directorios |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidad máxima de recursión para el recorrido de directorios. 0 significa ilimitado. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | Excluir archivos o directorios que coincidan con estos patrones comodín (por ejemplo, *.tmp, *\bin\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve los archivos encontrados por la búsqueda |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | Devuelve los archivos encontrados por la búsqueda sin abrir VLC |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | Devuelve el ayudante de ventana para cada proceso |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

Abre todos los archivos multimedia en el directorio actual usando la configuración predeterminada de VLC.

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

Abre solo archivos de imagen de la carpeta Imágenes en modo pantalla completa usando el alias 'vlcmedia'.

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

Abre archivos de video con bucle habilitado usando el alias 'media'.

## Related Links

- [Open-MediaFile on GitHub](https://github.com/genXdev/genXdev)
