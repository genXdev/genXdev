# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
