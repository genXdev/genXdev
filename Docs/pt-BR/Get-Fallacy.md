# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | The `-InputObject` parameter. |
| `-Instructions` | String | — | — | 1 | `''` | Instruções para o modelo de IA sobre como gerar a lista de strings |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de caminhos de arquivos para anexar |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array de definições de funções |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nível de detalhe da imagem |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array de nomes de comandos que não requerem confirmação |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array de definições de comandos PowerShell para usar como ferramentas |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Desculpe, parece que a conversa anterior não foi fornecida. Por favor, compartilhe o contexto ou a mensagem anterior para que eu possa continuar. |
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
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Não armazenar sessão no cache de sessão |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Abre pesquisas no IMDB para cada resultado |
| `-AudioTemperature` | Double | — | — | Named | — | Controla a temperatura para geração de áudio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Controla a temperatura para geração de respostas. |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de threads de CPU a serem usados para processamento. |
| `-SuppressRegex` | String | — | — | Named | — | Expressão regular para suprimir determinadas saídas. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio para processamento. |
| `-SilenceThreshold` | Double | — | — | Named | — | Limiar para detectar silêncio em áudio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalidade aplicada a respostas mais longas. |
| `-EntropyThreshold` | Double | — | — | Named | — | Limiar para entropia na geração de resposta. |
| `-LogProbThreshold` | Double | — | — | Named | — | Limiar de probabilidade de log para saída. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Threshold para detecção de ausência de fala em áudio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Impede que a resposta seja falada. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Impede que o modelo expresse seus pensamentos. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desativa o VOX (ativação por voz). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use captura de áudio do desktop para entrada. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Desabilita o contexto para a solicitação. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use a estratégia de amostragem de busca em feixe. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Você é um assistente útil projetado para gerar JSON.
## Formato da Resposta

Responda apenas com um objeto JSON. Nenhum outro texto é permitido. |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar conversão de texto em fala para respostas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Ativar conversão de texto em fala para respostas de pensamento da IA |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Comprimento máximo de retorno de chamada para chamadas de ferramenta. |

## Outputs

- `Object[]`

## Related Links

- [Get-Fallacy on GitHub](https://github.com/genXdev/genXdev)
