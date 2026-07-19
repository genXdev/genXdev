# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize

## Synopsis

> Converte linguagem diplomática ou educada em linguagem direta, clara e objetiva.

## Description

Esta função pega o discurso diplomático e o traduz para revelar o verdadeiro significado por trás de linguagem educada ou politicamente correta. Ela usa modelos de linguagem de IA para transformar expressões eufemísticas em declarações diretas, tornando a comunicação inequívoca e fácil de entender. A função é particularmente útil para analisar declarações políticas, comunicações empresariais ou qualquer texto onde o significado real possa estar obscurecido por linguagem diplomática.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | O texto a ser convertido do discurso diplomático |
| `-Instructions` | String | — | — | 1 | `''` | Instruções adicionais para o modelo de IA |
| `-Temperature` | Double | — | — | Named | `0.0` | Temperatura para aleatoriedade da resposta (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copiar o texto transformado para a área de transferência |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-Attachments` | Object[] | — | — | Named | — | Anexos a serem incluídos na operação de IA. |
| `-ImageDetail` | String | — | — | Named | — | Nível de detalhe da imagem para processamento de IA. |
| `-Functions` | Object[] | — | — | Named | — | Funções para expor ao modelo de IA. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlets para expor ao modelo de IA. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Nomes de função de ferramenta que não exigem confirmação. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Não adicione pensamentos ao histórico da IA. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {
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
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Fale pensamentos em voz alta durante o processamento de IA. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Desative o cache de sessão para esta operação. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Permitir o uso de ferramentas padrão na operação de IA. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura de áudio para geração de áudio por IA. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para geração da resposta da IA. |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de threads de CPU a serem usados para operação de IA. |
| `-SuppressRegex` | String[] | — | — | Named | — | Expressão regular para suprimir na saída da IA. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio para processamento de áudio com IA. |
| `-SilenceThreshold` | Double | — | — | Named | — | Limite de silêncio para processamento de áudio por IA. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalidade de comprimento para geração de sequência por IA. |
| `-EntropyThreshold` | Double | — | — | Named | — | Limiar de entropia para saída de IA. |
| `-LogProbThreshold` | Double | — | — | Named | — | Limiar de probabilidade logarítmica para saída de IA. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nenhum limite de fala para processamento de áudio por IA. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Não fale a saída da IA. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Você é um assistente útil projetado para gerar JSON. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desabilitar VOX para saída de áudio da IA. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use captura de áudio da área de trabalho para áudio com IA. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Não use contexto para operação de IA. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use a estratégia de amostragem por busca em feixe para IA. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Retornar apenas respostas da IA. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Você é um assistente útil projetado para gerar JSON. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtrar tipos de bloco de marcação na saída de IA. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Comprimento máximo de retorno de chamada para chamadas de ferramenta. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Outputs

- `String`

## Related Links

- [ConvertFrom-DiplomaticSpeak on GitHub](https://github.com/genXdev/genXdev)
