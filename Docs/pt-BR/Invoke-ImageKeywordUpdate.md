# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Os caminhos dos diretórios contendo imagens para processar |
| `-Recurse` | SwitchParameter | — | — | Named | — | Processa imagens no diretório especificado e em todos os subdiretórios |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Processe apenas imagens que ainda não possuem arquivos de metadados faciais |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Tentará novamente as atualizações de palavras-chave de imagem que falharam anteriormente |
| `-Language` | String | — | — | Named | — | O idioma para descrições e palavras-chave geradas |
| `-FacesDirectory` | String | — | — | Named | — | O diretório contendo imagens de rostos organizadas por pastas de pessoas. Se não especificado, usa a preferência de diretório de rostos configurada. |
| `-Instructions` | String | — | — | 2 | — | Instruções do sistema para o modelo |
| `-ResponseFormat` | String | — | — | Named | `$null` | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Nível de detalhe da imagem |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "A saída de texto transformada"
        }
      },
      "type": "object"
    }
  }
} |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-Functions` | String[] | — | — | Named | — | Especifica as funções a serem usadas para a operação de IA. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Especifica os cmdlets expostos para a operação de IA. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Especifica os nomes das funções de ferramenta que não exigem confirmação. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Se especificado, desabilita o uso de contexto. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Comprimento máximo de retorno de chamada para chamadas de ferramenta. |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru para retornar objetos estruturados em vez de enviar para o console |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detecta alterações no diretório de faces e re-registra as faces se necessário |

## Related Links

- [Invoke-ImageKeywordUpdate on GitHub](https://github.com/genXdev/genXdev)
