# Get-MediaFileCreationDate

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Extrai a melhor data de criação disponível para arquivos de mídia e outros arquivos.

## Description

Tenta várias estratégias para determinar uma data precisa de criação ou captura para o arquivo especificado. As estratégias incluem ler os metadados EXIF da imagem, extrair informações de data/hora dos nomes de arquivo e, como fallback, usar a hora da última gravação do arquivo quando nenhuma outra informação confiável estiver disponível. A função sempre retorna um [DateTime]; quando nenhuma data pode ser determinada, retorna [DateTime]::MinValue.

## Syntax

```powershell
Get-MediaFileCreationDate -FilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The `-FilePath` parameter. |

## Examples

### Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'

```powershell
Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'
```

## Related Links

- [Get-MediaFileCreationDate on GitHub](https://github.com/genXdev/genXdev)
