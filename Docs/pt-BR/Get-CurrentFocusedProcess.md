# Get-CurrentFocusedProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera o objeto de processo da janela que atualmente tem o foco do teclado.

## Description

* Este cmdlet usa chamadas de API do Windows através de P/Invoke para identificar e retornar o objeto Process associado à janela atualmente focada.
* Ele aproveita as funções GetForegroundWindow e GetWindowThreadProcessId da User32.dll para determinar qual janela está em foco e obter seu ID de processo associado.

## Syntax

```powershell
Get-CurrentFocusedProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$focusedProcess = Get-CurrentFocusedProcess
Write-Host "Active window process: $($focusedProcess.ProcessName)"
```

Recupera o objeto de processo para a janela que atualmente possui o foco do teclado.

## Related Links

- [Get-CurrentFocusedProcess on GitHub](https://github.com/genXdev/genXdev)
