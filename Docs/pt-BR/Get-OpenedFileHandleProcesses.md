# Get-OpenedFileHandleProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera processos que possuem identificadores de arquivo abertos para arquivos especificados.

## Description

* Usa a ferramenta handle.exe do Sysinternals para identificar processos que
  possuem identificadores (handles) abertos para um ou mais arquivos especificados.
* Útil para determinar quais processos estão impedindo operações com arquivos,
  como exclusão ou modificação.
* Requer que o handle.exe do pacote Sysinternals esteja instalado e disponível
  no caminho do sistema.

## Syntax

```powershell
Get-OpenedFileHandleProcesses [-FilePath] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O caminho para o(s) arquivo(s) a serem verificados para encontrar handles abertos |

## Examples

### Example 1

```powershell
Get-OpenedFileHandleProcesses -FilePath "C:\temp\example.txt"
```

Identifica todos os processos que possuem identificadores abertos para o arquivo especificado.

### Example 2

```powershell
"file1.txt", "file2.txt" | Get-OpenedFileHandleProcesses
```

Verifica vários arquivos através da entrada de pipeline para processos com handles abertos.

## Related Links

- [Get-OpenedFileHandleProcesses on GitHub](https://github.com/genXdev/genXdev)
