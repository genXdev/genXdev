# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces

## Synopsis

> Salva imagens de rostos recortadas dos resultados de pesquisa de imagens indexadas.

## Description

Esta função recebe resultados de pesquisa de imagens e extrai/salva regiões faciais individuais como arquivos de imagem separados. Ela pode pesquisar rostos usando vários critérios e salvá-los em um diretório de saída especificado. A função suporta pesquisa por descrição, palavras-chave, pessoas, objetos, cenas, tipo de imagem, tipo de estilo e clima geral. Também pode filtrar por nudez e conteúdo explícito.

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Corresponderá a qualquer um de todos os possíveis tipos de metadados. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | O texto de descrição a ser procurado, curingas permitidos. |
| `-Keywords` | String[] | — | — | Named | `@()` | As palavras-chave a serem procuradas, curingas são permitidos. |
| `-People` | String[] | — | — | Named | `@()` | Pessoas para procurar, curingas permitidos. |
| `-Objects` | String[] | — | — | Named | `@()` | Objetos a serem procurados, curingas permitidos. |
| `-Scenes` | String[] | — | — | Named | `@()` | Cenas a serem procuradas, curingas permitidos. |
| `-PictureType` | String[] | — | — | Named | `@()` | Tipos de imagem para filtrar, curingas permitidos. |
| `-StyleType` | String[] | — | — | Named | `@()` | Tipos de estilo para filtrar, curingas permitidos. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Moods gerais para filtrar, curingas permitidos. |
| `-DatabaseFilePath` | String | — | — | Named | — | Caminho para o arquivo do banco de dados SQLite. |
| `-Language` | String | — | — | Named | — | Idioma para descrições e palavras-chave. |
| `-PathLike` | String[] | — | — | Named | `@()` | Array de strings de busca no formato de diretório para filtrar imagens por caminho (padrões SQL LIKE, ex. '%\2024\%') |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | Aceita resultados de pesquisa de uma chamada -PassThru anterior para regenerar a visualização. |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | Diretório para salvar imagens de rostos recortados. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filtre imagens que contenham nudez. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filtrar imagens que NÃO contenham nudez. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filtrar imagens que contenham conteúdo explícito. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filtrar imagens que NÃO contenham conteúdo explícito. |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | Força a reconstrução do banco de dados de índices de imagens. |
| `-GeoLocation` | Double[] | — | — | Named | — | Coordenadas geográficas [latitude, longitude] para pesquisar perto. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Distância máxima em metros da GeoLocalização para buscar imagens. |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | Também salve pessoas desconhecidas detectadas como objetos. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA, como Idioma, coleções de Imagens, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Não use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |

## Examples

### Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"

```powershell
Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"
```

### saveimagefaces -Any "vacation" -SaveUnknownPersons

```powershell
saveimagefaces -Any "vacation" -SaveUnknownPersons
```

## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Save-FoundImageFaces on GitHub](https://github.com/genXdev/genXdev)
