# Open-MediaFile

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `vlcmedia, `media, `findmedia

## Synopsis

> Abre e reproduz arquivos de mídia usando o VLC media player com opções avançadas de filtragem e configuração.

## Description

Esta função busca arquivos de mídia com base em padrões de pesquisa, cria uma playlist e inicia o VLC media player com opções abrangentes de configuração. Ela suporta vídeos, arquivos de áudio e imagens, com instalação automática do VLC, se necessário. A função oferece controle extenso sobre o comportamento de reprodução, posicionamento da janela, configurações de áudio/vídeo e gerenciamento de legendas.

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | Nome do arquivo ou padrão a ser pesquisado. O padrão é '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Pesquisar em todas as unidades disponíveis |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Não recorrer a subdiretórios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Siga links simbólicos e junctions durante a travessia de diretórios. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profundidade máxima de recursão para continuar pesquisando para cima na árvore em buscas relativas, enquanto nenhum item é encontrado. 0 significa desativado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamanho máximo do arquivo em bytes a ser incluído nos resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamanho mínimo de arquivo em bytes para incluir nos resultados. 0 significa sem mínimo. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Incluir apenas arquivos modificados após esta data/hora (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Incluir apenas arquivos modificados antes desta data/hora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Atributos de arquivo a serem ignorados (por exemplo, Sistema, Oculto ou Nenhum). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nome do arquivo ou padrão a ser pesquisado a partir da entrada do pipeline. O padrão é "*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | Caminho da playlist para salvar os arquivos de mídia. Se não especificado, a playlist será salva em um diretório temporário. |
| `-Width` | Int32 | — | — | 1 | `-1` | A largura inicial da janela |
| `-Height` | Int32 | — | — | 2 | `-1` | A altura inicial da janela |
| `-X` | Int32 | — | — | 3 | `-999999` | A posição inicial X da janela |
| `-Y` | Int32 | — | — | 4 | `-999999` | A posição Y inicial da janela |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | Teclas a serem enviadas para a Janela do VLC Player, consulte a documentação do cmdlet GenXdev\Send-Key |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Grau máximo de paralelismo para tarefas de diretório |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opcional: tempo limite de cancelamento em segundos |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys to VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter ao invés de Enter ao enviar teclas para o VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso em milissegundos entre diferentes strings de entrada ao enviar teclas para o VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Manter o foco do teclado na janela do VLC após enviar teclas |
| `-Monitor` | Int32 | — | — | Named | `-2` | O monitor a ser usado, 0 = padrão, -1 é descartar |
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
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Incluir fluxos de dados alternativos nos resultados da pesquisa |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | Inclua apenas arquivos de vídeo na playlist |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | Inclua apenas arquivos de áudio na playlist |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | Inclua apenas imagens na playlist |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Além disso, inclua vídeos na playlist |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Além disso, inclua arquivos de áudio na playlist |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Além disso, inclua imagens na playlist |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove as bordas da janela |
| `-Left` | SwitchParameter | — | — | Named | — | Coloque a janela no lado esquerdo da tela |
| `-Right` | SwitchParameter | — | — | Named | — | Coloque a janela no lado direito da tela |
| `-Top` | SwitchParameter | — | — | Named | — | Posicione a janela no lado superior da tela |
| `-Bottom` | SwitchParameter | — | — | Named | — | Coloque a janela na parte inferior da tela |
| `-Centered` | SwitchParameter | — | — | Named | — | Colocar a janela no centro da tela |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Envia F11 para a janela |
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
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaura o foco da janela do PowerShell após abrir o VLC. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Obtém ou define a diferenciação entre maiúsculas e minúsculas para arquivos e diretórios |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidade máxima de recursão para travessia de diretórios. 0 significa ilimitado. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | Exclua arquivos ou diretórios que correspondam a esses padrões curinga (por exemplo, *.tmp, *\bin\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retorna os arquivos encontrados pela pesquisa |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | Retorna os arquivos encontrados pela busca sem abrir o VLC |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | Retorna o helper da janela para cada processo |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

Abre todos os arquivos de mídia no diretório atual usando as configurações padrão do VLC.

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

Abre apenas arquivos de imagem da pasta Imagens em modo de tela cheia usando o alias 'vlcmedia'.

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

Abre arquivos de vídeo com repetição ativada usando o alias 'media'.

## Related Links

- [Open-MediaFile on GitHub](https://github.com/genXdev/genXdev)
