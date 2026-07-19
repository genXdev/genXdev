# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> Pesquisa por arquivos de imagem e metadados em diretórios especificados com capacidades de filtragem e exibição opcional de galeria baseada em navegador.

## Description

Pesquisa por arquivos de imagem (jpg, jpeg, png, gif, bmp, webp, tiff, tif) no diretório especificado e seus subdiretórios. Para cada imagem, verifica os arquivos description.json, keywords.json, people.json e objects.json associados em busca de metadados. Pode filtrar imagens com base em correspondências de palavras-chave, reconhecimento de pessoas e detecção de objetos, retornando os resultados como objetos. Use -ShowInBrowser para exibir os resultados em um layout de alvenaria baseado em navegador.

Lógica de Parâmetros:
- Dentro de cada tipo de parâmetro (Palavras-chave, Pessoas, Objetos, etc.): Usa lógica OU
  Exemplo: -Keywords "gato","cachorro" encontra imagens com GATO OU CACHORRO
- Entre diferentes tipos de parâmetros: Usa lógica E
  Exemplo: -Keywords "gato" -People "João" encontra imagens com gato E João
- Parâmetros de intervalo EXIF: Forneça valores [mín, máx] para filtrar intervalos
- Parâmetros de string: Suportam correspondência curinga com * e ?

A função pesquisa em diretórios de imagem e examina fluxos de dados alternativos contendo metadados em formato JSON. Pode corresponder palavras-chave usando padrões curinga, filtrar por pessoas específicas e pesquisar objetos detectados. Por padrão, retorna objetos de dados de imagem. Use -ShowInBrowser para exibir em um navegador web.

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Corresponderá a qualquer um de todos os possíveis tipos de metadados. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Array de caminhos de diretório para pesquisar imagens |
| `-Language` | String | — | — | Named | — | Idioma para descrições e palavras-chave. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | ('O texto de descrição a ser procurado, com curingas permitidos.') |
| `-Keywords` | String[] | — | — | Named | `@()` | As palavras-chave a serem procuradas, curingas são permitidos. |
| `-People` | String[] | — | — | Named | `@()` | Pessoas para procurar, curingas permitidos. |
| `-Objects` | String[] | — | — | Named | `@()` | Objetos a serem procurados, curingas permitidos. |
| `-Scenes` | String[] | — | — | Named | `@()` | Categorias de cena para procurar, curingas permitidos. |
| `-PictureType` | String[] | — | — | Named | `@()` | The `-PictureType` parameter. |
| `-StyleType` | String[] | — | — | Named | `@()` | Tipo de estilo para filtrar (por exemplo, 'casual', 'formal', etc.). Aceita caracteres curinga. |
| `-OverallMood` | String[] | — | — | Named | `@()` | The `-OverallMood` parameter. |
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
| `-KeysToSend` | String[] | — | — | Named | — | ('Teclas a enviar para a janela do navegador, ' +
                'veja a documentação do cmdlet GenXdev\Send-Key') |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape caracteres de controle e modificadores ao enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | ('Impedir que o foco do teclado retorne ao PowerShell ' +
                'após enviar teclas') |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter em vez de Enter ao enviar teclas |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso entre diferentes strings de entrada em milissegundos ao enviar teclas |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela do navegador após abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Trazer a janela do navegador para o primeiro plano após abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar a janela após o posicionamento |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar a janela ao estado normal após o posicionamento |
| `-Monitor` | Int32 | — | — | Named | `-2` | ('O monitor a ser usado, 0 = padrão, -1 é descartar, ' +
                '-2 = Monitor secundário configurado, padrão é ' +
                "`Global:DefaultSecondaryMonitor ou 2 se não encontrado") |
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
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | Exiba os resultados da pesquisa em uma galeria de imagens baseada no navegador. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retorna dados de imagem como objetos. Quando usado com '-ShowInBrowser', tanto exibe a galeria quanto retorna os objetos. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remova bordas da janela e barra de título para uma aparência mais limpa |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador lado a lado com o PowerShell no mesmo monitor |
| `-Interactive` | SwitchParameter | — | — | Named | — | ('Conectará ao navegador e adicionará botões adicionais ' +
                'como Editar e Excluir. Efetivo apenas quando usado com ' +
                '-ShowInBrowser.') |
| `-Private` | SwitchParameter | — | — | Named | — | Abre no modo de navegação anônima/privada |
| `-Force` | SwitchParameter | — | — | Named | — | ('Forçar ativação da porta de depuração, encerrando ' +
                'navegadores existentes se necessário') |
| `-Edge` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Abre no Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge ou Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Abre no Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Use o navegador gerenciado pelo Playwright em vez do navegador instalado no sistema operacional |
| `-Webkit` | SwitchParameter | — | — | Named | — | ('Abre o navegador WebKit gerenciado pelo Playwright. ' +
                'Implica -PlayWright') |
| `-Headless` | SwitchParameter | — | — | Named | — | Execute o navegador sem uma janela visível |
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
| `-NewWindow` | SwitchParameter | — | — | Named | — | ("Não reutilize a janela do navegador existente, em vez disso, " +
                "crie uma nova") |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | ('Retorne apenas o HTML gerado em vez de exibi-lo em um navegador.') |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | 'Mostre apenas imagens em um retângulo arredondado, sem texto abaixo.' |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA, como Idioma, coleções de imagens, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ('Configurações alternativas claras armazenadas na sessão para ' +
                'preferências de IA como Idioma, Coleções de Imagens, etc') |
| `-SkipSession` | SwitchParameter | — | — | Named | — | ('Não use configurações alternativas armazenadas na sessão ' +
                'para preferências de IA como Idioma, coleções de imagens, etc') |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Role a página automaticamente por este número de pixels por segundo (nulo para desativar) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animar retângulos (objetos/faces) no intervalo visível, ciclando a cada 300ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forçar layout de coluna única (centralizado, 1/3 da largura da tela) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Prefixo a ser adicionado a cada caminho de imagem (ex.: para URLs remotas) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | ('Proporção mínima de confiança (0,0-1,0) para filtrar ' +
                'pessoas, cenas e objetos por confiança. Retorna apenas dados para ' +
                'pessoas, cenas e objetos com confiança maior ou igual ' +
                'a este valor.') |

## Examples

### Find-Image -Keywords "cat","dog" -Name "C:\Photos\*" Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

```powershell
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.
```

### findimages cat,dog "C:\Photos" Same as above using the alias and positional parameters.

```powershell
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.
```

### Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser Searches for photos containing John OR Jane and displays them in a web gallery.

```powershell
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*" Searches for images that contain vacation keywords AND John as a person AND beach objects. All three criteria must be met (AND logic between parameter types).

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).
```

### Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*" Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8. EXIF parameters use range filtering with [min, max] values.

```powershell
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.
```

### Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

```powershell
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.
```

### findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

```powershell
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*" Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.
```

### Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

```powershell
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.
```

### Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

```powershell
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.
```

### Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*" Searches for daylight photos with a calm/peaceful mood and returns the image objects.

```powershell
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.
```

### findimages -StyleType "casual" -HasNudity -Name "C:\Art\*" Searches for casual style images that contain nudity and returns the data objects.

```powershell
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.
```

### Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*" Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.

```powershell
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
```

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
