# Invoke-AIPowershellCommand

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `hint

## Synopsis

> Gera e executa comandos do PowerShell usando assistência de IA.

## Description

Usa modelos de IA para gerar comandos PowerShell com base em consultas em linguagem natural. A função pode enviar comandos diretamente para a janela do PowerShell ou copiá-los para a área de transferência. Ela aproveita modelos de IA para interpretar linguagem natural e convertê-la em comandos PowerShell executáveis, com suporte abrangente a parâmetros para vários backends de IA.

## Syntax

```powershell
Invoke-AIPowershellCommand -Query <String> [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | A consulta em linguagem natural para gerar um comando para |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de caminhos de arquivos para anexar |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nível de detalhe da imagem |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array de definições de funções |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array de definições de comandos PowerShell para usar como ferramentas |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array de nomes de comandos que não requerem confirmação |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
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
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para aleatoriedade da resposta de áudio (passada para LLMQuery) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para geração de resposta (passado para LLMQuery) |
| `-Language` | String | — | — | Named | — | Código de idioma ou nome para processamento (passado para LLMQuery) |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de threads da CPU a serem usados (passados para LLMQuery) |
| `-SuppressRegex` | String | — | — | Named | — | Expressão regular para suprimir saída (passada para LLMQuery) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio para processamento (passado para LLMQuery) |
| `-SilenceThreshold` | Double | — | — | Named | — | Limiar de silêncio para detecção de áudio (passado para LLMQuery) |
| `-LengthPenalty` | Double | — | — | Named | — | Penalidade de comprimento para geração de sequência (passada para LLMQuery) |
| `-EntropyThreshold` | Double | — | — | Named | — | Limiar de entropia para filtragem de saída (passado para LLMQuery) |
| `-LogProbThreshold` | Double | — | — | Named | — | Limiar de probabilidade logarítmica para filtragem de saída (passado para LLMQuery) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nenhum limite de fala para detecção de áudio (passado para LLMQuery) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Desativar saída de fala (enviada para LLMQuery) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desativar saída de fala para pensamentos (passado para LLMQuery) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desativar VOX (ativação por voz) (passado para LLMQuery) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Usar captura de áudio da área de trabalho (passada para LLMQuery) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Desabilitar uso de contexto (passado para LLMQuery) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Habilitar estratégia de amostragem por busca em feixe (passado para LLMQuery) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Only responses (passed to LLMQuery) |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | {(llmquery "Translate the following text into pt-BR: Output only markup blocks")} |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtro para tipos de bloco de marcação (passado para LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Comprimento máximo do callback de ferramenta (passado para LLMQuery) |

## Examples

### Invoke-AIPowershellCommand -Query "list all running processes"

```powershell
Invoke-AIPowershellCommand -Query "list all running processes"
```

Gera um comando PowerShell para listar processos em execução

### hint "list files modified today"

```powershell
hint "list files modified today"
```

Use o alias para gerar um comando para encontrar arquivos modificados hoje.

### Invoke-AIPowershellCommand -Query "stop service" -Clipboard

```powershell
Invoke-AIPowershellCommand -Query "stop service" -Clipboard
```

Gera um comando para parar um serviço e o copia para a área de transferência.

## Outputs

- `Void`

## Related Links

- [Invoke-AIPowershellCommand on GitHub](https://github.com/genXdev/genXdev)
