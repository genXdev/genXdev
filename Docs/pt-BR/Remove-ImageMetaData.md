# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> Remove arquivos de metadados de imagens dos diretórios de imagens.

## Description

A função Remove-ImageMetaData remove arquivos de metadados JSON complementares que estão associados a imagens. Ela pode remover seletivamente apenas palavras-chave (description.json), dados de pessoas (people.json), dados de objetos (objects.json) ou dados de cenas (scenes.json), ou remover todos os arquivos de metadados se nenhum parâmetro específico for fornecido. Arquivos de metadados específicos de idioma podem ser removidos especificando o parâmetro Language, e todas as variações de idioma podem ser removidas usando o parâmetro AllLanguages.

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | — | Array de caminhos de diretórios para processar remoção de metadados de imagem. Se não especificado, usa os diretórios padrão do sistema. |
| `-Language` | String | — | — | 1 | — | O idioma para remover arquivos de metadados específicos do idioma. |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-Recurse` | SwitchParameter | — | — | Named | — | Recursar diretórios. |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | Only remove description.json files (keywords/descriptions). |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | Remova apenas os arquivos people.json (dados de reconhecimento facial). |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | Remova apenas os arquivos objects.json (dados de detecção de objetos). |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | Remova apenas os arquivos scenes.json (dados de classificação de cena). |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | Remova os arquivos de metadados para todos os idiomas suportados. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA, como Idioma, coleções de Imagens, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Não use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

Remove todos os arquivos de metadados de imagens em vários diretórios e todos os subdiretórios.

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

Remove apenas arquivos description.json de diretórios e subdiretórios padrão do sistema.

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

Remove apenas os arquivos people.json do diretório MyPhotos.

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

Remove recursivamente os arquivos de descrição em inglês e espanhol dos diretórios padrão.

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

Usa alias para remover arquivos de palavras-chave para todos os idiomas suportados.

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
