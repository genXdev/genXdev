# Get-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `getclipfiles, `gcbf

## Synopsis

> Obtém arquivos da área de transferência do Windows que foram definidos para operações de arquivo como copiar/colar.

## Description

* Esta função recupera caminhos de arquivo da área de transferência do Windows que foram
  previamente definidos para operações com arquivos.
* Ela lida automaticamente com modos de threading STA e MTA, garantindo
  compatibilidade em diferentes contextos de execução do PowerShell.
* A função valida a existência dos arquivos e retorna apenas arquivos/diretórios
  existentes como objetos semelhantes à saída de Get-ChildItem ou Get-Item.

## Syntax

```powershell
Get-ClipboardFiles [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ClipboardFiles
```

Obtenha todos os arquivos atualmente na área de transferência como objetos do sistema de arquivos.

### Example 2

```powershell
$clipboardFiles = Get-ClipboardFiles
$clipboardFiles | ForEach-Object { Write-Host $_.FullName }
```

Obter arquivos da área de transferência e exibir seus caminhos completos.

### Example 3

```powershell
Get-ClipboardFiles | Where-Object { $_.Extension -eq '.txt' }
```

Obter apenas arquivos de texto da área de transferência.

## Related Links

- [Get-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)
