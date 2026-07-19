# Open-VlcMediaPlayer

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlc

## Synopsis

> Inicia y controla VLC Media Player con amplias opciones de configuración.

## Description

Esta función proporciona una interfaz completa para iniciar y controlar VLC Media Player con soporte para posicionamiento de ventanas, selección de monitor, configuración de reproducción, filtros de audio y vídeo, manejo de subtítulos, soporte multilingüe, configuración de proxy de red y opciones avanzadas de rendimiento. La función puede instalar VLC automáticamente si no está presente y ofrece una amplia personalización para escenarios de guiones multimedia. Se integra perfectamente con el sistema de gestión de ventanas de GenXdev y admite la automatización de entrada de teclado mediante la funcionalidad Send-Key.

## Syntax

```powershell
Open-VlcMediaPlayer [[-Path] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-FocusWindow] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-KeysToSend <String[]>] [-Left] [-Loop] [-Maximize] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-PassThru] [-PlayAndExit] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | — | — | 0 | — | Los archivos multimedia o la(s) URL(s) para abrir en VLC |
| `-Width` | Int32 | — | — | 1 | `-1` | El ancho inicial de la ventana |
| `-Height` | Int32 | — | — | 2 | `-1` | La altura inicial de la ventana |
| `-X` | Int32 | — | — | 3 | `-999999` | La posición inicial X de la ventana |
| `-Y` | Int32 | — | — | 4 | `-999999` | La posición inicial Y de la ventana |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | Keystrokes to send to the VLC Player Window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar caracteres de control y modificadores al enviar teclas a VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys to VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | Retardo entre diferentes cadenas de entrada en milisegundos al enviar teclas a VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantén el foco del teclado en la ventana de VLC después de enviar las teclas |
| `-Monitor` | Int32 | — | — | Named | `-1` | El monitor a usar, 0 = predeterminado, -1 es descartar |
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
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Coloca la ventana en la parte superior de la pantalla. |
| `-Bottom` | SwitchParameter | — | — | Named | — | Colocar ventana en la parte inferior de la pantalla |
| `-Centered` | SwitchParameter | — | — | Named | — | Place window in the center of the screen |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Envía F11 a la ventana |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve el ayudante de ventana para cada proceso |
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
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell después de abrir VLC |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0 Opens a video file in fullscreen mode on the primary monitor for immersive viewing experience.

```powershell
Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0
Opens a video file in fullscreen mode on the primary monitor for immersive
viewing experience.
```

### vlc "video.mp4" -fs -m 0 Short form using aliases to open video fullscreen on monitor 0 with minimal typing required.

```powershell
vlc "video.mp4" -fs -m 0
Short form using aliases to open video fullscreen on monitor 0 with minimal
typing required.
```

### Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English" Opens a movie with external subtitles and specific audio language for enhanced viewing with captions.

```powershell
Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English"
Opens a movie with external subtitles and specific audio language for
enhanced viewing with captions.
```

## Related Links

- [Open-VlcMediaPlayer on GitHub](https://github.com/genXdev/genXdev)
