# Get-PowershellMainWindowProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retorna o objeto de processo para a janela que hospeda o terminal do PowerShell.

## Description

* Percorre a árvore de processos a partir do processo atual do PowerShell para localizar a janela pai responsável por hospedar o terminal.
* Se o processo pai imediato não tiver um identificador de janela principal, ele procura por processos semelhantes que possuam janelas principais.
* Útil para identificar o processo real da janela do terminal (como Windows Terminal, ConHost, etc.) que contém a sessão do PowerShell.

## Syntax

```powershell
Get-PowershellMainWindowProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hostProcess = Get-PowershellMainWindowProcess
Write-Host "PowerShell is hosted in: $($hostProcess.ProcessName)"
```

Retorna o processo que hospeda a sessão atual do PowerShell e exibe seu nome.

## Related Links

- [Get-PowershellMainWindowProcess on GitHub](https://github.com/genXdev/genXdev)
