# Remove-ItemWithFallback

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rmf

## Synopsis

> Remove arquivos ou diretórios com múltiplos mecanismos de fallback para exclusão confiável.

## Description

Esta função fornece uma maneira robusta de excluir arquivos e diretórios, tentando vários métodos de exclusão em sequência:
1. Exclusão direta via métodos System.IO para melhor desempenho
2. Cmdlet Remove-Item com reconhecimento de provedor do PowerShell como fallback
3. Marcar para exclusão na próxima reinicialização do sistema se outros métodos falharem
Isso garante máxima confiabilidade ao remover itens em diferentes provedores.

## Syntax

```powershell
Remove-ItemWithFallback -Path <String> [-CountRebootDeletionAsSuccess] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O caminho para o item a ser removido |
| `-CountRebootDeletionAsSuccess` | SwitchParameter | — | — | Named | `$false` | The `-CountRebootDeletionAsSuccess` parameter. |

## Examples

### Remove-ItemWithFallback -Path "C:\temp\myfile.txt" Attempts to remove the file using all available methods.

```powershell
Remove-ItemWithFallback -Path "C:\temp\myfile.txt"
Attempts to remove the file using all available methods.
```

### "C:\temp\mydir" | rif Uses the alias 'rif' to remove a directory through the pipeline.

```powershell
"C:\temp\mydir" | rif
Uses the alias 'rif' to remove a directory through the pipeline.
```

## Outputs

- `Boolean`

## Related Links

- [Remove-ItemWithFallback on GitHub](https://github.com/genXdev/genXdev)
