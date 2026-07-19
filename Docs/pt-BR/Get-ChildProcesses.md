# Get-ChildProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera todos os processos que são descendentes do processo atual do PowerShell.

## Description

* Examina todos os processos em execução e identifica aqueles que têm o
  processo atual do PowerShell como ancestral em sua cadeia de processos pai.
* Isso inclui tanto processos filhos diretos quanto seus descendentes
  (netos, etc.).

## Syntax

```powershell
Get-ChildProcesses [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ChildProcesses
```

Obtenha todos os processos filhos da sessão atual do PowerShell.

### Example 2

```powershell
Get-ChildProcesses -Verbose
```

Obter processos filhos com saída detalhada exibindo informações de detecção de processos.

## Related Links

- [Get-ChildProcesses on GitHub](https://github.com/genXdev/genXdev)
