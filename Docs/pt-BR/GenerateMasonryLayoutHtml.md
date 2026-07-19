# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Gera uma galeria HTML de layout masonry responsiva a partir de dados de imagem.

## Description

Cria uma galeria HTML interativa com layout de grade responsivo estilo masonry para exibir imagens. Os recursos incluem:
- Layout de grade responsivo que se adapta ao tamanho da tela
- Dicas de ferramentas nas imagens mostrando descrições e palavras-chave
- Funcionalidade de clicar para copiar o caminho da imagem
- Estilo moderno e limpo com efeitos de hover

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | The `-Images` parameter. |
| `-FilePath` | String | — | — | 1 | `$null` | Caminho de saída para o arquivo HTML gerado |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Título para a galeria |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | Descrição para a galeria |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | Se a edição está habilitada |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | Se a exclusão está habilitada |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | Incorpore imagens como URLs de dados base64 em vez de URLs file:// para melhor portabilidade |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, with no text below. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Role a página automaticamente por este número de pixels por segundo (nulo para desativar) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animar retângulos (objetos/faces) no intervalo visível, ciclando a cada 300ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forçar layout de coluna única (centralizado, 1/3 da largura da tela) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Prefixo a ser adicionado a cada caminho de imagem (ex.: para URLs remotas) |
| `-PageSize` | Int32 | — | — | Named | `20` | Número de imagens para carregar por página (para carregamento dinâmico) |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | Número máximo de imagens a carregar para o modo de impressão |
| `-RootMargin` | String | — | — | Named | `'1200px'` | IntersectionObserver rootMargin para gatilho de rolagem infinita (ex.: "1200px") |
| `-Threshold` | Double | — | — | Named | `0.1` | Limiar do IntersectionObserver para disparo de rolagem infinita |

## Examples

### Create gallery from image array and save to file $images = @(     @{         path = "C:\photos\sunset.jpg"         keywords = @("nature", "sunset", "landscape")         description = @{             short_description = "Mountain sunset"             long_description = "Beautiful sunset over mountain range"         }     } ) GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"

```powershell
Create gallery from image array and save to file
$images = @(
    @{
        path = "C:\photos\sunset.jpg"
        keywords = @("nature", "sunset", "landscape")
        description = @{
            short_description = "Mountain sunset"
            long_description = "Beautiful sunset over mountain range"
        }
    }
)
GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"
```

### Generate HTML string without saving $html = GenerateMasonryLayoutHtml $images

```powershell
Generate HTML string without saving
$html = GenerateMasonryLayoutHtml $images
```

## Outputs

- `String`

## Related Links

- [GenerateMasonryLayoutHtml on GitHub](https://github.com/genXdev/genXdev)
