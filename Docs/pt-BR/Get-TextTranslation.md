# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Você é um assistente prestativo projetado para gerar JSON. |
| `-Instructions` | String | — | — | 1 | — | Instruções adicionais para orientar o modelo de IA no estilo de tradução e contexto |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de caminhos de arquivos para anexar |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nível de detalhe da imagem |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array de definições de funções |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array de definições de comandos PowerShell para usar como ferramentas |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array de nomes de comandos que não requerem confirmação |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copiar o texto aprimorado para a área de transferência |
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
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Não armazenar sessão no cache de sessão |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Permitir o uso de ferramentas de IA padrão durante o processamento |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para aleatoriedade da resposta de áudio (passada para o LLM) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para geração de resposta (passada para o LLM) |
| `-Language` | String | — | — | Named | — | pt-BR |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de threads da CPU a serem usados (passado para o LLM) |
| `-SuppressRegex` | String | — | — | Named | — | Expressão regular para suprimir a saída (passada ao LLM) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio para processamento (passado para o LLM) |
| `-SilenceThreshold` | Double | — | — | Named | — | Limiar de silêncio para detecção de áudio (passado para o LLM) |
| `-LengthPenalty` | Double | — | — | Named | — | Penalidade de comprimento para geração de sequência (passada para o LLM) |
| `-EntropyThreshold` | Double | — | — | Named | — | Limiar de entropia para filtragem de saída (passado para o LLM) |
| `-LogProbThreshold` | Double | — | — | Named | — | Limiar de probabilidade logarítmica para filtragem de saída (passado para o LLM) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nenhum limite de fala para detecção de áudio (passado para o LLM) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Desativar saída de fala (passada para o LLM) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desabilitar saída de fala para pensamentos (passados para o LLM) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desativar VOX (ativação por voz) (passado para o LLM) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use captura de áudio do desktop (passada para o LLM) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Desabilitar uso de contexto (passado para o LLM) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Habilita estratégia de amostragem por busca em feixe (passada para o LLM) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses (passed to LLM) |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Output only markup blocks (passed to LLM) |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtrar por tipos de bloco de marcação (passado para o LLM) |
| `-NoCache` | SwitchParameter | — | — | Named | — | Pule o cache de tradução; sempre chame a API do LLM |
| `-ClearCache` | SwitchParameter | — | — | Named | — | Limpar todo o cache de tradução para todos os idiomas |

## Outputs

- `String`

## Related Links

- [Get-TextTranslation on GitHub](https://github.com/genXdev/genXdev)
