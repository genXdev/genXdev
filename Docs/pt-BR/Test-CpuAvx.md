# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Testa se a CPU suporta os conjuntos de instruções AVX e AVX2.

## Description

* Verifica se o processador suporta os conjuntos de instruções AVX e AVX2 usando
  a API do Windows (kernel32.dll IsProcessorFeaturePresent).
* Retorna um objeto com propriedades booleanas AVX e AVX2.
* Útil para determinar a compatibilidade de hardware para cargas de trabalho de IA/ML.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Verifica o suporte ao conjunto de instruções da CPU e retorna a disponibilidade de AVX/AVX2.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-NumberOfCpuCores.md)
