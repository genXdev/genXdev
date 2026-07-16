# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageObjectsUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Language <String>] [-LLMQueryType <String>] [-Model <String>] [-OnlyNew] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Os caminhos dos diretórios contendo imagens para processar |
| `-Recurse` | SwitchParameter | — | — | Named | — | Processa imagens no diretório especificado e em todos os subdiretórios |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Processe apenas imagens que ainda não possuem arquivos de metadados faciais |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Tentará novamente as atualizações de palavras-chave de imagem que falharam anteriormente |
| `-Language` | String | — | — | Named | — | O idioma para descrições e palavras-chave geradas |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)
