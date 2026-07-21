# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtém o número total de monitores conectados ao sistema.

## Description

* Usa a classe auxiliar de Tela do Windows Presentation Foundation (WPF) para
  determinar com precisão o número de monitores físicos atualmente
  conectados ao sistema.
* Isso inclui monitores ativos e detectados, mas desabilitados.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Retorna o número total de monitores conectados (ex.: 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Retorna a contagem de monitores com saída detalhada exibindo o processo de detecção.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Test-CpuAvx.md)
