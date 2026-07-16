# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
