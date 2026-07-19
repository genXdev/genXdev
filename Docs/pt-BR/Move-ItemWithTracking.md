# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Move arquivos e diretórios preservando links do sistema de arquivos e referências.

## Description

* Usa a API MoveFileEx do Windows para mover arquivos e diretórios com rastreamento de link ativado, garantindo que as referências do sistema de arquivos sejam mantidas.
* Se o caminho de origem estiver sob controle do Git, tenta usar git mv para rastrear a renomeação no Git.
* Recorre ao MoveFileEx se o Git não estiver disponível ou se git mv falhar.

## Syntax

```powershell
Move-ItemWithTracking [-Path] <string> [-Destination] <string> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Caminho de origem do arquivo/diretório a mover |
| `-Destination` | String | ✅ | — | 1 | — | Caminho de destino para mover |
| `-Force` | SwitchParameter | — | — | Named | `False` | Sobrescrever destino se existir |

## Examples

### Example 1

```powershell
Move-ItemWithTracking -Path "C:\temp\oldfile.txt" -Destination "D:\newfile.txt"
```

Move um arquivo preservando links do sistema de arquivos e o rastreamento do Git.

### Example 2

```powershell
"C:\temp\olddir" | Move-ItemWithTracking -Destination "D:\newdir" -Force
```

Move um diretório, sobrescrevendo o destino se ele existir.

## Related Links

- [Move-ItemWithTracking on GitHub](https://github.com/genXdev/genXdev)
