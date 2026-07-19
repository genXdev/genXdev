# Invoke-LLMQuery

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `qllm, `llm

## Synopsis

> Envia consultas para uma API de conclusão de chat de Large Language Model compatível com OpenAI e processa respostas.

## Description

Esta função envia consultas para uma API de Chat de Large Language Model compatível com OpenAI e processa as respostas. Ela suporta entradas de texto e imagem, lida com chamadas de funções de ferramenta e pode operar em vários modos de chat, incluindo texto e áudio.

A função fornece suporte abrangente para interação LLM, incluindo:
- Processamento de entrada de texto e imagem
- Chamada de funções de ferramenta e execução de comandos
- Modos de chat interativos (texto e áudio)
- Inicialização e configuração do modelo
- Formatação e processamento de respostas
- Gerenciamento de sessão e cache
- Posicionamento de janela e controle de exibição

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | Texto de consulta para enviar ao modelo |
| `-Instructions` | String | — | — | 1 | — | Instruções do sistema para o modelo |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de caminhos de arquivos para anexar |
| `-ResponseFormat` | String | — | — | Named | — | {
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
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array de definições de funções |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array de definições de comandos PowerShell para usar como ferramentas |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Funções de ferramenta que não exigem confirmação do usuário |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nível de detalhe da imagem |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para aleatoriedade na geração de áudio |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para aleatoriedade da resposta (chat de áudio) |
| `-Language` | String | — | — | Named | — | Código ou nome do idioma para chat de áudio |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de threads da CPU a serem usados para o chat de áudio |
| `-SuppressRegex` | String | — | — | Named | — | Expressão regular para suprimir certas saídas em chat de áudio |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio para chat de áudio |
| `-SilenceThreshold` | Double | — | — | Named | — | Limiar de silêncio para chat de áudio |
| `-LengthPenalty` | Double | — | — | Named | — | Penalidade de comprimento para respostas de chat de áudio |
| `-EntropyThreshold` | Double | — | — | Named | — | Limiar de entropia para chat de áudio |
| `-LogProbThreshold` | Double | — | — | Named | — | Limiar de probabilidade logarítmica para chat de áudio |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Sem limite de fala para chat por áudio |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Não fale respostas de áudio |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Não fale pensamentos em áudio |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desative o VOX (ativação por voz) para o chat de áudio |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Usar captura de áudio da área de trabalho para bate-papo por áudio |
| `-NoContext` | SwitchParameter | — | — | Named | — | Desabilitar contexto para chat de áudio |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use a estratégia de busca por feixe para chat de áudio |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | { "type": "json_schema", "json_schema": { "name": "text_transformation_response", "strict": true, "schema": { "required": ["response"], "properties": { "response": { "type": "string", "description": "The transformed text output" } }, "type": "object" } } } |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Excluir processos de pensamento do histórico da conversa |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Desculpe, parece que a conversa anterior não foi fornecida. Por favor, compartilhe o contexto ou a mensagem anterior para que eu possa continuar. |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar conversão de texto em fala para respostas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Ativar conversão de texto em fala para respostas de pensamento da IA |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | Irá gerar apenas blocos de marcação dos tipos especificados |
| `-ChatMode` | String | — | — | Named | — | Ativar modo de chat |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Usado internamente, para invocar o modo de chat apenas uma vez após a invocação do llm |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Não armazenar sessão no cache de sessão |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | Comprimento máximo da saída do callback da ferramenta em caracteres. Saídas que excederem este comprimento serão truncadas com uma mensagem de aviso. O padrão é 100000 caracteres. |

## Examples

### Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7

```powershell
Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7
```

Envia uma consulta matemática simples para o modelo qwen com temperatura especificada.

### qllm "What is 2+2?" -Model "qwen"

```powershell
qllm "What is 2+2?" -Model "qwen"
```

Usa o alias para enviar uma consulta com parâmetros padrão.

### Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"

```powershell
Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"
```

Envia uma consulta com um anexo de imagem para análise.

### llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"

```powershell
llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"
```

Inicia uma sessão interativa de chat de texto com o modelo especificado.

## Related Links

- [Invoke-LLMQuery on GitHub](https://github.com/genXdev/genXdev)
