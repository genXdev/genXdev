# Test-DeepLinkImageFile

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Testa se o caminho de arquivo especificado é um arquivo de imagem válido com um formato suportado.

## Description

Esta função valida que um arquivo existe no caminho especificado e possui uma extensão de arquivo de imagem suportada. Ela verifica formatos de imagem comuns, incluindo PNG, JPG, JPEG, GIF, BMP, WebP, TIFF e TIF. A função lança exceções para caminhos inválidos ou formatos de arquivo não suportados.

## Syntax

```powershell
Test-DeepLinkImageFile -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | O caminho do arquivo para o arquivo de imagem a ser testado |

## Examples

### Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"

```powershell
Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"
```

### Test-DeepLinkImageFile "C:\Images\logo.png"

```powershell
Test-DeepLinkImageFile "C:\Images\logo.png"
```

## Related Links

- [Test-DeepLinkImageFile on GitHub](https://github.com/genXdev/genXdev)
