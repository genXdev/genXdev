# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-AILLMSettings -LLMQueryType <String> [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [-ClearSession] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | ✅ | — | 0 | — | O tipo de consulta LLM |
| `-Model` | String | — | — | 1 | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | 7 | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | 8 | — | A chave de API para operações de IA autenticadas |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | N/A |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Se o endpoint não suporta funcionalidade de upload de imagem |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Se o endpoint não suporta funcionalidade de chamada de ferramenta |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
