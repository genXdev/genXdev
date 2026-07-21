# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Determina se uma GPU compatível com CUDA e com memória suficiente está presente.

## Description

Verifica se o sistema possui GPUs compatíveis com CUDA com pelo menos 4 GB de VRAM. Usa o Windows Management Instrumentation (WMI) para consultar os controladores de vídeo instalados e verificar sua capacidade de memória. Essa verificação é essencial para cargas de trabalho de IA que exigem memória GPU significativa.

## Syntax

```powershell
Get-HasCapableGpu [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hasGpu = Get-HasCapableGpu
Write-Host "System has capable GPU: $hasGpu"
```

Verifica se o sistema possui uma GPU compatível com CUDA e com memória suficiente.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Test-CpuAvx.md)
