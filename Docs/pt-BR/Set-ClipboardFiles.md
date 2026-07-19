# Set-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `setclipfiles, `scbf

## Synopsis

> Define arquivos na área de transferência do Windows para operações de arquivo como copiar/colar.

## Description

Esta função copia um ou mais caminhos de arquivo para a área de transferência do Windows,
permitindo operações de arquivo como colar no Windows Explorer. Ela lida automaticamente
com os modos de threading STA e MTA, garantindo compatibilidade em diferentes
contextos de execução do PowerShell. A função valida a existência dos arquivos
antes de adicionar os caminhos à área de transferência.

## Syntax

```powershell
Set-ClipboardFiles -InputObject <String[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Array de caminhos de arquivos para adicionar à área de transferência |

## Examples

### Set-ClipboardFiles -InputObject "C:\temp\file1.txt", "C:\temp\file2.txt" Sets two files to the clipboard using full parameter names.

```powershell
Set-ClipboardFiles -InputObject "C:\temp\file1.txt", "C:\temp\file2.txt"
Sets two files to the clipboard using full parameter names.
```

### "C:\temp\file1.txt", "C:\temp\file2.txt" | Set-ClipboardFiles Sets files to clipboard using pipeline input.

```powershell
"C:\temp\file1.txt", "C:\temp\file2.txt" | Set-ClipboardFiles
Sets files to clipboard using pipeline input.
```

### ls * -file | select -first 5 | Set-ClipboardFiles Sets files to clipboard using pipeline input, selecting the first 5 files

```powershell
ls * -file | select -first 5 | Set-ClipboardFiles
Sets files to clipboard using pipeline input, selecting the first 5 files
```

## Related Links

- [Set-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)
