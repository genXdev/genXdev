# Test-RefactorLLMSelection

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Avalia arquivos fonte para elegibilidade de refatoração usando análise LLM.

## Description

Utiliza análise de Modelo de Aprendizado de Linguagem (LLM) para determinar se um arquivo de código-fonte deve ser selecionado para refatoração com base em critérios especificados. A função processa o conteúdo do arquivo por meio de uma consulta LLM e retorna uma resposta booleana.

## Syntax

```powershell
Test-RefactorLLMSelection -RefactorDefinition <GenXdev.Helpers.RefactorDefinition> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RefactorDefinition` | GenXdev.Helpers.RefactorDefinition | ✅ | — | 0 | — | A definição de refatoração contendo as configurações do LLM |
| `-Path` | String | ✅ | — | 1 | — | O caminho para o arquivo de origem a ser avaliado |

## Examples

### Test-RefactorLLMSelection -RefactorDefinition $refDef -Path "C:\source.ps1"

```powershell
Test-RefactorLLMSelection -RefactorDefinition $refDef -Path "C:\source.ps1"
```

### $def | Test-RefactorLLMSelection -Path source.ps1

```powershell
$def | Test-RefactorLLMSelection -Path source.ps1
```

## Related Links

- [Test-RefactorLLMSelection on GitHub](https://github.com/genXdev/genXdev)
