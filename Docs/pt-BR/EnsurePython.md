# EnsurePython

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Garante que o Python está instalado e disponível no PATH do sistema.

## Description

Verifica se o Python está instalado e acessível através do PATH do sistema. Se o Python
não for encontrado, tenta instalá-lo usando winget (Windows Package Manager).
Suporta requisitos específicos de versão e fornece feedback de progresso durante a
instalação. Retorna o caminho para o executável do Python se for bem-sucedido; lança
Write-Error em caso de falha.

Esta função prioriza instalações existentes do Python, mas pode forçar a
reinstalação quando necessário. Ela valida a funcionalidade do Python verificando
a saída da versão e garante que a instalação esteja adequadamente acessível.

## Syntax

```powershell
EnsurePython [[-Version] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Version` | String | — | — | 0 | `"3.12"` | Versão do Python para garantir que está instalada |
| `-Timeout` | Int32 | — | — | Named | `600` | Tempo limite em segundos para instalação do Python |
| `-Force` | SwitchParameter | — | — | Named | — | Força a reinstalação do Python |

## Examples

### EnsurePython

```powershell
EnsurePython
```

Garante que o Python 3.12 esteja instalado usando as configurações padrão.

### $pythonPath = EnsurePython -Version "3.11" -Timeout 900

```powershell
$pythonPath = EnsurePython -Version "3.11" -Timeout 900
```

Instala o Python 3.11 com tempo limite estendido e retorna o caminho do executável.

### EnsurePython -Force -Verbose

```powershell
EnsurePython -Force -Verbose
```

Força a reinstalação do Python 3.12 com informações detalhadas de progresso.

### EnsurePython -Version "3.10" -Force

```powershell
EnsurePython -Version "3.10" -Force
```

Força a instalação do Python 3.10 mesmo se outra versão existir.

## Related Links

- [EnsurePython on GitHub](https://github.com/genXdev/genXdev)
