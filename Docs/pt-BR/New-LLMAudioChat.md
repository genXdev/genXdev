# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Texto de consulta inicial para enviar ao modelo |
| `-Instructions` | String | — | — | 1 | — | Instruções do sistema para o modelo |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de caminhos de arquivos para anexar |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | Tipo de modelo Whisper a ser usado, padrão é LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | Temperatura para reconhecimento de entrada de áudio (0,0-1,0) |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | O parâmetro de temperatura para controlar a aleatoriedade da resposta. |
| `-LanguageIn` | String | — | — | Named | — | Define o idioma a ser detectado |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Número de threads da CPU a ser usado, padrão é 0 (automático) |
| `-SuppressRegex` | String | — | — | Named | `$null` | Expressão regular para suprimir tokens da saída |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | Limiar de detecção de silêncio (0..32767, padrão 30) |
| `-LengthPenalty` | Single | — | — | Named | — | Penalidade de comprimento |
| `-EntropyThreshold` | Single | — | — | Named | — | Limiar de entropia |
| `-LogProbThreshold` | Single | — | — | Named | — | Limiar de probabilidade logarítmica |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Limiar de fala ausente |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nível de detalhe da imagem |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
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
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | Irá gerar apenas blocos de marcação dos tipos especificados |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array de definições de comandos PowerShell para usar como ferramentas |
| `-Functions` | ScriptBlock[] | — | — | Named | — | Matriz de bloco de script de funções de ferramenta a serem expostas ao LLM (passagem direta para Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Array de nomes de funções de ferramentas que não requerem confirmação (passagem direta para Invoke-LLMQuery) |
| `-ChatMode` | String | — | — | Named | — | Modo de chat para consulta LLM (passagem para Invoke-LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Tamanho máximo de retorno da chamada de ferramenta (pass-through para Invoke-LLMQuery) |
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
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Desative a conversão de texto em fala para respostas de IA |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desativar conversão de texto em fala para respostas de pensamento da IA |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Não use a detecção de silêncio para interromper automaticamente a gravação. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Se deve usar captura de áudio da área de trabalho em vez de entrada do microfone |
| `-AudioDevice` | String | — | — | Named | — | Nome ou GUID do dispositivo de áudio (aceita curingas, escolhe a primeira correspondência) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Use ambos: desktop e dispositivo de gravação |
| `-NoContext` | SwitchParameter | — | — | Named | — | Não use contexto |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use a estratégia de amostragem por beam search |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Se deve suprimir o texto reconhecido na saída |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Não armazenar sessão no cache de sessão |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |

## Related Links

- [New-LLMAudioChat on GitHub](https://github.com/genXdev/genXdev)
