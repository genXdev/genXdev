# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Obtém todas as configurações de configuração padrão disponíveis do LLM para operações de IA no GenXdev.AI.

## Description

Recupera o conjunto completo de configurações padrão de Modelo de Linguagem Grande (LLM) definidas para operações de IA. Os resultados podem ser filtrados por tipo de consulta, identificador do modelo, endpoint da API ou chave de API. Suporta recuperação baseada em sessão e em preferências persistentes, com opções para limpar o estado da sessão ou ignorá-lo completamente para ler diretamente das preferências armazenadas.

## Syntax

```powershell
Get-AIDefaultLLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | O tipo de consulta LLM para obter configurações |
| `-Model` | String | — | — | Named | — | Filtrar configurações por identificador ou padrão de modelo |
| `-ApiEndpoint` | String | — | — | Named | — | Filtrar configurações pela URL do endpoint da API |
| `-ApiKey` | String | — | — | Named | — | Filtrar configurações por chave de API |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Pular configurações de sessão e obter apenas de preferências ou padrões |

## Examples

### Get-AIDefaultLLMSettings -LLMQueryType "Coding"

```powershell
Get-AIDefaultLLMSettings -LLMQueryType "Coding"
```

Obtém todas as configurações padrão disponíveis para o tipo de consulta Coding.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)
