# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> Gerencia pares chave-valor em um armazenamento baseado em arquivo JSON.

## Description

Fornece armazenamento persistente para pares chave-valor usando arquivos JSON. Lida tanto com inserção de novas entradas quanto com atualizações de existentes. Suporta sincronização opcional para armazenamentos não locais. Esta função implementa uma operação upsert que insere novos pares chave-valor ou atualiza os existentes com base na combinação de chave de sincronização, nome do armazenamento e nome da chave.

## Syntax

```powershell
Set-ValueByKeyInStore [-StoreName] <string> [-KeyName] <string> [[-Value] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nome da loja para o par chave-valor |
| `-KeyName` | String | ✅ | — | 1 | — | Nome da chave a ser definida ou atualizada |
| `-Value` | String | — | — | 2 | — | Valor a ser armazenado |
| `-SynchronizationKey` | String | — | — | 3 | — | Chave para identificar o escopo de sincronização |
| `-DatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados do armazenamento chave-valor |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

Defina um endpoint de API no ConfigStore.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

Use o pseudônimo para definir um valor.

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
