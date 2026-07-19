# EnsureHuggingFace

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Garante que a CLI do Hugging Face esteja instalada e funcional.

## Description

Orquestra a instalação do Python, pip e da CLI do Hugging Face chamando EnsurePython e EnsurePip, em seguida instalando o pacote huggingface_hub. Armazena o caminho da CLI em um arquivo JSON e garante que todos os componentes estejam disponíveis no PATH do sistema. Retorna $true se bem-sucedido; gera Write-Error em caso de falha.

## Syntax

```powershell
EnsureHuggingFace [[-PythonVersion] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonVersion` | String | — | — | 0 | `"3.12"` | Versão do Python para garantir |
| `-Timeout` | Int32 | — | — | Named | `600` | Tempo limite em segundos para processos de instalação |
| `-Force` | SwitchParameter | — | — | Named | — | Força a reinstalação de todos os componentes |

## Examples

### EnsureHuggingFace

```powershell
EnsureHuggingFace
```

Garante que Python 3.12, pip e a CLI do HuggingFace estejam instalados.

### EnsureHuggingFace -PythonVersion "3.11" -Force

```powershell
EnsureHuggingFace -PythonVersion "3.11" -Force
```

Força reinstalação com Python 3.11.

### EnsureHuggingFace -Timeout 1200

```powershell
EnsureHuggingFace -Timeout 1200
```

Garante a instalação com um tempo limite de 20 minutos.

## Related Links

- [EnsureHuggingFace on GitHub](https://github.com/genXdev/genXdev)
