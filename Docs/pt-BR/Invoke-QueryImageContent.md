# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Analisa o conteúdo da imagem usando recursos de visão de IA

## Description

Processa imagens usando capacidades de visão de IA para analisar conteúdo e responder a perguntas sobre a imagem. A função suporta vários parâmetros de análise, incluindo controle de temperatura para aleatoriedade da resposta e limites de tokens para o comprimento da saída.

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | A string de consulta para analisar a imagem |
| `-ImagePath` | String | ✅ | — | 1 | — | Caminho para o arquivo de imagem para análise |
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
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para geração de resposta de áudio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para a geração da resposta. |
| `-Language` | String | — | — | Named | — | O idioma para descrições e palavras-chave geradas |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de threads da CPU a serem usados. |
| `-SuppressRegex` | String | — | — | Named | — | Expressão regular para suprimir saída. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio para processamento. |
| `-SilenceThreshold` | Double | — | — | Named | — | Limite de silêncio para processamento de áudio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalidade de comprimento para geração de sequência. |
| `-EntropyThreshold` | Double | — | — | Named | — | Limiar de entropia para filtragem de saída. |
| `-LogProbThreshold` | Double | — | — | Named | — | Limiar de probabilidade logarítmica para filtragem de saída. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nenhum limite de fala para detecção de áudio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Se especificado, não fale a saída. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Bem-vindo(a). Caso especificado, não fale os pensamentos do modelo. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Se especificado, desativa o VOX. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Se especificado, use a captura de áudio da área de trabalho. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Se especificado, desabilita o uso de contexto. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Se especificado, use a estratégia de amostragem de beam search. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Se especificado, retorne apenas respostas. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Se especificado, não adicione pensamentos ao histórico. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Desculpe, não há conversa anterior para continuar. Como posso ajudar hoje? |
| `-Speak` | SwitchParameter | — | — | Named | — | Fale a saída. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Fale os pensamentos do modelo. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Eu sou uma assistente de IA projetada para ser útil, inofensiva e honesta. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtrar por tipos de bloco de marcação. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Se especificado, converse apenas uma vez. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Desabilitar o cache de sessão. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Comprimento máximo de retorno de chamada para chamadas de ferramenta. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force um prompt de consentimento mesmo se a preferência estiver definida para a instalação do pacote ImageSharp. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir flag persistente para pacotes ImageSharp. |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

Analyzes an image with specific temperature and token limits.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

Análise de imagem simples usando alias e parâmetros posicionais.

## Related Links

- [Invoke-QueryImageContent on GitHub](https://github.com/genXdev/genXdev)
