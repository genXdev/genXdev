# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey

## Synopsis

> Remove uma chave de um armazenamento de chave-valor.

## Description

Esta função remove uma chave específica de um armazenamento de chave-valor nomeado. Para armazenamentos locais, a chave é permanentemente excluída. Para armazenamentos sincronizados, a chave é marcada como excluída para permitir a sincronização.

## Syntax

```powershell
Remove-KeyFromStore [-StoreName] <string> [-KeyName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nome da loja |
| `-KeyName` | String | ✅ | — | 1 | — | Chave a ser deletada |
| `-SynchronizationKey` | String | — | — | 2 | — | Chave para identificar o escopo de sincronização |
| `-DatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados do armazenamento chave-valor |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

Remova a chave "MyKey" do armazenamento "MyStore".

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

Remova uma chave usando o alias.

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)
