# EnsurePip

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Garante que o pip está instalado e funcional para a instalação especificada do Python.

## Description

Verifica se o pip está disponível e funcional para o executável Python fornecido.
Se o pip não estiver disponível, tenta instalá-lo usando ensurepip. Valida a funcionalidade do pip verificando a versão e operações básicas. Retorna $true se o pip estiver pronto; gera Write-Error em caso de falha.

## Syntax

```powershell
EnsurePip [[-PythonPath] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonPath` | String | — | — | 0 | — | Caminho para o executável Python |
| `-Timeout` | Int32 | — | — | Named | `300` | Tempo limite em segundos para instalação via pip |
| `-Force` | SwitchParameter | — | — | Named | — | Força a reinstalação/atualização do pip |

## Examples

### EnsurePip

```powershell
EnsurePip
```

Garante que o pip esteja disponível para a instalação padrão do Python.

### EnsurePip -PythonPath "C:\Python39\python.exe" -Force

```powershell
EnsurePip -PythonPath "C:\Python39\python.exe" -Force
```

Força a instalação via pip para um executável Python específico.

### $pythonPath = EnsurePython EnsurePip -PythonPath $pythonPath

```powershell
$pythonPath = EnsurePython
EnsurePip -PythonPath $pythonPath
```

Garante o pip para uma instalação específica do Python retornada por EnsurePython.

## Related Links

- [EnsurePip on GitHub](https://github.com/genXdev/genXdev)
