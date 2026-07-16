# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | O script para executar e analisar erros |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array de definições de funções |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | Array de definições de comandos PowerShell para usar como ferramentas |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array de nomes de comandos que não requerem confirmação |
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
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-Attachments` | Object | — | — | Named | — | Anexos a serem incluídos na consulta LLM. |
| `-ImageDetail` | Object | — | — | Named | — | Nível de detalhe da imagem para consulta ao LLM. |
| `-TTLSeconds` | Object | — | — | Named | — | Tempo de vida (time-to-live) em segundos para a consulta LLM. |
| `-IncludeThoughts` | Object | — | — | Named | — | Inclua os pensamentos do modelo na resposta da LLM. |
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | ```markdown
# Heading 1

This is a paragraph with some **bold** and *italic* text.

## Heading 2

- List item 1
- List item 2

``` |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | {"type":"json_schema","json_schema":{"name":"text_transformation_response","strict":true,"schema":{"required":["response"],"properties":{"response":{"type":"string","description":"The transformed text output"}},"type":"object"}}} |
| `-ChatOnce` | Object | — | — | Named | — | Execute o chat apenas uma vez para a consulta do LLM. |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | Comprimento máximo de retorno de chamada de ferramenta para consulta LLM. |
| `-AudioTemperature` | Object | — | — | Named | — | Temperatura para geração de áudio. |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperatura para geração de resposta. |
| `-Language` | Object | — | — | Named | — | Idioma para consulta de LLM. |
| `-CpuThreads` | Object | — | — | Named | — | Número de threads da CPU a serem usados. |
| `-SuppressRegex` | Object | — | — | Named | — | Expressão regular para suprimir saída. |
| `-AudioContextSize` | Object | — | — | Named | — | Tamanho do contexto de áudio para consulta LLM. |
| `-SilenceThreshold` | Object | — | — | Named | — | Limite de silêncio para processamento de áudio. |
| `-LengthPenalty` | Object | — | — | Named | — | Penalidade de comprimento para saída do LLM. |
| `-EntropyThreshold` | Object | — | — | Named | — | Limiar de entropia para saída do LLM. |
| `-LogProbThreshold` | Object | — | — | Named | — | Limite de probabilidade de log para saída do LLM. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Nenhum limite de fala para processamento de áudio. |
| `-DontSpeak` | Object | — | — | Named | — | Não fale saída de áudio. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Bem-vindo! Você pode usar o assistente `aplicar_mudanca_tag_html` para transformar seu texto. Ele funciona da seguinte forma:
- Você fornece um texto e instruções sobre como transformar uma tag HTML específica.
- O assistente retorna o texto transformado.

Por exemplo:

**Entrada do usuário:**
"Por favor, coloque a tag <div> no texto a seguir em itálico: Olá mundo"

**Saída do assistente:**
"<i>Olá mundo</i>"

Por favor, forneça seu texto e as instruções para transformação da tag HTML. |
| `-NoVOX` | Object | — | — | Named | — | Desative o VOX para saída de áudio. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Use captura de áudio da área de trabalho. |
| `-NoContext` | Object | — | — | Named | — | Não use contexto para consulta de LLM. |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Use a estratégia de amostragem de busca em feixe. |
| `-OnlyResponses` | Object | — | — | Named | — | {
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

## Outputs

- `Object[]`

## Related Links

- [Get-ScriptExecutionErrorFixPrompt on GitHub](https://github.com/genXdev/genXdev)
