# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]]> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]] | ✅ | ✅ (ByValue) | 0 | — | The `-Images` parameter. |
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

## Outputs

- `String`

## Related Links

- [GenerateMasonryLayoutHtml on GitHub](https://github.com/genXdev/genXdev)
