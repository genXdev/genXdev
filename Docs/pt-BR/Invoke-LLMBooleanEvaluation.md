# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `equalstrue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Você é um assistente útil projetado para gerar JSON. |
| `-Instructions` | String | — | — | 1 | `''` | Instruções para o modelo de IA sobre como avaliar a afirmação |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de caminhos de arquivos para anexar |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nível de detalhe da imagem |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array de definições de funções |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array de definições de comandos PowerShell para usar como ferramentas |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array de nomes de comandos que não requerem confirmação |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copiar resultado para a área de transferência |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Don't add model thoughts to conversation history |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Desculpe, parece que a conversa anterior não foi fornecida. Por favor, compartilhe o contexto ou a mensagem anterior para que eu possa continuar. |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar conversão de texto em fala para respostas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Ativar conversão de texto em fala para respostas de pensamento da IA |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Não armazenar sessão no cache de sessão |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Permitir que a IA use ferramentas e capacidades padrão |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Retorne apenas blocos de marcação na saída |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para aleatoriedade da resposta de áudio |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para geração de resposta |
| `-Language` | String | — | — | Named | — | pt-BR |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de threads de CPU a serem usadas para processamento |
| `-SuppressRegex` | String | — | — | Named | — | Expressão regular para suprimir da saída |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio para processamento |
| `-SilenceThreshold` | Double | — | — | Named | — | Limiar de silêncio para detecção de áudio |
| `-LengthPenalty` | Double | — | — | Named | — | Penalidade de comprimento para geração de sequência |
| `-EntropyThreshold` | Double | — | — | Named | — | Limiar de entropia para filtragem de saída |
| `-LogProbThreshold` | Double | — | — | Named | — | Limiar de probabilidade logarítmica para filtragem de saída |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nenhum limite de fala para detecção de áudio |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Desativar saída de fala |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desativar saída de fala para pensamentos |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desativar VOX (ativação por voz) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use captura de áudio da área de trabalho para entrada |
| `-NoContext` | SwitchParameter | — | — | Named | — | Não use contexto na consulta |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use a estratégia de amostragem por beam search |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | O texto traduzido vai aqui. Caso não haja entrada, retorne uma string vazia. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Outputs

- `Boolean`

## Related Links

- [Invoke-LLMBooleanEvaluation on GitHub](https://github.com/genXdev/genXdev)
