# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtém o caminho do arquivo para um armazenamento de chave-valor.

## Description

* Constrói o caminho do arquivo para um armazenamento de chave-valor com base na chave de sincronização, nome do armazenamento e diretório base.

## Syntax

```powershell
Get-KeyValueStorePath [-SynchronizationKey] <string> [-StoreName] <string> [-BasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | A chave de sincronização usada para identificar a loja |
| `-StoreName` | String | ✅ | — | 1 | — | O nome do armazenamento de chave-valor |
| `-BasePath` | String | — | — | Named | — | O caminho do diretório base para arquivos de armazenamento |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

Obtenha o caminho para um armazenamento local de chave-valor.

## Related Links

- [Get-KeyValueStorePath on GitHub](https://github.com/genXdev/genXdev)
