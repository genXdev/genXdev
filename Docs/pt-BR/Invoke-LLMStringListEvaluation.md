# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `getlist, `getstring

## Synopsis

> Extrai ou gera uma lista de strings relevantes de um texto de entrada usando análise de IA.

## Description

Esta função utiliza modelos de IA para analisar texto de entrada e extrair ou gerar uma lista de strings relevantes. Ela pode processar texto para identificar pontos-chave, extrair itens de listas ou gerar conceitos relacionados. A entrada pode ser fornecida diretamente por meio de parâmetros, da pipeline ou da área de transferência do sistema. A função retorna um array de strings e, opcionalmente, copia os resultados para a área de transferência.

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Você é um assistente útil projetado para gerar JSON.
## Formato de Resposta

Responda APENAS com um objeto JSON. Nenhum outro texto é permitido.
Não inclua nenhuma explicação, comentário ou texto antes ou depois do JSON.
Sua resposta deve ser parseável como JSON e estar em conformidade EXATA com este esquema:
{
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
}

Exemplo de formato de resposta: {"response":"sua resposta real aqui"} |
| `-Instructions` | String | — | — | 1 | `''` | Instruções para o modelo de IA sobre como gerar a lista de strings |
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
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Não adicione os pensamentos do modelo ao histórico da conversa |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Desculpe, parece que a conversa anterior não foi fornecida. Por favor, compartilhe o contexto ou a mensagem anterior para que eu possa continuar. |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar conversão de texto em fala para respostas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Ativar conversão de texto em fala para respostas de pensamento da IA |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Não armazenar sessão no cache de sessão |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Habilitar ferramentas padrão para o modelo de IA |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Retorne apenas blocos de marcação na saída. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para aleatoriedade da resposta de áudio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para aleatoriedade da resposta de texto. |
| `-Language` | String | — | — | Named | — | pt-BR |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de threads da CPU a serem usados. |
| `-SuppressRegex` | String | — | — | Named | — | Expressão regular para suprimir determinadas saídas. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio para processamento. |
| `-SilenceThreshold` | Double | — | — | Named | — | Limiar de silêncio para detecção de áudio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalidade de comprimento para geração de sequência. |
| `-EntropyThreshold` | Double | — | — | Named | — | Limiar de entropia para filtragem de saída. |
| `-LogProbThreshold` | Double | — | — | Named | — | Limiar de probabilidade logarítmica para filtragem de saída. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nenhum limite de fala para detecção de áudio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Desabilite a saída de fala. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desative a saída de fala para pensamentos. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desativar VOX (ativação por voz). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use captura de áudio da área de trabalho. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Desativar uso de contexto. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use a estratégia de amostragem de busca em feixe. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Você é um assistente útil projetado para gerar JSON. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Comprimento máximo de retorno de chamada para chamadas de ferramenta. |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Outputs

- `String[]`

## Related Links

- [Invoke-LLMStringListEvaluation on GitHub](https://github.com/genXdev/genXdev)
