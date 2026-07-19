# Set-LocationParent

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `..

## Synopsis

> Altera o diretório atual para o diretório pai e lista seu conteúdo.

## Description

* Navega um nível acima na hierarquia do sistema de arquivos.
* Exibe o conteúdo do novo diretório atual.
* Fornece um alias conveniente '..' para navegação rápida entre diretórios.

## Syntax

```powershell
Set-LocationParent [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-LocationParent
```

Muda para o diretório pai e lista seu conteúdo.

### Example 2

```powershell
..
```

Usa o alias para mudar para o diretório pai.

## Related Links

- [Set-LocationParent on GitHub](https://github.com/genXdev/genXdev)
