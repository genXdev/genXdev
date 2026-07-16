# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Escreve um objeto como JSON em um arquivo de forma atômica para evitar corrupção.

## Description

* Gravação atômica: usa uma estratégia de arquivo temporário + renomeação para garantir que o arquivo de destino nunca seja deixado em um estado corrompido se o processo for interrompido.
* Lógica de repetição: repete a gravação até MaxRetries vezes com um atraso de RetryDelayMs milissegundos entre as tentativas.
* Suporte a objetos: aceita qualquer objeto, não apenas Hashtable. Serializa via System.Text.Json com fallback para ConvertTo-Json para tipos complexos do .NET que não podem ser serializados nativamente.
* Suporte a debounce: quando DebounceMs > 0, gravações consecutivas rápidas no mesmo arquivo são coalescidas — apenas o último conteúdo é escrito depois que o arquivo não é alterado por DebounceMs ms.
* Criação de diretório: cria diretórios pais automaticamente se eles não existirem.

## Syntax

```powershell
Write-JsonFileAtomic [-FilePath] <string> [[-Data] <Object>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [-Depth <int>] [-Compress] [-AsArray] [-EnumsAsStrings] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | O caminho para o arquivo a ser escrito. |
| `-Data` | Object | — | — | 1 | — | O objeto a ser serializado como JSON e escrito no arquivo. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | O número máximo de tentativas de repetição para a operação de gravação atômica. O padrão é 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | O atraso em milissegundos entre tentativas de repetição. O padrão é 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Se maior que 0, debounce escreve neste arquivo. O padrão é 0 (desabilitado). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | A profundidade máxima para serialização JSON. O padrão é 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | Você é um assistente útil projetado para gerar JSON.
## Formato de Resposta

Responda apenas com um objeto JSON. Nenhum outro texto é permitido.

===== EXIGÊNCIA CRÍTICA DE SAÍDA JSON =====
Você DEVE responder apenas com JSON válido. NENHUM outro texto é permitido.
Não inclua nenhuma explicação, comentário ou texto antes ou depois do JSON.
Sua resposta deve ser um JSON analisável que esteja em conformidade EXATAMENTE com este esquema:
{...}

Exemplo de formato de resposta: {"response":"sua resposta real aqui"}
===== FIM DA EXIGÊNCIA ===== |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | Você é um assistente útil projetado para gerar JSON.
## Formato de Resposta

Responda apenas com um objeto JSON. Nenhum outro texto é permitido.

===== EXIGÊNCIA CRÍTICA DE SAÍDA JSON =====
Você DEVE responder apenas com JSON válido. NENHUM outro texto é permitido.
Não inclua nenhuma explicação, comentário ou texto antes ou depois do JSON.
Sua resposta deve ser um JSON analisável que esteja em conformidade EXATAMENTE com este esquema:
{...}

Exemplo de formato de resposta: {"response":"sua resposta real aqui"}
===== FIM DA EXIGÊNCIA ===== |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Fornece uma opção alternativa de serialização que converte todas as enumerações para sua representação em string. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Escreve uma Hashtable como JSON indentado para config.json atomicamente.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Escreve objetos de processo como JSON compacto atomicamente.

## Related Links

- [Write-JsonFileAtomic on GitHub](https://github.com/genXdev/genXdev)
