# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Remove um armazenamento de pares chave-valor.

## Description

Esta função exclui um armazenamento de chave-valor especificado. Para armazenamentos locais, ela remove fisicamente o arquivo. Para armazenamentos sincronizados, ela marca todas as chaves como excluídas e dispara a sincronização.

## Syntax

```powershell
Remove-KeyValueStore [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nome da loja a ser excluída |
| `-SynchronizationKey` | String | — | — | 1 | — | Chave para identificar o escopo de sincronização |
| `-DatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados do armazenamento chave-valor |

## Examples

### Example 1

```powershell
Remove-KeyValueStore -StoreName "MyStore"
```

Remova um armazenamento local de chave-valor chamado "MyStore".

### Example 2

```powershell
Remove-KeyValueStore "MyStore" -SynchronizationKey "Cloud"
```

Remova uma loja sincronizada com uma chave de sincronização específica.

## Related Links

- [Remove-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
