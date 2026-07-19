# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Marca arquivos ou diretórios para exclusão durante a próxima inicialização do sistema.

## Description

* Usa a API do Windows para marcar arquivos para exclusão na próxima inicialização.
* Lida com arquivos bloqueados primeiro tentando renomeá-los para nomes temporários e rastreia todas as movimentações para manter a integridade do sistema de arquivos.
* Se a renomeação falhar, o parâmetro -MarkInPlace pode ser usado para marcar arquivos em seu local original.

## Syntax

```powershell
Remove-OnReboot [-Path] <string[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | Caminho(s) para arquivos/diretórios a marcar para exclusão |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | Marca arquivos para exclusão sem renomear |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

Marca um arquivo bloqueado para exclusão durante a próxima inicialização do sistema.

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

Marca múltiplos arquivos para exclusão, usando MarkInPlace para aqueles que não podem ser renomeados.

## Related Links

- [Remove-OnReboot on GitHub](https://github.com/genXdev/genXdev)
