# Get-ImageGeolocation

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Extrai dados de geolocalização de um arquivo de imagem.

## Description

* Lê metadados EXIF de um arquivo de imagem para extrair suas coordenadas de latitude e longitude.
* Suporta imagens que contenham metadados GPS em seus dados EXIF.
* Usa a classe System.Drawing.Image para carregar a imagem e analisar as coordenadas GPS a partir de itens de propriedade.

## Syntax

```powershell
Get-ImageGeolocation [-ImagePath] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Caminho para o arquivo de imagem a ser analisado |

## Examples

### Example 1

```powershell
Get-ImageGeolocation -ImagePath "C:\Pictures\vacation.jpg"
```

Extrai coordenadas GPS de uma foto de férias.

### Example 2

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageGeolocation
```

Usa o pipeline para passar o caminho da imagem.

## Related Links

- [Get-ImageGeolocation on GitHub](https://github.com/genXdev/genXdev)
