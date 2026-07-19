# Get-HasCapableGpu

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Determina se uma GPU compatível com CUDA com memória suficiente está presente.

## Description

Verifica se o sistema possui GPUs compatíveis com CUDA com pelo menos 4 GB de RAM de vídeo. Ele usa o Windows Management Instrumentation (WMI) para consultar os controladores de vídeo instalados e verificar sua capacidade de memória. Essa verificação é essencial para cargas de trabalho de IA que exigem uma quantidade significativa de memória da GPU.

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

Verifica se o sistema possui uma GPU compatível com CUDA e memória suficiente.

## Related Links

- [Get-HasCapableGpu on GitHub](https://github.com/genXdev/genXdev)
