# Open-VlcMediaPlayer

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlc

## Synopsis

> Inicia e controla o VLC Media Player com opções de configuração extensas.

## Description

Esta função fornece uma interface abrangente para iniciar e controlar o VLC Media Player com suporte para posicionamento de janela, seleção de monitor, configurações de reprodução, filtros de áudio e vídeo, manipulação de legendas, suporte a vários idiomas, configurações de proxy de rede e opções avançadas de desempenho. A função pode instalar automaticamente o VLC se não estiver presente e oferece ampla personalização para cenários de playbook de mídia. Ela se integra perfeitamente ao sistema de gerenciamento de janelas do GenXdev e suporta automação de entrada de teclado através da funcionalidade Send-Key.

## Syntax

```powershell
Open-VlcMediaPlayer [[-Path] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-FocusWindow] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-KeysToSend <String[]>] [-Left] [-Loop] [-Maximize] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-PassThru] [-PlayAndExit] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | — | — | 0 | — | O(s) arquivo(s) de mídia ou URL(s) para abrir no VLC |
| `-Width` | Int32 | — | — | 1 | `-1` | A largura inicial da janela |
| `-Height` | Int32 | — | — | 2 | `-1` | A altura inicial da janela |
| `-X` | Int32 | — | — | 3 | `-999999` | A posição inicial X da janela |
| `-Y` | Int32 | — | — | 4 | `-999999` | A posição Y inicial da janela |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | Teclas a serem enviadas para a Janela do VLC Player, consulte a documentação do cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys to VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter ao invés de Enter ao enviar teclas para o VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | Atraso em milissegundos entre diferentes strings de entrada ao enviar teclas para o VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Manter o foco do teclado na janela do VLC após enviar teclas |
| `-Monitor` | Int32 | — | — | Named | `-1` | O monitor a ser usado, 0 = padrão, -1 é descartar |
| `-AspectRatio` | String | — | — | Named | — | Proporção de aspecto da origem |
| `-Crop` | String | — | — | Named | — | Corte de vídeo |
| `-SubtitleFile` | String | — | — | Named | — | Use arquivo de legenda |
| `-SubtitleScale` | Int32 | — | — | Named | — | Fator de escala do texto das legendas |
| `-SubtitleLanguage` | String | — | — | Named | — | Idioma da legenda |
| `-AudioLanguage` | String | — | — | Named | — | Idioma do áudio |
| `-PreferredAudioLanguage` | String | — | — | Named | — | Idioma de áudio preferido |
| `-HttpProxy` | String | — | — | Named | — | Proxy HTTP |
| `-HttpProxyPassword` | String | — | — | Named | — | Senha do proxy HTTP |
| `-VerbosityLevel` | Int32 | — | — | Named | — | Nível de verbosidade |
| `-SubdirectoryBehavior` | String | — | — | Named | — | Comportamento de subdiretório |
| `-IgnoredExtensions` | String | — | — | Named | — | Extensões ignoradas |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | Caminho para o executável do VLC |
| `-ReplayGainMode` | String | — | — | Named | — | Modo de ganho de replay |
| `-ReplayGainPreamp` | Single | — | — | Named | — | Pré-amplificação de ganho de reprodução |
| `-ForceDolbySurround` | String | — | — | Named | — | Detecção forçada de Dolby Surround |
| `-AudioFilters` | String[] | — | — | Named | — | Filtros de áudio |
| `-Visualization` | String | — | — | Named | — | Visualizações de áudio |
| `-Deinterlace` | String | — | — | Named | — | Desentrelaçar |
| `-DeinterlaceMode` | String | — | — | Named | — | Modo de desentrelaçamento |
| `-VideoFilters` | String[] | — | — | Named | — | Módulo de filtro de vídeo |
| `-VideoFilterModules` | String[] | — | — | Named | — | Módulos de filtro de vídeo |
| `-Modules` | String[] | — | — | Named | — | Módulos |
| `-AudioFilterModules` | String[] | — | — | Named | — | Módulos de filtro de áudio |
| `-AudioVisualization` | String | — | — | Named | — | Modo de visualização de áudio |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | Idioma de legenda preferido |
| `-IgnoredFileExtensions` | String | — | — | Named | — | Extensões de arquivo ignoradas |
| `-Arguments` | String | — | — | Named | — | Argumentos adicionais |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove as bordas da janela |
| `-Left` | SwitchParameter | — | — | Named | — | Coloque a janela no lado esquerdo da tela |
| `-Right` | SwitchParameter | — | — | Named | — | Coloque a janela no lado direito da tela |
| `-Top` | SwitchParameter | — | — | Named | — | Posicione a janela no lado superior da tela |
| `-Bottom` | SwitchParameter | — | — | Named | — | Coloque a janela na parte inferior da tela |
| `-Centered` | SwitchParameter | — | — | Named | — | Colocar a janela no centro da tela |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Envia F11 para a janela |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retorna o helper da janela para cada processo |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | Sempre no topo |
| `-Random` | SwitchParameter | — | — | Named | — | Reproduzir arquivos aleatoriamente para sempre |
| `-Loop` | SwitchParameter | — | — | Named | — | Translate the following text into pt-BR. IMPORTANT TRANSLATION RULES:
1. Analyze the input format first - it could be code, markup, structured data, or plain text.
2. Preserve all syntax, structure, and technical elements like programming keywords, tags, or data format specific elements.
3. Only translate human-readable text portions like comments, string values, documentation, or natural language content.
4. Maintain exact formatting, indentation, and line breaks.
5. Never translate identifiers, function names, variables, or technical keywords. 

You are a helpful assistant designed to output JSON.
## Response Format

Reply with JSON object ONLY. |
| `-Repeat` | SwitchParameter | — | — | Named | — | Repeat current item |
| `-StartPaused` | SwitchParameter | — | — | Named | — | Iniciado pausado |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | Jogar e sair |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | Desativar áudio |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | Desativar legendas |
| `-AutoScale` | SwitchParameter | — | — | Named | — | Dimensionamento Automático de Vídeo |
| `-HighPriority` | SwitchParameter | — | — | Named | — | Aumente a prioridade do processo |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | Ativar alongamento de áudio |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Abrir nova instância do VLC media player |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | Ativar modo de papel de parede de vídeo |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | Habilitar alongamento de tempo de áudio |
| `-Close` | SwitchParameter | — | — | Named | — | Feche a janela do reprodutor de mídia VLC |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Isso definirá a janela em modo tela cheia em um monitor diferente do PowerShell, ou lado a lado com o PowerShell no mesmo monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela do VLC após abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Definir a janela do VLC como primeiro plano após abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximize a janela |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco da janela do PowerShell após abrir o VLC |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |

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
