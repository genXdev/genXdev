# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Corresponderá a qualquer um de todos os possíveis tipos de metadados. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Array de caminhos de diretório para pesquisar imagens |
| `-Language` | String | — | — | Named | — | Idioma para descrições e palavras-chave. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | O texto de descrição a ser procurado, curingas permitidos. |
| `-Keywords` | String[] | — | — | Named | `@()` | As palavras-chave a serem procuradas, curingas são permitidos. |
| `-People` | String[] | — | — | Named | `@()` | Pessoas para procurar, curingas permitidos. |
| `-Objects` | String[] | — | — | Named | `@()` | Objetos a serem procurados, curingas permitidos. |
| `-Scenes` | String[] | — | — | Named | `@()` | Categorias de cena para procurar, curingas permitidos. |
| `-PictureType` | String[] | — | — | Named | `@()` | Tipo de imagem para filtrar (por exemplo, 'daylight', 'evening', 'indoor', etc). Suporta curingas. |
| `-StyleType` | String[] | — | — | Named | `@()` | Tipo de estilo para filtrar (por exemplo, 'casual', 'formal', etc). Suporta curingas. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Clima geral para filtrar (por exemplo, 'calmo', 'alegre', 'triste', etc). Aceita curingas. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | Filtrar por fabricante da câmera nos metadados EXIF da imagem. Suporta curingas. |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | Filtrar por modelo de câmera nos metadados EXIF da imagem. Suporta curingas. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | Filtrar por faixa de latitude GPS nos metadados EXIF da imagem. |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | Filtrar por faixa de longitude GPS nos metadados EXIF da imagem. |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | Filtrar por faixa de altitude GPS nos metadados EXIF da imagem (em metros). |
| `-GeoLocation` | Double[] | — | — | Named | — | Coordenadas geográficas [latitude, longitude] para pesquisar perto. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Distância máxima em metros da GeoLocalização para buscar imagens. |
| `-MetaExposureTime` | Double[] | — | — | Named | — | Filtrar por faixa de tempo de exposição nos metadados EXIF da imagem (em segundos). |
| `-MetaFNumber` | Double[] | — | — | Named | — | Filtrar por faixa de número f (abertura) nos metadados EXIF da imagem. |
| `-MetaISO` | Int32[] | — | — | Named | — | Filtrar por faixa de sensibilidade ISO nos metadados EXIF da imagem. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | Filtrar por faixa de distância focal nos metadados EXIF da imagem (em mm). |
| `-MetaWidth` | Int32[] | — | — | Named | — | Filtrar por faixa de largura da imagem em pixels dos metadados EXIF. |
| `-MetaHeight` | Int32[] | — | — | Named | — | Filtrar por intervalo de altura da imagem em pixels dos metadados EXIF. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | Filtrar por data obtida dos metadados EXIF. Pode ser um intervalo de datas. |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Título para a galeria |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Descrição para a galeria |
| `-AcceptLang` | String | — | — | Named | `$null` | Definir o cabeçalho HTTP Accept-Language do navegador |
| `-KeysToSend` | String[] | — | — | Named | — | Teclas a serem enviadas para a janela do navegador, consulte a documentação do cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape caracteres de controle e modificadores ao enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Evitar que o foco do teclado retorne ao PowerShell após enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso entre diferentes strings de entrada em milissegundos ao enviar teclas |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela do navegador após abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Trazer a janela do navegador para o primeiro plano após abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar a janela após o posicionamento |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar a janela ao estado normal após o posicionamento |
| `-Monitor` | Int32 | — | — | Named | `-2` | O monitor a ser usado, 0 = padrão, -1 é descartar, -2 = Monitor secundário configurado, o padrão é Global:DefaultSecondaryMonitor ou 2 se não encontrado |
| `-Width` | Int32 | — | — | Named | `-1` | A largura inicial da janela do navegador |
| `-Height` | Int32 | — | — | Named | `-1` | A altura inicial da janela do navegador web |
| `-X` | Int32 | — | — | Named | `-999999` | A posição inicial X da janela do navegador web |
| `-Y` | Int32 | — | — | Named | `-999999` | A posição Y inicial da janela do navegador web |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Incorpore imagens como base64. |
| `-NoFallback` | SwitchParameter | — | — | Named | — | Chave para desabilitar o comportamento de fallback. |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | Opção para pular a inicialização e reconstrução do banco de dados. |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Pesquisar em todas as unidades disponíveis |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Não recorrer a subdiretórios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Siga links simbólicos e junctions durante a travessia de diretórios. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidade máxima de recursão para travessia de diretórios. 0 significa ilimitado. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profundidade máxima de recursão para continuar pesquisando para cima na árvore em buscas relativas, enquanto nenhum item é encontrado. 0 significa desativado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamanho máximo do arquivo em bytes a ser incluído nos resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamanho mínimo de arquivo em bytes para incluir nos resultados. 0 significa sem mínimo. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Incluir apenas arquivos modificados após esta data/hora (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Incluir apenas arquivos modificados antes desta data/hora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Atributos de arquivo a serem ignorados (por exemplo, Sistema, Oculto ou Nenhum). |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filtre imagens que contenham nudez. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filtrar imagens que NÃO contenham nudez. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filtrar imagens que contenham conteúdo explícito. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filtrar imagens que NÃO contenham conteúdo explícito. |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | Exiba os resultados da pesquisa em uma galeria de imagens baseada em navegador. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retorna dados de imagem como objetos. Quando usado com -ShowInBrowser, exibe a galeria e retorna os objetos. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remova bordas da janela e barra de título para uma aparência mais limpa |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador lado a lado com o PowerShell no mesmo monitor |
| `-Interactive` | SwitchParameter | — | — | Named | — | Conecta-se ao navegador e adiciona botões extras, como Editar e Excluir. Só é eficaz quando usado com -ShowInBrowser. |
| `-Private` | SwitchParameter | — | — | Named | — | Abre no modo de navegação anônima/privada |
| `-Force` | SwitchParameter | — | — | Named | — | Forçar ativação da porta de depuração, interrompendo navegadores existentes se necessário |
| `-Edge` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Abre no Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge ou Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Abre no Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Abre em todos os navegadores modernos registrados |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Abre em modo de tela cheia |
| `-Left` | SwitchParameter | — | — | Named | — | Colocar janela do navegador no lado esquerdo da tela |
| `-Right` | SwitchParameter | — | — | Named | — | Posicione a janela do navegador no lado direito da tela |
| `-Top` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador na parte superior da tela |
| `-Bottom` | SwitchParameter | — | — | Named | — | Posicione a janela do navegador na parte inferior da tela |
| `-Centered` | SwitchParameter | — | — | Named | — | Colocar a janela do navegador no centro da tela |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar os controles do navegador |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Impedir o carregamento de extensões do navegador |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desabilitar o bloqueador de pop-ups |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco da janela do PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Não reutilize a janela do navegador existente; em vez disso, crie uma nova. |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | Only return the generated HTML instead of displaying it in a browser. |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, with no text below. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA, como Idioma, coleções de Imagens, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Não use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Role a página automaticamente por este número de pixels por segundo (nulo para desativar) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animar retângulos (objetos/faces) no intervalo visível, ciclando a cada 300ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forçar layout de coluna única (centralizado, 1/3 da largura da tela) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Prefixo a ser adicionado a cada caminho de imagem (ex.: para URLs remotas) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | Rácio mínimo de confiança (0,0-1,0) para filtrar pessoas, cenas e objetos por confiança. Retorna apenas dados de pessoas, cenas e objetos com confiança maior ou igual a este valor. |

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
