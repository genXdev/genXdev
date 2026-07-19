# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat

## Synopsis

> Inicia uma sessão de chat de texto interativo com capacidades de IA.

## Description

Inicia uma sessão de chat interativa com capacidades de IA, permitindo que os usuários adicionem ou removam funções do PowerShell durante a conversa e executem comandos do PowerShell. Esta função fornece uma interface abrangente para conversas com tecnologia de IA, com ampla integração de ferramentas e opções de personalização.

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Texto de consulta para enviar ao modelo *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | Instruções do sistema para o modelo |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de caminhos de arquivos para anexar |
| `-Temperature` | Double | — | — | 3 | `-1` | Temperatura para aleatoriedade da resposta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nível de detalhe da imagem |
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
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array de definições de comandos PowerShell para usar como ferramentas |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | Irá gerar apenas blocos de marcação dos tipos especificados |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | {
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
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Desculpe, parece que a conversa anterior não foi fornecida. Por favor, compartilhe o contexto ou a mensagem anterior para que eu possa continuar. |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar conversão de texto em fala para respostas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Ativar conversão de texto em fala para respostas de pensamento da IA |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Usado internamente, para invocar o modo de chat apenas uma vez após a invocação do llm *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Não armazenar sessão no cache de sessão |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Nomes de funções de ferramenta que não devem exigir confirmação |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Comprimento máximo para respostas de callback de ferramenta |
| `-AudioTemperature` | Object | — | — | Named | — | Temperatura para geração de áudio |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperatura para geração de resposta |
| `-Language` | Object | — | — | Named | — | Idioma para o modelo ou saída |
| `-CpuThreads` | Object | — | — | Named | — | Número de threads da CPU a usar |
| `-SuppressRegex` | Object | — | — | Named | — | Expressão regular para suprimir saída |
| `-AudioContextSize` | Object | — | — | Named | — | Tamanho do contexto de áudio para processamento |
| `-SilenceThreshold` | Object | — | — | Named | — | Limiar de silêncio para processamento de áudio |
| `-LengthPenalty` | Object | — | — | Named | — | Penalidade de comprimento para geração de sequência |
| `-EntropyThreshold` | Object | — | — | Named | — | Limiar de entropia para filtragem de saída |
| `-LogProbThreshold` | Object | — | — | Named | — | Limiar de probabilidade logarítmica para filtragem de saída |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Nenhum limite de fala para detecção de áudio |
| `-DontSpeak` | Object | — | — | Named | — | Desativar saída de fala |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Desativar saída de fala para pensamentos |
| `-NoVOX` | Object | — | — | Named | — | Desativar VOX (ativação por voz) |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Usar captura de áudio da área de trabalho |
| `-NoContext` | Object | — | — | Named | — | Desabilitar uso de contexto |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Use a estratégia de amostragem por beam search |
| `-OnlyResponses` | Object | — | — | Named | — | A saída apenas respostas |

## Examples

### New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `     -Instructions "You are a helpful AI assistant"

```powershell
New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `
    -Instructions "You are a helpful AI assistant"
```

### llmchat "Tell me a joke" -Speak -IncludeThoughts

```powershell
llmchat "Tell me a joke" -Speak -IncludeThoughts
```

## Related Links

- [New-LLMTextChat on GitHub](https://github.com/genXdev/genXdev)
