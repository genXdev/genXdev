# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Obtém as configurações de LLM para operações de IA no GenXdev.AI.

## Description

Esta função recupera as configurações de LLM (Modelo de Linguagem Grande) usadas pelo módulo GenXdev.AI para várias operações de IA. As configurações são recuperadas de variáveis de sessão, preferências persistentes ou do arquivo JSON de configurações padrão, nessa ordem de precedência. A função suporta seleção automática de configuração com base nos recursos de memória do sistema disponíveis.

A estratégia de seleção de memória é determinada automaticamente com base nos parâmetros Gpu e Cpu fornecidos:
- Se ambos os parâmetros Gpu e Cpu forem especificados: Usa memória combinada de CPU + GPU
- Se apenas o parâmetro Gpu for especificado: Prefere memória da GPU (com fallback para RAM do sistema)
- Se apenas o parâmetro Cpu for especificado: Usa apenas RAM do sistema
- Se nenhum parâmetro for especificado: Usa memória combinada de CPU + GPU (padrão)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | O tipo de consulta LLM para obter configurações |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | N/A |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Se o endpoint não suporta funcionalidade de upload de imagem |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Se o endpoint não suporta funcionalidade de chamada de ferramenta |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Pular configurações de sessão e obter apenas de preferências ou padrões |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

Obtém as configurações LLM para o tipo de consulta SimpleIntelligence (padrão).

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

Obtém as configurações do LLM para o tipo de consulta de Codificação.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

Obtém as configurações do LLM das preferências ou padrões apenas, ignorando as configurações da sessão.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
