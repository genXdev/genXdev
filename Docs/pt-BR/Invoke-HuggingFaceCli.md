# Invoke-HuggingFaceCli

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Invoca a CLI do Hugging Face com os argumentos especificados.

## Description

Chama EnsureHuggingFace para garantir que a CLI esteja instalada e, em seguida, executa a CLI do Hugging Face com os argumentos fornecidos. Lê o caminho da CLI de $ENV:LOCALAPPDATA\GenXdev.PowerShell\hfclilocation.json. Retorna a saída do comando como uma string; emite Write-Error em caso de falha.

## Syntax

```powershell
Invoke-HuggingFaceCli -Arguments <String[]> [[-Timeout] <Int32>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Arguments` | String[] | ✅ | — | 0 | — | Os argumentos a serem passados para a CLI do Hugging Face |
| `-Timeout` | Int32 | — | — | 1 | `36000` | Tempo limite em segundos para execução de CLI e instalação de dependências |
| `-Force` | SwitchParameter | — | — | Named | — | Força a reinstalação da CLI do Hugging Face |

## Examples

### Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force

```powershell
Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force
```

Invoca a CLI com o comando "login", forçando a reinstalação.

### Invoke-HuggingFaceCli @("whoami") 300

```powershell
Invoke-HuggingFaceCli @("whoami") 300
```

Invoca a CLI com o comando "whoami" e um tempo limite de 300 segundos.

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)
