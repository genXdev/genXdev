# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Define as configurações do LLM para operações de IA no GenXdev.AI.

## Description

Isso f        [int] $TimeoutSeconds,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Se o endpoint não suporta o formato de resposta json_schema'
        )]
        [switch] $NoSupportForJsonSchema,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Se o endpoint não suporta a funcionalidade de upload de imagem'
        )]
        [switch] $NoSupportForImageUpload,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Se o endpoint não suporta a funcionalidade de chamada de ferramenta'
        )]
        [switch] $NoSupportForToolCalls,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Armazenar as configurações apenas na sessão atual, sem ' +
                'persistir')
        )]
        [switch] $SessionOnly,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Limpar configurações alternativas armazenadas na sessão para ' +
                'preferências de IA')
        )]
        [switch] $ClearSession,res as configurações do LLM (Modelo de Linguagem Grande) usadas pelo
módulo GenXdev.AI para várias operações de IA. As configurações podem ser armazenadas de forma persistente
nas preferências (padrão), apenas na sessão atual (usando -SessionOnly), ou
limpas da sessão (usando -ClearSession). A função valida que pelo menos
um parâmetro de configuração é fornecido, a menos que esteja limpando as configurações da sessão.

## Syntax

```powershell
Set-AILLMSettings -LLMQueryType <String> [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [-ClearSession] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | ✅ | — | 0 | — | O tipo de consulta LLM |
| `-Model` | String | — | — | 1 | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | 7 | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | 8 | — | A chave de API para operações de IA autenticadas |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | N/A |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Se o endpoint não suporta funcionalidade de upload de imagem |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Se o endpoint não suporta funcionalidade de chamada de ferramenta |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |

## Examples

### Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"

```powershell
Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"
```

Define persistentemente as configurações do LLM para o tipo de consulta de Codificação nas preferências.

### Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly

```powershell
Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly
```

Define as configurações do LLM para o SimpleIntelligence apenas para a sessão atual.

### Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession

```powershell
Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession
```

Limpa as configurações da sessão LLM para o tipo de consulta Pictures sem afetar
preferências persistentes.

### Set-AILLMSettings "Coding" "*Qwen*14B*"

```powershell
Set-AILLMSettings "Coding" "*Qwen*14B*"
```

Define as configurações do LLM para o tipo de consulta de codificação usando parâmetros posicionais.
##############################################################################

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
